; ModuleID = 'drivers/tty/tty_audit.c'
source_filename = "drivers/tty/tty_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type opaque
%struct.lock_class_key = type {}
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tty_audit_buf = type { %struct.mutex, i32, i8, i64, ptr }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.tty_driver = type { %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.20 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_t = type { i64 }
%union.anon.20 = type { %struct.callback_head }

@audit_enabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"ioctl=TIOCSTI\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [4 x i8] c"tty\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_audit.c\00", align 1, !dbg !12
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s pid=%u uid=%u auid=%u ses=%u major=%d minor=%d comm=\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c" data=\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [30 x i8] c"out of memory in TTY auditing\00", align 1, !dbg !27
@tty_audit_buf_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !32
@.str.6 = private unnamed_addr constant [12 x i8] c"&buf->mutex\00", align 1, !dbg !5083
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5086

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_audit_exit() #0 align 16 !dbg !5104 {
entry:
  %buf = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5106, metadata !DIExpression()), !dbg !5113
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5107, metadata !DIExpression()), !dbg !5114
  %call = call ptr @get_current() #15, !dbg !5114
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5114
  %0 = load ptr, ptr %signal, align 64, !dbg !5114
  %tty_audit_buf = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 55, !dbg !5114
  store ptr %tty_audit_buf, ptr %__ai_ptr, align 8, !dbg !5114
  br label %do.body, !dbg !5114

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5115

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !5114
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #15, !dbg !5114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5110, metadata !DIExpression()), !dbg !5117
  %call1 = call ptr @ERR_PTR(i64 noundef -3) #15, !dbg !5117
  store ptr %call1, ptr %__ret, align 8, !dbg !5117
  %2 = load ptr, ptr %__ret, align 8, !dbg !5117
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !5117
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #14, !dbg !5117, !srcloc !5118
  store ptr %4, ptr %__ret, align 8, !dbg !5117
  %5 = load ptr, ptr %__ret, align 8, !dbg !5117
  store ptr %5, ptr %tmp2, align 8, !dbg !5117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !5114
  %6 = load ptr, ptr %tmp2, align 8, !dbg !5117
  store ptr %6, ptr %tmp, align 8, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !5119
  %7 = load ptr, ptr %tmp, align 8, !dbg !5114
  store ptr %7, ptr %buf, align 8, !dbg !5120
  %8 = load ptr, ptr %buf, align 8, !dbg !5121
  %tobool = icmp ne ptr %8, null, !dbg !5121
  br i1 %tobool, label %if.end, label %if.then, !dbg !5123

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5124

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %buf, align 8, !dbg !5125
  call void @tty_audit_buf_push(ptr noundef %9) #15, !dbg !5126
  %10 = load ptr, ptr %buf, align 8, !dbg !5127
  call void @tty_audit_buf_free(ptr noundef %10) #15, !dbg !5128
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5129
  br label %cleanup, !dbg !5129

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5129
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5129

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5130 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5135, metadata !DIExpression()), !dbg !5141
  br label %do.body, !dbg !5141

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5137, metadata !DIExpression()), !dbg !5142
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5142
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5141
  br label %do.cond, !dbg !5142

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5142

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !5143
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5139, metadata !DIExpression()), !dbg !5143
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !5143, !srcloc !5144
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5143
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5143
  %3 = inttoptr i64 %2 to ptr, !dbg !5143
  store ptr %3, ptr %tmp, align 8, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !5141
  %4 = load ptr, ptr %tmp, align 8, !dbg !5143
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5141
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5141
  store ptr %5, ptr %tmp1, align 8, !dbg !5141
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5145
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5141
  ret ptr %6, !dbg !5146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5147 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5155, metadata !DIExpression()), !dbg !5157
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5156, metadata !DIExpression()), !dbg !5158
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5159
  %1 = load i64, ptr %size.addr, align 8, !dbg !5160
  %conv = trunc i64 %1 to i32, !dbg !5160
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5161
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5162
  %3 = load i64, ptr %size.addr, align 8, !dbg !5162
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5162
  ret void, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5164 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load i64, ptr %error.addr, align 8, !dbg !5171
  %1 = inttoptr i64 %0 to ptr, !dbg !5172
  ret ptr %1, !dbg !5173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_audit_buf_push(ptr noundef %buf) #0 align 16 !dbg !5174 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5180
  %valid = getelementptr inbounds %struct.tty_audit_buf, ptr %0, i32 0, i32 3, !dbg !5182
  %1 = load i64, ptr %valid, align 8, !dbg !5182
  %cmp = icmp eq i64 %1, 0, !dbg !5183
  br i1 %cmp, label %if.then, label %if.end, !dbg !5184

if.then:                                          ; preds = %entry
  br label %return, !dbg !5185

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @audit_enabled, align 4, !dbg !5186
  %cmp1 = icmp eq i32 %2, 0, !dbg !5188
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5189

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5190
  %valid3 = getelementptr inbounds %struct.tty_audit_buf, ptr %3, i32 0, i32 3, !dbg !5192
  store i64 0, ptr %valid3, align 8, !dbg !5193
  br label %return, !dbg !5194

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5195
  %dev = getelementptr inbounds %struct.tty_audit_buf, ptr %4, i32 0, i32 1, !dbg !5196
  %5 = load i32, ptr %dev, align 8, !dbg !5196
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5197
  %data = getelementptr inbounds %struct.tty_audit_buf, ptr %6, i32 0, i32 4, !dbg !5198
  %7 = load ptr, ptr %data, align 8, !dbg !5198
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5199
  %valid5 = getelementptr inbounds %struct.tty_audit_buf, ptr %8, i32 0, i32 3, !dbg !5200
  %9 = load i64, ptr %valid5, align 8, !dbg !5200
  call void @tty_audit_log(ptr noundef @.str.1, i32 noundef %5, ptr noundef %7, i64 noundef %9) #15, !dbg !5201
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5202
  %valid6 = getelementptr inbounds %struct.tty_audit_buf, ptr %10, i32 0, i32 3, !dbg !5203
  store i64 0, ptr %valid6, align 8, !dbg !5204
  br label %return, !dbg !5205

return:                                           ; preds = %if.end4, %if.then2, %if.then
  ret void, !dbg !5205
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_audit_buf_free(ptr noundef %buf) #0 align 16 !dbg !5206 {
entry:
  %buf.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5208, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5209, metadata !DIExpression()), !dbg !5215
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5215
  %valid = getelementptr inbounds %struct.tty_audit_buf, ptr %0, i32 0, i32 3, !dbg !5215
  %1 = load i64, ptr %valid, align 8, !dbg !5215
  %cmp = icmp ne i64 %1, 0, !dbg !5215
  %lnot = xor i1 %cmp, true, !dbg !5215
  %lnot1 = xor i1 %lnot, true, !dbg !5215
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5215
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5215
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5216
  %tobool = icmp ne i32 %2, 0, !dbg !5216
  %lnot2 = xor i1 %tobool, true, !dbg !5216
  %lnot4 = xor i1 %lnot2, true, !dbg !5216
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5216
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5216
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5216
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5216
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5215

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5216

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5211, metadata !DIExpression()), !dbg !5217
  store i32 2305, ptr %__flags, align 4, !dbg !5217
  br label %do.body7, !dbg !5217

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5218

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5218

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5217

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5220
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 56, i32 %3, i64 12) #14, !dbg !5220, !srcloc !5222
  br label %do.cond9, !dbg !5220

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5220

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5217

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5223

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5223

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5216
  br label %do.cond14, !dbg !5217

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5217

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5217

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5215
  %tobool16 = icmp ne i32 %4, 0, !dbg !5215
  %lnot17 = xor i1 %tobool16, true, !dbg !5215
  %lnot19 = xor i1 %lnot17, true, !dbg !5215
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5215
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5215
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5215
  store i64 %expval22, ptr %tmp, align 8, !dbg !5216
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5225
  %5 = load i64, ptr %tmp, align 8, !dbg !5215
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5226
  %data = getelementptr inbounds %struct.tty_audit_buf, ptr %6, i32 0, i32 4, !dbg !5227
  %7 = load ptr, ptr %data, align 8, !dbg !5227
  call void @kfree(ptr noundef %7) #15, !dbg !5228
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5229
  call void @kfree(ptr noundef %8) #15, !dbg !5230
  ret void, !dbg !5231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_audit_fork(ptr noundef %sig) #0 align 16 !dbg !5232 {
entry:
  %sig.addr = alloca ptr, align 8
  store ptr %sig, ptr %sig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  %call = call ptr @get_current() #15, !dbg !5238
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5239
  %0 = load ptr, ptr %signal, align 64, !dbg !5239
  %audit_tty = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 54, !dbg !5240
  %1 = load i32, ptr %audit_tty, align 8, !dbg !5240
  %2 = load ptr, ptr %sig.addr, align 8, !dbg !5241
  %audit_tty1 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 54, !dbg !5242
  store i32 %1, ptr %audit_tty1, align 8, !dbg !5243
  ret void, !dbg !5244
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_audit_tiocsti(ptr noundef %tty, i8 noundef zeroext %ch) #0 align 16 !dbg !5245 {
entry:
  %tty.addr = alloca ptr, align 8
  %ch.addr = alloca i8, align 1
  %dev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5251, metadata !DIExpression()), !dbg !5254
  store i8 %ch, ptr %ch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !5252, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #14, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5253, metadata !DIExpression()), !dbg !5257
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5258
  %driver = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3, !dbg !5258
  %1 = load ptr, ptr %driver, align 8, !dbg !5258
  %major = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 6, !dbg !5258
  %2 = load i32, ptr %major, align 4, !dbg !5258
  %shl = shl i32 %2, 20, !dbg !5258
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5258
  %driver1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 3, !dbg !5258
  %4 = load ptr, ptr %driver1, align 8, !dbg !5258
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 7, !dbg !5258
  %5 = load i32, ptr %minor_start, align 8, !dbg !5258
  %or = or i32 %shl, %5, !dbg !5258
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5259
  %index = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 1, !dbg !5260
  %7 = load i32, ptr %index, align 4, !dbg !5260
  %add = add i32 %or, %7, !dbg !5261
  store i32 %add, ptr %dev, align 4, !dbg !5262
  %call = call i32 @tty_audit_push() #15, !dbg !5263
  %tobool = icmp ne i32 %call, 0, !dbg !5263
  br i1 %tobool, label %if.then, label %if.end, !dbg !5265

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5266

if.end:                                           ; preds = %entry
  %8 = load i32, ptr @audit_enabled, align 4, !dbg !5267
  %tobool2 = icmp ne i32 %8, 0, !dbg !5267
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5269

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %dev, align 4, !dbg !5270
  call void @tty_audit_log(ptr noundef @.str, i32 noundef %9, ptr noundef %ch.addr, i64 noundef 1) #15, !dbg !5271
  br label %if.end4, !dbg !5271

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5272
  br label %cleanup, !dbg !5272

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #14, !dbg !5272
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5272

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_audit_push() #0 align 16 !dbg !5273 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5276
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5275, metadata !DIExpression()), !dbg !5277
  %call = call ptr @get_current() #15, !dbg !5278
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5280
  %0 = load ptr, ptr %signal, align 64, !dbg !5280
  %audit_tty = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 54, !dbg !5281
  %1 = load i32, ptr %audit_tty, align 8, !dbg !5281
  %not = xor i32 %1, -1, !dbg !5282
  %conv = zext i32 %not to i64, !dbg !5282
  %and = and i64 %conv, 1, !dbg !5283
  %tobool = icmp ne i64 %and, 0, !dbg !5283
  br i1 %tobool, label %if.then, label %if.end, !dbg !5284

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

if.end:                                           ; preds = %entry
  %call1 = call ptr @tty_audit_buf_ref() #15, !dbg !5286
  store ptr %call1, ptr %buf, align 8, !dbg !5287
  %2 = load ptr, ptr %buf, align 8, !dbg !5288
  %call2 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %2) #15, !dbg !5290
  br i1 %call2, label %if.end5, label %if.then3, !dbg !5291

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf, align 8, !dbg !5292
  %mutex = getelementptr inbounds %struct.tty_audit_buf, ptr %3, i32 0, i32 0, !dbg !5294
  call void @mutex_lock(ptr noundef %mutex) #15, !dbg !5295
  %4 = load ptr, ptr %buf, align 8, !dbg !5296
  call void @tty_audit_buf_push(ptr noundef %4) #15, !dbg !5297
  %5 = load ptr, ptr %buf, align 8, !dbg !5298
  %mutex4 = getelementptr inbounds %struct.tty_audit_buf, ptr %5, i32 0, i32 0, !dbg !5299
  call void @mutex_unlock(ptr noundef %mutex4) #15, !dbg !5300
  br label %if.end5, !dbg !5301

if.end5:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5303
  %6 = load i32, ptr %retval, align 4, !dbg !5303
  ret i32 %6, !dbg !5303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_audit_log(ptr noundef %description, i32 noundef %dev, ptr noundef %data, i64 noundef %size) #0 align 16 !dbg !5304 {
entry:
  %description.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ab = alloca ptr, align 8
  %pid = alloca i32, align 4
  %uid = alloca i32, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %___val = alloca %struct.kuid_t, align 4
  %__UNIQUE_ID_rcu294 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %loginuid = alloca i32, align 4
  %agg.tmp9 = alloca %struct.kuid_t, align 4
  %sessionid = alloca i32, align 4
  %name = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca ptr, align 8
  store ptr %description, ptr %description.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5308, metadata !DIExpression()), !dbg !5325
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5309, metadata !DIExpression()), !dbg !5326
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5310, metadata !DIExpression()), !dbg !5327
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5311, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %ab) #14, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %ab, metadata !5312, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #14, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !5316, metadata !DIExpression()), !dbg !5332
  %call = call ptr @get_current() #15, !dbg !5333
  %call1 = call i32 @task_pid_nr(ptr noundef %call) #15, !dbg !5334
  store i32 %call1, ptr %pid, align 4, !dbg !5332
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #14, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5317, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 4, ptr %___val) #14, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %___val, metadata !5318, metadata !DIExpression()), !dbg !5337
  call void @rcu_read_lock() #15, !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu294) #14, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu294, metadata !5320, metadata !DIExpression()), !dbg !5338
  br label %do.body, !dbg !5339

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5341

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5341

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @get_current() #15, !dbg !5339
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 93, !dbg !5339
  %0 = load volatile ptr, ptr %real_cred, align 8, !dbg !5339
  store ptr %0, ptr %tmp, align 8, !dbg !5341
  %1 = load ptr, ptr %tmp, align 8, !dbg !5339
  store ptr %1, ptr %__UNIQUE_ID_rcu294, align 8, !dbg !5338
  br label %do.body3, !dbg !5338

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !5343

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5343

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %__UNIQUE_ID_rcu294, align 8, !dbg !5338
  store ptr %2, ptr %tmp6, align 8, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu294) #14, !dbg !5337
  %3 = load ptr, ptr %tmp6, align 8, !dbg !5338
  %uid7 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 1, !dbg !5337
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %___val, ptr align 8 %uid7, i64 4, i1 false), !dbg !5337
  call void @rcu_read_unlock() #15, !dbg !5337
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 4 %___val, i64 4, i1 false), !dbg !5337
  call void @llvm.lifetime.end.p0(i64 4, ptr %___val) #14, !dbg !5345
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5346
  %4 = load i32, ptr %coerce.dive, align 4, !dbg !5346
  %call8 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %4) #15, !dbg !5346
  store i32 %call8, ptr %uid, align 4, !dbg !5336
  call void @llvm.lifetime.start.p0(i64 4, ptr %loginuid) #14, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %loginuid, metadata !5322, metadata !DIExpression()), !dbg !5348
  %call10 = call ptr @get_current() #15, !dbg !5349
  %call11 = call i32 @audit_get_loginuid(ptr noundef %call10) #15, !dbg !5350
  %coerce.dive12 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp9, i32 0, i32 0, !dbg !5350
  store i32 %call11, ptr %coerce.dive12, align 4, !dbg !5350
  %coerce.dive13 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp9, i32 0, i32 0, !dbg !5351
  %5 = load i32, ptr %coerce.dive13, align 4, !dbg !5351
  %call14 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %5) #15, !dbg !5351
  store i32 %call14, ptr %loginuid, align 4, !dbg !5348
  call void @llvm.lifetime.start.p0(i64 4, ptr %sessionid) #14, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %sessionid, metadata !5323, metadata !DIExpression()), !dbg !5353
  %call15 = call ptr @get_current() #15, !dbg !5354
  %call16 = call i32 @audit_get_sessionid(ptr noundef %call15) #15, !dbg !5355
  store i32 %call16, ptr %sessionid, align 4, !dbg !5353
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #14, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5324, metadata !DIExpression()), !dbg !5357
  %call17 = call ptr @audit_context() #15, !dbg !5358
  %call18 = call ptr @audit_log_start(ptr noundef %call17, i32 noundef 3264, i32 noundef 1319) #15, !dbg !5359
  store ptr %call18, ptr %ab, align 8, !dbg !5360
  %6 = load ptr, ptr %ab, align 8, !dbg !5361
  %tobool = icmp ne ptr %6, null, !dbg !5361
  br i1 %tobool, label %if.end, label %if.then, !dbg !5363

if.then:                                          ; preds = %do.end5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5364

if.end:                                           ; preds = %do.end5
  %7 = load ptr, ptr %ab, align 8, !dbg !5365
  %8 = load ptr, ptr %description.addr, align 8, !dbg !5366
  %9 = load i32, ptr %pid, align 4, !dbg !5367
  %10 = load i32, ptr %uid, align 4, !dbg !5368
  %11 = load i32, ptr %loginuid, align 4, !dbg !5369
  %12 = load i32, ptr %sessionid, align 4, !dbg !5370
  %13 = load i32, ptr %dev.addr, align 4, !dbg !5371
  %shr = lshr i32 %13, 20, !dbg !5371
  %14 = load i32, ptr %dev.addr, align 4, !dbg !5372
  %and = and i32 %14, 1048575, !dbg !5372
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %7, ptr noundef @.str.3, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %shr, i32 noundef %and) #15, !dbg !5373
  br label %do.body19, !dbg !5374

do.body19:                                        ; preds = %if.end
  br label %do.cond20, !dbg !5376

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5376

do.end21:                                         ; preds = %do.cond20
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5374
  %call23 = call ptr @get_current() #15, !dbg !5374
  %call24 = call ptr @__get_task_comm(ptr noundef %arraydecay, i64 noundef 16, ptr noundef %call23) #15, !dbg !5374
  store ptr %call24, ptr %tmp22, align 8, !dbg !5376
  %15 = load ptr, ptr %tmp22, align 8, !dbg !5374
  %16 = load ptr, ptr %ab, align 8, !dbg !5378
  %arraydecay25 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5379
  call void @audit_log_untrustedstring(ptr noundef %16, ptr noundef %arraydecay25) #15, !dbg !5380
  %17 = load ptr, ptr %ab, align 8, !dbg !5381
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %17, ptr noundef @.str.4) #15, !dbg !5382
  %18 = load ptr, ptr %ab, align 8, !dbg !5383
  %19 = load ptr, ptr %data.addr, align 8, !dbg !5384
  %20 = load i64, ptr %size.addr, align 8, !dbg !5385
  call void @audit_log_n_hex(ptr noundef %18, ptr noundef %19, i64 noundef %20) #15, !dbg !5386
  %21 = load ptr, ptr %ab, align 8, !dbg !5387
  call void @audit_log_end(ptr noundef %21) #15, !dbg !5388
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5389
  br label %cleanup, !dbg !5389

cleanup:                                          ; preds = %do.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #14, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %sessionid) #14, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %loginuid) #14, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #14, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #14, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 8, ptr %ab) #14, !dbg !5389
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5389

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_audit_buf_ref() #0 align 16 !dbg !5390 {
entry:
  %buf = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5392, metadata !DIExpression()), !dbg !5399
  %call = call ptr @get_current() #15, !dbg !5400
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5401
  %0 = load ptr, ptr %signal, align 64, !dbg !5401
  %tty_audit_buf = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 55, !dbg !5402
  %1 = load ptr, ptr %tty_audit_buf, align 8, !dbg !5402
  store ptr %1, ptr %buf, align 8, !dbg !5403
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5393, metadata !DIExpression()), !dbg !5404
  %2 = load ptr, ptr %buf, align 8, !dbg !5404
  %call1 = call ptr @ERR_PTR(i64 noundef -3) #15, !dbg !5404
  %cmp = icmp eq ptr %2, %call1, !dbg !5404
  %lnot = xor i1 %cmp, true, !dbg !5404
  %lnot2 = xor i1 %lnot, true, !dbg !5404
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5404
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5404
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5405
  %tobool = icmp ne i32 %3, 0, !dbg !5405
  %lnot3 = xor i1 %tobool, true, !dbg !5405
  %lnot5 = xor i1 %lnot3, true, !dbg !5405
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5405
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5405
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5405
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5405
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5405

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5406
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5395, metadata !DIExpression()), !dbg !5406
  store i32 2305, ptr %__flags, align 4, !dbg !5406
  br label %do.body8, !dbg !5406

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5407

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5407

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5406

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5409
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 28, i32 %4, i64 12) #14, !dbg !5409, !srcloc !5411
  br label %do.cond10, !dbg !5409

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5409

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5406

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5412

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5412

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5405
  br label %do.cond15, !dbg !5406

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5406

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5406

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5404
  %tobool17 = icmp ne i32 %5, 0, !dbg !5404
  %lnot18 = xor i1 %tobool17, true, !dbg !5404
  %lnot20 = xor i1 %lnot18, true, !dbg !5404
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5404
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5404
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5404
  store i64 %expval23, ptr %tmp, align 8, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5414
  %6 = load i64, ptr %tmp, align 8, !dbg !5404
  %7 = load ptr, ptr %buf, align 8, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5416
  ret ptr %7, !dbg !5417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !5418 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5424
  %tobool = icmp ne ptr %0, null, !dbg !5424
  %lnot = xor i1 %tobool, true, !dbg !5424
  %lnot1 = xor i1 %lnot, true, !dbg !5424
  %lnot2 = xor i1 %lnot1, true, !dbg !5424
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5424
  %conv = sext i32 %lnot.ext to i64, !dbg !5424
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5424
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5424
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5425

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5426
  %2 = ptrtoint ptr %1 to i64, !dbg !5426
  %3 = inttoptr i64 %2 to ptr, !dbg !5426
  %4 = ptrtoint ptr %3 to i64, !dbg !5426
  %cmp = icmp uge i64 %4, -4095, !dbg !5426
  %lnot5 = xor i1 %cmp, true, !dbg !5426
  %lnot7 = xor i1 %lnot5, true, !dbg !5426
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5426
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5426
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5426
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5425
  br label %lor.end, !dbg !5425

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5428 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5432 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_audit_add_data(ptr noundef %tty, ptr noundef %data, i64 noundef %size) #0 align 16 !dbg !5433 {
entry:
  %tty.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %audit_tty = alloca i32, align 4
  %icanon = alloca i8, align 1
  %dev = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %run = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5437, metadata !DIExpression()), !dbg !5446
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5438, metadata !DIExpression()), !dbg !5447
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5439, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5440, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 4, ptr %audit_tty) #14, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %audit_tty, metadata !5441, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 1, ptr %icanon) #14, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %icanon, metadata !5442, metadata !DIExpression()), !dbg !5454
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5455
  %termios = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, !dbg !5455
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 3, !dbg !5455
  %1 = load i32, ptr %c_lflag, align 4, !dbg !5455
  %and = and i32 %1, 2, !dbg !5455
  %tobool = icmp ne i32 %and, 0, !dbg !5455
  %frombool = zext i1 %tobool to i8, !dbg !5454
  store i8 %frombool, ptr %icanon, align 1, !dbg !5454
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #14, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5443, metadata !DIExpression()), !dbg !5457
  br label %do.body, !dbg !5458

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5460

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5460

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #15, !dbg !5458
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5458
  %2 = load ptr, ptr %signal, align 64, !dbg !5458
  %audit_tty1 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 54, !dbg !5458
  %3 = load volatile i32, ptr %audit_tty1, align 8, !dbg !5458
  store i32 %3, ptr %tmp, align 4, !dbg !5460
  %4 = load i32, ptr %tmp, align 4, !dbg !5458
  store i32 %4, ptr %audit_tty, align 4, !dbg !5462
  %5 = load i32, ptr %audit_tty, align 4, !dbg !5463
  %not = xor i32 %5, -1, !dbg !5465
  %conv = zext i32 %not to i64, !dbg !5465
  %and2 = and i64 %conv, 1, !dbg !5466
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5466
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5467

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5468

if.end:                                           ; preds = %do.end
  %6 = load i64, ptr %size.addr, align 8, !dbg !5469
  %cmp = icmp eq i64 %6, 0, !dbg !5469
  %lnot = xor i1 %cmp, true, !dbg !5469
  %lnot5 = xor i1 %lnot, true, !dbg !5469
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5469
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5469
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5469
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5469
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5471

if.then8:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5472

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5473
  %driver = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 3, !dbg !5475
  %8 = load ptr, ptr %driver, align 8, !dbg !5475
  %type = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 9, !dbg !5476
  %9 = load i16, ptr %type, align 8, !dbg !5476
  %conv10 = sext i16 %9 to i32, !dbg !5473
  %cmp11 = icmp eq i32 %conv10, 4, !dbg !5477
  br i1 %cmp11, label %land.lhs.true, label %if.end18, !dbg !5478

land.lhs.true:                                    ; preds = %if.end9
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5479
  %driver13 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 3, !dbg !5480
  %11 = load ptr, ptr %driver13, align 8, !dbg !5480
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 10, !dbg !5481
  %12 = load i16, ptr %subtype, align 2, !dbg !5481
  %conv14 = sext i16 %12 to i32, !dbg !5479
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !5482
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5483

if.then17:                                        ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5484

if.end18:                                         ; preds = %land.lhs.true, %if.end9
  %13 = load i32, ptr %audit_tty, align 4, !dbg !5485
  %not19 = xor i32 %13, -1, !dbg !5487
  %conv20 = zext i32 %not19 to i64, !dbg !5487
  %and21 = and i64 %conv20, 2, !dbg !5488
  %tobool22 = icmp ne i64 %and21, 0, !dbg !5488
  br i1 %tobool22, label %land.lhs.true23, label %if.end32, !dbg !5489

land.lhs.true23:                                  ; preds = %if.end18
  %14 = load i8, ptr %icanon, align 1, !dbg !5490, !range !5491, !noundef !619
  %tobool24 = trunc i8 %14 to i1, !dbg !5490
  br i1 %tobool24, label %land.lhs.true26, label %if.end32, !dbg !5492

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5493
  %termios27 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 13, !dbg !5493
  %c_lflag28 = getelementptr inbounds %struct.ktermios, ptr %termios27, i32 0, i32 3, !dbg !5493
  %16 = load i32, ptr %c_lflag28, align 4, !dbg !5493
  %and29 = and i32 %16, 8, !dbg !5493
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5493
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !5494

if.then31:                                        ; preds = %land.lhs.true26
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5495

if.end32:                                         ; preds = %land.lhs.true26, %land.lhs.true23, %if.end18
  %call33 = call ptr @tty_audit_buf_get() #15, !dbg !5496
  store ptr %call33, ptr %buf, align 8, !dbg !5497
  %17 = load ptr, ptr %buf, align 8, !dbg !5498
  %call34 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %17) #15, !dbg !5500
  br i1 %call34, label %if.then35, label %if.end36, !dbg !5501

if.then35:                                        ; preds = %if.end32
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5502

if.end36:                                         ; preds = %if.end32
  %18 = load ptr, ptr %buf, align 8, !dbg !5503
  %mutex = getelementptr inbounds %struct.tty_audit_buf, ptr %18, i32 0, i32 0, !dbg !5504
  call void @mutex_lock(ptr noundef %mutex) #15, !dbg !5505
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !5506
  %driver37 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 3, !dbg !5506
  %20 = load ptr, ptr %driver37, align 8, !dbg !5506
  %major = getelementptr inbounds %struct.tty_driver, ptr %20, i32 0, i32 6, !dbg !5506
  %21 = load i32, ptr %major, align 4, !dbg !5506
  %shl = shl i32 %21, 20, !dbg !5506
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !5506
  %driver38 = getelementptr inbounds %struct.tty_struct, ptr %22, i32 0, i32 3, !dbg !5506
  %23 = load ptr, ptr %driver38, align 8, !dbg !5506
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 7, !dbg !5506
  %24 = load i32, ptr %minor_start, align 8, !dbg !5506
  %or = or i32 %shl, %24, !dbg !5506
  %25 = load ptr, ptr %tty.addr, align 8, !dbg !5507
  %index = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 1, !dbg !5508
  %26 = load i32, ptr %index, align 4, !dbg !5508
  %add = add i32 %or, %26, !dbg !5509
  store i32 %add, ptr %dev, align 4, !dbg !5510
  %27 = load ptr, ptr %buf, align 8, !dbg !5511
  %dev39 = getelementptr inbounds %struct.tty_audit_buf, ptr %27, i32 0, i32 1, !dbg !5513
  %28 = load i32, ptr %dev39, align 8, !dbg !5513
  %29 = load i32, ptr %dev, align 4, !dbg !5514
  %cmp40 = icmp ne i32 %28, %29, !dbg !5515
  br i1 %cmp40, label %if.then49, label %lor.lhs.false, !dbg !5516

lor.lhs.false:                                    ; preds = %if.end36
  %30 = load ptr, ptr %buf, align 8, !dbg !5517
  %icanon42 = getelementptr inbounds %struct.tty_audit_buf, ptr %30, i32 0, i32 2, !dbg !5518
  %31 = load i8, ptr %icanon42, align 4, !dbg !5518, !range !5491, !noundef !619
  %tobool43 = trunc i8 %31 to i1, !dbg !5518
  %conv44 = zext i1 %tobool43 to i32, !dbg !5517
  %32 = load i8, ptr %icanon, align 1, !dbg !5519, !range !5491, !noundef !619
  %tobool45 = trunc i8 %32 to i1, !dbg !5519
  %conv46 = zext i1 %tobool45 to i32, !dbg !5519
  %cmp47 = icmp ne i32 %conv44, %conv46, !dbg !5520
  br i1 %cmp47, label %if.then49, label %if.end54, !dbg !5521

if.then49:                                        ; preds = %lor.lhs.false, %if.end36
  %33 = load ptr, ptr %buf, align 8, !dbg !5522
  call void @tty_audit_buf_push(ptr noundef %33) #15, !dbg !5524
  %34 = load i32, ptr %dev, align 4, !dbg !5525
  %35 = load ptr, ptr %buf, align 8, !dbg !5526
  %dev50 = getelementptr inbounds %struct.tty_audit_buf, ptr %35, i32 0, i32 1, !dbg !5527
  store i32 %34, ptr %dev50, align 8, !dbg !5528
  %36 = load i8, ptr %icanon, align 1, !dbg !5529, !range !5491, !noundef !619
  %tobool51 = trunc i8 %36 to i1, !dbg !5529
  %37 = load ptr, ptr %buf, align 8, !dbg !5530
  %icanon52 = getelementptr inbounds %struct.tty_audit_buf, ptr %37, i32 0, i32 2, !dbg !5531
  %frombool53 = zext i1 %tobool51 to i8, !dbg !5532
  store i8 %frombool53, ptr %icanon52, align 4, !dbg !5532
  br label %if.end54, !dbg !5533

if.end54:                                         ; preds = %if.then49, %lor.lhs.false
  br label %do.body55, !dbg !5534

do.body55:                                        ; preds = %do.cond71, %if.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %run) #14, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %run, metadata !5444, metadata !DIExpression()), !dbg !5536
  %38 = load ptr, ptr %buf, align 8, !dbg !5537
  %valid = getelementptr inbounds %struct.tty_audit_buf, ptr %38, i32 0, i32 3, !dbg !5538
  %39 = load i64, ptr %valid, align 8, !dbg !5538
  %sub = sub i64 4096, %39, !dbg !5539
  store i64 %sub, ptr %run, align 8, !dbg !5540
  %40 = load i64, ptr %run, align 8, !dbg !5541
  %41 = load i64, ptr %size.addr, align 8, !dbg !5543
  %cmp56 = icmp ugt i64 %40, %41, !dbg !5544
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !5545

if.then58:                                        ; preds = %do.body55
  %42 = load i64, ptr %size.addr, align 8, !dbg !5546
  store i64 %42, ptr %run, align 8, !dbg !5547
  br label %if.end59, !dbg !5548

if.end59:                                         ; preds = %if.then58, %do.body55
  %43 = load ptr, ptr %buf, align 8, !dbg !5549
  %data60 = getelementptr inbounds %struct.tty_audit_buf, ptr %43, i32 0, i32 4, !dbg !5550
  %44 = load ptr, ptr %data60, align 8, !dbg !5550
  %45 = load ptr, ptr %buf, align 8, !dbg !5551
  %valid61 = getelementptr inbounds %struct.tty_audit_buf, ptr %45, i32 0, i32 3, !dbg !5552
  %46 = load i64, ptr %valid61, align 8, !dbg !5552
  %add.ptr = getelementptr i8, ptr %44, i64 %46, !dbg !5553
  %47 = load ptr, ptr %data.addr, align 8, !dbg !5554
  %48 = load i64, ptr %run, align 8, !dbg !5555
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %47, i64 %48, i1 false), !dbg !5556
  %49 = load i64, ptr %run, align 8, !dbg !5557
  %50 = load ptr, ptr %buf, align 8, !dbg !5558
  %valid62 = getelementptr inbounds %struct.tty_audit_buf, ptr %50, i32 0, i32 3, !dbg !5559
  %51 = load i64, ptr %valid62, align 8, !dbg !5560
  %add63 = add i64 %51, %49, !dbg !5560
  store i64 %add63, ptr %valid62, align 8, !dbg !5560
  %52 = load i64, ptr %run, align 8, !dbg !5561
  %53 = load ptr, ptr %data.addr, align 8, !dbg !5562
  %add.ptr64 = getelementptr i8, ptr %53, i64 %52, !dbg !5562
  store ptr %add.ptr64, ptr %data.addr, align 8, !dbg !5562
  %54 = load i64, ptr %run, align 8, !dbg !5563
  %55 = load i64, ptr %size.addr, align 8, !dbg !5564
  %sub65 = sub i64 %55, %54, !dbg !5564
  store i64 %sub65, ptr %size.addr, align 8, !dbg !5564
  %56 = load ptr, ptr %buf, align 8, !dbg !5565
  %valid66 = getelementptr inbounds %struct.tty_audit_buf, ptr %56, i32 0, i32 3, !dbg !5567
  %57 = load i64, ptr %valid66, align 8, !dbg !5567
  %cmp67 = icmp eq i64 %57, 4096, !dbg !5568
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5569

if.then69:                                        ; preds = %if.end59
  %58 = load ptr, ptr %buf, align 8, !dbg !5570
  call void @tty_audit_buf_push(ptr noundef %58) #15, !dbg !5571
  br label %if.end70, !dbg !5571

if.end70:                                         ; preds = %if.then69, %if.end59
  call void @llvm.lifetime.end.p0(i64 8, ptr %run) #14, !dbg !5572
  br label %do.cond71, !dbg !5573

do.cond71:                                        ; preds = %if.end70
  %59 = load i64, ptr %size.addr, align 8, !dbg !5574
  %cmp72 = icmp ne i64 %59, 0, !dbg !5575
  br i1 %cmp72, label %do.body55, label %do.end74, !dbg !5573, !llvm.loop !5576

do.end74:                                         ; preds = %do.cond71
  %60 = load ptr, ptr %buf, align 8, !dbg !5580
  %mutex75 = getelementptr inbounds %struct.tty_audit_buf, ptr %60, i32 0, i32 0, !dbg !5581
  call void @mutex_unlock(ptr noundef %mutex75) #15, !dbg !5582
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5583
  br label %cleanup, !dbg !5583

cleanup:                                          ; preds = %do.end74, %if.then35, %if.then31, %if.then17, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #14, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 1, ptr %icanon) #14, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 4, ptr %audit_tty) #14, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5583
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5583

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_audit_buf_get() #0 align 16 !dbg !5584 {
entry:
  %retval = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5586, metadata !DIExpression()), !dbg !5596
  %call = call ptr @tty_audit_buf_ref() #15, !dbg !5597
  store ptr %call, ptr %buf, align 8, !dbg !5598
  %0 = load ptr, ptr %buf, align 8, !dbg !5599
  %tobool = icmp ne ptr %0, null, !dbg !5599
  br i1 %tobool, label %if.then, label %if.end, !dbg !5601

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf, align 8, !dbg !5602
  store ptr %1, ptr %retval, align 8, !dbg !5603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5603

if.end:                                           ; preds = %entry
  %call1 = call ptr @tty_audit_buf_alloc() #15, !dbg !5604
  store ptr %call1, ptr %buf, align 8, !dbg !5605
  %2 = load ptr, ptr %buf, align 8, !dbg !5606
  %cmp = icmp eq ptr %2, null, !dbg !5608
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5609

if.then2:                                         ; preds = %if.end
  call void @audit_log_lost(ptr noundef @.str.5) #15, !dbg !5610
  store ptr null, ptr %retval, align 8, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !5613
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5587, metadata !DIExpression()), !dbg !5613
  %call4 = call ptr @get_current() #15, !dbg !5613
  %signal = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 104, !dbg !5613
  %3 = load ptr, ptr %signal, align 64, !dbg !5613
  %tty_audit_buf = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 55, !dbg !5613
  store ptr %tty_audit_buf, ptr %__ai_ptr, align 8, !dbg !5613
  br label %do.body, !dbg !5613

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !5614

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5614

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !5613
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #15, !dbg !5613
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5590, metadata !DIExpression()), !dbg !5616
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #14, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5592, metadata !DIExpression()), !dbg !5616
  store ptr null, ptr %__old, align 8, !dbg !5616
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #14, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5593, metadata !DIExpression()), !dbg !5616
  %5 = load ptr, ptr %buf, align 8, !dbg !5616
  store ptr %5, ptr %__new, align 8, !dbg !5616
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5594, metadata !DIExpression()), !dbg !5616
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !5616
  store ptr %6, ptr %__ptr, align 8, !dbg !5616
  %7 = load ptr, ptr %__ptr, align 8, !dbg !5616
  %8 = load ptr, ptr %__new, align 8, !dbg !5616
  %9 = load ptr, ptr %__old, align 8, !dbg !5616
  %10 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %7, ptr %8, ptr %9, ptr elementtype(i64) %7) #14, !dbg !5616, !srcloc !5617
  store ptr %10, ptr %__ret, align 8, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !5616
  %11 = load ptr, ptr %__ret, align 8, !dbg !5616
  store ptr %11, ptr %tmp5, align 8, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #14, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #14, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !5613
  %12 = load ptr, ptr %tmp5, align 8, !dbg !5616
  store ptr %12, ptr %tmp, align 8, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !5618
  %13 = load ptr, ptr %tmp, align 8, !dbg !5613
  %cmp6 = icmp ne ptr %13, null, !dbg !5619
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5620

if.then7:                                         ; preds = %do.end
  %14 = load ptr, ptr %buf, align 8, !dbg !5621
  call void @tty_audit_buf_free(ptr noundef %14) #15, !dbg !5622
  br label %if.end8, !dbg !5622

if.end8:                                          ; preds = %if.then7, %do.end
  %call9 = call ptr @tty_audit_buf_ref() #15, !dbg !5623
  store ptr %call9, ptr %retval, align 8, !dbg !5624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5624

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5625
  %15 = load ptr, ptr %retval, align 8, !dbg !5625
  ret ptr %15, !dbg !5625
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5626 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5631, metadata !DIExpression()), !dbg !5633
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5632, metadata !DIExpression()), !dbg !5634
  ret i1 true, !dbg !5635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5636 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5641, metadata !DIExpression()), !dbg !5644
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5642, metadata !DIExpression()), !dbg !5645
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5643, metadata !DIExpression()), !dbg !5646
  ret void, !dbg !5647
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5648 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr(ptr noundef %tsk) #4 align 16 !dbg !5651 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5657
  %pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62, !dbg !5658
  %1 = load i32, ptr %pid, align 8, !dbg !5658
  ret i32 %1, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !5660 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5664, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5665, metadata !DIExpression()), !dbg !5667
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5668
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5668
  %call = call i32 @__kuid_val(i32 %0) #15, !dbg !5668
  ret i32 %call, !dbg !5669
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !5670 {
entry:
  call void @__rcu_read_lock() #15, !dbg !5672
  br label %do.body, !dbg !5673

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5674

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5676

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5677

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !5680 {
entry:
  br label %do.body, !dbg !5681

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5682

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #15, !dbg !5684
  br label %do.body1, !dbg !5685

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5686

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @audit_get_loginuid(ptr noundef %tsk) #4 align 16 !dbg !5689 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5695
  %loginuid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 115, !dbg !5696
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 8 %loginuid, i64 4, i1 false), !dbg !5696
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5697
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5697
  ret i32 %1, !dbg !5697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @audit_get_sessionid(ptr noundef %tsk) #4 align 16 !dbg !5698 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5704
  %sessionid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 116, !dbg !5705
  %1 = load i32, ptr %sessionid, align 4, !dbg !5705
  ret i32 %1, !dbg !5706
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5707 dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #4 align 16 !dbg !5710 {
entry:
  %call = call ptr @get_current() #15, !dbg !5713
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !5714
  %0 = load ptr, ptr %audit_context, align 32, !dbg !5714
  ret ptr %0, !dbg !5715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5716 dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5719 dso_local ptr @__get_task_comm(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5722 dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5725 dso_local void @audit_log_n_hex(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local void @audit_log_end(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !5731 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5735, metadata !DIExpression()), !dbg !5736
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5737
  %0 = load i32, ptr %val, align 4, !dbg !5737
  ret i32 %0, !dbg !5738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5739 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5740 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_audit_buf_alloc() #0 align 16 !dbg !34 {
entry:
  %retval = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5092, metadata !DIExpression()), !dbg !5742
  %call = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #17, !dbg !5743
  store ptr %call, ptr %buf, align 8, !dbg !5744
  %0 = load ptr, ptr %buf, align 8, !dbg !5745
  %tobool = icmp ne ptr %0, null, !dbg !5745
  br i1 %tobool, label %if.end, label %if.then, !dbg !5747

if.then:                                          ; preds = %entry
  br label %err, !dbg !5748

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !5749
  %1 = load ptr, ptr %buf, align 8, !dbg !5750
  %data = getelementptr inbounds %struct.tty_audit_buf, ptr %1, i32 0, i32 4, !dbg !5751
  store ptr %call1, ptr %data, align 8, !dbg !5752
  %2 = load ptr, ptr %buf, align 8, !dbg !5753
  %data2 = getelementptr inbounds %struct.tty_audit_buf, ptr %2, i32 0, i32 4, !dbg !5755
  %3 = load ptr, ptr %data2, align 8, !dbg !5755
  %tobool3 = icmp ne ptr %3, null, !dbg !5753
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5756

if.then4:                                         ; preds = %if.end
  br label %err_buf, !dbg !5757

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !5758

do.body:                                          ; preds = %if.end5
  %4 = load ptr, ptr %buf, align 8, !dbg !5759
  %mutex = getelementptr inbounds %struct.tty_audit_buf, ptr %4, i32 0, i32 0, !dbg !5759
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str.6, ptr noundef @tty_audit_buf_alloc.__key) #15, !dbg !5759
  br label %do.cond, !dbg !5759

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5759

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %buf, align 8, !dbg !5761
  store ptr %5, ptr %retval, align 8, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5762

err_buf:                                          ; preds = %if.then4
  call void @llvm.dbg.label(metadata !5093), !dbg !5763
  %6 = load ptr, ptr %buf, align 8, !dbg !5764
  call void @kfree(ptr noundef %6) #15, !dbg !5765
  br label %err, !dbg !5765

err:                                              ; preds = %err_buf, %if.then
  call void @llvm.dbg.label(metadata !5094), !dbg !5766
  store ptr null, ptr %retval, align 8, !dbg !5767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5767

cleanup:                                          ; preds = %err, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !5768
  %7 = load ptr, ptr %retval, align 8, !dbg !5768
  ret ptr %7, !dbg !5768
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5769 dso_local void @audit_log_lost(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5772 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  %0 = load i64, ptr %size.addr, align 8, !dbg !5780
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5781
  %or = or i32 %1, 256, !dbg !5782
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5783
  ret ptr %call, !dbg !5784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5785 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5787, metadata !DIExpression()), !dbg !5792
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5788, metadata !DIExpression()), !dbg !5793
  %0 = load i64, ptr %size.addr, align 8, !dbg !5794
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5795
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5796

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5797
  %tobool = icmp ne i64 %2, 0, !dbg !5797
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5798

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5789, metadata !DIExpression()), !dbg !5800
  %3 = load i64, ptr %size.addr, align 8, !dbg !5801
  %cmp = icmp ugt i64 %3, 8192, !dbg !5803
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5804

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5805
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5806
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5807
  store ptr %call, ptr %retval, align 8, !dbg !5808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5809
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5809
  store i32 %call2, ptr %index, align 4, !dbg !5810
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5811
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5812
  %9 = ptrtoint ptr %8 to i64, !dbg !5812
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5813
  %idxprom = zext i32 %call3 to i64, !dbg !5814
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5814
  %10 = load i32, ptr %index, align 4, !dbg !5815
  %idxprom4 = zext i32 %10 to i64, !dbg !5814
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5814
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5814
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5816
  %13 = load i64, ptr %size.addr, align 8, !dbg !5817
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5818
  store ptr %call6, ptr %retval, align 8, !dbg !5819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5819

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !5820
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5821
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5822
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5823
  store ptr %call8, ptr %retval, align 8, !dbg !5824
  br label %return, !dbg !5824

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5825
  ret ptr %16, !dbg !5825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5826 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5830 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !5831 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5835, metadata !DIExpression()), !dbg !5837
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5836, metadata !DIExpression()), !dbg !5838
  %0 = load i64, ptr %size.addr, align 8, !dbg !5839
  %tobool = icmp ne i64 %0, 0, !dbg !5839
  br i1 %tobool, label %if.end, label %if.then, !dbg !5841

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp = icmp ule i64 %1, 8, !dbg !5845
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5846

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5848
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5850
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5851

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5852
  %cmp4 = icmp ule i64 %3, 96, !dbg !5853
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5854

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5855
  br label %return, !dbg !5855

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5856
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5858
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5859

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5860
  %cmp9 = icmp ule i64 %5, 192, !dbg !5861
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5862

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5863
  br label %return, !dbg !5863

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5864
  %cmp12 = icmp ule i64 %6, 8, !dbg !5866
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5867

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5868
  br label %return, !dbg !5868

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5869
  %cmp15 = icmp ule i64 %7, 16, !dbg !5871
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5872

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5874
  %cmp18 = icmp ule i64 %8, 32, !dbg !5876
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5877

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5878
  br label %return, !dbg !5878

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5879
  %cmp21 = icmp ule i64 %9, 64, !dbg !5881
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5882

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5883
  br label %return, !dbg !5883

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5884
  %cmp24 = icmp ule i64 %10, 128, !dbg !5886
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5887

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5889
  %cmp27 = icmp ule i64 %11, 256, !dbg !5891
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5892

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5894
  %cmp30 = icmp ule i64 %12, 512, !dbg !5896
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5897

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5899
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5901
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5902

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5903
  br label %return, !dbg !5903

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5904
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5906
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5907

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5909
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5911
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5912

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5913
  br label %return, !dbg !5913

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5914
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5916
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5917

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5921
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5922

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5924
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5926
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5927

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5929
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5931
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5932

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5934
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5936
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5937

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5939
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5941
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5942

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5943
  br label %return, !dbg !5943

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5944
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5946
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5947

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5949
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5951
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5952

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5954
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5956
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5957

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5958
  br label %return, !dbg !5958

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5959, !range !5491, !noundef !619
  %tobool69 = trunc i8 %25 to i1, !dbg !5959
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5961

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5962

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_227() #19, !dbg !5963, !srcloc !5966
  unreachable, !dbg !5963

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5967

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5968

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5969

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5971

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5969

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #14, !dbg !5973, !srcloc !5975
  br label %do.end75, !dbg !5973

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5969

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5976
  br label %return, !dbg !5976

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5977
  ret i32 %26, !dbg !5977
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5978 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !5981 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5985, metadata !DIExpression()), !dbg !5987
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5986, metadata !DIExpression()), !dbg !5988
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5989
  %and = and i32 %0, 17, !dbg !5989
  %cmp = icmp eq i32 %and, 0, !dbg !5989
  %lnot = xor i1 %cmp, true, !dbg !5989
  %lnot1 = xor i1 %lnot, true, !dbg !5989
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5989
  %conv = sext i32 %lnot.ext to i64, !dbg !5989
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5989
  %tobool = icmp ne i64 %expval, 0, !dbg !5989
  br i1 %tobool, label %if.then, label %if.end, !dbg !5991

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5993
  %and2 = and i32 %1, 1, !dbg !5995
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5995
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5996

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5997
  br label %return, !dbg !5997

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5998
  br label %return, !dbg !5998

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6000
  ret i32 %2, !dbg !6000
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6001 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6002 dso_local void @__compiletime_assert_227() #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!120}
!llvm.module.flags = !{!5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102}
!llvm.ident = !{!5103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/tty/tty_audit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cda53036e9cb811094e5c9967962cdb7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 24)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 56)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 7)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 30)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__key", scope: !34, file: !2, line: 44, type: !2448, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "tty_audit_buf_alloc", scope: !2, file: !2, line: 32, type: !35, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5091)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2, line: 15, size: 448, elements: !39)
!39 = !{!40, !103, !109, !112, !118}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !2, line: 16, baseType: !41, size: 256)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !42, line: 66, size: 256, elements: !43)
!42 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!43 = !{!44, !57, !92, !97}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !41, file: !42, line: 67, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !46, line: 13, baseType: !47)
!46 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !48, line: 181, baseType: !49)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 179, size: 64, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !49, file: !48, line: 180, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !53, line: 22, baseType: !54)
!53 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !55, line: 30, baseType: !56)
!55 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!56 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !41, file: !42, line: 68, baseType: !58, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !59, line: 23, baseType: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !59, line: 14, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !60, file: !59, line: 15, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !64, line: 44, baseType: !65)
!64 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !64, line: 14, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, scope: !65, file: !64, line: 15, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !64, line: 15, size: 32, elements: !69)
!69 = !{!70, !76, !84}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !64, line: 16, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !48, line: 174, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 172, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !72, file: !48, line: 173, baseType: !75, size: 32)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !64, line: 24, baseType: !77, size: 16)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !64, line: 24, size: 16, elements: !78)
!78 = !{!79, !83}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !77, file: !64, line: 25, baseType: !80, size: 8)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !53, line: 17, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !55, line: 21, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !77, file: !64, line: 26, baseType: !80, size: 8, offset: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !64, line: 28, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !64, line: 28, size: 32, elements: !86)
!86 = !{!87, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !85, file: !64, line: 29, baseType: !88, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !53, line: 19, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !55, line: 24, baseType: !90)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !85, file: !64, line: 30, baseType: !88, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !41, file: !42, line: 70, baseType: !93, size: 32, offset: 96)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !94, line: 15, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !94, line: 20, baseType: !71, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !41, file: !42, line: 72, baseType: !98, size: 128, offset: 128)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !48, line: 190, size: 128, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !48, line: 191, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !48, line: 191, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !38, file: !2, line: 17, baseType: !104, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !48, line: 21, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !48, line: 18, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !53, line: 21, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !55, line: 27, baseType: !108)
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "icanon", scope: !38, file: !2, line: 18, baseType: !110, size: 8, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 35, baseType: !111)
!111 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !38, file: !2, line: 19, baseType: !113, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 61, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !115, line: 72, baseType: !116)
!115 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !115, line: 16, baseType: !117)
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !2, line: 20, baseType: !119, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!120 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_audit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_audit\22 -D KBUILD_BASENAME=\22tty_audit\22 -D KBUILD_MODNAME=\22tty_audit\22 -D __KBUILD_MODNAME=kmod_tty_audit -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_audit.ll drivers/tty/tty_audit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !271, globals: !5082, splitDebugInlining: false, nameTableKind: None)
!121 = !{!122, !127, !135, !142, !150, !166, !173, !179, !184, !190, !196, !203, !209, !216, !224, !231, !240, !245, !250, !256, !261}
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !123, line: 65, baseType: !108, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!126 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !128, line: 9, baseType: !108, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!131 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!132 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!133 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!134 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !136, line: 312, baseType: !108, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!139 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!140 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!141 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !143, line: 68, baseType: !108, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!144 = !{!145, !146, !147, !148, !149}
!145 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !151, line: 1325, baseType: !108, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!153 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!154 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!155 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!156 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!157 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!158 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!159 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!160 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!161 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!162 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!163 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!164 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!165 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !167, line: 15, baseType: !108, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!170 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!171 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!172 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !174, line: 26, baseType: !108, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!177 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!178 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !180, line: 2052, baseType: !108, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!181 = !{!182, !183}
!182 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!183 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !185, line: 54, baseType: !108, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "USRQUOTA", value: 0)
!188 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!189 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !191, line: 16, baseType: !108, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "TT_NONE", value: 0)
!194 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!195 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !197, line: 51, baseType: !108, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!200 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!201 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!202 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !204, line: 45, baseType: !108, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!207 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!208 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !210, line: 487, baseType: !108, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!211 = !{!212, !213, !214, !215}
!212 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!213 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!214 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!215 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !217, line: 620, baseType: !108, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!220 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!221 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!222 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!223 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !217, line: 597, baseType: !75, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!227 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!228 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!229 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!230 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !210, line: 547, baseType: !108, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239}
!233 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!234 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!235 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!236 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!237 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!238 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!239 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !210, line: 564, baseType: !108, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!243 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!244 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !210, line: 577, baseType: !108, size: 32, elements: !246)
!246 = !{!247, !248, !249}
!247 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!248 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!249 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !210, line: 503, baseType: !108, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!253 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!254 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!255 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 10, baseType: !108, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!258 = !{!259, !260}
!259 = !DIEnumerator(name: "false", value: 0)
!260 = !DIEnumerator(name: "true", value: 1)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !262, line: 364, baseType: !108, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!263 = !{!264, !265, !266, !267, !268, !269, !270}
!264 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!265 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!266 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!267 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!268 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!269 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!270 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!271 = !{!272, !275, !290, !276, !117, !775, !5077, !725, !108, !5080}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !278, line: 746, size: 58368, elements: !279)
!278 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!279 = !{!280, !288, !289, !291, !297, !298, !299, !300, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !381, !392, !492, !496, !499, !530, !531, !532, !533, !544, !546, !547, !548, !549, !550, !551, !562, !563, !566, !567, !568, !569, !570, !571, !572, !573, !580, !581, !588, !589, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3387, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3435, !3441, !3442, !3443, !3444, !3445, !3447, !3450, !3457, !3462, !3465, !3468, !3471, !3497, !4483, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4521, !4522, !4523, !4532, !4540, !4541, !4542, !4543, !4544, !4549, !4550, !4551, !4554, !4555, !4558, !4561, !4564, !4572, !4575, !4576, !4662, !4663, !4664, !4665, !4666, !4672, !4673, !4674, !4675, !4678, !4679, !4682, !4685, !4686, !4689, !4690, !4691, !4694, !4695, !4696, !4697, !4698, !4699, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4731, !4732, !4738, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4750, !4822, !4824, !4825, !4826, !4827, !4828, !4829, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !277, file: !278, line: 752, baseType: !281, size: 192)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !282, line: 56, size: 192, elements: !283)
!282 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!283 = !{!284, !285, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !282, line: 57, baseType: !117, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !281, file: !282, line: 58, baseType: !117, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !281, file: !282, line: 59, baseType: !106, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !281, file: !282, line: 61, baseType: !106, size: 32, offset: 160)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !277, file: !278, line: 754, baseType: !108, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !277, file: !278, line: 767, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !277, file: !278, line: 768, baseType: !292, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !293, line: 113, baseType: !294)
!293 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !293, line: 111, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !294, file: !293, line: 112, baseType: !71, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !278, line: 770, baseType: !108, size: 32, offset: 352)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !277, file: !278, line: 771, baseType: !108, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !277, file: !278, line: 774, baseType: !75, size: 32, offset: 416)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !277, file: !278, line: 775, baseType: !301, size: 128, offset: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !302, line: 58, size: 128, elements: !303)
!302 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!303 = !{!304, !310, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !301, file: !302, line: 59, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !306, line: 60, size: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !306, line: 61, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !302, line: 60, baseType: !311, size: 32, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !302, line: 60, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !311, file: !302, line: 61, baseType: !108, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !311, file: !302, line: 62, baseType: !71, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !301, file: !302, line: 65, baseType: !88, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !301, file: !302, line: 65, baseType: !88, size: 16, offset: 112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !277, file: !278, line: 776, baseType: !108, size: 32, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !277, file: !278, line: 777, baseType: !117, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !277, file: !278, line: 778, baseType: !276, size: 64, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !277, file: !278, line: 787, baseType: !75, size: 32, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !277, file: !278, line: 788, baseType: !75, size: 32, offset: 800)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !277, file: !278, line: 790, baseType: !75, size: 32, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !277, file: !278, line: 792, baseType: !75, size: 32, offset: 864)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !277, file: !278, line: 793, baseType: !75, size: 32, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !277, file: !278, line: 794, baseType: !75, size: 32, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !277, file: !278, line: 795, baseType: !108, size: 32, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !277, file: !278, line: 797, baseType: !328, size: 2048, offset: 1024)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !278, line: 551, size: 2048, elements: !329)
!329 = !{!330, !335, !343, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !360, !363, !364, !365}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !328, file: !278, line: 553, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !278, line: 411, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !331, file: !278, line: 412, baseType: !117, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !331, file: !278, line: 413, baseType: !106, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !328, file: !278, line: 554, baseType: !336, size: 192, align: 64, offset: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !337, line: 5, size: 192, align: 64, elements: !338)
!337 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!338 = !{!339, !340, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !336, file: !337, line: 6, baseType: !117, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !336, file: !337, line: 7, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !336, file: !337, line: 8, baseType: !341, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !328, file: !278, line: 555, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !53, line: 23, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !55, line: 31, baseType: !346)
!346 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !328, file: !278, line: 556, baseType: !344, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !328, file: !278, line: 558, baseType: !98, size: 128, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !328, file: !278, line: 559, baseType: !108, size: 32, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !328, file: !278, line: 561, baseType: !344, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !328, file: !278, line: 562, baseType: !344, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !328, file: !278, line: 563, baseType: !344, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !328, file: !278, line: 564, baseType: !344, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !328, file: !278, line: 565, baseType: !52, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !328, file: !278, line: 566, baseType: !344, size: 64, offset: 960)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !328, file: !278, line: 568, baseType: !344, size: 64, offset: 1024)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !328, file: !278, line: 571, baseType: !75, size: 32, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !328, file: !278, line: 572, baseType: !359, size: 64, offset: 1152)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !328, file: !278, line: 574, baseType: !361, size: 64, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !278, line: 49, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !328, file: !278, line: 576, baseType: !361, size: 64, offset: 1280)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !328, file: !278, line: 578, baseType: !117, size: 64, offset: 1344)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !328, file: !278, line: 588, baseType: !366, size: 512, align: 512, offset: 1536)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !278, line: 497, size: 512, align: 512, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !366, file: !278, line: 498, baseType: !344, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !366, file: !278, line: 499, baseType: !344, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !366, file: !278, line: 500, baseType: !344, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !366, file: !278, line: 501, baseType: !106, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !366, file: !278, line: 502, baseType: !106, size: 32, offset: 224)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !366, file: !278, line: 503, baseType: !117, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !366, file: !278, line: 504, baseType: !117, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !366, file: !278, line: 505, baseType: !117, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !366, file: !278, line: 506, baseType: !377, size: 64, align: 64, offset: 448)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !278, line: 445, size: 64, align: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !377, file: !278, line: 446, baseType: !108, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !377, file: !278, line: 447, baseType: !108, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !277, file: !278, line: 798, baseType: !382, size: 384, offset: 3072)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !278, line: 592, size: 384, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !382, file: !278, line: 593, baseType: !98, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !382, file: !278, line: 594, baseType: !117, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !382, file: !278, line: 595, baseType: !117, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !382, file: !278, line: 596, baseType: !108, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !382, file: !278, line: 597, baseType: !90, size: 16, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !382, file: !278, line: 598, baseType: !90, size: 16, offset: 304)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !382, file: !278, line: 600, baseType: !391, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !277, file: !278, line: 799, baseType: !393, size: 1792, offset: 3456)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !278, line: 610, size: 1792, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !489, !490}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !393, file: !278, line: 611, baseType: !336, size: 192, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !393, file: !278, line: 618, baseType: !344, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !393, file: !278, line: 619, baseType: !344, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !393, file: !278, line: 620, baseType: !344, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !393, file: !278, line: 621, baseType: !344, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !393, file: !278, line: 622, baseType: !344, size: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !393, file: !278, line: 629, baseType: !52, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !393, file: !278, line: 630, baseType: !344, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !278, line: 631, baseType: !108, size: 32, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !393, file: !278, line: 653, baseType: !108, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !393, file: !278, line: 654, baseType: !108, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !393, file: !278, line: 655, baseType: !108, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !393, file: !278, line: 656, baseType: !108, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !393, file: !278, line: 662, baseType: !409, size: 512, offset: 704)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !123, line: 118, size: 512, elements: !410)
!410 = !{!411, !419, !420, !425, !485, !486, !487, !488}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !409, file: !123, line: 119, baseType: !412, size: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !413, line: 9, size: 256, elements: !414)
!413 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !412, file: !413, line: 10, baseType: !336, size: 192, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !412, file: !413, line: 11, baseType: !417, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !418, line: 29, baseType: !52)
!418 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !409, file: !123, line: 120, baseType: !417, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !409, file: !123, line: 121, baseType: !421, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!122, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !409, file: !123, line: 122, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !123, line: 159, size: 512, align: 512, elements: !428)
!428 = !{!429, !454, !455, !458, !468, !469, !480, !484}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !427, file: !123, line: 160, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !123, line: 215, size: 4608, align: 512, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !123, line: 216, baseType: !58, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !431, file: !123, line: 217, baseType: !108, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !431, file: !123, line: 218, baseType: !108, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !431, file: !123, line: 219, baseType: !108, size: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !431, file: !123, line: 220, baseType: !108, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !431, file: !123, line: 221, baseType: !108, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !431, file: !123, line: 222, baseType: !108, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !431, file: !123, line: 223, baseType: !108, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !431, file: !123, line: 224, baseType: !108, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !431, file: !123, line: 226, baseType: !108, size: 32, offset: 160)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !431, file: !123, line: 227, baseType: !90, size: 16, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !431, file: !123, line: 228, baseType: !90, size: 16, offset: 208)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !431, file: !123, line: 229, baseType: !108, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !431, file: !123, line: 235, baseType: !417, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !431, file: !123, line: 236, baseType: !424, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !431, file: !123, line: 237, baseType: !417, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !431, file: !123, line: 238, baseType: !424, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !431, file: !123, line: 239, baseType: !451, size: 4096, align: 512, offset: 512)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 4096, align: 512, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !427, file: !123, line: 161, baseType: !108, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !427, file: !123, line: 162, baseType: !456, size: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !48, line: 32, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !115, line: 96, baseType: !75)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !427, file: !123, line: 163, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !460, line: 274, baseType: !461)
!460 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !460, line: 274, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !461, file: !460, line: 274, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !460, line: 69, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !460, line: 64, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !465, file: !460, line: 65, baseType: !108, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !427, file: !123, line: 164, baseType: !424, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !427, file: !123, line: 165, baseType: !470, size: 128, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !413, line: 14, size: 128, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !470, file: !413, line: 15, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !337, line: 26, size: 128, elements: !474)
!474 = !{!475, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !473, file: !337, line: 27, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !337, line: 12, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !337, line: 13, baseType: !341, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !473, file: !337, line: 28, baseType: !341, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !427, file: !123, line: 166, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!417}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !427, file: !123, line: 167, baseType: !417, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !409, file: !123, line: 123, baseType: !80, size: 8, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !409, file: !123, line: 124, baseType: !80, size: 8, offset: 456)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !409, file: !123, line: 125, baseType: !80, size: 8, offset: 464)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !409, file: !123, line: 126, baseType: !80, size: 8, offset: 472)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !393, file: !278, line: 671, baseType: !409, size: 512, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !393, file: !278, line: 679, baseType: !491, size: 64, offset: 1728)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !277, file: !278, line: 800, baseType: !493, size: 64, offset: 5248)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !278, line: 800, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !277, file: !278, line: 809, baseType: !497, size: 64, offset: 5312)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !278, line: 70, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !277, file: !278, line: 825, baseType: !500, size: 2048, align: 512, offset: 5632)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !278, line: 509, size: 2048, align: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !500, file: !278, line: 511, baseType: !344, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !500, file: !278, line: 512, baseType: !344, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !500, file: !278, line: 513, baseType: !344, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !500, file: !278, line: 514, baseType: !344, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !500, file: !278, line: 515, baseType: !344, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !500, file: !278, line: 516, baseType: !344, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !500, file: !278, line: 518, baseType: !344, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !500, file: !278, line: 519, baseType: !344, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !500, file: !278, line: 520, baseType: !52, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !500, file: !278, line: 522, baseType: !344, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !500, file: !278, line: 523, baseType: !344, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !500, file: !278, line: 524, baseType: !52, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !500, file: !278, line: 526, baseType: !52, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !500, file: !278, line: 527, baseType: !344, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !500, file: !278, line: 529, baseType: !344, size: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !500, file: !278, line: 530, baseType: !344, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !500, file: !278, line: 531, baseType: !344, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !500, file: !278, line: 532, baseType: !344, size: 64, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !500, file: !278, line: 533, baseType: !344, size: 64, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !500, file: !278, line: 535, baseType: !344, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !500, file: !278, line: 536, baseType: !344, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !500, file: !278, line: 537, baseType: !344, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !500, file: !278, line: 538, baseType: !344, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !500, file: !278, line: 539, baseType: !344, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !500, file: !278, line: 540, baseType: !344, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !500, file: !278, line: 541, baseType: !344, size: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !500, file: !278, line: 542, baseType: !344, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !500, file: !278, line: 543, baseType: !344, size: 64, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !277, file: !278, line: 833, baseType: !108, size: 32, offset: 7680)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !277, file: !278, line: 836, baseType: !108, size: 32, offset: 7712)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !277, file: !278, line: 837, baseType: !75, size: 32, offset: 7744)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !277, file: !278, line: 838, baseType: !534, size: 64, offset: 7808)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !537, line: 19, baseType: !538)
!537 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !537, line: 19, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !538, file: !537, line: 19, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !277, file: !278, line: 839, baseType: !545, size: 64, offset: 7872)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !277, file: !278, line: 840, baseType: !536, size: 64, offset: 7936)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !277, file: !278, line: 841, baseType: !290, size: 64, offset: 8000)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !277, file: !278, line: 843, baseType: !90, size: 16, offset: 8064)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !277, file: !278, line: 845, baseType: !90, size: 16, offset: 8080)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !277, file: !278, line: 848, baseType: !75, size: 32, offset: 8096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !277, file: !278, line: 849, baseType: !552, size: 32, offset: 8128)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !278, line: 718, size: 32, elements: !553)
!553 = !{!554, !561}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !552, file: !278, line: 724, baseType: !555, size: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !278, line: 719, size: 32, elements: !556)
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !555, file: !278, line: 720, baseType: !80, size: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !555, file: !278, line: 721, baseType: !80, size: 8, offset: 8)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !555, file: !278, line: 722, baseType: !80, size: 8, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !555, file: !278, line: 723, baseType: !80, size: 8, offset: 24)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !552, file: !278, line: 725, baseType: !106, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !277, file: !278, line: 850, baseType: !98, size: 128, offset: 8192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !277, file: !278, line: 851, baseType: !564, size: 64, offset: 8320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !278, line: 60, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !277, file: !278, line: 855, baseType: !117, size: 64, offset: 8384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !277, file: !278, line: 856, baseType: !80, size: 8, offset: 8448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !277, file: !278, line: 857, baseType: !80, size: 8, offset: 8456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !277, file: !278, line: 858, baseType: !75, size: 32, offset: 8480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !277, file: !278, line: 859, baseType: !98, size: 128, offset: 8512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !277, file: !278, line: 860, baseType: !75, size: 32, offset: 8640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !277, file: !278, line: 861, baseType: !98, size: 128, offset: 8704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !277, file: !278, line: 873, baseType: !574, size: 256, offset: 8832)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !278, line: 376, size: 256, elements: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !574, file: !278, line: 381, baseType: !117, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !574, file: !278, line: 384, baseType: !346, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !574, file: !278, line: 389, baseType: !346, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !574, file: !278, line: 392, baseType: !346, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !277, file: !278, line: 875, baseType: !98, size: 128, offset: 9088)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !277, file: !278, line: 877, baseType: !582, size: 320, offset: 9216)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !583, line: 86, size: 320, elements: !584)
!583 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !582, file: !583, line: 87, baseType: !75, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !582, file: !583, line: 88, baseType: !98, size: 128, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !582, file: !583, line: 89, baseType: !98, size: 128, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !277, file: !278, line: 878, baseType: !336, size: 192, align: 64, offset: 9536)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !277, file: !278, line: 881, baseType: !590, size: 64, offset: 9728)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !151, line: 733, size: 10240, elements: !592)
!592 = !{!593, !3306}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !151, line: 734, baseType: !594, size: 10240)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !591, file: !151, line: 734, size: 10240, elements: !595)
!595 = !{!596, !600, !622, !3185, !3186, !3187, !3188, !3189, !3190, !3197, !3198, !3199, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3238, !3240, !3243, !3286, !3287, !3288, !3291, !3292, !3293, !3296, !3297, !3298, !3304, !3305}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !151, line: 739, baseType: !597, size: 512, align: 512)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !151, line: 739, size: 512, align: 512, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !597, file: !151, line: 747, baseType: !71, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !594, file: !151, line: 750, baseType: !601, size: 128, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !602, line: 218, size: 128, elements: !603)
!602 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!603 = !{!604, !620, !621}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 219, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 219, size: 32, elements: !606)
!606 = !{!607, !616}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !605, file: !602, line: 220, baseType: !608, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !609, line: 29, baseType: !610)
!609 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !609, line: 17, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !609, line: 18, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !609, line: 18, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !613, file: !609, line: 19, baseType: !60, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !605, file: !602, line: 221, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !602, line: 197, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 197, elements: !619)
!619 = !{}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !601, file: !602, line: 223, baseType: !108, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !601, file: !602, line: 224, baseType: !290, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !594, file: !151, line: 752, baseType: !623, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!117, !626, !117, !117, !117, !117}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !180, line: 994, size: 1856, align: 64, elements: !628)
!628 = !{!629, !643, !644, !646, !647, !648, !651, !652, !774, !981, !990, !3175, !3176, !3177, !3178, !3179, !3180, !3182, !3183, !3184}
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !180, line: 995, baseType: !630, size: 128)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !180, line: 995, size: 128, elements: !631)
!631 = !{!632, !633, !642}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !630, file: !180, line: 996, baseType: !305, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !630, file: !180, line: 997, baseType: !634, size: 128, align: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !48, line: 232, size: 128, align: 64, elements: !635)
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !48, line: 233, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !634, file: !48, line: 234, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !637}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !630, file: !180, line: 998, baseType: !108, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !627, file: !180, line: 1005, baseType: !608, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !627, file: !180, line: 1006, baseType: !645, size: 32, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !48, line: 156, baseType: !108)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !627, file: !180, line: 1007, baseType: !45, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !627, file: !180, line: 1008, baseType: !41, size: 256, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !627, file: !180, line: 1009, baseType: !649, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !48, line: 52, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !115, line: 88, baseType: !56)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !627, file: !180, line: 1010, baseType: !108, size: 32, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !627, file: !180, line: 1011, baseType: !653, size: 256, offset: 640)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !180, line: 948, size: 256, elements: !654)
!654 = !{!655, !678, !764, !765, !772, !773}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !653, file: !180, line: 949, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !657, line: 34, baseType: !658)
!657 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 25, size: 64, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !658, file: !657, line: 26, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !662, line: 27, baseType: !663)
!662 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !662, line: 13, size: 64, elements: !664)
!664 = !{!665, !677}
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !662, line: 14, baseType: !666, size: 32)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !662, line: 14, size: 32, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !666, file: !662, line: 15, baseType: !71, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !662, line: 16, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !666, file: !662, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !670, file: !662, line: 18, baseType: !80, size: 8)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !670, file: !662, line: 19, baseType: !674, size: 24, offset: 8)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 24, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 3)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !663, file: !662, line: 26, baseType: !63, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !653, file: !180, line: 950, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !128, line: 59, size: 768, elements: !681)
!681 = !{!682, !683, !684, !685, !696, !697, !704, !705}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !128, line: 61, baseType: !292, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !680, file: !128, line: 62, baseType: !108, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !680, file: !128, line: 63, baseType: !608, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !680, file: !128, line: 65, baseType: !686, size: 256, offset: 128)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !10)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !48, line: 194, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !48, line: 195, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !48, line: 198, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !48, line: 199, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !48, line: 199, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !680, file: !128, line: 66, baseType: !687, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !680, file: !128, line: 68, baseType: !698, size: 192, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !699, line: 41, baseType: !700)
!699 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !699, line: 37, size: 192, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !700, file: !699, line: 38, baseType: !608, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !700, file: !699, line: 39, baseType: !98, size: 128, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !680, file: !128, line: 69, baseType: !634, size: 128, align: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !680, file: !128, line: 70, baseType: !706, offset: 768)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, elements: !762)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !128, line: 54, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !707, file: !128, line: 55, baseType: !75, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !707, file: !128, line: 56, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !713, line: 26, size: 1152, elements: !714)
!713 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!714 = !{!715, !729, !730, !731, !732, !736, !737, !738, !741, !745, !749, !750, !761}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !712, file: !713, line: 27, baseType: !716, size: 192)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !717, line: 19, size: 192, elements: !718)
!717 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!718 = !{!719, !727, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !716, file: !717, line: 20, baseType: !720, size: 128)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !721, line: 296, size: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!722 = !{!723, !724, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !720, file: !721, line: 297, baseType: !608, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !720, file: !721, line: 299, baseType: !725, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !48, line: 154, baseType: !108)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !720, file: !721, line: 300, baseType: !290, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !716, file: !717, line: 21, baseType: !108, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !716, file: !717, line: 22, baseType: !108, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !712, file: !713, line: 28, baseType: !634, size: 128, align: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !712, file: !713, line: 29, baseType: !108, size: 32, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !712, file: !713, line: 30, baseType: !276, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !712, file: !713, line: 31, baseType: !733, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !735, line: 325, flags: DIFlagFwdDecl)
!735 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !712, file: !713, line: 32, baseType: !108, size: 32, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !712, file: !713, line: 33, baseType: !711, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !712, file: !713, line: 35, baseType: !739, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !713, line: 17, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !712, file: !713, line: 37, baseType: !742, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !744, line: 18, flags: DIFlagFwdDecl)
!744 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !712, file: !713, line: 38, baseType: !746, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !748, line: 16, flags: DIFlagFwdDecl)
!748 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !712, file: !713, line: 39, baseType: !75, size: 32, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !712, file: !713, line: 40, baseType: !751, size: 192, offset: 896)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !752, line: 9, size: 192, elements: !753)
!752 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!753 = !{!754, !755, !759, !760}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !751, file: !752, line: 10, baseType: !45, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !751, file: !752, line: 11, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !752, line: 7, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !751, file: !752, line: 12, baseType: !108, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !751, file: !752, line: 13, baseType: !292, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !712, file: !713, line: 42, baseType: !75, size: 32, offset: 1088)
!762 = !{!763}
!763 = !DISubrange(count: -1)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !653, file: !180, line: 951, baseType: !127, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !180, line: 952, baseType: !766, size: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !744, line: 23, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 21, size: 32, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !767, file: !744, line: 22, baseType: !770, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !48, line: 37, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !115, line: 49, baseType: !108)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !653, file: !180, line: 952, baseType: !766, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !653, file: !180, line: 953, baseType: !75, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !627, file: !180, line: 1012, baseType: !775, size: 64, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !778, line: 110, size: 1472, elements: !779)
!778 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!779 = !{!780, !781, !782, !789, !790, !791, !792, !793, !794, !795, !796, !802, !803, !804, !805, !806, !807, !931, !932, !933, !934, !935, !966, !967, !968, !976}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !777, file: !778, line: 111, baseType: !45, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !778, line: 112, baseType: !766, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !777, file: !778, line: 113, baseType: !783, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !744, line: 28, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 26, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !784, file: !744, line: 27, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !48, line: 38, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !115, line: 50, baseType: !108)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !777, file: !778, line: 114, baseType: !766, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !777, file: !778, line: 115, baseType: !783, size: 32, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !777, file: !778, line: 116, baseType: !766, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !777, file: !778, line: 117, baseType: !783, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !777, file: !778, line: 118, baseType: !766, size: 32, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !777, file: !778, line: 119, baseType: !783, size: 32, offset: 288)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !777, file: !778, line: 120, baseType: !108, size: 32, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !777, file: !778, line: 121, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !798, line: 24, baseType: !799)
!798 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 24, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !799, file: !798, line: 24, baseType: !344, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !777, file: !778, line: 122, baseType: !797, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !777, file: !778, line: 123, baseType: !797, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !777, file: !778, line: 124, baseType: !797, size: 64, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !777, file: !778, line: 125, baseType: !797, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !777, file: !778, line: 127, baseType: !82, size: 8, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !777, file: !778, line: 129, baseType: !808, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !810, line: 195, size: 1728, elements: !811)
!810 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!811 = !{!812, !813, !818, !823, !832, !835, !836, !843, !844, !845, !846, !849, !850, !851, !853, !854, !895, !916}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !809, file: !810, line: 196, baseType: !292, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !809, file: !810, line: 197, baseType: !814, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !810, line: 28, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !48, line: 104, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !53, line: 20, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !55, line: 26, baseType: !75)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !810, line: 198, baseType: !819, size: 192, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !810, line: 198, size: 192, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !819, file: !810, line: 199, baseType: !98, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !819, file: !810, line: 200, baseType: !336, size: 192, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !809, file: !810, line: 205, baseType: !824, size: 320, offset: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !825, line: 48, size: 320, elements: !826)
!825 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!826 = !{!827, !828, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !825, line: 49, baseType: !45, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !824, file: !825, line: 55, baseType: !45, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !824, file: !825, line: 57, baseType: !93, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !824, file: !825, line: 59, baseType: !58, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !824, file: !825, line: 60, baseType: !98, size: 128, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !809, file: !810, line: 206, baseType: !833, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !810, line: 206, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !809, file: !810, line: 207, baseType: !290, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !810, line: 208, baseType: !837, size: 64, offset: 704)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !810, line: 208, size: 64, elements: !838)
!838 = !{!839, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !837, file: !810, line: 209, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !841, line: 8, baseType: !54)
!841 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!842 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !837, file: !810, line: 210, baseType: !840, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !809, file: !810, line: 212, baseType: !840, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !809, file: !810, line: 213, baseType: !766, size: 32, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !809, file: !810, line: 214, baseType: !783, size: 32, offset: 864)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !809, file: !810, line: 215, baseType: !847, size: 32, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !810, line: 31, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 110, baseType: !106)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !809, file: !810, line: 216, baseType: !90, size: 16, offset: 928)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !809, file: !810, line: 217, baseType: !90, size: 16, offset: 944)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !809, file: !810, line: 221, baseType: !852, size: 16, offset: 960)
!852 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !810, line: 228, baseType: !117, size: 64, offset: 1024)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !810, line: 245, baseType: !855, size: 320, offset: 1088)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !810, line: 245, size: 320, elements: !856)
!856 = !{!857, !886}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !855, file: !810, line: 246, baseType: !858, size: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !810, line: 114, size: 320, elements: !859)
!859 = !{!860, !861, !873, !876, !883}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !858, file: !810, line: 116, baseType: !117, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !810, line: 117, baseType: !862, size: 64, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !810, line: 117, size: 64, elements: !863)
!863 = !{!864, !872}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !810, line: 118, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !810, line: 118, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !865, file: !810, line: 120, baseType: !88, size: 16)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !865, file: !810, line: 121, baseType: !869, size: 48, offset: 16)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 6)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !862, file: !810, line: 127, baseType: !117, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !810, line: 129, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !810, line: 102, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !858, file: !810, line: 130, baseType: !877, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !810, line: 108, size: 192, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !878, file: !810, line: 109, baseType: !634, size: 128, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !878, file: !810, line: 110, baseType: !292, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !878, file: !810, line: 111, baseType: !110, size: 8, offset: 160)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !858, file: !810, line: 131, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !810, line: 247, baseType: !887, size: 320)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !810, line: 247, size: 320, elements: !888)
!888 = !{!889, !890, !891, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !887, file: !810, line: 248, baseType: !117, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !887, file: !810, line: 249, baseType: !117, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !887, file: !810, line: 250, baseType: !874, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !887, file: !810, line: 251, baseType: !877, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !887, file: !810, line: 252, baseType: !894, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !810, line: 260, baseType: !896, size: 256, offset: 1408)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !810, line: 260, size: 256, elements: !897)
!897 = !{!898, !904}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !896, file: !810, line: 261, baseType: !899, size: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !810, line: 134, size: 256, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !899, file: !810, line: 135, baseType: !290, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !899, file: !810, line: 136, baseType: !903, size: 256)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !10)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !810, line: 262, baseType: !905, size: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !810, line: 262, size: 256, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !905, file: !810, line: 264, baseType: !98, size: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !905, file: !810, line: 265, baseType: !909, size: 128, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !910, line: 22, size: 128, elements: !911)
!910 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!911 = !{!912, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !909, file: !910, line: 23, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !910, line: 23, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !909, file: !910, line: 24, baseType: !117, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !809, file: !810, line: 280, baseType: !917, size: 64, offset: 1664)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !810, line: 176, size: 192, elements: !919)
!919 = !{!920, !929, !930}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !918, file: !810, line: 177, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !810, line: 171, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!75, !808, !925, !927, !808}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !918, file: !810, line: 178, baseType: !808, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !918, file: !810, line: 179, baseType: !874, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !777, file: !778, line: 130, baseType: !808, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !777, file: !778, line: 131, baseType: !808, size: 64, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !777, file: !778, line: 132, baseType: !808, size: 64, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !777, file: !778, line: 135, baseType: !290, size: 64, offset: 1024)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !777, file: !778, line: 137, baseType: !936, size: 64, offset: 1088)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !938, line: 14, size: 1088, elements: !939)
!938 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!939 = !{!940, !941, !950, !951, !952, !953, !954, !955}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !937, file: !938, line: 15, baseType: !292, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !937, file: !938, line: 17, baseType: !942, size: 320, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !943, line: 22, size: 320, elements: !944)
!943 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!944 = !{!945, !946, !947, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !942, file: !943, line: 23, baseType: !58, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !942, file: !943, line: 24, baseType: !52, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !942, file: !943, line: 26, baseType: !98, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !942, file: !943, line: 28, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !937, file: !938, line: 19, baseType: !117, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !937, file: !938, line: 20, baseType: !45, size: 64, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !937, file: !938, line: 23, baseType: !691, size: 128, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !937, file: !938, line: 24, baseType: !766, size: 32, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !937, file: !938, line: 29, baseType: !45, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !937, file: !938, line: 36, baseType: !956, size: 320, offset: 768)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !957, line: 15, size: 320, elements: !958)
!957 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !956, file: !957, line: 16, baseType: !58, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !956, file: !957, line: 18, baseType: !75, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !956, file: !957, line: 19, baseType: !75, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !956, file: !957, line: 20, baseType: !75, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !956, file: !957, line: 21, baseType: !75, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !956, file: !957, line: 22, baseType: !117, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !957, line: 23, baseType: !117, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !777, file: !778, line: 138, baseType: !742, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !777, file: !778, line: 139, baseType: !746, size: 64, offset: 1216)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !777, file: !778, line: 140, baseType: !969, size: 64, offset: 1280)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !778, line: 25, size: 64, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !970, file: !778, line: 26, baseType: !71, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !970, file: !778, line: 27, baseType: !75, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !970, file: !778, line: 28, baseType: !975, offset: 64)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, elements: !762)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 142, baseType: !977, size: 128, offset: 1344)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 142, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !977, file: !778, line: 143, baseType: !75, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !977, file: !778, line: 144, baseType: !634, size: 128, align: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !627, file: !180, line: 1013, baseType: !982, size: 256, offset: 960)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !180, line: 970, size: 256, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !982, file: !180, line: 971, baseType: !117, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !982, file: !180, line: 972, baseType: !108, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !982, file: !180, line: 973, baseType: !108, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !982, file: !180, line: 974, baseType: !108, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !982, file: !180, line: 975, baseType: !108, size: 32, offset: 160)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !982, file: !180, line: 976, baseType: !649, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !627, file: !180, line: 1014, baseType: !991, size: 128, offset: 1216)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !992, line: 8, size: 128, elements: !993)
!992 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!993 = !{!994, !3174}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !991, file: !992, line: 9, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !997, line: 70, size: 256, elements: !998)
!997 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!998 = !{!999, !3171, !3172, !3173}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !996, file: !997, line: 71, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1002, line: 82, size: 1536, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1003 = !{!1004, !1005, !1010, !1018, !1019, !1034, !3138, !3140, !3153, !3154, !3155, !3156, !3157, !3163, !3164, !3165}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1001, file: !1002, line: 84, baseType: !108, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1001, file: !1002, line: 85, baseType: !1006, size: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !460, line: 275, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !460, line: 275, size: 32, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1007, file: !460, line: 275, baseType: !464, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1001, file: !1002, line: 86, baseType: !1011, size: 128, offset: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1012, line: 38, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1013 = !{!1014, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1011, file: !1012, line: 39, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1011, file: !1012, line: 39, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1001, file: !1002, line: 87, baseType: !1000, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1001, file: !1002, line: 88, baseType: !1020, size: 128, offset: 256)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1002, line: 49, size: 128, elements: !1021)
!1021 = !{!1022, !1031}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !1002, line: 50, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !1002, line: 50, size: 64, elements: !1024)
!1024 = !{!1025, !1030}
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !1002, line: 51, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !1002, line: 51, size: 64, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1026, file: !1002, line: 52, baseType: !106, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1026, file: !1002, line: 52, baseType: !106, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1023, file: !1002, line: 54, baseType: !344, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1020, file: !1002, line: 56, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1001, file: !1002, line: 89, baseType: !1035, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !180, line: 641, size: 4800, elements: !1037)
!1037 = !{!1038, !1040, !1041, !1042, !1043, !1044, !1045, !1048, !1049, !1235, !2944, !2945, !2946, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !3112, !3115, !3116, !3117, !3134, !3135, !3136, !3137}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1036, file: !180, line: 642, baseType: !1039, size: 16)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !48, line: 24, baseType: !90)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1036, file: !180, line: 643, baseType: !90, size: 16, offset: 16)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1036, file: !180, line: 644, baseType: !766, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1036, file: !180, line: 645, baseType: !98, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1036, file: !180, line: 646, baseType: !783, size: 32, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1036, file: !180, line: 647, baseType: !108, size: 32, offset: 224)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1036, file: !180, line: 650, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !180, line: 607, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1036, file: !180, line: 651, baseType: !1046, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1036, file: !180, line: 654, baseType: !1050, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !180, line: 1966, size: 2048, align: 512, elements: !1053)
!1053 = !{!1054, !1058, !1071, !1077, !1081, !1085, !1089, !1093, !1097, !1101, !1105, !1106, !1110, !1114, !1152, !1183, !1190, !1196, !1200, !1204, !1208, !1212, !1216, !1222, !1226}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1052, file: !180, line: 1967, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1000, !1035, !1000, !108}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1052, file: !180, line: 1968, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!884, !1000, !1035, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1064, line: 10, size: 128, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1065 = !{!1066, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1063, file: !1064, line: 11, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !290}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1063, file: !1064, line: 12, baseType: !290, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1052, file: !180, line: 1969, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!75, !1075, !1035, !75}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !798, line: 42, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1052, file: !180, line: 1970, baseType: !1078, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1046, !1035, !75, !110}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1052, file: !180, line: 1972, baseType: !1082, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!75, !1000, !894, !75}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1052, file: !180, line: 1974, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!75, !1075, !1035, !1000, !1039, !110}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1052, file: !180, line: 1976, baseType: !1090, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!75, !1000, !1035, !1000}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1052, file: !180, line: 1977, baseType: !1094, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!75, !1035, !1000}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1052, file: !180, line: 1978, baseType: !1098, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!75, !1075, !1035, !1000, !884}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1052, file: !180, line: 1980, baseType: !1102, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!75, !1075, !1035, !1000, !1039}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1052, file: !180, line: 1982, baseType: !1094, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1052, file: !180, line: 1983, baseType: !1107, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!75, !1075, !1035, !1000, !1039, !104}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1052, file: !180, line: 1985, baseType: !1111, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!75, !1075, !1035, !1000, !1035, !1000, !108}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1052, file: !180, line: 1987, baseType: !1115, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!75, !1075, !1000, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !180, line: 226, size: 640, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1133, !1142, !1143, !1149, !1150, !1151}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1119, file: !180, line: 227, baseType: !108, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1119, file: !180, line: 228, baseType: !1039, size: 16, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !180, line: 241, baseType: !1124, size: 32, offset: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !180, line: 241, size: 32, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1124, file: !180, line: 242, baseType: !766, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1124, file: !180, line: 243, baseType: !1128, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1129, line: 16, baseType: !1130)
!1129 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1129, line: 14, size: 32, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1130, file: !1129, line: 15, baseType: !770, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !180, line: 245, baseType: !1134, size: 32, offset: 96)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !180, line: 245, size: 32, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1134, file: !180, line: 246, baseType: !783, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1134, file: !180, line: 247, baseType: !1138, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1129, line: 20, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1129, line: 18, size: 32, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1139, file: !1129, line: 19, baseType: !787, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1119, file: !180, line: 249, baseType: !649, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1119, file: !180, line: 250, baseType: !1144, size: 128, offset: 192)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !841, line: 13, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1144, file: !841, line: 14, baseType: !840, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1144, file: !841, line: 15, baseType: !1148, size: 64, offset: 64)
!1148 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1119, file: !180, line: 251, baseType: !1144, size: 128, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1119, file: !180, line: 252, baseType: !1144, size: 128, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1119, file: !180, line: 259, baseType: !626, size: 64, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1052, file: !180, line: 1988, baseType: !1153, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!75, !1075, !1156, !1158, !106, !108}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1160, line: 22, size: 1280, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1159, file: !1160, line: 23, baseType: !106, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1159, file: !1160, line: 24, baseType: !1039, size: 16, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1159, file: !1160, line: 25, baseType: !108, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1159, file: !1160, line: 26, baseType: !848, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1159, file: !1160, line: 27, baseType: !344, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1159, file: !1160, line: 28, baseType: !344, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1159, file: !1160, line: 41, baseType: !344, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1159, file: !1160, line: 42, baseType: !104, size: 32, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1159, file: !1160, line: 43, baseType: !104, size: 32, offset: 352)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1159, file: !1160, line: 44, baseType: !766, size: 32, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1159, file: !1160, line: 45, baseType: !783, size: 32, offset: 416)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1159, file: !1160, line: 46, baseType: !649, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1159, file: !1160, line: 47, baseType: !1144, size: 128, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1159, file: !1160, line: 48, baseType: !1144, size: 128, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1159, file: !1160, line: 49, baseType: !1144, size: 128, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1159, file: !1160, line: 50, baseType: !1144, size: 128, offset: 896)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1159, file: !1160, line: 51, baseType: !344, size: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1159, file: !1160, line: 52, baseType: !344, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1159, file: !1160, line: 53, baseType: !106, size: 32, offset: 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1159, file: !1160, line: 54, baseType: !106, size: 32, offset: 1184)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1159, file: !1160, line: 55, baseType: !344, size: 64, offset: 1216)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1052, file: !180, line: 1990, baseType: !1184, size: 64, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1187, !1000, !894, !113}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !48, line: 66, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !115, line: 73, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !115, line: 15, baseType: !1148)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1052, file: !180, line: 1991, baseType: !1191, size: 64, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!75, !1035, !1194, !344, !344}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !180, line: 55, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1052, file: !180, line: 1993, baseType: !1197, size: 64, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!75, !1035, !75}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1052, file: !180, line: 1994, baseType: !1201, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!75, !1035, !1000, !626, !108, !1039}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1052, file: !180, line: 1997, baseType: !1205, size: 64, offset: 1216)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!75, !1075, !1035, !626, !1039}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1052, file: !180, line: 1999, baseType: !1209, size: 64, offset: 1280)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1046, !1075, !1000, !75}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1052, file: !180, line: 2001, baseType: !1213, size: 64, offset: 1344)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!75, !1075, !1000, !1046, !75}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1052, file: !180, line: 2003, baseType: !1217, size: 64, offset: 1408)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!75, !1075, !1000, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !180, line: 76, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1052, file: !180, line: 2005, baseType: !1223, size: 64, offset: 1472)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!75, !1000, !1220}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1052, file: !180, line: 2006, baseType: !1227, size: 64, offset: 1536)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1230, !1035}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !180, line: 3192, size: 192, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1231, file: !180, line: 3193, baseType: !720, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1231, file: !180, line: 3194, baseType: !106, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1036, file: !180, line: 655, baseType: !1236, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !180, line: 1190, size: 10752, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !2457, !2589, !2629, !2712, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2729, !2733, !2734, !2737, !2740, !2743, !2746, !2747, !2748, !2789, !2815, !2816, !2817, !2818, !2819, !2820, !2823, !2827, !2836, !2837, !2838, !2839, !2898, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1237, file: !180, line: 1191, baseType: !98, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1237, file: !180, line: 1192, baseType: !104, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1237, file: !180, line: 1193, baseType: !82, size: 8, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1237, file: !180, line: 1194, baseType: !117, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1237, file: !180, line: 1195, baseType: !649, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1237, file: !180, line: 1196, baseType: !1245, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !180, line: 2366, size: 576, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1256, !1260, !1264, !1268, !2445, !2446, !2447, !2449, !2450, !2451, !2453, !2454, !2455, !2456}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1246, file: !180, line: 2367, baseType: !884, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1246, file: !180, line: 2368, baseType: !75, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1246, file: !180, line: 2376, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!75, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !997, line: 21, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1246, file: !180, line: 2377, baseType: !1257, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !180, line: 75, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1246, file: !180, line: 2378, baseType: !1261, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1000, !1245, !75, !884, !290}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1246, file: !180, line: 2380, baseType: !1265, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1236}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1246, file: !180, line: 2381, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !136, line: 402, size: 9216, align: 512, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !2090, !2116, !2117, !2118, !2119, !2123, !2126, !2127, !2128, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2196, !2200, !2218, !2238, !2239, !2240, !2241, !2250, !2273, !2274, !2277, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2291, !2292, !2403, !2411, !2412, !2413, !2415, !2419, !2420, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2438, !2439, !2440, !2444}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !136, line: 403, baseType: !135, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1270, file: !136, line: 406, baseType: !98, size: 128, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1270, file: !136, line: 409, baseType: !19, size: 448, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1270, file: !136, line: 417, baseType: !1276, size: 768, offset: 640)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !136, line: 45, size: 768, elements: !1277)
!1277 = !{!1278, !2083, !2084, !2085, !2088}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1276, file: !136, line: 46, baseType: !1279, size: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1280, line: 64, size: 512, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1281 = !{!1282, !1283, !1284, !1286, !1330, !1938, !2073, !2078, !2079, !2080, !2081, !2082}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1280, line: 65, baseType: !884, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1279, file: !1280, line: 66, baseType: !98, size: 128, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1279, file: !1280, line: 67, baseType: !1285, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1279, file: !1280, line: 68, baseType: !1287, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1280, line: 168, size: 768, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1288, file: !1280, line: 169, baseType: !98, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1288, file: !1280, line: 170, baseType: !608, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1288, file: !1280, line: 171, baseType: !1279, size: 512, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1288, file: !1280, line: 172, baseType: !1294, size: 64, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1280, line: 133, size: 192, elements: !1297)
!1297 = !{!1298, !1305, !1310}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1296, file: !1280, line: 134, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!75, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1296, file: !1280, line: 135, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!884, !1303}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1296, file: !1280, line: 136, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!75, !1303, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1280, line: 125, size: 20736, elements: !1317)
!1317 = !{!1318, !1320, !1324, !1325, !1329}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1316, file: !1280, line: 126, baseType: !1319, size: 192)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 192, elements: !675)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1316, file: !1280, line: 127, baseType: !1321, size: 4096, offset: 192)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 4096, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1316, file: !1280, line: 128, baseType: !75, size: 32, offset: 4288)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1316, file: !1280, line: 129, baseType: !1326, size: 16384, offset: 4320)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 2048)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1316, file: !1280, line: 130, baseType: !75, size: 32, offset: 20704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1279, file: !1280, line: 69, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1280, line: 116, size: 384, elements: !1334)
!1334 = !{!1335, !1339, !1358, !1898, !1928, !1932}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1333, file: !1280, line: 117, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1285}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1333, file: !1280, line: 118, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1343, line: 254, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1344 = !{!1345, !1354}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1342, file: !1343, line: 255, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1187, !1285, !1349, !894}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1343, line: 30, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1350, file: !1343, line: 31, baseType: !884, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1350, file: !1343, line: 32, baseType: !1039, size: 16, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1342, file: !1343, line: 256, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1187, !1285, !1349, !884, !113}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1333, file: !1280, line: 119, baseType: !1359, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1343, line: 84, size: 320, elements: !1363)
!1363 = !{!1364, !1365, !1369, !1894, !1896}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1362, file: !1343, line: 85, baseType: !884, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1362, file: !1343, line: 86, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1039, !1285, !1349, !75}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1362, file: !1343, line: 88, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1039, !1285, !1373, !75}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1343, line: 175, size: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1885, !1889, !1890}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1374, file: !1343, line: 176, baseType: !1350, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1374, file: !1343, line: 177, baseType: !113, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1374, file: !1343, line: 178, baseType: !290, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1374, file: !1343, line: 179, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !180, line: 472, size: 1536, align: 64, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1877, !1878, !1879, !1882, !1883, !1884}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1384, file: !180, line: 473, baseType: !1035, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1384, file: !180, line: 474, baseType: !720, size: 128, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1384, file: !180, line: 475, baseType: !824, size: 320, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1384, file: !180, line: 476, baseType: !725, size: 32, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1384, file: !180, line: 477, baseType: !71, size: 32, offset: 544)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1384, file: !180, line: 482, baseType: !473, size: 128, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1384, file: !180, line: 483, baseType: !117, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1384, file: !180, line: 484, baseType: !117, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1384, file: !180, line: 485, baseType: !1395, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !180, line: 404, size: 1280, elements: !1398)
!1398 = !{!1399, !1702, !1772, !1776, !1780, !1786, !1792, !1796, !1801, !1805, !1809, !1813, !1841, !1845, !1849, !1853, !1858, !1862, !1869, !1873}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1397, file: !180, line: 405, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!75, !1403, !1700}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !151, line: 74, size: 512, align: 128, elements: !1405)
!1405 = !{!1406, !1407, !1694, !1699}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !151, line: 75, baseType: !117, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !151, line: 83, baseType: !1408, size: 320, offset: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !151, line: 83, size: 320, elements: !1409)
!1409 = !{!1410, !1431, !1445, !1449, !1693}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !151, line: 84, baseType: !1411, size: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !151, line: 84, size: 320, elements: !1412)
!1412 = !{!1413, !1424, !1425, !1430}
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !151, line: 90, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !151, line: 90, size: 128, elements: !1415)
!1415 = !{!1416, !1417, !1422, !1423}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1414, file: !151, line: 91, baseType: !98, size: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !151, line: 94, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !151, line: 94, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1418, file: !151, line: 96, baseType: !290, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1418, file: !151, line: 98, baseType: !108, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1414, file: !151, line: 102, baseType: !98, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1414, file: !151, line: 103, baseType: !98, size: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1411, file: !151, line: 106, baseType: !1383, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !151, line: 107, baseType: !1426, size: 64, offset: 192)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !151, line: 107, size: 64, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1426, file: !151, line: 108, baseType: !117, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1426, file: !151, line: 109, baseType: !117, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1411, file: !151, line: 117, baseType: !117, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !151, line: 119, baseType: !1432, size: 320)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !151, line: 119, size: 320, elements: !1433)
!1433 = !{!1434, !1435, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1432, file: !151, line: 124, baseType: !117, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1432, file: !151, line: 125, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !151, line: 125, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1432, file: !151, line: 126, baseType: !117, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1432, file: !151, line: 127, baseType: !117, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !151, line: 128, baseType: !1441, size: 64, offset: 256)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !151, line: 128, size: 64, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1441, file: !151, line: 133, baseType: !117, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1441, file: !151, line: 138, baseType: !45, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !151, line: 141, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !151, line: 141, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1446, file: !151, line: 142, baseType: !117, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !151, line: 144, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !151, line: 144, size: 128, elements: !1451)
!1451 = !{!1452, !1692}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1450, file: !151, line: 146, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !143, line: 126, size: 1216, elements: !1455)
!1455 = !{!1456, !1466, !1487, !1498, !1499, !1500, !1501, !1674, !1675, !1676}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1454, file: !143, line: 127, baseType: !1457, size: 384)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !143, line: 21, size: 384, elements: !1458)
!1458 = !{!1459, !1460, !1462, !1463, !1464, !1465}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1457, file: !143, line: 22, baseType: !117, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1457, file: !143, line: 23, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1457, file: !143, line: 24, baseType: !1461, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1457, file: !143, line: 25, baseType: !117, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1457, file: !143, line: 26, baseType: !117, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1457, file: !143, line: 27, baseType: !117, size: 64, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1454, file: !143, line: 128, baseType: !1467, size: 128, offset: 384)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1468, line: 105, size: 128, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1467, file: !1468, line: 110, baseType: !117, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1467, file: !1468, line: 118, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1468, line: 95, size: 448, elements: !1474)
!1474 = !{!1475, !1476, !1482, !1483, !1484, !1485, !1486}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1473, file: !1468, line: 96, baseType: !45, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1473, file: !1468, line: 97, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1468, line: 60, baseType: !1479)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1473, file: !1468, line: 98, baseType: !1477, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1473, file: !1468, line: 99, baseType: !110, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1473, file: !1468, line: 100, baseType: !110, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1473, file: !1468, line: 101, baseType: !634, size: 128, align: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1473, file: !1468, line: 102, baseType: !1481, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1454, file: !143, line: 129, baseType: !1488, size: 256, offset: 512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1489, line: 26, size: 256, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1488, file: !1489, line: 27, baseType: !108, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1488, file: !1489, line: 28, baseType: !1493, size: 192, offset: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1494, line: 43, size: 192, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1494, line: 44, baseType: !58, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1493, file: !1494, line: 45, baseType: !98, size: 128, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !143, line: 130, baseType: !142, size: 32, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !143, line: 131, baseType: !108, size: 32, offset: 800)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1454, file: !143, line: 132, baseType: !117, size: 64, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1454, file: !143, line: 133, baseType: !1502, size: 64, offset: 896)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !143, line: 77, size: 192, elements: !1505)
!1505 = !{!1506, !1510, !1670}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1504, file: !143, line: 83, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1403}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1504, file: !143, line: 89, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !151, line: 1184, baseType: !108)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1517, line: 512, size: 896, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1518 = !{!1519, !1637, !1638, !1645, !1652, !1662, !1663, !1664, !1666, !1668}
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1517, line: 513, baseType: !1520, size: 320)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1517, line: 513, size: 320, elements: !1521)
!1521 = !{!1522, !1633, !1634, !1635, !1636}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1520, file: !1517, line: 514, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !151, line: 625, size: 1344, elements: !1525)
!1525 = !{!1526, !1535, !1536, !1544, !1551, !1552, !1557, !1558, !1563, !1564, !1567, !1626, !1627, !1628, !1629, !1630, !1631}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !151, line: 628, baseType: !1527, size: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !151, line: 628, size: 128, elements: !1528)
!1528 = !{!1529, !1534}
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !151, line: 629, baseType: !1530, size: 128)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1527, file: !151, line: 629, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1530, file: !151, line: 631, baseType: !117, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1530, file: !151, line: 632, baseType: !117, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1527, file: !151, line: 635, baseType: !634, size: 128, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1524, file: !151, line: 639, baseType: !590, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1524, file: !151, line: 640, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1538, line: 297, baseType: !1539)
!1538 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1538, line: 297, size: 64, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1539, file: !1538, line: 297, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1543, line: 19, baseType: !117)
!1543 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !151, line: 646, baseType: !1545, size: 64, offset: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !151, line: 646, size: 64, elements: !1546)
!1546 = !{!1547, !1550}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1545, file: !151, line: 647, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !151, line: 542, baseType: !117)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1545, file: !151, line: 648, baseType: !1549, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1524, file: !151, line: 666, baseType: !75, size: 32, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1524, file: !151, line: 667, baseType: !1553, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !151, line: 579, size: 320, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !151, line: 580, baseType: !824, size: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1524, file: !151, line: 670, baseType: !110, size: 8, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1524, file: !151, line: 681, baseType: !1559, size: 256, offset: 512)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !151, line: 678, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1559, file: !151, line: 679, baseType: !336, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1559, file: !151, line: 680, baseType: !117, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1524, file: !151, line: 689, baseType: !98, size: 128, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1524, file: !151, line: 691, baseType: !1565, size: 64, offset: 896)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !151, line: 691, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1524, file: !151, line: 694, baseType: !1568, size: 64, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1517, line: 563, size: 1024, elements: !1571)
!1571 = !{!1572, !1576, !1577, !1581, !1585, !1589, !1590, !1594, !1598, !1602, !1603, !1604, !1608, !1612, !1618, !1622}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1570, file: !1517, line: 564, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1523}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1570, file: !1517, line: 569, baseType: !1573, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1570, file: !1517, line: 571, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!75, !1523, !117}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1570, file: !1517, line: 572, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!75, !1523}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1570, file: !1517, line: 578, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!75, !1523, !117, !117, !117}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1570, file: !1517, line: 580, baseType: !1511, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1570, file: !1517, line: 581, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1514, !1515, !108}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1570, file: !1517, line: 582, baseType: !1595, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1514, !1515, !117, !117}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1570, file: !1517, line: 584, baseType: !1599, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!117, !1523}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1570, file: !1517, line: 588, baseType: !1511, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1570, file: !1517, line: 591, baseType: !1511, size: 64, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1570, file: !1517, line: 597, baseType: !1605, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!75, !1523, !117, !290, !75, !75}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1570, file: !1517, line: 603, baseType: !1609, size: 64, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!884, !1523}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1570, file: !1517, line: 613, baseType: !1613, size: 64, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!75, !1523, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !278, line: 54, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1570, file: !1517, line: 625, baseType: !1619, size: 64, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1616, !1523, !117}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1570, file: !1517, line: 633, baseType: !1623, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1403, !1523, !117}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1524, file: !151, line: 697, baseType: !117, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1524, file: !151, line: 699, baseType: !626, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1524, file: !151, line: 700, baseType: !290, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1524, file: !151, line: 711, baseType: !45, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1524, file: !151, line: 717, baseType: !1616, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1524, file: !151, line: 722, baseType: !1632, offset: 1344)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !151, line: 570, elements: !619)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1520, file: !1517, line: 515, baseType: !725, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1520, file: !1517, line: 516, baseType: !117, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1520, file: !1517, line: 517, baseType: !117, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1520, file: !1517, line: 518, baseType: !117, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1516, file: !1517, line: 520, baseType: !150, size: 32, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1516, file: !1517, line: 522, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1543, line: 22, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1543, line: 22, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1641, file: !1543, line: 22, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1543, line: 15, baseType: !117)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1516, file: !1517, line: 524, baseType: !1646, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1538, line: 372, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1538, line: 372, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1648, file: !1538, line: 372, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1543, line: 16, baseType: !117)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1517, line: 527, baseType: !1653, size: 64, offset: 512)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1516, file: !1517, line: 527, size: 64, elements: !1654)
!1654 = !{!1655, !1661}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1653, file: !1517, line: 528, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1543, line: 21, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1543, line: 21, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1657, file: !1543, line: 21, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1543, line: 14, baseType: !117)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1653, file: !1517, line: 529, baseType: !1640, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1516, file: !1517, line: 534, baseType: !1403, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1516, file: !1517, line: 535, baseType: !1403, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1516, file: !1517, line: 541, baseType: !1665, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1516, file: !1517, line: 545, baseType: !1667, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1516, file: !1517, line: 549, baseType: !1669, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1538, line: 520, baseType: !1403)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1504, file: !143, line: 100, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!75, !1453, !117, !117, !75}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1454, file: !143, line: 134, baseType: !290, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1454, file: !143, line: 135, baseType: !75, size: 32, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !143, line: 136, baseType: !1677, size: 128, offset: 1088)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !143, line: 136, size: 128, elements: !1678)
!1678 = !{!1679, !1685}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1677, file: !143, line: 137, baseType: !1680, size: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1681, line: 6, size: 128, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1680, file: !1681, line: 7, baseType: !344, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1680, file: !1681, line: 8, baseType: !344, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !143, line: 138, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !143, line: 138, elements: !1687)
!1687 = !{!1688, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1686, file: !143, line: 138, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !143, line: 138, elements: !619)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1686, file: !143, line: 138, baseType: !1691)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1680, elements: !762)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1450, file: !151, line: 147, baseType: !290, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1408, file: !151, line: 161, baseType: !634, size: 128, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !151, line: 164, baseType: !1695, size: 32, offset: 384)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !151, line: 164, size: 32, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1695, file: !151, line: 169, baseType: !71, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1695, file: !151, line: 177, baseType: !108, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1404, file: !151, line: 181, baseType: !71, size: 32, offset: 416)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !180, line: 309, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1397, file: !180, line: 406, baseType: !1703, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!75, !626, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !151, line: 293, size: 1536, elements: !1708)
!1708 = !{!1709, !1739, !1753}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !151, line: 295, baseType: !1710, size: 512)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !151, line: 295, size: 512, elements: !1711)
!1711 = !{!1712, !1738}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !151, line: 296, baseType: !1713, size: 448)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !151, line: 296, size: 448, elements: !1714)
!1714 = !{!1715, !1716, !1725, !1726, !1727, !1736, !1737}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1713, file: !151, line: 298, baseType: !117, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !151, line: 299, baseType: !1717, size: 128, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !151, line: 299, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1717, file: !151, line: 300, baseType: !98, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !151, line: 302, baseType: !1721, size: 128)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !151, line: 302, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1721, file: !151, line: 303, baseType: !290, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1721, file: !151, line: 305, baseType: !108, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1713, file: !151, line: 310, baseType: !1383, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1713, file: !151, line: 311, baseType: !117, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !151, line: 312, baseType: !1728, size: 64, offset: 320)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !151, line: 312, size: 64, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1728, file: !151, line: 313, baseType: !290, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1728, file: !151, line: 314, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !151, line: 257, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 255, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1733, file: !151, line: 256, baseType: !117, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1713, file: !151, line: 316, baseType: !71, size: 32, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1713, file: !151, line: 317, baseType: !71, size: 32, offset: 416)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1710, file: !151, line: 323, baseType: !1404, size: 512, align: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !151, line: 325, baseType: !1740, size: 512, offset: 512)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !151, line: 325, size: 512, elements: !1741)
!1741 = !{!1742, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !151, line: 326, baseType: !1743, size: 320)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !151, line: 326, size: 320, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1743, file: !151, line: 327, baseType: !117, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1743, file: !151, line: 328, baseType: !117, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1743, file: !151, line: 329, baseType: !117, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1743, file: !151, line: 331, baseType: !71, size: 32, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1743, file: !151, line: 332, baseType: !71, size: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1743, file: !151, line: 333, baseType: !71, size: 32, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1743, file: !151, line: 335, baseType: !108, size: 32, offset: 288)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1740, file: !151, line: 339, baseType: !1404, size: 512, align: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !151, line: 341, baseType: !1754, size: 512, offset: 1024)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !151, line: 341, size: 512, elements: !1755)
!1755 = !{!1756, !1765, !1771}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !151, line: 342, baseType: !1757, size: 384)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !151, line: 342, size: 384, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1757, file: !151, line: 343, baseType: !117, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1757, file: !151, line: 344, baseType: !117, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1757, file: !151, line: 346, baseType: !290, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1757, file: !151, line: 347, baseType: !290, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1757, file: !151, line: 348, baseType: !290, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1757, file: !151, line: 349, baseType: !290, size: 64, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !151, line: 352, baseType: !1766, size: 256)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !151, line: 352, size: 256, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1766, file: !151, line: 353, baseType: !117, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1766, file: !151, line: 354, baseType: !117, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1766, file: !151, line: 356, baseType: !98, size: 128, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1754, file: !151, line: 359, baseType: !1404, size: 512, align: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1397, file: !180, line: 409, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!75, !1383, !1700}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1397, file: !180, line: 412, baseType: !1777, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!110, !1383, !1706}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1397, file: !180, line: 414, baseType: !1781, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !180, line: 310, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1397, file: !180, line: 416, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!75, !626, !1383, !649, !108, !1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1397, file: !180, line: 419, baseType: !1793, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!75, !626, !1383, !649, !108, !108, !1403, !290}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1397, file: !180, line: 424, baseType: !1797, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !1383, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !48, line: 131, baseType: !344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1397, file: !180, line: 425, baseType: !1802, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1706, !113, !113}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1397, file: !180, line: 426, baseType: !1806, size: 64, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!110, !1706, !725}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1397, file: !180, line: 427, baseType: !1810, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1706}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1397, file: !180, line: 428, baseType: !1814, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1187, !1817, !1839}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !180, line: 373, size: 384, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1826, !1827, !1828, !1829}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1818, file: !180, line: 374, baseType: !626, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1818, file: !180, line: 375, baseType: !649, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1818, file: !180, line: 376, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1817, !1148}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1818, file: !180, line: 377, baseType: !290, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1818, file: !180, line: 378, baseType: !75, size: 32, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1818, file: !180, line: 379, baseType: !88, size: 16, offset: 288)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !180, line: 380, baseType: !1830, size: 64, offset: 320)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !180, line: 380, size: 64, elements: !1831)
!1831 = !{!1832, !1835}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1830, file: !180, line: 386, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !180, line: 386, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1830, file: !180, line: 395, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1187, !290}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !180, line: 69, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1397, file: !180, line: 433, baseType: !1842, size: 64, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!75, !1383, !1706, !1706, !166}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1397, file: !180, line: 435, baseType: !1846, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!75, !1706}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1397, file: !180, line: 436, baseType: !1850, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!110, !1706, !113, !113}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1397, file: !180, line: 438, baseType: !1854, size: 64, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1706, !1857, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1397, file: !180, line: 439, baseType: !1859, size: 64, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!75, !1383, !1403}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1397, file: !180, line: 442, baseType: !1863, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!75, !1866, !626, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !180, line: 66, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1397, file: !180, line: 444, baseType: !1870, size: 64, offset: 1152)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !626}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1397, file: !180, line: 445, baseType: !1874, size: 64, offset: 1216)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!75, !1817, !1839}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !180, line: 486, baseType: !117, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1384, file: !180, line: 487, baseType: !824, size: 320, offset: 960)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1384, file: !180, line: 488, baseType: !1880, size: 32, offset: 1280)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1881, line: 8, baseType: !106)
!1881 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1384, file: !180, line: 489, baseType: !608, size: 32, offset: 1312)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1384, file: !180, line: 490, baseType: !98, size: 128, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1384, file: !180, line: 491, baseType: !290, size: 64, offset: 1472)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1374, file: !1343, line: 180, baseType: !1886, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1187, !626, !1285, !1373, !894, !649, !113}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1374, file: !1343, line: 182, baseType: !1886, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1374, file: !1343, line: 184, baseType: !1891, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!75, !626, !1285, !1373, !1523}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1362, file: !1343, line: 90, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1362, file: !1343, line: 91, baseType: !1897, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1333, file: !1280, line: 120, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1902, !1303}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !174, line: 39, size: 384, elements: !1905)
!1905 = !{!1906, !1907, !1911, !1915, !1923, !1927}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1904, file: !174, line: 40, baseType: !173, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1904, file: !174, line: 41, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!110}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1904, file: !174, line: 42, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!290}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1904, file: !174, line: 43, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1919, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !174, line: 19, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1904, file: !174, line: 44, baseType: !1924, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1919}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1904, file: !174, line: 45, baseType: !1067, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1333, file: !1280, line: 121, baseType: !1929, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1919, !1303}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1333, file: !1280, line: 122, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !1303, !1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1279, file: !1280, line: 70, baseType: !1939, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1941, line: 190, size: 1152, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !2065, !2066, !2067, !2068, !2069, !2072}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1940, file: !1941, line: 191, baseType: !71, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1940, file: !1941, line: 192, baseType: !71, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1940, file: !1941, line: 202, baseType: !1939, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !1941, line: 203, baseType: !884, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1940, file: !1941, line: 205, baseType: !336, size: 192, align: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1940, file: !1941, line: 207, baseType: !1919, size: 64, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1940, file: !1941, line: 208, baseType: !108, size: 32, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1941, line: 209, baseType: !1951, size: 256, offset: 512)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1941, line: 209, size: 256, elements: !1952)
!1952 = !{!1953, !1962, !1966}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1951, file: !1941, line: 210, baseType: !1954, size: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1941, line: 153, size: 256, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1954, file: !1941, line: 154, baseType: !117, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1954, file: !1941, line: 156, baseType: !476, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1954, file: !1941, line: 162, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1941, line: 162, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1954, file: !1941, line: 167, baseType: !117, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1951, file: !1941, line: 211, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1941, line: 170, size: 64, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1963, file: !1941, line: 171, baseType: !1939, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1951, file: !1941, line: 212, baseType: !1967, size: 256)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1941, line: 174, size: 256, elements: !1968)
!1968 = !{!1969, !2060, !2063, !2064}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1967, file: !1941, line: 175, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1941, line: 271, size: 768, elements: !1973)
!1973 = !{!1974, !2033, !2037, !2038, !2039, !2040, !2041, !2045, !2046, !2047, !2048, !2056}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1972, file: !1941, line: 276, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!75, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1941, line: 251, size: 1216, elements: !1980)
!1980 = !{!1981, !1982, !1983, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1979, file: !1941, line: 253, baseType: !1939, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1979, file: !1941, line: 254, baseType: !626, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1979, file: !1941, line: 255, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1986, line: 17, size: 960, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !2018, !2019, !2022}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1985, file: !1986, line: 18, baseType: !894, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1985, file: !1986, line: 19, baseType: !113, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1985, file: !1986, line: 20, baseType: !113, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1985, file: !1986, line: 21, baseType: !113, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1985, file: !1986, line: 22, baseType: !113, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1985, file: !1986, line: 23, baseType: !649, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1985, file: !1986, line: 24, baseType: !649, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1986, line: 25, baseType: !41, size: 256, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1985, file: !1986, line: 26, baseType: !1997, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1986, line: 32, size: 256, elements: !2000)
!2000 = !{!2001, !2006, !2010, !2014}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1999, file: !1986, line: 33, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!290, !1984, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1999, file: !1986, line: 34, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !1984, !290}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !1986, line: 35, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!290, !1984, !290, !2005}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1999, file: !1986, line: 36, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!75, !1984, !290}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1985, file: !1986, line: 27, baseType: !75, size: 32, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1985, file: !1986, line: 28, baseType: !2020, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1985, file: !1986, line: 29, baseType: !290, size: 64, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1979, file: !1941, line: 256, baseType: !290, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1979, file: !1941, line: 259, baseType: !41, size: 256, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1979, file: !1941, line: 260, baseType: !41, size: 256, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1979, file: !1941, line: 261, baseType: !75, size: 32, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1979, file: !1941, line: 262, baseType: !98, size: 128, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1979, file: !1941, line: 263, baseType: !894, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1979, file: !1941, line: 265, baseType: !113, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1979, file: !1941, line: 266, baseType: !110, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1979, file: !1941, line: 267, baseType: !110, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1979, file: !1941, line: 268, baseType: !1568, size: 64, offset: 1152)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1972, file: !1941, line: 277, baseType: !2034, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !1978}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1972, file: !1941, line: 290, baseType: !2015, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1972, file: !1941, line: 292, baseType: !2002, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1972, file: !1941, line: 293, baseType: !2011, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1972, file: !1941, line: 294, baseType: !2007, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1972, file: !1941, line: 296, baseType: !2042, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!1187, !1978, !894, !113, !649}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1972, file: !1941, line: 306, baseType: !113, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1972, file: !1941, line: 313, baseType: !110, size: 8, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1972, file: !1941, line: 314, baseType: !2042, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1972, file: !1941, line: 317, baseType: !2049, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !1978, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2053, line: 59, baseType: !108)
!2053 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !180, line: 61, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1972, file: !1941, line: 320, baseType: !2057, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!75, !1978, !1523}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1967, file: !1941, line: 176, baseType: !2061, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1941, line: 35, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1967, file: !1941, line: 177, baseType: !649, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1967, file: !1941, line: 178, baseType: !1939, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1940, file: !1941, line: 215, baseType: !290, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1940, file: !1941, line: 221, baseType: !344, size: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1941, line: 223, baseType: !90, size: 16, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1940, file: !1941, line: 224, baseType: !1039, size: 16, offset: 912)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1940, file: !1941, line: 225, baseType: !2070, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1941, line: 36, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1940, file: !1941, line: 227, baseType: !634, size: 128, align: 64, offset: 1024)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1279, file: !1280, line: 71, baseType: !2074, size: 32, offset: 448)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2075, line: 19, size: 32, elements: !2076)
!2075 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2074, file: !2075, line: 20, baseType: !292, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1279, file: !1280, line: 73, baseType: !108, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1279, file: !1280, line: 74, baseType: !108, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1279, file: !1280, line: 75, baseType: !108, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1279, file: !1280, line: 76, baseType: !108, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1279, file: !1280, line: 77, baseType: !108, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1276, file: !136, line: 47, baseType: !1269, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1276, file: !136, line: 48, baseType: !1285, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1276, file: !136, line: 49, baseType: !2086, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !136, line: 49, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1276, file: !136, line: 50, baseType: !2089, size: 64, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1270, file: !136, line: 418, baseType: !2091, size: 64, offset: 1408)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !136, line: 53, size: 448, elements: !2093)
!2093 = !{!2094, !2095, !2100, !2104, !2108, !2112}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2092, file: !136, line: 54, baseType: !1350, size: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2092, file: !136, line: 55, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!1187, !2091, !2099, !894}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2092, file: !136, line: 57, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1187, !2091, !2099, !884, !113}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2092, file: !136, line: 59, baseType: !2105, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !1269, !884}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2092, file: !136, line: 60, baseType: !2109, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!75, !1269}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2092, file: !136, line: 61, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !1269}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1270, file: !136, line: 419, baseType: !884, size: 64, offset: 1472)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1270, file: !136, line: 420, baseType: !884, size: 64, offset: 1536)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1270, file: !136, line: 421, baseType: !1285, size: 64, offset: 1600)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1270, file: !136, line: 424, baseType: !2120, size: 64, offset: 1664)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !136, line: 424, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1270, file: !136, line: 425, baseType: !2124, size: 64, offset: 1728)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1270, file: !136, line: 426, baseType: !108, size: 32, offset: 1792)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1270, file: !136, line: 435, baseType: !41, size: 256, offset: 1856)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1270, file: !136, line: 437, baseType: !2129, size: 64, offset: 2112)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2131, line: 69, size: 320, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2132 = !{!2133, !2134, !2135, !2152, !2154, !2158, !2159}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !2131, line: 70, baseType: !884, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2130, file: !2131, line: 71, baseType: !1269, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2130, file: !2131, line: 72, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2131, line: 47, size: 256, elements: !2139)
!2139 = !{!2140, !2141, !2147, !2151}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2131, line: 49, baseType: !108, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2138, file: !2131, line: 51, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!75, !884, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2138, file: !2131, line: 53, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!75, !894, !2145}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2138, file: !2131, line: 55, baseType: !1067, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2130, file: !2131, line: 73, baseType: !2153, size: 16, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2130, file: !2131, line: 74, baseType: !2155, size: 8, offset: 208)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !53, line: 16, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !55, line: 20, baseType: !2157)
!2157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2130, file: !2131, line: 75, baseType: !80, size: 8, offset: 216)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2131, line: 76, baseType: !2160, size: 64, offset: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !2131, line: 76, size: 64, elements: !2161)
!2161 = !{!2162, !2163, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2160, file: !2131, line: 77, baseType: !290, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2160, file: !2131, line: 78, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2131, line: 86, size: 128, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2166, file: !2131, line: 87, baseType: !108, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2166, file: !2131, line: 88, baseType: !894, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2160, file: !2131, line: 79, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2131, line: 92, size: 256, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2179, !2180}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2173, file: !2131, line: 94, baseType: !108, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2173, file: !2131, line: 95, baseType: !108, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2173, file: !2131, line: 96, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2173, file: !2131, line: 97, baseType: !2136, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2173, file: !2131, line: 98, baseType: !290, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1270, file: !136, line: 438, baseType: !108, size: 32, offset: 2176)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1270, file: !136, line: 441, baseType: !108, size: 32, offset: 2208)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1270, file: !136, line: 442, baseType: !2120, size: 64, offset: 2240)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1270, file: !136, line: 443, baseType: !2124, size: 64, offset: 2304)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1270, file: !136, line: 444, baseType: !110, size: 8, offset: 2368)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1270, file: !136, line: 451, baseType: !110, size: 8, offset: 2376)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1270, file: !136, line: 454, baseType: !108, size: 32, offset: 2400)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1270, file: !136, line: 455, baseType: !2189, size: 64, offset: 2432)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2191, line: 23, size: 96, elements: !2192)
!2191 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2192 = !{!2193, !2194, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2190, file: !2191, line: 24, baseType: !75, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2190, file: !2191, line: 24, baseType: !75, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2190, file: !2191, line: 24, baseType: !75, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1270, file: !136, line: 458, baseType: !2197, size: 64, offset: 2496)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!75}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1270, file: !136, line: 460, baseType: !2201, size: 4032, align: 512, offset: 2560)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2202, size: 4032, elements: !25)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !136, line: 362, size: 576, elements: !2203)
!2203 = !{!2204, !2205, !2206}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2202, file: !136, line: 363, baseType: !290, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2202, file: !136, line: 364, baseType: !108, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2202, file: !136, line: 367, baseType: !2207, size: 448, offset: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !136, line: 319, size: 448, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2207, file: !136, line: 320, baseType: !1269, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2207, file: !136, line: 321, baseType: !2211, size: 384, offset: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2212, line: 40, size: 384, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2211, file: !2212, line: 41, baseType: !2215, size: 384, align: 64)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, align: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 2)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1270, file: !136, line: 463, baseType: !2219, size: 192, offset: 6592)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2220, line: 8, size: 192, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2221 = !{!2222, !2223, !2225}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2219, file: !2220, line: 10, baseType: !108, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2219, file: !2220, line: 11, baseType: !2224, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2219, file: !2220, line: 12, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2228, line: 59, size: 48, elements: !2229)
!2228 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2229 = !{!2230, !2233, !2234, !2235, !2236, !2237}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2227, file: !2228, line: 60, baseType: !2231, size: 16)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !53, line: 18, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !55, line: 23, baseType: !852)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2227, file: !2228, line: 61, baseType: !2231, size: 16, offset: 16)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2227, file: !2228, line: 63, baseType: !108, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2227, file: !2228, line: 64, baseType: !108, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2227, file: !2228, line: 65, baseType: !108, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2227, file: !2228, line: 66, baseType: !108, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1270, file: !136, line: 465, baseType: !117, size: 64, offset: 6784)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1270, file: !136, line: 469, baseType: !108, size: 32, offset: 6848)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1270, file: !136, line: 470, baseType: !98, size: 128, offset: 6912)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1270, file: !136, line: 471, baseType: !2242, size: 64, offset: 7040)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2244, line: 33, size: 96, elements: !2245)
!2244 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2243, file: !2244, line: 37, baseType: !75, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2243, file: !2244, line: 43, baseType: !75, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2243, file: !2244, line: 45, baseType: !90, size: 16, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2243, file: !2244, line: 47, baseType: !90, size: 16, offset: 80)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1270, file: !136, line: 476, baseType: !2251, size: 64, offset: 7104)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !136, line: 378, size: 256, elements: !2253)
!2253 = !{!2254, !2270, !2271, !2272}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2252, file: !136, line: 379, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2257, line: 204, baseType: !2258)
!2257 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2257, line: 197, size: 192, elements: !2259)
!2259 = !{!2260, !2262, !2263, !2264, !2266, !2268}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2258, file: !2257, line: 198, baseType: !2261, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2257, line: 21, baseType: !107)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2258, file: !2257, line: 199, baseType: !82, size: 8, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2258, file: !2257, line: 200, baseType: !82, size: 8, offset: 40)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2258, file: !2257, line: 201, baseType: !2265, size: 16, offset: 48)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2257, line: 17, baseType: !89)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2258, file: !2257, line: 202, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2257, line: 16, baseType: !345)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2258, file: !2257, line: 203, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2257, line: 22, baseType: !345)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2252, file: !136, line: 380, baseType: !108, size: 32, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2252, file: !136, line: 381, baseType: !894, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2252, file: !136, line: 382, baseType: !894, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1270, file: !136, line: 477, baseType: !2252, size: 256, offset: 7168)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1270, file: !136, line: 480, baseType: !2275, size: 64, offset: 7424)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !136, line: 480, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1270, file: !136, line: 483, baseType: !2278, size: 64, offset: 7488)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !136, line: 483, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1270, file: !136, line: 488, baseType: !894, size: 64, offset: 7552)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1270, file: !136, line: 492, baseType: !290, size: 64, offset: 7616)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1270, file: !136, line: 493, baseType: !108, size: 32, offset: 7680)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1270, file: !136, line: 495, baseType: !290, size: 64, offset: 7744)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1270, file: !136, line: 496, baseType: !108, size: 32, offset: 7808)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1270, file: !136, line: 499, baseType: !108, size: 32, offset: 7840)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1270, file: !136, line: 500, baseType: !2287, size: 64, offset: 7872)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2289, line: 45, baseType: !2290)
!2289 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1270, file: !136, line: 503, baseType: !108, size: 32, offset: 7936)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1270, file: !136, line: 504, baseType: !2293, size: 64, offset: 8000)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2296, line: 96, size: 192, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2297 = !{!2298, !2299, !2364, !2367}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2295, file: !2296, line: 97, baseType: !108, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2295, file: !2296, line: 98, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2296, line: 24, size: 3072, elements: !2302)
!2302 = !{!2303, !2305, !2306, !2307, !2308, !2322, !2323, !2324, !2325, !2337, !2349, !2350, !2361, !2362, !2363}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2301, file: !2296, line: 26, baseType: !2304, size: 128)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !2216)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2301, file: !2296, line: 27, baseType: !2304, size: 128, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2301, file: !2296, line: 28, baseType: !75, size: 32, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2301, file: !2296, line: 31, baseType: !608, size: 32, align: 512, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2301, file: !2296, line: 32, baseType: !2309, size: 960, offset: 576)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2310, line: 206, size: 960, elements: !2311)
!2310 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2311 = !{!2312, !2313, !2316, !2318, !2319, !2321}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2309, file: !2310, line: 207, baseType: !637, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2309, file: !2310, line: 208, baseType: !2314, size: 256, offset: 64)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, size: 256, elements: !10)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2309, file: !2310, line: 209, baseType: !2317, size: 256, offset: 320)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !10)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2309, file: !2310, line: 213, baseType: !1148, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2309, file: !2310, line: 215, baseType: !2320, size: 256, offset: 640)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1148, size: 256, elements: !10)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !2310, line: 216, baseType: !80, size: 8, offset: 896)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2301, file: !2296, line: 33, baseType: !117, size: 64, offset: 1536)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2301, file: !2296, line: 34, baseType: !117, size: 64, offset: 1600)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2301, file: !2296, line: 35, baseType: !110, size: 8, offset: 1664)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2301, file: !2296, line: 36, baseType: !2326, size: 320, offset: 1728)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2327, line: 11, size: 320, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2328 = !{!2329, !2330, !2331, !2336}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2326, file: !2327, line: 16, baseType: !691, size: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2326, file: !2327, line: 17, baseType: !117, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2326, file: !2327, line: 18, baseType: !2332, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2327, line: 19, baseType: !106, size: 32, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2301, file: !2296, line: 37, baseType: !2338, size: 256, offset: 2048)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2339, line: 98, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2338, file: !2339, line: 99, baseType: !45, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2338, file: !2339, line: 100, baseType: !98, size: 128, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2338, file: !2339, line: 101, baseType: !2344, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2339, line: 21, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2301, file: !2296, line: 38, baseType: !634, size: 128, align: 64, offset: 2304)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2301, file: !2296, line: 39, baseType: !2351, size: 64, offset: 2432)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2296, line: 49, size: 768, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2352, file: !2296, line: 50, baseType: !608, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2352, file: !2296, line: 51, baseType: !2317, size: 256, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2352, file: !2296, line: 53, baseType: !2317, size: 256, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2352, file: !2296, line: 54, baseType: !117, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2352, file: !2296, line: 55, baseType: !2351, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2352, file: !2296, line: 56, baseType: !75, size: 32, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2352, file: !2296, line: 57, baseType: !75, size: 32, offset: 736)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2301, file: !2296, line: 40, baseType: !117, size: 64, offset: 2496)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2301, file: !2296, line: 42, baseType: !75, size: 32, offset: 2560)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2301, file: !2296, line: 43, baseType: !2294, size: 64, offset: 2624)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2295, file: !2296, line: 99, baseType: !2365, offset: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2366, line: 211, elements: !619)
!2366 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2295, file: !2296, line: 100, baseType: !2368, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2296, line: 63, size: 3008, elements: !2370)
!2370 = !{!2371, !2372, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2402}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2369, file: !2296, line: 64, baseType: !2351, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2369, file: !2296, line: 65, baseType: !2373, size: 192, offset: 64)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 192, elements: !675)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2369, file: !2296, line: 67, baseType: !75, size: 32, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2369, file: !2296, line: 68, baseType: !41, size: 256, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2369, file: !2296, line: 69, baseType: !608, size: 32, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2369, file: !2296, line: 70, baseType: !41, size: 256, offset: 640)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2369, file: !2296, line: 71, baseType: !117, size: 64, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2369, file: !2296, line: 72, baseType: !117, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2369, file: !2296, line: 73, baseType: !117, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2369, file: !2296, line: 74, baseType: !117, size: 64, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2369, file: !2296, line: 75, baseType: !117, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2369, file: !2296, line: 76, baseType: !117, size: 64, offset: 1216)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2369, file: !2296, line: 77, baseType: !117, size: 64, offset: 1280)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2369, file: !2296, line: 78, baseType: !117, size: 64, offset: 1344)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2369, file: !2296, line: 79, baseType: !110, size: 8, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2369, file: !2296, line: 80, baseType: !117, size: 64, offset: 1472)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2369, file: !2296, line: 81, baseType: !41, size: 256, offset: 1536)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2369, file: !2296, line: 82, baseType: !1488, size: 256, offset: 1792)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2369, file: !2296, line: 84, baseType: !71, size: 32, offset: 2048)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2369, file: !2296, line: 87, baseType: !117, size: 64, offset: 2112)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2369, file: !2296, line: 88, baseType: !117, size: 64, offset: 2176)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2369, file: !2296, line: 89, baseType: !2394, size: 704, offset: 2240)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2339, line: 111, size: 704, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2401}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2394, file: !2339, line: 112, baseType: !2338, size: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2394, file: !2339, line: 113, baseType: !2326, size: 320, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2394, file: !2339, line: 116, baseType: !2399, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2339, line: 18, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2394, file: !2339, line: 117, baseType: !75, size: 32, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2369, file: !2296, line: 90, baseType: !2294, size: 64, offset: 2944)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1270, file: !136, line: 515, baseType: !2404, size: 64, offset: 8064)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2406, line: 117, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2405, file: !2406, line: 118, baseType: !816, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2405, file: !2406, line: 119, baseType: !816, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2405, file: !2406, line: 120, baseType: !1148, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1270, file: !136, line: 516, baseType: !108, size: 32, offset: 8128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1270, file: !136, line: 519, baseType: !108, size: 32, offset: 8160)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1270, file: !136, line: 520, baseType: !2414, size: 64, offset: 8192)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1270, file: !136, line: 523, baseType: !2416, size: 64, offset: 8256)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !136, line: 523, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1270, file: !136, line: 524, baseType: !108, size: 32, offset: 8320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1270, file: !136, line: 525, baseType: !2421, size: 64, offset: 8384)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !136, line: 525, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1270, file: !136, line: 526, baseType: !108, size: 32, offset: 8448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1270, file: !136, line: 533, baseType: !290, size: 64, offset: 8512)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1270, file: !136, line: 534, baseType: !108, size: 32, offset: 8576)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1270, file: !136, line: 535, baseType: !2428, size: 64, offset: 8640)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1270, file: !136, line: 536, baseType: !108, size: 32, offset: 8704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1270, file: !136, line: 539, baseType: !75, size: 32, offset: 8736)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1270, file: !136, line: 540, baseType: !2432, size: 64, offset: 8768)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2434, line: 32, size: 64, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2433, file: !2434, line: 33, baseType: !816, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2433, file: !2434, line: 34, baseType: !816, size: 32, offset: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1270, file: !136, line: 563, baseType: !98, size: 128, offset: 8832)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1270, file: !136, line: 565, baseType: !98, size: 128, offset: 8960)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1270, file: !136, line: 568, baseType: !2441, size: 64, offset: 9088)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1270, file: !136, line: 570, baseType: !71, size: 32, offset: 9152)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1246, file: !180, line: 2382, baseType: !1245, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1246, file: !180, line: 2383, baseType: !687, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1246, file: !180, line: 2385, baseType: !2448, offset: 576)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2366, line: 206, elements: !619)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1246, file: !180, line: 2386, baseType: !2448, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1246, file: !180, line: 2387, baseType: !2448, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1246, file: !180, line: 2388, baseType: !2452, offset: 576)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2448, elements: !675)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1246, file: !180, line: 2390, baseType: !2448, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1246, file: !180, line: 2391, baseType: !2448, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1246, file: !180, line: 2392, baseType: !2448, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1246, file: !180, line: 2393, baseType: !2448, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1237, file: !180, line: 1197, baseType: !2458, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !180, line: 2057, size: 1664, elements: !2461)
!2461 = !{!2462, !2466, !2470, !2471, !2475, !2479, !2483, !2484, !2485, !2489, !2493, !2497, !2498, !2499, !2505, !2509, !2510, !2514, !2515, !2516, !2517, !2521, !2525, !2572, !2587, !2588}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2460, file: !180, line: 2058, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!1035, !1236}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2460, file: !180, line: 2059, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !1035}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2460, file: !180, line: 2060, baseType: !2467, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2460, file: !180, line: 2062, baseType: !2472, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !1035, !75}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2460, file: !180, line: 2063, baseType: !2476, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!75, !1035, !1700}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2460, file: !180, line: 2064, baseType: !2480, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!75, !1035}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2460, file: !180, line: 2065, baseType: !2467, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2460, file: !180, line: 2066, baseType: !1265, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2460, file: !180, line: 2067, baseType: !2486, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!75, !1236, !75}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2460, file: !180, line: 2068, baseType: !2490, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!75, !1236, !179}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2460, file: !180, line: 2069, baseType: !2494, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!75, !1236}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2460, file: !180, line: 2070, baseType: !2490, size: 64, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2460, file: !180, line: 2071, baseType: !2494, size: 64, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2460, file: !180, line: 2072, baseType: !2500, size: 64, offset: 832)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!75, !1000, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !180, line: 62, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2460, file: !180, line: 2073, baseType: !2506, size: 64, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!75, !1236, !2224, !894}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2460, file: !180, line: 2074, baseType: !1265, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2460, file: !180, line: 2076, baseType: !2511, size: 64, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!75, !1984, !1000}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2460, file: !180, line: 2077, baseType: !2511, size: 64, offset: 1088)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2460, file: !180, line: 2078, baseType: !2511, size: 64, offset: 1152)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2460, file: !180, line: 2079, baseType: !2511, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2460, file: !180, line: 2081, baseType: !2518, size: 64, offset: 1280)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!1187, !1236, !75, !894, !113, !649}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2460, file: !180, line: 2082, baseType: !2522, size: 64, offset: 1344)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!1187, !1236, !75, !884, !113, !649}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2460, file: !180, line: 2083, baseType: !2526, size: 64, offset: 1408)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !1035}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !185, line: 296, size: 1664, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2557, !2558, !2559}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2531, file: !185, line: 297, baseType: !691, size: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2531, file: !185, line: 298, baseType: !98, size: 128, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2531, file: !185, line: 299, baseType: !98, size: 128, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2531, file: !185, line: 300, baseType: !98, size: 128, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2531, file: !185, line: 301, baseType: !41, size: 256, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2531, file: !185, line: 302, baseType: !608, size: 32, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2531, file: !185, line: 303, baseType: !71, size: 32, offset: 800)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2531, file: !185, line: 304, baseType: !1236, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2531, file: !185, line: 305, baseType: !2542, size: 64, offset: 896)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !185, line: 68, size: 64, elements: !2543)
!2543 = !{!2544, !2556}
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2542, file: !185, line: 69, baseType: !2545, size: 32)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2542, file: !185, line: 69, size: 32, elements: !2546)
!2546 = !{!2547, !2548, !2549}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2545, file: !185, line: 70, baseType: !766, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2545, file: !185, line: 71, baseType: !783, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2545, file: !185, line: 72, baseType: !2550, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2551, line: 24, baseType: !2552)
!2551 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2551, line: 22, size: 32, elements: !2553)
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2552, file: !2551, line: 23, baseType: !2555, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2551, line: 20, baseType: !771)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2542, file: !185, line: 74, baseType: !184, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2531, file: !185, line: 306, baseType: !649, size: 64, offset: 960)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2531, file: !185, line: 307, baseType: !117, size: 64, offset: 1024)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2531, file: !185, line: 308, baseType: !2560, size: 576, offset: 1088)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !185, line: 205, size: 576, elements: !2561)
!2561 = !{!2562, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2560, file: !185, line: 206, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !185, line: 66, baseType: !56)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2560, file: !185, line: 207, baseType: !2563, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2560, file: !185, line: 208, baseType: !2563, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2560, file: !185, line: 209, baseType: !2563, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2560, file: !185, line: 210, baseType: !2563, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2560, file: !185, line: 211, baseType: !2563, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2560, file: !185, line: 212, baseType: !2563, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2560, file: !185, line: 213, baseType: !840, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2560, file: !185, line: 214, baseType: !840, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2460, file: !180, line: 2085, baseType: !2573, size: 64, offset: 1472)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!1148, !1236, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2578, line: 15, size: 256, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2579 = !{!2580, !2581, !2582, !2583, !2584}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2577, file: !2578, line: 16, baseType: !725, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2577, file: !2578, line: 19, baseType: !75, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2577, file: !2578, line: 26, baseType: !117, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2577, file: !2578, line: 33, baseType: !117, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2577, file: !2578, line: 36, baseType: !2585, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !151, line: 33, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2460, file: !180, line: 2087, baseType: !2573, size: 64, offset: 1536)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2460, file: !180, line: 2089, baseType: !1265, size: 64, offset: 1600)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1237, file: !180, line: 1198, baseType: !2590, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !185, line: 324, size: 704, elements: !2593)
!2593 = !{!2594, !2598, !2602, !2606, !2607, !2608, !2609, !2610, !2615, !2620, !2624}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2592, file: !185, line: 325, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!75, !2530}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2592, file: !185, line: 326, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!2530, !1236, !75}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2592, file: !185, line: 327, baseType: !2603, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2530}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2592, file: !185, line: 328, baseType: !2595, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2592, file: !185, line: 329, baseType: !2595, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2592, file: !185, line: 330, baseType: !2595, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2592, file: !185, line: 331, baseType: !2486, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2592, file: !185, line: 334, baseType: !2611, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2614, !1035}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2592, file: !185, line: 335, baseType: !2616, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!75, !1035, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2592, file: !185, line: 337, baseType: !2621, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!75, !1035, !2614}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2592, file: !185, line: 339, baseType: !2625, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!75, !1236, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1237, file: !180, line: 1199, baseType: !2630, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !185, line: 430, size: 704, elements: !2633)
!2633 = !{!2634, !2638, !2639, !2643, !2644, !2645, !2660, !2683, !2687, !2688, !2711}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2632, file: !185, line: 431, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!75, !1236, !75, !75, !1156}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2632, file: !185, line: 432, baseType: !2486, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2632, file: !185, line: 433, baseType: !2640, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!75, !1236, !108}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2632, file: !185, line: 434, baseType: !2640, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2632, file: !185, line: 435, baseType: !2486, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2632, file: !185, line: 436, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!75, !1236, !75, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !185, line: 417, size: 256, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2650, file: !185, line: 418, baseType: !75, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2650, file: !185, line: 419, baseType: !108, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2650, file: !185, line: 420, baseType: !108, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2650, file: !185, line: 422, baseType: !108, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2650, file: !185, line: 423, baseType: !108, size: 32, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2650, file: !185, line: 424, baseType: !108, size: 32, offset: 160)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2650, file: !185, line: 425, baseType: !108, size: 32, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2650, file: !185, line: 426, baseType: !108, size: 32, offset: 224)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2632, file: !185, line: 437, baseType: !2661, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!75, !1236, !2542, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !185, line: 345, size: 960, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2665, file: !185, line: 346, baseType: !75, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2665, file: !185, line: 347, baseType: !344, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2665, file: !185, line: 348, baseType: !344, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2665, file: !185, line: 349, baseType: !344, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2665, file: !185, line: 350, baseType: !344, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2665, file: !185, line: 351, baseType: !344, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2665, file: !185, line: 352, baseType: !344, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2665, file: !185, line: 353, baseType: !52, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2665, file: !185, line: 355, baseType: !52, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2665, file: !185, line: 356, baseType: !75, size: 32, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2665, file: !185, line: 357, baseType: !75, size: 32, offset: 608)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2665, file: !185, line: 358, baseType: !344, size: 64, offset: 640)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2665, file: !185, line: 359, baseType: !344, size: 64, offset: 704)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2665, file: !185, line: 360, baseType: !344, size: 64, offset: 768)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2665, file: !185, line: 361, baseType: !52, size: 64, offset: 832)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2665, file: !185, line: 362, baseType: !75, size: 32, offset: 896)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2632, file: !185, line: 438, baseType: !2684, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!75, !1236, !2628, !2664}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2632, file: !185, line: 440, baseType: !2661, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2632, file: !185, line: 441, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!75, !1236, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !185, line: 411, size: 1408, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2693, file: !185, line: 412, baseType: !108, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2693, file: !185, line: 413, baseType: !2697, size: 1344, offset: 64)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 1344, elements: !675)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !185, line: 397, size: 448, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2710}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2698, file: !185, line: 398, baseType: !108, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2698, file: !185, line: 399, baseType: !108, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2698, file: !185, line: 401, baseType: !108, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2698, file: !185, line: 402, baseType: !108, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2698, file: !185, line: 403, baseType: !108, size: 32, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2698, file: !185, line: 404, baseType: !108, size: 32, offset: 160)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2698, file: !185, line: 405, baseType: !108, size: 32, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2698, file: !185, line: 406, baseType: !346, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2698, file: !185, line: 407, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !48, line: 132, baseType: !344)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2698, file: !185, line: 408, baseType: !2709, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2632, file: !185, line: 442, baseType: !2640, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1237, file: !180, line: 1200, baseType: !2713, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !180, line: 54, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1237, file: !180, line: 1201, baseType: !117, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1237, file: !180, line: 1202, baseType: !117, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1237, file: !180, line: 1203, baseType: !117, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1237, file: !180, line: 1204, baseType: !1000, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1237, file: !180, line: 1205, baseType: !824, size: 320, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1237, file: !180, line: 1206, baseType: !75, size: 32, offset: 1216)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1237, file: !180, line: 1207, baseType: !71, size: 32, offset: 1248)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1237, file: !180, line: 1209, baseType: !290, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1237, file: !180, line: 1211, baseType: !2725, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !180, line: 1211, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1237, file: !180, line: 1223, baseType: !2730, size: 64, offset: 1408)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1012, line: 34, size: 64, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2730, file: !1012, line: 35, baseType: !1015, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1237, file: !180, line: 1224, baseType: !98, size: 128, offset: 1472)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1237, file: !180, line: 1225, baseType: !2735, size: 64, offset: 1600)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !180, line: 1225, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1237, file: !180, line: 1226, baseType: !2738, size: 64, offset: 1664)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !180, line: 1226, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1237, file: !180, line: 1227, baseType: !2741, size: 64, offset: 1728)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !180, line: 50, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1237, file: !180, line: 1228, baseType: !2744, size: 64, offset: 1792)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !180, line: 1228, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1237, file: !180, line: 1229, baseType: !691, size: 128, offset: 1856)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1237, file: !180, line: 1230, baseType: !108, size: 32, offset: 1984)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1237, file: !180, line: 1231, baseType: !2749, size: 2496, offset: 2048)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !185, line: 521, size: 2496, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2755, !2787}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2749, file: !185, line: 522, baseType: !108, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2749, file: !185, line: 523, baseType: !824, size: 320, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2749, file: !185, line: 524, baseType: !2754, size: 192, offset: 384)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 192, elements: !675)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2749, file: !185, line: 525, baseType: !2756, size: 1728, offset: 576)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2757, size: 1728, elements: !675)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !185, line: 222, size: 576, elements: !2758)
!2758 = !{!2759, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2757, file: !185, line: 223, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !185, line: 445, size: 256, elements: !2762)
!2762 = !{!2763, !2764, !2777, !2778}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2761, file: !185, line: 446, baseType: !75, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2761, file: !185, line: 447, baseType: !2765, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !185, line: 312, size: 512, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2767, file: !185, line: 313, baseType: !2486, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2767, file: !185, line: 314, baseType: !2486, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2767, file: !185, line: 315, baseType: !2486, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2767, file: !185, line: 316, baseType: !2486, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2767, file: !185, line: 317, baseType: !2595, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2767, file: !185, line: 318, baseType: !2595, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2767, file: !185, line: 319, baseType: !2595, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2767, file: !185, line: 320, baseType: !2625, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2761, file: !185, line: 448, baseType: !1269, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2761, file: !185, line: 449, baseType: !2760, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2757, file: !185, line: 224, baseType: !75, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2757, file: !185, line: 226, baseType: !98, size: 128, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2757, file: !185, line: 227, baseType: !117, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2757, file: !185, line: 228, baseType: !108, size: 32, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2757, file: !185, line: 229, baseType: !108, size: 32, offset: 352)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2757, file: !185, line: 230, baseType: !2563, size: 64, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2757, file: !185, line: 231, baseType: !2563, size: 64, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2757, file: !185, line: 232, baseType: !290, size: 64, offset: 512)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2749, file: !185, line: 526, baseType: !2788, size: 192, offset: 2304)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2765, size: 192, elements: !675)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1237, file: !180, line: 1233, baseType: !2790, size: 2368, offset: 4544)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !180, line: 1184, size: 2368, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2790, file: !180, line: 1185, baseType: !90, size: 16)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2790, file: !180, line: 1186, baseType: !90, size: 16, offset: 16)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2790, file: !180, line: 1187, baseType: !2795, size: 2304, offset: 64)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2796, size: 2304, elements: !675)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2797, line: 12, size: 768, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2798 = !{!2799, !2807, !2808, !2813, !2814}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2796, file: !2797, line: 13, baseType: !2800, size: 384)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2801, line: 17, size: 384, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2800, file: !2801, line: 18, baseType: !75, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2800, file: !2801, line: 19, baseType: !75, size: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2800, file: !2801, line: 20, baseType: !698, size: 192, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2800, file: !2801, line: 22, baseType: !634, size: 128, align: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2796, file: !2797, line: 14, baseType: !2178, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2796, file: !2797, line: 15, baseType: !2809, size: 64, offset: 448)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2810, line: 16, size: 64, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2809, file: !2810, line: 17, baseType: !276, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2796, file: !2797, line: 16, baseType: !698, size: 192, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2796, file: !2797, line: 17, baseType: !71, size: 32, offset: 704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1237, file: !180, line: 1240, baseType: !290, size: 64, offset: 6912)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1237, file: !180, line: 1243, baseType: !106, size: 32, offset: 6976)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1237, file: !180, line: 1245, baseType: !840, size: 64, offset: 7040)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1237, file: !180, line: 1246, baseType: !840, size: 64, offset: 7104)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1237, file: !180, line: 1248, baseType: !107, size: 32, offset: 7168)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1237, file: !180, line: 1249, baseType: !2821, size: 64, offset: 7232)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !180, line: 634, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1237, file: !180, line: 1252, baseType: !2824, size: 256, offset: 7296)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2825)
!2825 = !{!2826}
!2826 = !DISubrange(count: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1237, file: !180, line: 1253, baseType: !2828, size: 128, offset: 7552)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2829, line: 21, baseType: !2830)
!2829 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2829, line: 19, size: 128, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2830, file: !2829, line: 20, baseType: !2833, size: 128)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !2834)
!2834 = !{!2835}
!2835 = !DISubrange(count: 16)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1237, file: !180, line: 1255, baseType: !108, size: 32, offset: 7680)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1237, file: !180, line: 1261, baseType: !41, size: 256, offset: 7744)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1237, file: !180, line: 1267, baseType: !884, size: 64, offset: 8000)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1237, file: !180, line: 1269, baseType: !2840, size: 64, offset: 8064)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2842)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1002, line: 128, size: 1024, align: 512, elements: !2843)
!2843 = !{!2844, !2848, !2849, !2856, !2862, !2866, !2870, !2874, !2875, !2879, !2883, !2888, !2892}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2842, file: !1002, line: 129, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!75, !1000, !108}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2842, file: !1002, line: 130, baseType: !2845, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2842, file: !1002, line: 131, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!75, !2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2842, file: !1002, line: 132, baseType: !2857, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!75, !2853, !108, !884, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2842, file: !1002, line: 134, baseType: !2863, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!75, !2853}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2842, file: !1002, line: 135, baseType: !2867, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!75, !1000}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2842, file: !1002, line: 136, baseType: !2871, size: 64, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !1000}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2842, file: !1002, line: 137, baseType: !2871, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2842, file: !1002, line: 138, baseType: !2876, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !1000, !1035}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2842, file: !1002, line: 139, baseType: !2880, size: 64, offset: 576)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!894, !1000, !894, !75}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2842, file: !1002, line: 140, baseType: !2884, size: 64, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!995, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2842, file: !1002, line: 141, baseType: !2889, size: 64, offset: 704)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!75, !1156, !110}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2842, file: !1002, line: 142, baseType: !2893, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!1000, !1000, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1237, file: !180, line: 1271, baseType: !2899, size: 448, offset: 8128)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2578, line: 63, size: 448, elements: !2900)
!2900 = !{!2901, !2906, !2907, !2908, !2909, !2910, !2911}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2899, file: !2578, line: 64, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!117, !2905, !2576}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2899, file: !2578, line: 66, baseType: !2902, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2899, file: !2578, line: 69, baseType: !1148, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2899, file: !2578, line: 70, baseType: !75, size: 32, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2899, file: !2578, line: 71, baseType: !108, size: 32, offset: 224)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2899, file: !2578, line: 74, baseType: !98, size: 128, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2899, file: !2578, line: 85, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1237, file: !180, line: 1274, baseType: !45, size: 64, offset: 8576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1237, file: !180, line: 1280, baseType: !45, size: 64, offset: 8640)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1237, file: !180, line: 1283, baseType: !75, size: 32, offset: 8704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1237, file: !180, line: 1286, baseType: !1880, size: 32, offset: 8736)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1237, file: !180, line: 1289, baseType: !2399, size: 64, offset: 8768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1237, file: !180, line: 1290, baseType: !687, size: 64, offset: 8832)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1237, file: !180, line: 1297, baseType: !742, size: 64, offset: 8896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1237, file: !180, line: 1304, baseType: !2921, size: 64, offset: 8960)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2922, line: 49, size: 64, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2921, file: !2922, line: 50, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2922, line: 41, size: 512, align: 512, elements: !2927)
!2927 = !{!2928, !2929, !2934}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2926, file: !2922, line: 43, baseType: !608, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2926, file: !2922, line: 45, baseType: !2930, size: 192, offset: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2922, line: 29, size: 192, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2930, file: !2922, line: 30, baseType: !98, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2930, file: !2922, line: 32, baseType: !1148, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2926, file: !2922, line: 46, baseType: !1148, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1237, file: !180, line: 1305, baseType: !2921, size: 64, offset: 9024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1237, file: !180, line: 1306, baseType: !634, size: 128, align: 64, offset: 9088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1237, file: !180, line: 1307, baseType: !2338, size: 256, offset: 9216)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1237, file: !180, line: 1309, baseType: !41, size: 256, offset: 9472)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1237, file: !180, line: 1314, baseType: !75, size: 32, offset: 9728)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1237, file: !180, line: 1317, baseType: !608, size: 32, align: 512, offset: 10240)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1237, file: !180, line: 1318, baseType: !98, size: 128, offset: 10304)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1237, file: !180, line: 1320, baseType: !608, size: 32, offset: 10432)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1237, file: !180, line: 1321, baseType: !98, size: 128, offset: 10496)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1036, file: !180, line: 656, baseType: !1383, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1036, file: !180, line: 659, baseType: !290, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1036, file: !180, line: 663, baseType: !117, size: 64, offset: 640)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !180, line: 671, baseType: !2948, size: 32, offset: 704)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !180, line: 671, size: 32, elements: !2949)
!2949 = !{!2950, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2948, file: !180, line: 672, baseType: !2951, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2948, file: !180, line: 673, baseType: !108, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1036, file: !180, line: 675, baseType: !104, size: 32, offset: 736)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1036, file: !180, line: 676, baseType: !649, size: 64, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1036, file: !180, line: 677, baseType: !1144, size: 128, offset: 832)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1036, file: !180, line: 678, baseType: !1144, size: 128, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1036, file: !180, line: 679, baseType: !1144, size: 128, offset: 1088)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1036, file: !180, line: 680, baseType: !608, size: 32, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1036, file: !180, line: 681, baseType: !90, size: 16, offset: 1248)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1036, file: !180, line: 682, baseType: !80, size: 8, offset: 1264)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1036, file: !180, line: 683, baseType: !80, size: 8, offset: 1272)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1036, file: !180, line: 684, baseType: !2709, size: 64, offset: 1280)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1036, file: !180, line: 691, baseType: !117, size: 64, offset: 1344)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1036, file: !180, line: 692, baseType: !824, size: 320, offset: 1408)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1036, file: !180, line: 694, baseType: !117, size: 64, offset: 1728)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1036, file: !180, line: 695, baseType: !117, size: 64, offset: 1792)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1036, file: !180, line: 697, baseType: !691, size: 128, offset: 1856)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1036, file: !180, line: 698, baseType: !98, size: 128, offset: 1984)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1036, file: !180, line: 707, baseType: !98, size: 128, offset: 2112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1036, file: !180, line: 708, baseType: !98, size: 128, offset: 2240)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !180, line: 709, baseType: !2972, size: 128, offset: 2368)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !180, line: 709, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2972, file: !180, line: 710, baseType: !687, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2972, file: !180, line: 711, baseType: !634, size: 128, align: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1036, file: !180, line: 713, baseType: !47, size: 64, offset: 2496)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1036, file: !180, line: 714, baseType: !47, size: 64, offset: 2560)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1036, file: !180, line: 715, baseType: !71, size: 32, offset: 2624)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1036, file: !180, line: 716, baseType: !71, size: 32, offset: 2656)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1036, file: !180, line: 717, baseType: !71, size: 32, offset: 2688)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1036, file: !180, line: 719, baseType: !71, size: 32, offset: 2720)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !180, line: 721, baseType: !2983, size: 64, offset: 2752)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !180, line: 721, size: 64, elements: !2984)
!2984 = !{!2985, !3111}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2983, file: !180, line: 722, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !180, line: 1914, size: 2112, elements: !2989)
!2989 = !{!2990, !2991, !2995, !2999, !3003, !3004, !3005, !3011, !3024, !3028, !3032, !3033, !3037, !3038, !3042, !3047, !3048, !3052, !3056, !3062, !3063, !3067, !3068, !3074, !3078, !3079, !3084, !3088, !3092, !3096, !3100, !3101, !3107}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2988, file: !180, line: 1915, baseType: !1269, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2988, file: !180, line: 1916, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!649, !626, !649, !75}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2988, file: !180, line: 1917, baseType: !2996, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!1187, !626, !894, !113, !2005}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2988, file: !180, line: 1918, baseType: !3000, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!1187, !626, !884, !113, !2005}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2988, file: !180, line: 1919, baseType: !1814, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2988, file: !180, line: 1920, baseType: !1814, size: 64, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2988, file: !180, line: 1921, baseType: !3006, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!75, !1817, !3009, !108}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !180, line: 53, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2988, file: !180, line: 1923, baseType: !3012, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!75, !626, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !180, line: 1858, size: 128, elements: !3017)
!3017 = !{!3018, !3023}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3016, file: !180, line: 1859, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !180, line: 1855, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!110, !3015, !884, !75, !649, !344, !108}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3016, file: !180, line: 1860, baseType: !649, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2988, file: !180, line: 1924, baseType: !3025, size: 64, offset: 512)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!2052, !626, !2054}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2988, file: !180, line: 1925, baseType: !3029, size: 64, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!1148, !626, !108, !117}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2988, file: !180, line: 1926, baseType: !3029, size: 64, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2988, file: !180, line: 1927, baseType: !3034, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!75, !626, !1523}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2988, file: !180, line: 1928, baseType: !117, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2988, file: !180, line: 1929, baseType: !3039, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!75, !1035, !626}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2988, file: !180, line: 1930, baseType: !3043, size: 64, offset: 896)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!75, !626, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !180, line: 1061, baseType: !290)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2988, file: !180, line: 1931, baseType: !3039, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2988, file: !180, line: 1932, baseType: !3049, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!75, !626, !649, !649, !75}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2988, file: !180, line: 1933, baseType: !3053, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!75, !75, !626, !75}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2988, file: !180, line: 1934, baseType: !3057, size: 64, offset: 1152)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!75, !626, !75, !3060}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !180, line: 1063, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2988, file: !180, line: 1935, baseType: !623, size: 64, offset: 1216)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2988, file: !180, line: 1936, baseType: !3064, size: 64, offset: 1280)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!75, !75}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2988, file: !180, line: 1937, baseType: !3057, size: 64, offset: 1344)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2988, file: !180, line: 1938, baseType: !3069, size: 64, offset: 1408)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!1187, !3072, !626, !2005, !113, !108}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !278, line: 59, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2988, file: !180, line: 1939, baseType: !3075, size: 64, offset: 1472)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!1187, !626, !2005, !3072, !113, !108}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2988, file: !180, line: 1940, baseType: !1870, size: 64, offset: 1536)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2988, file: !180, line: 1941, baseType: !3080, size: 64, offset: 1600)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!75, !626, !75, !3083, !1791}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2988, file: !180, line: 1942, baseType: !3085, size: 64, offset: 1664)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!1148, !626, !75, !649, !649}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2988, file: !180, line: 1944, baseType: !3089, size: 64, offset: 1728)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !1984, !626}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2988, file: !180, line: 1948, baseType: !3093, size: 64, offset: 1792)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!1187, !626, !649, !626, !649, !113, !108}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2988, file: !180, line: 1950, baseType: !3097, size: 64, offset: 1856)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!649, !626, !649, !626, !649, !649, !108}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2988, file: !180, line: 1953, baseType: !3049, size: 64, offset: 1920)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2988, file: !180, line: 1954, baseType: !3102, size: 64, offset: 1984)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!75, !3105, !108}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !180, line: 1911, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2988, file: !180, line: 1955, baseType: !3108, size: 64, offset: 2048)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!75, !3105, !3009, !108}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2983, file: !180, line: 723, baseType: !2467, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1036, file: !180, line: 725, baseType: !3113, size: 64, offset: 2816)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !180, line: 725, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1036, file: !180, line: 726, baseType: !1384, size: 1536, align: 64, offset: 2880)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1036, file: !180, line: 727, baseType: !98, size: 128, offset: 4416)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !180, line: 728, baseType: !3118, size: 64, offset: 4544)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !180, line: 728, size: 64, elements: !3119)
!3119 = !{!3120, !3121, !3132, !3133}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3118, file: !180, line: 729, baseType: !3072, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3118, file: !180, line: 730, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3124, line: 14, size: 832, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3123, file: !3124, line: 15, baseType: !1279, size: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3123, file: !3124, line: 16, baseType: !1269, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3123, file: !3124, line: 17, baseType: !2986, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3123, file: !3124, line: 18, baseType: !98, size: 128, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3123, file: !3124, line: 19, baseType: !104, size: 32, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3123, file: !3124, line: 20, baseType: !108, size: 32, offset: 800)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3118, file: !180, line: 731, baseType: !894, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3118, file: !180, line: 732, baseType: !108, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1036, file: !180, line: 735, baseType: !107, size: 32, offset: 4608)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1036, file: !180, line: 738, baseType: !107, size: 32, offset: 4640)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1036, file: !180, line: 739, baseType: !2821, size: 64, offset: 4672)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1036, file: !180, line: 750, baseType: !290, size: 64, offset: 4736)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1001, file: !1002, line: 91, baseType: !3139, size: 256, offset: 448)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !2825)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1001, file: !1002, line: 94, baseType: !3141, size: 64, offset: 704)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3142, line: 25, size: 64, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !3142, line: 26, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3141, file: !3142, line: 26, size: 64, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3145, file: !3142, line: 28, baseType: !345, size: 64, align: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3142, line: 30, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3145, file: !3142, line: 30, size: 64, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3149, file: !3142, line: 31, baseType: !608, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3149, file: !3142, line: 32, baseType: !75, size: 32, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1001, file: !1002, line: 95, baseType: !2840, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1001, file: !1002, line: 96, baseType: !1236, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1001, file: !1002, line: 97, baseType: !117, size: 64, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1001, file: !1002, line: 98, baseType: !290, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !1002, line: 100, baseType: !3158, size: 128, offset: 1024)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !1002, line: 100, size: 128, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3158, file: !1002, line: 101, baseType: !98, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3158, file: !1002, line: 102, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1001, file: !1002, line: 104, baseType: !98, size: 128, offset: 1152)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1001, file: !1002, line: 105, baseType: !98, size: 128, offset: 1280)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1001, file: !1002, line: 113, baseType: !3166, size: 128, offset: 1408)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !1002, line: 109, size: 128, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3166, file: !1002, line: 110, baseType: !691, size: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3166, file: !1002, line: 111, baseType: !1011, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3166, file: !1002, line: 112, baseType: !634, size: 128, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !996, file: !997, line: 72, baseType: !1236, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !996, file: !997, line: 73, baseType: !75, size: 32, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !996, file: !997, line: 74, baseType: !1075, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !991, file: !992, line: 10, baseType: !1000, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !627, file: !180, line: 1015, baseType: !1035, size: 64, offset: 1344)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !627, file: !180, line: 1016, baseType: !2986, size: 64, offset: 1408)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !627, file: !180, line: 1018, baseType: !344, size: 64, offset: 1472)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !627, file: !180, line: 1020, baseType: !290, size: 64, offset: 1536)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !627, file: !180, line: 1023, baseType: !290, size: 64, offset: 1600)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !627, file: !180, line: 1027, baseType: !3181, size: 64, offset: 1664)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !627, file: !180, line: 1029, baseType: !1383, size: 64, offset: 1728)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !627, file: !180, line: 1030, baseType: !1880, size: 32, offset: 1792)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !627, file: !180, line: 1031, baseType: !1880, size: 32, offset: 1824)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !594, file: !151, line: 756, baseType: !117, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !594, file: !151, line: 757, baseType: !117, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !594, file: !151, line: 760, baseType: !117, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !594, file: !151, line: 761, baseType: !117, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !594, file: !151, line: 763, baseType: !117, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !594, file: !151, line: 764, baseType: !3191, size: 64, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1538, line: 299, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1538, line: 299, size: 64, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3193, file: !1538, line: 299, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1543, line: 18, baseType: !117)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !594, file: !151, line: 773, baseType: !71, size: 32, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !594, file: !151, line: 785, baseType: !71, size: 32, offset: 1120)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !594, file: !151, line: 795, baseType: !3200, size: 64, offset: 1152)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !151, line: 726, size: 128, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3201, file: !151, line: 727, baseType: !344, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3201, file: !151, line: 728, baseType: !75, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !594, file: !151, line: 801, baseType: !117, size: 64, offset: 1216)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !594, file: !151, line: 804, baseType: !45, size: 64, offset: 1280)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !594, file: !151, line: 806, baseType: !75, size: 32, offset: 1344)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !594, file: !151, line: 808, baseType: !608, size: 32, offset: 1376)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !594, file: !151, line: 823, baseType: !824, size: 320, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !594, file: !151, line: 825, baseType: !98, size: 128, offset: 1728)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !594, file: !151, line: 845, baseType: !75, size: 32, offset: 1856)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !594, file: !151, line: 849, baseType: !117, size: 64, offset: 1920)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !594, file: !151, line: 850, baseType: !117, size: 64, offset: 1984)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !594, file: !151, line: 852, baseType: !117, size: 64, offset: 2048)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !594, file: !151, line: 853, baseType: !117, size: 64, offset: 2112)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !594, file: !151, line: 854, baseType: !47, size: 64, offset: 2176)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !594, file: !151, line: 855, baseType: !117, size: 64, offset: 2240)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !594, file: !151, line: 856, baseType: !117, size: 64, offset: 2304)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !594, file: !151, line: 857, baseType: !117, size: 64, offset: 2368)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !594, file: !151, line: 858, baseType: !117, size: 64, offset: 2432)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !594, file: !151, line: 865, baseType: !464, size: 32, offset: 2496)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !594, file: !151, line: 867, baseType: !608, size: 32, offset: 2528)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !594, file: !151, line: 869, baseType: !117, size: 64, offset: 2560)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !594, file: !151, line: 869, baseType: !117, size: 64, offset: 2624)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !594, file: !151, line: 869, baseType: !117, size: 64, offset: 2688)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !594, file: !151, line: 869, baseType: !117, size: 64, offset: 2752)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !594, file: !151, line: 870, baseType: !117, size: 64, offset: 2816)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !594, file: !151, line: 870, baseType: !117, size: 64, offset: 2880)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !594, file: !151, line: 870, baseType: !117, size: 64, offset: 2944)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !594, file: !151, line: 871, baseType: !117, size: 64, offset: 3008)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !594, file: !151, line: 871, baseType: !117, size: 64, offset: 3072)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !594, file: !151, line: 871, baseType: !117, size: 64, offset: 3136)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !594, file: !151, line: 871, baseType: !117, size: 64, offset: 3200)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !594, file: !151, line: 873, baseType: !3235, size: 3328, offset: 3264)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3328, elements: !3236)
!3236 = !{!3237}
!3237 = !DISubrange(count: 52)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !594, file: !151, line: 875, baseType: !3239, size: 1280, offset: 6592)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 1280, elements: !10)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !594, file: !151, line: 877, baseType: !3241, size: 64, offset: 7872)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !151, line: 877, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !594, file: !151, line: 880, baseType: !3244, size: 1088, offset: 7936)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3245, line: 72, baseType: !3246)
!3245 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3245, line: 23, size: 1088, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3255, !3256, !3257, !3258, !3283, !3284, !3285}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3246, file: !3245, line: 28, baseType: !344, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3246, file: !3245, line: 38, baseType: !47, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3246, file: !3245, line: 40, baseType: !117, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3246, file: !3245, line: 43, baseType: !824, size: 320, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3246, file: !3245, line: 44, baseType: !3253, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3245, line: 44, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !3245, line: 48, baseType: !117, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3246, file: !3245, line: 59, baseType: !41, size: 256, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3246, file: !3245, line: 60, baseType: !290, size: 64, offset: 896)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3246, file: !3245, line: 61, baseType: !3259, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3262, line: 13, size: 1216, elements: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3261, file: !3262, line: 14, baseType: !290, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3261, file: !3262, line: 15, baseType: !117, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3261, file: !3262, line: 17, baseType: !117, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3261, file: !3262, line: 17, baseType: !117, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3261, file: !3262, line: 18, baseType: !117, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3261, file: !3262, line: 18, baseType: !117, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3261, file: !3262, line: 19, baseType: !1919, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3261, file: !3262, line: 21, baseType: !1148, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3261, file: !3262, line: 23, baseType: !1148, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3261, file: !3262, line: 24, baseType: !1148, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3261, file: !3262, line: 25, baseType: !1148, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3261, file: !3262, line: 26, baseType: !1148, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3261, file: !3262, line: 27, baseType: !1148, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3261, file: !3262, line: 28, baseType: !1148, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3261, file: !3262, line: 29, baseType: !1148, size: 64, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3261, file: !3262, line: 30, baseType: !1148, size: 64, offset: 960)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3261, file: !3262, line: 31, baseType: !1148, size: 64, offset: 1024)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3261, file: !3262, line: 32, baseType: !1148, size: 64, offset: 1088)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3261, file: !3262, line: 33, baseType: !1148, size: 64, offset: 1152)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3246, file: !3245, line: 63, baseType: !71, size: 32, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3246, file: !3245, line: 69, baseType: !88, size: 16, offset: 1056)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3246, file: !3245, line: 70, baseType: !2231, size: 16, offset: 1072)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !151, line: 882, baseType: !117, size: 64, offset: 9024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !594, file: !151, line: 885, baseType: !608, size: 32, offset: 9088)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !594, file: !151, line: 886, baseType: !3289, size: 64, offset: 9152)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !151, line: 732, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !594, file: !151, line: 901, baseType: !742, size: 64, offset: 9216)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !594, file: !151, line: 904, baseType: !626, size: 64, offset: 9280)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !594, file: !151, line: 906, baseType: !3294, size: 64, offset: 9344)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !151, line: 906, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !594, file: !151, line: 930, baseType: !71, size: 32, offset: 9408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !594, file: !151, line: 933, baseType: !71, size: 32, offset: 9440)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !594, file: !151, line: 935, baseType: !3299, size: 64, offset: 9472)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !197, line: 103, size: 64, elements: !3300)
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3299, file: !197, line: 104, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !197, line: 101, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !594, file: !151, line: 940, baseType: !45, size: 64, offset: 9536)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !594, file: !151, line: 942, baseType: !2338, size: 256, offset: 9600)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !591, file: !151, line: 986, baseType: !3307, offset: 10240)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !762)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !277, file: !278, line: 882, baseType: !590, size: 64, offset: 9792)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !277, file: !278, line: 884, baseType: !75, size: 32, offset: 9856)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !277, file: !278, line: 885, baseType: !75, size: 32, offset: 9888)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !277, file: !278, line: 886, baseType: !75, size: 32, offset: 9920)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !277, file: !278, line: 888, baseType: !75, size: 32, offset: 9952)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !277, file: !278, line: 890, baseType: !117, size: 64, offset: 9984)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !277, file: !278, line: 893, baseType: !108, size: 32, offset: 10048)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !277, file: !278, line: 896, baseType: !108, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !277, file: !278, line: 897, baseType: !108, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !277, file: !278, line: 898, baseType: !108, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !277, file: !278, line: 899, baseType: !108, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !277, file: !278, line: 919, baseType: !108, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !277, file: !278, line: 922, baseType: !108, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !277, file: !278, line: 923, baseType: !108, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !277, file: !278, line: 925, baseType: !108, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !277, file: !278, line: 939, baseType: !108, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !277, file: !278, line: 941, baseType: !108, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !277, file: !278, line: 944, baseType: !108, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !277, file: !278, line: 956, baseType: !108, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !277, file: !278, line: 962, baseType: !108, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !277, file: !278, line: 966, baseType: !108, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !277, file: !278, line: 969, baseType: !117, size: 64, offset: 10176)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !277, file: !278, line: 971, baseType: !3331, size: 448, offset: 10240)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !191, line: 25, size: 448, elements: !3332)
!3332 = !{!3333, !3334, !3339}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3331, file: !191, line: 26, baseType: !117, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3331, file: !191, line: 27, baseType: !3335, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!1148, !3338}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !191, line: 28, baseType: !3340, size: 320, offset: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3331, file: !191, line: 28, size: 320, elements: !3341)
!3341 = !{!3342, !3352, !3377}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3340, file: !191, line: 37, baseType: !3343, size: 320)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !191, line: 30, size: 320, elements: !3344)
!3344 = !{!3345, !3347, !3348, !3349, !3350, !3351}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3343, file: !191, line: 31, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3343, file: !191, line: 32, baseType: !106, size: 32, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3343, file: !191, line: 33, baseType: !106, size: 32, offset: 96)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3343, file: !191, line: 34, baseType: !106, size: 32, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3343, file: !191, line: 35, baseType: !344, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3343, file: !191, line: 36, baseType: !3346, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3340, file: !191, line: 47, baseType: !3353, size: 192)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !191, line: 39, size: 192, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3376}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3353, file: !191, line: 40, baseType: !456, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3353, file: !191, line: 41, baseType: !190, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !191, line: 42, baseType: !3358, size: 64, offset: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !191, line: 42, size: 64, elements: !3359)
!3359 = !{!3360, !3368}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3358, file: !191, line: 43, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3363, line: 7, size: 128, elements: !3364)
!3363 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3364 = !{!3365, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3362, file: !3363, line: 8, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !115, line: 93, baseType: !56)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3362, file: !3363, line: 9, baseType: !56, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3358, file: !191, line: 44, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3371, line: 7, size: 64, elements: !3372)
!3371 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3372 = !{!3373, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3370, file: !3371, line: 8, baseType: !3374, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3371, line: 5, baseType: !816)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3370, file: !3371, line: 9, baseType: !816, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3353, file: !191, line: 46, baseType: !344, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3340, file: !191, line: 55, baseType: !3378, size: 256)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !191, line: 49, size: 256, elements: !3379)
!3379 = !{!3380, !3383, !3384, !3385, !3386}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3378, file: !191, line: 50, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !191, line: 14, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3378, file: !191, line: 51, baseType: !75, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3378, file: !191, line: 52, baseType: !75, size: 32, offset: 96)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3378, file: !191, line: 53, baseType: !117, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3378, file: !191, line: 54, baseType: !117, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !277, file: !278, line: 973, baseType: !3388, size: 32, offset: 10688)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !48, line: 27, baseType: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !115, line: 28, baseType: !75)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !277, file: !278, line: 974, baseType: !3388, size: 32, offset: 10720)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !277, file: !278, line: 978, baseType: !117, size: 64, offset: 10752)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !277, file: !278, line: 987, baseType: !276, size: 64, offset: 10816)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !277, file: !278, line: 990, baseType: !276, size: 64, offset: 10880)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !277, file: !278, line: 995, baseType: !98, size: 128, offset: 10944)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !277, file: !278, line: 996, baseType: !98, size: 128, offset: 11072)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !277, file: !278, line: 997, baseType: !276, size: 64, offset: 11200)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !277, file: !278, line: 1005, baseType: !98, size: 128, offset: 11264)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !277, file: !278, line: 1006, baseType: !98, size: 128, offset: 11392)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !277, file: !278, line: 1009, baseType: !679, size: 64, offset: 11520)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !277, file: !278, line: 1010, baseType: !3401, size: 512, offset: 11584)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !10)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !277, file: !278, line: 1011, baseType: !98, size: 128, offset: 12096)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !277, file: !278, line: 1012, baseType: !98, size: 128, offset: 12224)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !277, file: !278, line: 1014, baseType: !2089, size: 64, offset: 12352)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !277, file: !278, line: 1017, baseType: !2224, size: 64, offset: 12416)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !277, file: !278, line: 1020, baseType: !2224, size: 64, offset: 12480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !277, file: !278, line: 1023, baseType: !290, size: 64, offset: 12544)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !277, file: !278, line: 1025, baseType: !344, size: 64, offset: 12608)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !277, file: !278, line: 1026, baseType: !344, size: 64, offset: 12672)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !277, file: !278, line: 1031, baseType: !344, size: 64, offset: 12736)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !277, file: !278, line: 1032, baseType: !3412, size: 192, offset: 12800)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !278, line: 324, size: 192, elements: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3412, file: !278, line: 326, baseType: !344, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3412, file: !278, line: 327, baseType: !344, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3412, file: !278, line: 328, baseType: !58, size: 32, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !277, file: !278, line: 1041, baseType: !117, size: 64, offset: 12992)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !277, file: !278, line: 1042, baseType: !117, size: 64, offset: 13056)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !277, file: !278, line: 1045, baseType: !344, size: 64, offset: 13120)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !277, file: !278, line: 1048, baseType: !344, size: 64, offset: 13184)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !277, file: !278, line: 1051, baseType: !117, size: 64, offset: 13248)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !277, file: !278, line: 1052, baseType: !117, size: 64, offset: 13312)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !277, file: !278, line: 1055, baseType: !3424, size: 640, offset: 13376)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3425, line: 132, size: 640, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3426 = !{!3427, !3433, !3434}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3424, file: !3425, line: 133, baseType: !3428, size: 576)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3429, size: 576, elements: !675)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3425, line: 117, size: 192, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3429, file: !3425, line: 118, baseType: !344, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3429, file: !3425, line: 119, baseType: !470, size: 128, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3424, file: !3425, line: 134, baseType: !108, size: 32, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3424, file: !3425, line: 135, baseType: !108, size: 32, offset: 608)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !277, file: !278, line: 1058, baseType: !3436, size: 448, offset: 14016)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3425, line: 144, size: 448, elements: !3437)
!3437 = !{!3438, !3439, !3440}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3436, file: !3425, line: 145, baseType: !634, size: 128, align: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3436, file: !3425, line: 146, baseType: !41, size: 256, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3436, file: !3425, line: 147, baseType: !108, size: 32, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !277, file: !278, line: 1064, baseType: !775, size: 64, offset: 14464)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !277, file: !278, line: 1067, baseType: !775, size: 64, offset: 14528)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !277, file: !278, line: 1070, baseType: !775, size: 64, offset: 14592)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !277, file: !278, line: 1074, baseType: !808, size: 64, offset: 14656)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !277, file: !278, line: 1084, baseType: !3446, size: 128, offset: 14720)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2834)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !277, file: !278, line: 1086, baseType: !3448, size: 64, offset: 14848)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !278, line: 55, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !277, file: !278, line: 1089, baseType: !3451, size: 64, offset: 14912)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3452, line: 12, size: 64, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3453 = !{!3454}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3451, file: !3452, line: 13, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3452, line: 8, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !277, file: !278, line: 1090, baseType: !3458, size: 128, offset: 14976)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3459, line: 13, size: 128, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3460 = !{!3461}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3458, file: !3459, line: 14, baseType: !98, size: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !277, file: !278, line: 1097, baseType: !3463, size: 64, offset: 15104)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !278, line: 50, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !277, file: !278, line: 1100, baseType: !3466, size: 64, offset: 15168)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !278, line: 1100, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !277, file: !278, line: 1103, baseType: !3469, size: 64, offset: 15232)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !278, line: 53, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !277, file: !278, line: 1107, baseType: !3472, size: 64, offset: 15296)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3474, line: 31, size: 576, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3475 = !{!3476, !3477, !3480, !3483, !3486, !3487, !3490, !3493, !3494}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3473, file: !3474, line: 32, baseType: !292, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3473, file: !3474, line: 33, baseType: !3478, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3474, line: 9, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3473, file: !3474, line: 34, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3474, line: 10, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3473, file: !3474, line: 35, baseType: !3484, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3474, line: 8, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3473, file: !3474, line: 36, baseType: !711, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3473, file: !3474, line: 37, baseType: !3488, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !810, line: 34, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3473, file: !3474, line: 38, baseType: !3491, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3474, line: 38, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3473, file: !3474, line: 39, baseType: !3491, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3473, file: !3474, line: 40, baseType: !3495, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3474, line: 12, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !277, file: !278, line: 1110, baseType: !3498, size: 64, offset: 15360)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3500, line: 93, size: 8768, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3549, !3558, !3559, !3561, !3562, !3563, !4416, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4454, !4455, !4462, !4472, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3499, file: !3500, line: 94, baseType: !292, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3499, file: !3500, line: 95, baseType: !71, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3499, file: !3500, line: 96, baseType: !75, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3499, file: !3500, line: 97, baseType: !75, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3499, file: !3500, line: 98, baseType: !98, size: 128, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3499, file: !3500, line: 100, baseType: !698, size: 192, offset: 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3499, file: !3500, line: 103, baseType: !276, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3499, file: !3500, line: 106, baseType: !3510, size: 192, offset: 512)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !748, line: 32, size: 192, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3510, file: !748, line: 33, baseType: !98, size: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3510, file: !748, line: 34, baseType: !3514, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3515, line: 25, baseType: !3516)
!3515 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3515, line: 23, size: 64, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3516, file: !3515, line: 24, baseType: !541, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3499, file: !3500, line: 109, baseType: !687, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3499, file: !3500, line: 112, baseType: !75, size: 32, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3499, file: !3500, line: 114, baseType: !75, size: 32, offset: 800)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3499, file: !3500, line: 115, baseType: !276, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3499, file: !3500, line: 118, baseType: !75, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3499, file: !3500, line: 119, baseType: !108, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3499, file: !3500, line: 121, baseType: !3526, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3500, line: 80, size: 448, elements: !3528)
!3528 = !{!3529, !3530, !3536}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3527, file: !3500, line: 81, baseType: !71, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3527, file: !3500, line: 82, baseType: !3531, size: 128, offset: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3500, line: 75, size: 128, elements: !3532)
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3531, file: !3500, line: 76, baseType: !276, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3531, file: !3500, line: 77, baseType: !3535, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3527, file: !3500, line: 83, baseType: !1488, size: 256, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3499, file: !3500, line: 132, baseType: !108, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3499, file: !3500, line: 133, baseType: !108, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3499, file: !3500, line: 138, baseType: !108, size: 32, offset: 1056)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3499, file: !3500, line: 139, baseType: !98, size: 128, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3499, file: !3500, line: 142, baseType: !409, size: 512, offset: 1216)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3499, file: !3500, line: 143, baseType: !417, size: 64, offset: 1728)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3499, file: !3500, line: 150, baseType: !3544, size: 256, offset: 1792)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, size: 256, elements: !2216)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3500, line: 38, size: 128, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3545, file: !3500, line: 39, baseType: !344, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3545, file: !3500, line: 40, baseType: !344, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3499, file: !3500, line: 156, baseType: !3550, size: 192, offset: 2048)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3500, line: 66, size: 192, elements: !3551)
!3551 = !{!3552}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3550, file: !3500, line: 67, baseType: !3553, size: 192)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3500, line: 47, size: 192, elements: !3554)
!3554 = !{!3555, !3556, !3557}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3553, file: !3500, line: 48, baseType: !47, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3553, file: !3500, line: 49, baseType: !47, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3553, file: !3500, line: 50, baseType: !47, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3499, file: !3500, line: 160, baseType: !3424, size: 640, offset: 2240)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3499, file: !3500, line: 163, baseType: !3560, size: 256, offset: 2880)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !10)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3499, file: !3500, line: 169, baseType: !679, size: 64, offset: 3136)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3499, file: !3500, line: 172, baseType: !75, size: 32, offset: 3200)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3499, file: !3500, line: 174, baseType: !3564, size: 64, offset: 3264)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3566, line: 193, size: 5248, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3567 = !{!3568, !3569, !3570, !4021, !4306, !4307, !4308, !4354, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4371, !4372, !4373, !4374, !4375, !4383, !4392, !4393, !4394, !4395, !4396, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3565, file: !3566, line: 194, baseType: !2074, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3565, file: !3566, line: 195, baseType: !75, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3565, file: !3566, line: 196, baseType: !3571, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !210, line: 705, size: 5824, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3579, !3580, !3633, !3703, !3704, !3705, !3706, !3707, !3714, !3806, !3819, !3829, !3833, !3835, !3836, !3837, !3841, !3848, !3849, !3852, !3855, !3859, !3963, !3964, !3965, !3966, !3967, !3968, !3998, !3999, !4000, !4003, !4006, !4015, !4016, !4017, !4018, !4019, !4020}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3572, file: !210, line: 706, baseType: !1279, size: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3572, file: !210, line: 707, baseType: !3571, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3572, file: !210, line: 709, baseType: !3577, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !210, line: 37, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3572, file: !210, line: 711, baseType: !884, size: 64, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3572, file: !210, line: 712, baseType: !3581, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3583)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !210, line: 89, size: 384, elements: !3584)
!3584 = !{!3585, !3586, !3587, !3593, !3598, !3602}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3583, file: !210, line: 90, baseType: !884, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3583, file: !210, line: 91, baseType: !1359, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3583, file: !210, line: 92, baseType: !3588, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!75, !3591, !1315}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3583, file: !210, line: 93, baseType: !3594, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!894, !3591, !3597, !1936, !1937}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3583, file: !210, line: 95, baseType: !3599, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !3571}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3583, file: !210, line: 97, baseType: !3603, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !217, line: 286, size: 1472, elements: !3606)
!3606 = !{!3607, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3605, file: !217, line: 287, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!75, !3571}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3605, file: !217, line: 288, baseType: !3599, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3605, file: !217, line: 289, baseType: !3608, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3605, file: !217, line: 290, baseType: !3608, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3605, file: !217, line: 291, baseType: !3608, size: 64, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3605, file: !217, line: 292, baseType: !3608, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3605, file: !217, line: 293, baseType: !3608, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3605, file: !217, line: 294, baseType: !3608, size: 64, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3605, file: !217, line: 295, baseType: !3608, size: 64, offset: 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3605, file: !217, line: 296, baseType: !3608, size: 64, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3605, file: !217, line: 297, baseType: !3608, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3605, file: !217, line: 298, baseType: !3608, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3605, file: !217, line: 299, baseType: !3608, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3605, file: !217, line: 300, baseType: !3608, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3605, file: !217, line: 301, baseType: !3608, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3605, file: !217, line: 302, baseType: !3608, size: 64, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3605, file: !217, line: 303, baseType: !3608, size: 64, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3605, file: !217, line: 304, baseType: !3608, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3605, file: !217, line: 305, baseType: !3608, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3605, file: !217, line: 306, baseType: !3608, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3605, file: !217, line: 307, baseType: !3608, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3605, file: !217, line: 308, baseType: !3608, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3605, file: !217, line: 309, baseType: !3608, size: 64, offset: 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3572, file: !210, line: 714, baseType: !3634, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3637, line: 80, size: 1344, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3702}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3636, file: !3637, line: 81, baseType: !884, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3636, file: !3637, line: 82, baseType: !884, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3636, file: !3637, line: 83, baseType: !1359, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3636, file: !3637, line: 84, baseType: !1359, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3636, file: !3637, line: 85, baseType: !1359, size: 64, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3636, file: !3637, line: 87, baseType: !3645, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!75, !3571, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !204, line: 96, size: 1152, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3661, !3665, !3666, !3667, !3668, !3669, !3677, !3678, !3679, !3680, !3681, !3682}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3649, file: !204, line: 97, baseType: !884, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3649, file: !204, line: 98, baseType: !3634, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3649, file: !204, line: 100, baseType: !1269, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3649, file: !204, line: 101, baseType: !884, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3649, file: !204, line: 103, baseType: !110, size: 8, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3649, file: !204, line: 104, baseType: !203, size: 32, offset: 288)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3649, file: !204, line: 106, baseType: !3658, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !204, line: 106, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3649, file: !204, line: 107, baseType: !3662, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !204, line: 107, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3649, file: !204, line: 109, baseType: !3608, size: 64, offset: 448)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3649, file: !204, line: 110, baseType: !3599, size: 64, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3649, file: !204, line: 111, baseType: !3608, size: 64, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3649, file: !204, line: 112, baseType: !3599, size: 64, offset: 640)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3649, file: !204, line: 113, baseType: !3670, size: 64, offset: 704)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!75, !3571, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !217, line: 60, baseType: !3674)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !217, line: 58, size: 32, elements: !3675)
!3675 = !{!3676}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3674, file: !217, line: 59, baseType: !75, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3649, file: !204, line: 114, baseType: !3608, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3649, file: !204, line: 115, baseType: !1359, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3649, file: !204, line: 116, baseType: !1359, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3649, file: !204, line: 118, baseType: !3603, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3649, file: !204, line: 119, baseType: !3599, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3649, file: !204, line: 121, baseType: !3683, size: 64, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !204, line: 121, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3636, file: !3637, line: 88, baseType: !3588, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3636, file: !3637, line: 89, baseType: !3608, size: 64, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3636, file: !3637, line: 90, baseType: !3599, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3636, file: !3637, line: 91, baseType: !3599, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3636, file: !3637, line: 92, baseType: !3599, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3636, file: !3637, line: 94, baseType: !3608, size: 64, offset: 704)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3636, file: !3637, line: 95, baseType: !3608, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3636, file: !3637, line: 97, baseType: !3670, size: 64, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3636, file: !3637, line: 98, baseType: !3608, size: 64, offset: 896)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3636, file: !3637, line: 100, baseType: !3608, size: 64, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3636, file: !3637, line: 102, baseType: !3608, size: 64, offset: 1024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3636, file: !3637, line: 103, baseType: !3599, size: 64, offset: 1088)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3636, file: !3637, line: 105, baseType: !3603, size: 64, offset: 1152)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3636, file: !3637, line: 107, baseType: !3699, size: 64, offset: 1216)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3701)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3637, line: 107, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3636, file: !3637, line: 109, baseType: !110, size: 8, offset: 1280)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3572, file: !210, line: 715, baseType: !3648, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3572, file: !210, line: 717, baseType: !290, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3572, file: !210, line: 719, baseType: !290, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3572, file: !210, line: 721, baseType: !41, size: 256, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3572, file: !210, line: 725, baseType: !3708, size: 448, offset: 1280)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !210, line: 517, size: 448, elements: !3709)
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3708, file: !210, line: 518, baseType: !98, size: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3708, file: !210, line: 519, baseType: !98, size: 128, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3708, file: !210, line: 520, baseType: !98, size: 128, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3708, file: !210, line: 521, baseType: !209, size: 32, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3572, file: !210, line: 726, baseType: !3715, size: 2496, offset: 1728)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !217, line: 663, size: 2496, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3799, !3803}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3715, file: !217, line: 664, baseType: !3673, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3715, file: !217, line: 665, baseType: !108, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3715, file: !217, line: 666, baseType: !108, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3715, file: !217, line: 667, baseType: !110, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3715, file: !217, line: 668, baseType: !110, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3715, file: !217, line: 669, baseType: !110, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3715, file: !217, line: 670, baseType: !110, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3715, file: !217, line: 671, baseType: !110, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3715, file: !217, line: 672, baseType: !110, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3715, file: !217, line: 673, baseType: !110, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3715, file: !217, line: 674, baseType: !110, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3715, file: !217, line: 675, baseType: !106, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3715, file: !217, line: 676, baseType: !608, size: 32, offset: 96)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3715, file: !217, line: 678, baseType: !98, size: 128, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3715, file: !217, line: 679, baseType: !1488, size: 256, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3715, file: !217, line: 680, baseType: !3733, size: 64, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3735, line: 43, size: 1536, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3734, file: !3735, line: 44, baseType: !884, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3734, file: !3735, line: 45, baseType: !75, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3734, file: !3735, line: 46, baseType: !98, size: 128, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3734, file: !3735, line: 47, baseType: !608, size: 32, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3734, file: !3735, line: 48, baseType: !3742, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !217, line: 629, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3734, file: !3735, line: 49, baseType: !2326, size: 320, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3734, file: !3735, line: 50, baseType: !117, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3734, file: !3735, line: 51, baseType: !417, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3734, file: !3735, line: 52, baseType: !417, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3734, file: !3735, line: 53, baseType: !417, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3734, file: !3735, line: 54, baseType: !417, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3734, file: !3735, line: 55, baseType: !417, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3734, file: !3735, line: 56, baseType: !117, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3734, file: !3735, line: 57, baseType: !117, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3734, file: !3735, line: 58, baseType: !117, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3734, file: !3735, line: 59, baseType: !117, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3734, file: !3735, line: 60, baseType: !117, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3734, file: !3735, line: 61, baseType: !3571, size: 64, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3734, file: !3735, line: 62, baseType: !110, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3734, file: !3735, line: 63, baseType: !110, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3715, file: !217, line: 681, baseType: !110, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3715, file: !217, line: 682, baseType: !110, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3715, file: !217, line: 683, baseType: !110, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3715, file: !217, line: 684, baseType: !108, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3715, file: !217, line: 685, baseType: !108, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3715, file: !217, line: 690, baseType: !409, size: 512, offset: 640)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3715, file: !217, line: 691, baseType: !344, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3715, file: !217, line: 692, baseType: !2338, size: 256, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3715, file: !217, line: 693, baseType: !698, size: 192, offset: 1472)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3715, file: !217, line: 694, baseType: !3742, size: 64, offset: 1664)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3715, file: !217, line: 695, baseType: !71, size: 32, offset: 1728)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3715, file: !217, line: 696, baseType: !71, size: 32, offset: 1760)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3715, file: !217, line: 697, baseType: !108, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3715, file: !217, line: 698, baseType: !108, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3715, file: !217, line: 699, baseType: !108, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3715, file: !217, line: 700, baseType: !108, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3715, file: !217, line: 701, baseType: !108, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3715, file: !217, line: 702, baseType: !108, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3715, file: !217, line: 703, baseType: !110, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3715, file: !217, line: 704, baseType: !108, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3715, file: !217, line: 705, baseType: !108, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3715, file: !217, line: 706, baseType: !108, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3715, file: !217, line: 707, baseType: !108, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3715, file: !217, line: 708, baseType: !108, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3715, file: !217, line: 709, baseType: !108, size: 32, offset: 1824)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3715, file: !217, line: 710, baseType: !216, size: 32, offset: 1856)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3715, file: !217, line: 711, baseType: !224, size: 32, offset: 1888)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3715, file: !217, line: 712, baseType: !224, size: 32, offset: 1920)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3715, file: !217, line: 713, baseType: !75, size: 32, offset: 1952)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3715, file: !217, line: 714, baseType: !75, size: 32, offset: 1984)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3715, file: !217, line: 715, baseType: !344, size: 64, offset: 2048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3715, file: !217, line: 716, baseType: !344, size: 64, offset: 2112)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3715, file: !217, line: 717, baseType: !344, size: 64, offset: 2176)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3715, file: !217, line: 718, baseType: !344, size: 64, offset: 2240)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3715, file: !217, line: 720, baseType: !3794, size: 64, offset: 2304)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !217, line: 632, size: 64, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3795, file: !217, line: 633, baseType: !608, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3795, file: !217, line: 634, baseType: !108, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3715, file: !217, line: 721, baseType: !3800, size: 64, offset: 2368)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !3571, !816}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3715, file: !217, line: 722, baseType: !3804, size: 64, offset: 2432)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !217, line: 722, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3572, file: !210, line: 727, baseType: !3807, size: 64, offset: 4224)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !217, line: 742, size: 1792, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3816, !3817, !3818}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3808, file: !217, line: 743, baseType: !3605, size: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3808, file: !217, line: 744, baseType: !3608, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3808, file: !217, line: 745, baseType: !3813, size: 64, offset: 1536)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3571, !110}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3808, file: !217, line: 746, baseType: !3608, size: 64, offset: 1600)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3808, file: !217, line: 747, baseType: !3599, size: 64, offset: 1664)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3808, file: !217, line: 748, baseType: !3599, size: 64, offset: 1728)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3572, file: !210, line: 736, baseType: !3820, size: 128, offset: 4288)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !210, line: 529, size: 128, elements: !3821)
!3821 = !{!3822, !3826}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3820, file: !210, line: 531, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3825, line: 13, flags: DIFlagFwdDecl)
!3825 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3820, file: !210, line: 532, baseType: !3827, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !210, line: 49, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3572, file: !210, line: 738, baseType: !3830, size: 64, offset: 4416)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !210, line: 738, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3572, file: !210, line: 740, baseType: !3834, size: 64, offset: 4480)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3572, file: !210, line: 741, baseType: !344, size: 64, offset: 4544)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3572, file: !210, line: 746, baseType: !344, size: 64, offset: 4608)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3572, file: !210, line: 747, baseType: !3838, size: 64, offset: 4672)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3840)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !210, line: 747, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3572, file: !210, line: 749, baseType: !3842, size: 64, offset: 4736)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !210, line: 428, size: 128, elements: !3844)
!3844 = !{!3845, !3846, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3843, file: !210, line: 433, baseType: !108, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3843, file: !210, line: 434, baseType: !108, size: 32, offset: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3843, file: !210, line: 435, baseType: !117, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3572, file: !210, line: 751, baseType: !98, size: 128, offset: 4800)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3572, file: !210, line: 762, baseType: !3850, size: 64, offset: 4928)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !210, line: 762, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3572, file: !210, line: 770, baseType: !3853, offset: 4992)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3854, line: 5, elements: !619)
!3854 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3572, file: !210, line: 772, baseType: !3856, size: 64, offset: 4992)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3858, line: 18, flags: DIFlagFwdDecl)
!3858 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3572, file: !210, line: 773, baseType: !3860, size: 64, offset: 5056)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3862, line: 41, size: 512, elements: !3863)
!3862 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3863 = !{!3864, !3865, !3959, !3960, !3961, !3962}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3861, file: !3862, line: 42, baseType: !3860, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3861, file: !3862, line: 43, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3868)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3862, line: 125, size: 1408, elements: !3869)
!3869 = !{!3870, !3874, !3878, !3884, !3888, !3889, !3894, !3898, !3902, !3906, !3910, !3911, !3915, !3919, !3923, !3934, !3935, !3936, !3937, !3947, !3951, !3955}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3868, file: !3862, line: 126, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!3860, !3860}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3868, file: !3862, line: 127, baseType: !3875, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3860}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3868, file: !3862, line: 128, baseType: !3879, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!110, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3868, file: !3862, line: 129, baseType: !3885, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!1919, !3882, !3591}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3868, file: !3862, line: 131, baseType: !3879, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3868, file: !3862, line: 133, baseType: !3890, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3893, !3882}
!3893 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3862, line: 132, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3868, file: !3862, line: 134, baseType: !3895, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!110, !3882, !884}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3868, file: !3862, line: 136, baseType: !3899, size: 64, offset: 448)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!75, !3882, !884, !108, !290, !113}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3868, file: !3862, line: 141, baseType: !3903, size: 64, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!75, !3882, !884, !2414, !113}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3868, file: !3862, line: 144, baseType: !3907, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!884, !3882}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3868, file: !3862, line: 145, baseType: !3907, size: 64, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3868, file: !3862, line: 146, baseType: !3912, size: 64, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!3860, !3882}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3868, file: !3862, line: 148, baseType: !3916, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!3860, !3882, !3860}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3868, file: !3862, line: 151, baseType: !3920, size: 64, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3860, !3882, !884}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3868, file: !3862, line: 153, baseType: !3924, size: 64, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!75, !3882, !884, !884, !108, !108, !3927}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3862, line: 94, size: 640, elements: !3929)
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3928, file: !3862, line: 95, baseType: !3860, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3928, file: !3862, line: 96, baseType: !108, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3928, file: !3862, line: 97, baseType: !3933, size: 512, offset: 128)
!3933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 512, elements: !452)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3868, file: !3862, line: 158, baseType: !3916, size: 64, offset: 960)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3868, file: !3862, line: 161, baseType: !3912, size: 64, offset: 1024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3868, file: !3862, line: 163, baseType: !3871, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3868, file: !3862, line: 164, baseType: !3938, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!75, !3882, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3862, line: 73, size: 128, elements: !3943)
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3942, file: !3862, line: 74, baseType: !108, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3942, file: !3862, line: 75, baseType: !108, size: 32, offset: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3942, file: !3862, line: 76, baseType: !3882, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3868, file: !3862, line: 166, baseType: !3948, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!290, !3860, !75}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3868, file: !3862, line: 167, baseType: !3952, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!75, !3882, !108}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3868, file: !3862, line: 168, baseType: !3956, size: 64, offset: 1344)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!75, !3860}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3861, file: !3862, line: 44, baseType: !3571, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3861, file: !3862, line: 45, baseType: !98, size: 128, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3861, file: !3862, line: 46, baseType: !98, size: 128, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3862, line: 47, baseType: !80, size: 8, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3572, file: !210, line: 776, baseType: !75, size: 32, offset: 5120)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3572, file: !210, line: 778, baseType: !104, size: 32, offset: 5152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3572, file: !210, line: 779, baseType: !106, size: 32, offset: 5184)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3572, file: !210, line: 781, baseType: !608, size: 32, offset: 5216)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3572, file: !210, line: 782, baseType: !98, size: 128, offset: 5248)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3572, file: !210, line: 784, baseType: !3969, size: 64, offset: 5376)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3972, line: 52, size: 768, elements: !3973)
!3972 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3982, !3986, !3987, !3988, !3989, !3993, !3997}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3971, file: !3972, line: 53, baseType: !884, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3971, file: !3972, line: 55, baseType: !1359, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3971, file: !3972, line: 56, baseType: !1359, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3971, file: !3972, line: 58, baseType: !3588, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3971, file: !3972, line: 59, baseType: !3979, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!894, !3591, !3597}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3971, file: !3972, line: 61, baseType: !3983, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !3969}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3971, file: !3972, line: 62, baseType: !3599, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3971, file: !3972, line: 64, baseType: !3608, size: 64, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3971, file: !3972, line: 66, baseType: !1902, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3971, file: !3972, line: 67, baseType: !3990, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!1919, !3591}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3971, file: !3972, line: 69, baseType: !3994, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3591, !1936, !1937}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3971, file: !3972, line: 71, baseType: !3603, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3572, file: !210, line: 785, baseType: !1359, size: 64, offset: 5440)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3572, file: !210, line: 787, baseType: !3599, size: 64, offset: 5504)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3572, file: !210, line: 788, baseType: !4001, size: 64, offset: 5568)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !210, line: 46, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3572, file: !210, line: 789, baseType: !4004, size: 64, offset: 5632)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !210, line: 48, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3572, file: !210, line: 791, baseType: !4007, size: 64, offset: 5696)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !210, line: 597, size: 128, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4008, file: !210, line: 598, baseType: !231, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4008, file: !210, line: 599, baseType: !240, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4008, file: !210, line: 600, baseType: !245, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4008, file: !210, line: 601, baseType: !110, size: 8, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4008, file: !210, line: 602, baseType: !110, size: 8, offset: 104)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3572, file: !210, line: 793, baseType: !250, size: 32, offset: 5760)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3572, file: !210, line: 795, baseType: !110, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3572, file: !210, line: 796, baseType: !110, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3572, file: !210, line: 797, baseType: !110, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3572, file: !210, line: 798, baseType: !110, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3572, file: !210, line: 799, baseType: !110, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3565, file: !3566, line: 197, baseType: !4022, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !4024, line: 441, size: 1472, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!4025 = !{!4026, !4027, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4057, !4058, !4061, !4062, !4064, !4185, !4188, !4189, !4305}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4023, file: !4024, line: 442, baseType: !2074, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !4023, file: !4024, line: 443, baseType: !4028, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4023, file: !4024, line: 444, baseType: !1269, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4023, file: !4024, line: 445, baseType: !884, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4023, file: !4024, line: 446, baseType: !884, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !4023, file: !4024, line: 447, baseType: !75, size: 32, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4023, file: !4024, line: 448, baseType: !75, size: 32, offset: 352)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !4023, file: !4024, line: 449, baseType: !75, size: 32, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4023, file: !4024, line: 450, baseType: !108, size: 32, offset: 416)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4023, file: !4024, line: 451, baseType: !852, size: 16, offset: 448)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !4023, file: !4024, line: 452, baseType: !852, size: 16, offset: 464)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4023, file: !4024, line: 453, baseType: !4039, size: 352, offset: 480)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4040, line: 30, size: 352, elements: !4041)
!4040 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!4041 = !{!4042, !4044, !4045, !4046, !4047, !4050, !4054, !4056}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4039, file: !4040, line: 31, baseType: !4043, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4040, line: 7, baseType: !108)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4039, file: !4040, line: 32, baseType: !4043, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4039, file: !4040, line: 33, baseType: !4043, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4039, file: !4040, line: 34, baseType: !4043, size: 32, offset: 96)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4039, file: !4040, line: 35, baseType: !4048, size: 8, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4049, line: 5, baseType: !82)
!4049 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4039, file: !4040, line: 36, baseType: !4051, size: 152, offset: 136)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, size: 152, elements: !4052)
!4052 = !{!4053}
!4053 = !DISubrange(count: 19)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4039, file: !4040, line: 37, baseType: !4055, size: 32, offset: 288)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4049, line: 6, baseType: !108)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4039, file: !4040, line: 38, baseType: !4055, size: 32, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4023, file: !4024, line: 454, baseType: !117, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !4023, file: !4024, line: 455, baseType: !4059, size: 64, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4024, line: 455, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !4023, file: !4024, line: 456, baseType: !4022, size: 64, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !4023, file: !4024, line: 461, baseType: !4063, size: 64, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4023, file: !4024, line: 462, baseType: !4065, size: 64, offset: 1088)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !4068, line: 101, size: 3008, elements: !4069)
!4068 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!4069 = !{!4070, !4102, !4103, !4104, !4126, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4154, !4180, !4181, !4182, !4183, !4184}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4067, file: !4068, line: 102, baseType: !4071, size: 1088)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !4072, line: 35, size: 1088, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!4073 = !{!4074, !4091, !4092, !4093, !4094, !4095, !4099, !4100, !4101}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4071, file: !4072, line: 36, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !4072, line: 10, size: 256, elements: !4077)
!4077 = !{!4078, !4083, !4084, !4085, !4086, !4087, !4088, !4089}
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4072, line: 11, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4072, line: 11, size: 64, elements: !4080)
!4080 = !{!4081, !4082}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4079, file: !4072, line: 12, baseType: !4075, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4079, file: !4072, line: 13, baseType: !305, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4076, file: !4072, line: 15, baseType: !108, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4076, file: !4072, line: 16, baseType: !108, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4076, file: !4072, line: 17, baseType: !108, size: 32, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4076, file: !4072, line: 18, baseType: !108, size: 32, offset: 160)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4076, file: !4072, line: 19, baseType: !108, size: 32, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !4072, line: 20, baseType: !110, size: 8, offset: 224)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4076, file: !4072, line: 22, baseType: !4090, align: 64, offset: 256)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, elements: !762)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4071, file: !4072, line: 37, baseType: !2338, size: 256, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4071, file: !4072, line: 38, baseType: !41, size: 256, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4071, file: !4072, line: 39, baseType: !71, size: 32, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !4071, file: !4072, line: 40, baseType: !4076, size: 256, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4071, file: !4072, line: 41, baseType: !4096, size: 64, offset: 896)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !306, line: 56, size: 64, elements: !4097)
!4097 = !{!4098}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4096, file: !306, line: 57, baseType: !309, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !4071, file: !4072, line: 42, baseType: !71, size: 32, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !4071, file: !4072, line: 43, baseType: !75, size: 32, offset: 992)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4071, file: !4072, line: 44, baseType: !4075, size: 64, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4067, file: !4068, line: 103, baseType: !3564, size: 64, offset: 1088)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !4067, file: !4068, line: 104, baseType: !3564, size: 64, offset: 1152)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4067, file: !4068, line: 105, baseType: !4105, size: 64, offset: 1216)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !4068, line: 33, size: 320, elements: !4108)
!4108 = !{!4109, !4113, !4117, !4121, !4125}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4107, file: !4068, line: 34, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!110, !4066}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4107, file: !4068, line: 35, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4066, !110}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4107, file: !4068, line: 36, baseType: !4118, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4066}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4107, file: !4068, line: 37, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!75, !4066, !3564}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4107, file: !4068, line: 38, baseType: !4118, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !4067, file: !4068, line: 106, baseType: !4127, size: 64, offset: 1280)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4129)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !4068, line: 41, size: 192, elements: !4130)
!4130 = !{!4131, !4137, !4141}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4129, file: !4068, line: 42, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!113, !4066, !4135, !4135, !113}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4129, file: !4068, line: 44, baseType: !4138, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4066, !4135, !4135, !113}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4129, file: !4068, line: 46, baseType: !4118, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4067, file: !4068, line: 107, baseType: !608, size: 32, offset: 1344)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !4067, file: !4068, line: 108, baseType: !75, size: 32, offset: 1376)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4067, file: !4068, line: 109, baseType: !75, size: 32, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4067, file: !4068, line: 110, baseType: !698, size: 192, offset: 1472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !4067, file: !4068, line: 111, baseType: !698, size: 192, offset: 1664)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4067, file: !4068, line: 112, baseType: !117, size: 64, offset: 1856)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !4067, file: !4068, line: 113, baseType: !117, size: 64, offset: 1920)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !4067, file: !4068, line: 114, baseType: !82, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4067, file: !4068, line: 115, baseType: !41, size: 256, offset: 2048)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !4067, file: !4068, line: 116, baseType: !41, size: 256, offset: 2304)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !4067, file: !4068, line: 117, baseType: !4153, size: 64, offset: 2560)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !4067, file: !4068, line: 118, baseType: !4155, size: 192, offset: 2624)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4067, file: !4068, line: 118, size: 192, elements: !4156)
!4156 = !{!4157, !4178}
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !4068, line: 118, baseType: !4158, size: 192)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4155, file: !4068, line: 118, size: 192, elements: !4159)
!4159 = !{!4160, !4169, !4170, !4171, !4176, !4177}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4158, file: !4068, line: 118, baseType: !4161, size: 192)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4162, line: 44, size: 192, elements: !4163)
!4162 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4163 = !{!4164, !4165, !4166, !4167, !4168}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4161, file: !4162, line: 45, baseType: !108, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4161, file: !4162, line: 46, baseType: !108, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4161, file: !4162, line: 47, baseType: !108, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4161, file: !4162, line: 48, baseType: !108, size: 32, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4161, file: !4162, line: 49, baseType: !290, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4158, file: !4068, line: 118, baseType: !4153, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4158, file: !4068, line: 118, baseType: !1032, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4158, file: !4068, line: 118, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 0)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4158, file: !4068, line: 118, baseType: !4153, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4158, file: !4068, line: 118, baseType: !1032, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4155, file: !4068, line: 118, baseType: !4179, offset: 192)
!4179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, elements: !4174)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !4067, file: !4068, line: 119, baseType: !108, size: 32, offset: 2816)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !4067, file: !4068, line: 120, baseType: !108, size: 32, offset: 2848)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !4067, file: !4068, line: 121, baseType: !75, size: 32, offset: 2880)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4067, file: !4068, line: 122, baseType: !2074, size: 32, offset: 2912)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !4067, file: !4068, line: 123, baseType: !290, size: 64, offset: 2944)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !4023, file: !4024, line: 463, baseType: !4186, size: 64, offset: 1152)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !4023, file: !4024, line: 464, baseType: !290, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4023, file: !4024, line: 470, baseType: !4190, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !4024, line: 357, size: 2176, elements: !4193)
!4193 = !{!4194, !4198, !4202, !4206, !4210, !4214, !4218, !4219, !4223, !4227, !4228, !4232, !4233, !4237, !4241, !4247, !4248, !4249, !4250, !4251, !4252, !4256, !4257, !4258, !4259, !4263, !4267, !4271, !4275, !4287, !4293, !4299, !4300, !4304}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4192, file: !4024, line: 358, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!3564, !4022, !626, !75}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4192, file: !4024, line: 360, baseType: !4199, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!75, !4022, !3564}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4192, file: !4024, line: 361, baseType: !4203, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4022, !3564}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4192, file: !4024, line: 362, baseType: !4207, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!75, !3564, !626}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4192, file: !4024, line: 363, baseType: !4211, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !3564, !626}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4192, file: !4024, line: 364, baseType: !4215, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !3564}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4192, file: !4024, line: 365, baseType: !4215, size: 64, offset: 384)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4192, file: !4024, line: 366, baseType: !4220, size: 64, offset: 448)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!1187, !3564, !4135, !113}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4192, file: !4024, line: 367, baseType: !4224, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!75, !3564, !80}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4192, file: !4024, line: 368, baseType: !4215, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4192, file: !4024, line: 369, baseType: !4229, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!108, !3564}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4192, file: !4024, line: 370, baseType: !4229, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4192, file: !4024, line: 371, baseType: !4234, size: 64, offset: 768)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!75, !3564, !108, !117}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4192, file: !4024, line: 373, baseType: !4238, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!1148, !3564, !108, !117}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4192, file: !4024, line: 375, baseType: !4242, size: 64, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !3564, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4192, file: !4024, line: 376, baseType: !4215, size: 64, offset: 960)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4192, file: !4024, line: 377, baseType: !4215, size: 64, offset: 1024)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4192, file: !4024, line: 378, baseType: !4215, size: 64, offset: 1088)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4192, file: !4024, line: 379, baseType: !4215, size: 64, offset: 1152)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4192, file: !4024, line: 380, baseType: !4215, size: 64, offset: 1216)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4192, file: !4024, line: 381, baseType: !4253, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!75, !3564, !75}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4192, file: !4024, line: 382, baseType: !4215, size: 64, offset: 1344)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4192, file: !4024, line: 383, baseType: !4253, size: 64, offset: 1408)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4192, file: !4024, line: 384, baseType: !4215, size: 64, offset: 1472)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4192, file: !4024, line: 385, baseType: !4260, size: 64, offset: 1536)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !3564, !75}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4192, file: !4024, line: 386, baseType: !4264, size: 64, offset: 1600)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{null, !3564, !4}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4192, file: !4024, line: 387, baseType: !4268, size: 64, offset: 1664)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!75, !3564}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4192, file: !4024, line: 388, baseType: !4272, size: 64, offset: 1728)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!75, !3564, !108, !108}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4192, file: !4024, line: 390, baseType: !4276, size: 64, offset: 1792)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!75, !3564, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4281, line: 15, size: 64, elements: !4282)
!4281 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4282 = !{!4283, !4284, !4285, !4286}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4280, file: !4281, line: 16, baseType: !90, size: 16)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4280, file: !4281, line: 17, baseType: !90, size: 16, offset: 16)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4280, file: !4281, line: 18, baseType: !90, size: 16, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4280, file: !4281, line: 19, baseType: !90, size: 16, offset: 48)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4192, file: !4024, line: 391, baseType: !4288, size: 64, offset: 1856)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!75, !3564, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !4024, line: 16, flags: DIFlagFwdDecl)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4192, file: !4024, line: 393, baseType: !4294, size: 64, offset: 1920)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!75, !3564, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !4024, line: 17, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4192, file: !4024, line: 394, baseType: !4294, size: 64, offset: 1984)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4192, file: !4024, line: 395, baseType: !4301, size: 64, offset: 2048)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !3564, !1984}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4192, file: !4024, line: 401, baseType: !2015, size: 64, offset: 2112)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !4023, file: !4024, line: 471, baseType: !98, size: 128, offset: 1344)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3565, file: !3566, line: 198, baseType: !4066, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3565, file: !3566, line: 199, baseType: !4190, size: 64, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3565, file: !3566, line: 201, baseType: !4309, size: 64, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4311, line: 269, size: 128, elements: !4312)
!4311 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4312 = !{!4313, !4353}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4310, file: !4311, line: 270, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4311, line: 231, size: 1152, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4322, !4326, !4330, !4331, !4332, !4333, !4337, !4338, !4342, !4343, !4347, !4351, !4352}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4315, file: !4311, line: 232, baseType: !894, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4315, file: !4311, line: 233, baseType: !75, size: 32, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4315, file: !4311, line: 238, baseType: !4268, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4315, file: !4311, line: 239, baseType: !4215, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4315, file: !4311, line: 240, baseType: !4215, size: 64, offset: 256)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4315, file: !4311, line: 241, baseType: !4323, size: 64, offset: 320)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!1187, !3564, !626, !119, !113, !1791, !117}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4315, file: !4311, line: 243, baseType: !4327, size: 64, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!1187, !3564, !626, !4135, !113}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4315, file: !4311, line: 245, baseType: !4234, size: 64, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4315, file: !4311, line: 247, baseType: !4234, size: 64, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4315, file: !4311, line: 249, baseType: !4242, size: 64, offset: 576)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4315, file: !4311, line: 250, baseType: !4334, size: 64, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!2052, !3564, !626, !2054}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4315, file: !4311, line: 252, baseType: !4215, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4315, file: !4311, line: 257, baseType: !4339, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !3564, !4135, !4135, !113}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4315, file: !4311, line: 259, baseType: !4215, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4315, file: !4311, line: 260, baseType: !4344, size: 64, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !3564, !110}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4315, file: !4311, line: 261, baseType: !4348, size: 64, offset: 960)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!113, !3564, !4135, !4135, !113}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4315, file: !4311, line: 263, baseType: !4339, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4315, file: !4311, line: 266, baseType: !1269, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4310, file: !4311, line: 271, baseType: !3564, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3565, file: !3566, line: 202, baseType: !4355, size: 384, offset: 384)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4311, line: 17, size: 384, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4355, file: !4311, line: 18, baseType: !45, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4355, file: !4311, line: 19, baseType: !58, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4355, file: !4311, line: 20, baseType: !108, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4355, file: !4311, line: 21, baseType: !98, size: 128, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4355, file: !4311, line: 22, baseType: !98, size: 128, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3565, file: !3566, line: 204, baseType: !41, size: 256, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3565, file: !3566, line: 205, baseType: !41, size: 256, offset: 1024)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3565, file: !3566, line: 206, baseType: !41, size: 256, offset: 1280)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3565, file: !3566, line: 207, baseType: !824, size: 320, offset: 1536)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3565, file: !3566, line: 208, baseType: !41, size: 256, offset: 1856)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3565, file: !3566, line: 209, baseType: !4039, size: 352, offset: 2112)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3565, file: !3566, line: 209, baseType: !4039, size: 352, offset: 2464)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3565, file: !3566, line: 210, baseType: !4370, size: 512, offset: 2816)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1322)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !3566, line: 211, baseType: !117, size: 64, offset: 3328)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3565, file: !3566, line: 212, baseType: !75, size: 32, offset: 3392)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3565, file: !3566, line: 213, baseType: !108, size: 32, offset: 3424)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3565, file: !3566, line: 214, baseType: !4280, size: 64, offset: 3456)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3565, file: !3566, line: 221, baseType: !4376, size: 64, align: 64, offset: 3520)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3565, file: !3566, line: 216, size: 64, align: 64, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4376, file: !3566, line: 217, baseType: !608, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4376, file: !3566, line: 218, baseType: !110, size: 8, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4376, file: !3566, line: 219, baseType: !110, size: 8, offset: 40)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4376, file: !3566, line: 220, baseType: !4382, offset: 64)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !4174)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3565, file: !3566, line: 230, baseType: !4384, size: 192, align: 64, offset: 3584)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3565, file: !3566, line: 223, size: 192, align: 64, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4384, file: !3566, line: 224, baseType: !679, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4384, file: !3566, line: 225, baseType: !679, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4384, file: !3566, line: 226, baseType: !608, size: 32, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4384, file: !3566, line: 227, baseType: !82, size: 8, offset: 160)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4384, file: !3566, line: 228, baseType: !110, size: 8, offset: 168)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4384, file: !3566, line: 229, baseType: !4382, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3565, file: !3566, line: 232, baseType: !110, size: 8, offset: 3776)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3565, file: !3566, line: 233, baseType: !110, size: 8, offset: 3784)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3565, file: !3566, line: 234, baseType: !75, size: 32, offset: 3808)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3565, file: !3566, line: 236, baseType: !3564, size: 64, offset: 3840)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3565, file: !3566, line: 237, baseType: !4397, size: 64, offset: 3904)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !180, line: 1083, size: 384, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4398, file: !180, line: 1084, baseType: !656, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4398, file: !180, line: 1085, baseType: !75, size: 32, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4398, file: !180, line: 1086, baseType: !75, size: 32, offset: 96)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4398, file: !180, line: 1087, baseType: !4397, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4398, file: !180, line: 1088, baseType: !626, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4398, file: !180, line: 1089, baseType: !634, size: 128, align: 64, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3565, file: !3566, line: 238, baseType: !698, size: 192, offset: 3968)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3565, file: !3566, line: 239, baseType: !698, size: 192, offset: 4160)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3565, file: !3566, line: 240, baseType: !2338, size: 256, offset: 4352)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3565, file: !3566, line: 241, baseType: !290, size: 64, offset: 4608)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3565, file: !3566, line: 242, baseType: !290, size: 64, offset: 4672)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3565, file: !3566, line: 243, baseType: !608, size: 32, offset: 4736)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3565, file: !3566, line: 244, baseType: !75, size: 32, offset: 4768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3565, file: !3566, line: 245, baseType: !4153, size: 64, offset: 4800)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3565, file: !3566, line: 247, baseType: !98, size: 128, offset: 4864)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3565, file: !3566, line: 250, baseType: !2338, size: 256, offset: 4992)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3499, file: !3500, line: 185, baseType: !4417, size: 64, offset: 3328)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !460, line: 860, baseType: !4418)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 853, size: 64, elements: !4419)
!4419 = !{!4420, !4421}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4418, file: !460, line: 858, baseType: !1006, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4418, file: !460, line: 859, baseType: !608, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3499, file: !3500, line: 186, baseType: !344, size: 64, offset: 3392)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3499, file: !3500, line: 186, baseType: !344, size: 64, offset: 3456)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3499, file: !3500, line: 186, baseType: !344, size: 64, offset: 3520)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3499, file: !3500, line: 186, baseType: !344, size: 64, offset: 3584)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3499, file: !3500, line: 187, baseType: !344, size: 64, offset: 3648)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3499, file: !3500, line: 188, baseType: !344, size: 64, offset: 3712)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3499, file: !3500, line: 189, baseType: !3412, size: 192, offset: 3776)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3499, file: !3500, line: 190, baseType: !117, size: 64, offset: 3968)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3499, file: !3500, line: 190, baseType: !117, size: 64, offset: 4032)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3499, file: !3500, line: 190, baseType: !117, size: 64, offset: 4096)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3499, file: !3500, line: 190, baseType: !117, size: 64, offset: 4160)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3499, file: !3500, line: 191, baseType: !117, size: 64, offset: 4224)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3499, file: !3500, line: 191, baseType: !117, size: 64, offset: 4288)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3499, file: !3500, line: 191, baseType: !117, size: 64, offset: 4352)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3499, file: !3500, line: 191, baseType: !117, size: 64, offset: 4416)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3499, file: !3500, line: 192, baseType: !117, size: 64, offset: 4480)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3499, file: !3500, line: 192, baseType: !117, size: 64, offset: 4544)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3499, file: !3500, line: 192, baseType: !117, size: 64, offset: 4608)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3499, file: !3500, line: 192, baseType: !117, size: 64, offset: 4672)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3499, file: !3500, line: 193, baseType: !117, size: 64, offset: 4736)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3499, file: !3500, line: 193, baseType: !117, size: 64, offset: 4800)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3499, file: !3500, line: 194, baseType: !4444, size: 448, offset: 4864)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4445, line: 12, size: 448, elements: !4446)
!4445 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4453}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4444, file: !4445, line: 15, baseType: !344, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4444, file: !4445, line: 17, baseType: !344, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4444, file: !4445, line: 19, baseType: !344, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4444, file: !4445, line: 21, baseType: !344, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4444, file: !4445, line: 29, baseType: !344, size: 64, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4444, file: !4445, line: 35, baseType: !344, size: 64, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4444, file: !4445, line: 44, baseType: !344, size: 64, offset: 384)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3499, file: !3500, line: 202, baseType: !346, size: 64, offset: 5312)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3499, file: !3500, line: 213, baseType: !4456, size: 2048, offset: 5376)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4457, size: 2048, elements: !2834)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4458, line: 43, size: 128, elements: !4459)
!4458 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4457, file: !4458, line: 44, baseType: !116, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4457, file: !4458, line: 45, baseType: !116, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3499, file: !3500, line: 216, baseType: !4463, size: 448, offset: 7424)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3500, line: 30, size: 448, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470, !4471}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4463, file: !3500, line: 31, baseType: !75, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4463, file: !3500, line: 32, baseType: !1148, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4463, file: !3500, line: 33, baseType: !117, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4463, file: !3500, line: 34, baseType: !344, size: 64, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4463, file: !3500, line: 34, baseType: !344, size: 64, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4463, file: !3500, line: 35, baseType: !117, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4463, file: !3500, line: 35, baseType: !117, size: 64, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3499, file: !3500, line: 219, baseType: !4473, size: 64, offset: 7872)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3500, line: 219, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3499, file: !3500, line: 222, baseType: !108, size: 32, offset: 7936)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3499, file: !3500, line: 223, baseType: !37, size: 64, offset: 8000)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3499, file: !3500, line: 230, baseType: !110, size: 8, offset: 8064)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3499, file: !3500, line: 231, baseType: !852, size: 16, offset: 8080)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3499, file: !3500, line: 232, baseType: !852, size: 16, offset: 8096)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3499, file: !3500, line: 234, baseType: !590, size: 64, offset: 8128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3499, file: !3500, line: 237, baseType: !41, size: 256, offset: 8192)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3499, file: !3500, line: 243, baseType: !824, size: 320, offset: 8448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !277, file: !278, line: 1111, baseType: !4484, size: 64, offset: 15424)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3500, line: 20, size: 16640, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4490}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4485, file: !3500, line: 21, baseType: !608, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4485, file: !3500, line: 22, baseType: !292, size: 32, offset: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4485, file: !3500, line: 23, baseType: !698, size: 192, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4485, file: !3500, line: 24, baseType: !4491, size: 16384, offset: 256)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4492, size: 16384, elements: !1322)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !748, line: 51, size: 256, elements: !4493)
!4493 = !{!4494}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4492, file: !748, line: 52, baseType: !4495, size: 256)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !748, line: 37, size: 256, elements: !4496)
!4496 = !{!4497, !4504, !4505, !4509}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4495, file: !748, line: 39, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4499, line: 83, baseType: !4500)
!4499 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4499, line: 82, baseType: !4502)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !75}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4495, file: !748, line: 40, baseType: !117, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4495, file: !748, line: 46, baseType: !4506, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4499, line: 86, baseType: !4507)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4499, line: 85, baseType: !2442)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4495, file: !748, line: 48, baseType: !3514, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !277, file: !278, line: 1112, baseType: !3514, size: 64, offset: 15488)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !277, file: !278, line: 1113, baseType: !3514, size: 64, offset: 15552)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !277, file: !278, line: 1115, baseType: !3514, size: 64, offset: 15616)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !277, file: !278, line: 1116, baseType: !3510, size: 192, offset: 15680)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !277, file: !278, line: 1117, baseType: !117, size: 64, offset: 15872)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !277, file: !278, line: 1118, baseType: !113, size: 64, offset: 15936)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !277, file: !278, line: 1119, baseType: !108, size: 32, offset: 16000)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !277, file: !278, line: 1121, baseType: !637, size: 64, offset: 16064)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !277, file: !278, line: 1125, baseType: !4519, size: 64, offset: 16128)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !278, line: 43, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !277, file: !278, line: 1127, baseType: !766, size: 32, offset: 16192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !277, file: !278, line: 1128, baseType: !108, size: 32, offset: 16224)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !277, file: !278, line: 1130, baseType: !4524, size: 128, offset: 16256)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4525, line: 37, size: 128, elements: !4526)
!4525 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4526 = !{!4527, !4528, !4529}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4524, file: !4525, line: 38, baseType: !75, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4524, file: !4525, line: 39, baseType: !71, size: 32, offset: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4524, file: !4525, line: 40, baseType: !4530, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4525, line: 24, flags: DIFlagFwdDecl)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !277, file: !278, line: 1131, baseType: !4533, size: 256, offset: 16384)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4534, line: 12, size: 256, elements: !4535)
!4534 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4535 = !{!4536, !4537, !4538, !4539}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4533, file: !4534, line: 13, baseType: !894, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4533, file: !4534, line: 14, baseType: !117, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4533, file: !4534, line: 15, baseType: !117, size: 64, offset: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4533, file: !4534, line: 16, baseType: !110, size: 8, offset: 192)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !277, file: !278, line: 1134, baseType: !344, size: 64, offset: 16640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !277, file: !278, line: 1135, baseType: !344, size: 64, offset: 16704)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !277, file: !278, line: 1138, baseType: !608, size: 32, offset: 16768)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !277, file: !278, line: 1141, baseType: !58, size: 32, offset: 16800)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !277, file: !278, line: 1143, baseType: !4545, size: 64, offset: 16832)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !278, line: 735, size: 64, elements: !4546)
!4546 = !{!4547}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4545, file: !278, line: 736, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !277, file: !278, line: 1147, baseType: !473, size: 128, offset: 16896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !277, file: !278, line: 1149, baseType: !276, size: 64, offset: 17024)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !277, file: !278, line: 1151, baseType: !4552, size: 64, offset: 17088)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !278, line: 1151, flags: DIFlagFwdDecl)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !277, file: !278, line: 1188, baseType: !290, size: 64, offset: 17152)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !277, file: !278, line: 1191, baseType: !4556, size: 64, offset: 17216)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !278, line: 44, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !277, file: !278, line: 1194, baseType: !4559, size: 64, offset: 17280)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !278, line: 45, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !277, file: !278, line: 1197, baseType: !4562, size: 64, offset: 17344)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !278, line: 61, flags: DIFlagFwdDecl)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !277, file: !278, line: 1199, baseType: !4565, size: 64, offset: 17408)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4567, line: 99, size: 128, elements: !4568)
!4567 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4568 = !{!4569, !4570, !4571}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4566, file: !4567, line: 100, baseType: !45, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4566, file: !4567, line: 101, baseType: !71, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4566, file: !4567, line: 103, baseType: !90, size: 16, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !277, file: !278, line: 1202, baseType: !4573, size: 64, offset: 17472)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !278, line: 48, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !277, file: !278, line: 1205, baseType: !117, size: 64, offset: 17536)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !277, file: !278, line: 1206, baseType: !4577, size: 64, offset: 17600)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !748, line: 14, baseType: !4579)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !748, line: 12, size: 384, elements: !4580)
!4580 = !{!4581}
!4581 = !DIDerivedType(tag: DW_TAG_member, scope: !4579, file: !748, line: 13, baseType: !4582, size: 384)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !748, line: 13, size: 384, elements: !4583)
!4583 = !{!4584, !4585, !4586, !4587}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4582, file: !748, line: 13, baseType: !75, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4582, file: !748, line: 13, baseType: !75, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4582, file: !748, line: 13, baseType: !75, size: 32, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4582, file: !748, line: 13, baseType: !4588, size: 256, offset: 128)
!4588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4589, line: 37, size: 256, elements: !4590)
!4589 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4590 = !{!4591, !4596, !4609, !4615, !4624, !4651, !4656}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4588, file: !4589, line: 42, baseType: !4592, size: 64)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 39, size: 64, elements: !4593)
!4593 = !{!4594, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4592, file: !4589, line: 40, baseType: !3389, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4592, file: !4589, line: 41, baseType: !771, size: 32, offset: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4588, file: !4589, line: 50, baseType: !4597, size: 192)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 45, size: 192, elements: !4598)
!4598 = !{!4599, !4601, !4602, !4608}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4597, file: !4589, line: 46, baseType: !4600, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !115, line: 95, baseType: !75)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4597, file: !4589, line: 47, baseType: !75, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4597, file: !4589, line: 48, baseType: !4603, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4589, line: 11, baseType: !4604)
!4604 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4589, line: 8, size: 64, elements: !4605)
!4605 = !{!4606, !4607}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4604, file: !4589, line: 9, baseType: !75, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4604, file: !4589, line: 10, baseType: !290, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4597, file: !4589, line: 49, baseType: !75, size: 32, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4588, file: !4589, line: 57, baseType: !4610, size: 128)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 53, size: 128, elements: !4611)
!4611 = !{!4612, !4613, !4614}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4610, file: !4589, line: 54, baseType: !3389, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4610, file: !4589, line: 55, baseType: !771, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4610, file: !4589, line: 56, baseType: !4603, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4588, file: !4589, line: 66, baseType: !4616, size: 256)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 60, size: 256, elements: !4617)
!4617 = !{!4618, !4619, !4620, !4621, !4623}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4616, file: !4589, line: 61, baseType: !3389, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4616, file: !4589, line: 62, baseType: !771, size: 32, offset: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4616, file: !4589, line: 63, baseType: !75, size: 32, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4616, file: !4589, line: 64, baseType: !4622, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !115, line: 94, baseType: !1189)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4616, file: !4589, line: 65, baseType: !4622, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4588, file: !4589, line: 105, baseType: !4625, size: 256)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 69, size: 256, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4625, file: !4589, line: 70, baseType: !290, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, scope: !4625, file: !4589, line: 79, baseType: !4629, size: 192, offset: 64)
!4629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4625, file: !4589, line: 79, size: 192, elements: !4630)
!4630 = !{!4631, !4632, !4633, !4640, !4645}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4629, file: !4589, line: 81, baseType: !75, size: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4629, file: !4589, line: 86, baseType: !852, size: 16)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4629, file: !4589, line: 92, baseType: !4634, size: 192)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4629, file: !4589, line: 88, size: 192, elements: !4635)
!4635 = !{!4636, !4638, !4639}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4634, file: !4589, line: 89, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !452)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4634, file: !4589, line: 90, baseType: !290, size: 64, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4634, file: !4589, line: 91, baseType: !290, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4629, file: !4589, line: 97, baseType: !4641, size: 96)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4629, file: !4589, line: 94, size: 96, elements: !4642)
!4642 = !{!4643, !4644}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4641, file: !4589, line: 95, baseType: !4637, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4641, file: !4589, line: 96, baseType: !107, size: 32, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4629, file: !4589, line: 103, baseType: !4646, size: 128)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4629, file: !4589, line: 99, size: 128, elements: !4647)
!4647 = !{!4648, !4649, !4650}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4646, file: !4589, line: 100, baseType: !117, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4646, file: !4589, line: 101, baseType: !107, size: 32, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4646, file: !4589, line: 102, baseType: !107, size: 32, offset: 96)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4588, file: !4589, line: 111, baseType: !4652, size: 128)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 108, size: 128, elements: !4653)
!4653 = !{!4654, !4655}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4652, file: !4589, line: 109, baseType: !1148, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4652, file: !4589, line: 110, baseType: !75, size: 32, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4588, file: !4589, line: 118, baseType: !4657, size: 128)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4589, line: 114, size: 128, elements: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4657, file: !4589, line: 115, baseType: !290, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4657, file: !4589, line: 116, baseType: !75, size: 32, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4657, file: !4589, line: 117, baseType: !108, size: 32, offset: 96)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !277, file: !278, line: 1208, baseType: !4444, size: 448, offset: 17664)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !277, file: !278, line: 1215, baseType: !344, size: 64, offset: 18112)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !277, file: !278, line: 1217, baseType: !344, size: 64, offset: 18176)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !277, file: !278, line: 1219, baseType: !344, size: 64, offset: 18240)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !277, file: !278, line: 1223, baseType: !4667, size: 64, offset: 18304)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4668, line: 99, baseType: !4669)
!4668 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4668, line: 99, size: 64, elements: !4670)
!4670 = !{!4671}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4669, file: !4668, line: 99, baseType: !541, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !277, file: !278, line: 1225, baseType: !1006, size: 32, offset: 18368)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !277, file: !278, line: 1226, baseType: !75, size: 32, offset: 18400)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !277, file: !278, line: 1227, baseType: !75, size: 32, offset: 18432)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !277, file: !278, line: 1231, baseType: !4676, size: 64, offset: 18496)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !278, line: 1231, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !277, file: !278, line: 1233, baseType: !98, size: 128, offset: 18560)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !277, file: !278, line: 1240, baseType: !4680, size: 64, offset: 18688)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !278, line: 62, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !277, file: !278, line: 1242, baseType: !4683, size: 64, offset: 18752)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !278, line: 1242, flags: DIFlagFwdDecl)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !277, file: !278, line: 1244, baseType: !98, size: 128, offset: 18816)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !277, file: !278, line: 1245, baseType: !4687, size: 64, offset: 18944)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !278, line: 51, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !277, file: !278, line: 1246, baseType: !41, size: 256, offset: 19008)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !277, file: !278, line: 1247, baseType: !108, size: 32, offset: 19264)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !277, file: !278, line: 1250, baseType: !4692, size: 64, offset: 19328)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !278, line: 57, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !277, file: !278, line: 1251, baseType: !41, size: 256, offset: 19392)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !277, file: !278, line: 1252, baseType: !98, size: 128, offset: 19648)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !277, file: !278, line: 1259, baseType: !1616, size: 64, offset: 19776)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !277, file: !278, line: 1260, baseType: !852, size: 16, offset: 19840)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !277, file: !278, line: 1261, baseType: !852, size: 16, offset: 19856)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !277, file: !278, line: 1314, baseType: !4700, size: 64, offset: 19904)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4702, line: 62, size: 256, align: 256, elements: !4703)
!4702 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4701, file: !4702, line: 75, baseType: !107, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4701, file: !4702, line: 90, baseType: !107, size: 32, offset: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4701, file: !4702, line: 112, baseType: !345, size: 64, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4701, file: !4702, line: 132, baseType: !107, size: 32, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4701, file: !4702, line: 140, baseType: !107, size: 32, offset: 160)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4701, file: !4702, line: 149, baseType: !107, size: 32, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4701, file: !4702, line: 154, baseType: !4711, offset: 224)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !762)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !277, file: !278, line: 1315, baseType: !106, size: 32, offset: 19968)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !277, file: !278, line: 1316, baseType: !106, size: 32, offset: 20000)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !277, file: !278, line: 1321, baseType: !117, size: 64, offset: 20032)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !277, file: !278, line: 1325, baseType: !75, size: 32, offset: 20096)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !277, file: !278, line: 1326, baseType: !75, size: 32, offset: 20128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !277, file: !278, line: 1327, baseType: !75, size: 32, offset: 20160)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !277, file: !278, line: 1328, baseType: !75, size: 32, offset: 20192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !277, file: !278, line: 1329, baseType: !634, size: 128, align: 64, offset: 20224)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !277, file: !278, line: 1332, baseType: !4721, size: 128, offset: 20352)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4722, line: 51, size: 128, elements: !4723)
!4722 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4723 = !{!4724, !4729, !4730}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4721, file: !4722, line: 60, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4726, line: 7, size: 64, elements: !4727)
!4726 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4727 = !{!4728}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4725, file: !4726, line: 12, baseType: !538, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4721, file: !4722, line: 63, baseType: !110, size: 8, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4721, file: !4722, line: 70, baseType: !110, size: 8, offset: 72)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !277, file: !278, line: 1335, baseType: !3072, size: 64, offset: 20480)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !277, file: !278, line: 1337, baseType: !4733, size: 128, offset: 20544)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4722, line: 39, size: 128, elements: !4734)
!4734 = !{!4735, !4736, !4737}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4733, file: !4722, line: 40, baseType: !1403, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4733, file: !4722, line: 42, baseType: !107, size: 32, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4733, file: !4722, line: 43, baseType: !107, size: 32, offset: 96)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !277, file: !278, line: 1340, baseType: !4739, size: 64, offset: 20672)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !278, line: 69, flags: DIFlagFwdDecl)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !277, file: !278, line: 1351, baseType: !75, size: 32, offset: 20736)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !277, file: !278, line: 1352, baseType: !75, size: 32, offset: 20768)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !277, file: !278, line: 1354, baseType: !117, size: 64, offset: 20800)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !277, file: !278, line: 1364, baseType: !344, size: 64, offset: 20864)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !277, file: !278, line: 1365, baseType: !344, size: 64, offset: 20928)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !277, file: !278, line: 1412, baseType: !117, size: 64, offset: 20992)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !277, file: !278, line: 1453, baseType: !4748, size: 64, offset: 21056)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !278, line: 1453, flags: DIFlagFwdDecl)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !277, file: !278, line: 1457, baseType: !4751, size: 64, offset: 21120)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !197, line: 61, size: 576, elements: !4753)
!4753 = !{!4754, !4755, !4774, !4777, !4778, !4811, !4821}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4752, file: !197, line: 62, baseType: !196, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, scope: !4752, file: !197, line: 64, baseType: !4756, size: 192, offset: 64)
!4756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4752, file: !197, line: 64, size: 192, elements: !4757)
!4757 = !{!4758, !4769}
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !4756, file: !197, line: 65, baseType: !4759, size: 192)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4756, file: !197, line: 65, size: 192, elements: !4760)
!4760 = !{!4761, !4768}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4759, file: !197, line: 66, baseType: !4762, size: 128)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4763, line: 50, size: 128, elements: !4764)
!4763 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4764 = !{!4765, !4766, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4762, file: !4763, line: 52, baseType: !117, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4762, file: !4763, line: 54, baseType: !108, size: 32, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4762, file: !4763, line: 55, baseType: !108, size: 32, offset: 96)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4759, file: !197, line: 67, baseType: !117, size: 64, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, scope: !4756, file: !197, line: 70, baseType: !4770, size: 192)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4756, file: !197, line: 70, size: 192, elements: !4771)
!4771 = !{!4772, !4773}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4770, file: !197, line: 71, baseType: !634, size: 128, align: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4770, file: !197, line: 72, baseType: !117, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4752, file: !197, line: 76, baseType: !4775, size: 64, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !197, line: 76, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4752, file: !197, line: 77, baseType: !117, size: 64, offset: 320)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4752, file: !197, line: 79, baseType: !4779, size: 64, offset: 384)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4763, line: 25, size: 256, elements: !4781)
!4781 = !{!4782, !4788, !4792}
!4782 = !DIDerivedType(tag: DW_TAG_member, scope: !4780, file: !4763, line: 26, baseType: !4783, size: 128)
!4783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4780, file: !4763, line: 26, size: 128, elements: !4784)
!4784 = !{!4785, !4787}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4783, file: !4763, line: 27, baseType: !4786, size: 128)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !2834)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4783, file: !4763, line: 28, baseType: !4786, size: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4780, file: !4763, line: 31, baseType: !4789, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4791)
!4791 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4763, line: 23, flags: DIFlagFwdDecl)
!4792 = !DIDerivedType(tag: DW_TAG_member, scope: !4780, file: !4763, line: 33, baseType: !4793, size: 64, offset: 192)
!4793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4780, file: !4763, line: 33, size: 64, elements: !4794)
!4794 = !{!4795, !4801, !4806}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4793, file: !4763, line: 38, baseType: !4796, size: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4793, file: !4763, line: 34, size: 64, elements: !4797)
!4797 = !{!4798, !4799, !4800}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4796, file: !4763, line: 35, baseType: !816, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4796, file: !4763, line: 36, baseType: !80, size: 8, offset: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4796, file: !4763, line: 37, baseType: !80, size: 8, offset: 40)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4793, file: !4763, line: 42, baseType: !4802, size: 16)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4793, file: !4763, line: 39, size: 16, elements: !4803)
!4803 = !{!4804, !4805}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4802, file: !4763, line: 40, baseType: !80, size: 8)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4802, file: !4763, line: 41, baseType: !80, size: 8, offset: 8)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4793, file: !4763, line: 46, baseType: !4807, size: 16)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4793, file: !4763, line: 43, size: 16, elements: !4808)
!4808 = !{!4809, !4810}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4807, file: !4763, line: 44, baseType: !80, size: 8)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4807, file: !4763, line: 45, baseType: !80, size: 8, offset: 8)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4752, file: !197, line: 81, baseType: !4812, size: 64, offset: 448)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !197, line: 85, size: 384, elements: !4814)
!4814 = !{!4815, !4816, !4817, !4818, !4819, !4820}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4813, file: !197, line: 86, baseType: !4775, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4813, file: !197, line: 87, baseType: !117, size: 64, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4813, file: !197, line: 88, baseType: !117, size: 64, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4813, file: !197, line: 89, baseType: !117, size: 64, offset: 192)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4813, file: !197, line: 90, baseType: !110, size: 8, offset: 256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4813, file: !197, line: 92, baseType: !4812, size: 64, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4752, file: !197, line: 82, baseType: !108, size: 32, offset: 512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !277, file: !278, line: 1463, baseType: !4823, offset: 21184)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !278, line: 739, elements: !619)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !277, file: !278, line: 1470, baseType: !634, size: 128, align: 64, offset: 21184)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !277, file: !278, line: 1471, baseType: !292, size: 32, offset: 21312)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !277, file: !278, line: 1472, baseType: !75, size: 32, offset: 21344)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !277, file: !278, line: 1474, baseType: !276, size: 64, offset: 21376)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !277, file: !278, line: 1475, baseType: !2326, size: 320, offset: 21440)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !277, file: !278, line: 1478, baseType: !4830, size: 64, offset: 21760)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4832, line: 49, size: 512, elements: !4833)
!4832 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4843}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4831, file: !4832, line: 50, baseType: !4830, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4831, file: !4832, line: 51, baseType: !290, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4831, file: !4832, line: 52, baseType: !117, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4831, file: !4832, line: 53, baseType: !117, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4831, file: !4832, line: 54, baseType: !1790, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4831, file: !4832, line: 56, baseType: !108, size: 32, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4831, file: !4832, line: 58, baseType: !108, size: 32, offset: 352)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4831, file: !4832, line: 59, baseType: !4842, size: 64, offset: 384)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !48, line: 159, baseType: !344)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4831, file: !4832, line: 60, baseType: !1919, size: 64, offset: 448)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !277, file: !278, line: 1482, baseType: !292, size: 32, offset: 21824)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !277, file: !278, line: 1489, baseType: !290, size: 64, offset: 21888)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !277, file: !278, line: 1504, baseType: !290, size: 64, offset: 21952)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !277, file: !278, line: 1505, baseType: !345, size: 64, offset: 22016)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !277, file: !278, line: 1506, baseType: !344, size: 64, offset: 22080)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !277, file: !278, line: 1507, baseType: !345, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !277, file: !278, line: 1508, baseType: !345, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !277, file: !278, line: 1509, baseType: !345, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !277, file: !278, line: 1510, baseType: !634, size: 128, align: 64, offset: 22208)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !277, file: !278, line: 1511, baseType: !75, size: 32, offset: 22336)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !277, file: !278, line: 1515, baseType: !4096, size: 64, offset: 22400)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !277, file: !278, line: 1518, baseType: !4096, size: 64, offset: 22464)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !277, file: !278, line: 1528, baseType: !634, size: 128, align: 64, offset: 22528)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !278, line: 1552, baseType: !4858, size: 35328, offset: 23040)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4859, line: 430, size: 35328, elements: !4860)
!4859 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4860 = !{!4861, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4890, !4891, !4892, !4893, !4894, !4895, !4898, !4899, !4900, !4901}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4858, file: !4859, line: 432, baseType: !4862, size: 192)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4863, size: 192, elements: !675)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4864, line: 16, size: 64, elements: !4865)
!4864 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4863, file: !4864, line: 17, baseType: !88, size: 16)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4863, file: !4864, line: 18, baseType: !88, size: 16, offset: 16)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4863, file: !4864, line: 19, baseType: !88, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4863, file: !4864, line: 19, baseType: !88, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4863, file: !4864, line: 19, baseType: !88, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4863, file: !4864, line: 19, baseType: !88, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4863, file: !4864, line: 19, baseType: !88, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4863, file: !4864, line: 20, baseType: !88, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4863, file: !4864, line: 20, baseType: !88, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4863, file: !4864, line: 20, baseType: !88, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4863, file: !4864, line: 20, baseType: !88, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4863, file: !4864, line: 20, baseType: !88, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4863, file: !4864, line: 20, baseType: !88, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4858, file: !4859, line: 436, baseType: !117, size: 64, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4858, file: !4859, line: 440, baseType: !90, size: 16, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4858, file: !4859, line: 441, baseType: !90, size: 16, offset: 272)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4858, file: !4859, line: 442, baseType: !90, size: 16, offset: 288)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4858, file: !4859, line: 443, baseType: !90, size: 16, offset: 304)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4858, file: !4859, line: 447, baseType: !117, size: 64, offset: 320)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4858, file: !4859, line: 448, baseType: !117, size: 64, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4858, file: !4859, line: 459, baseType: !4887, size: 256, offset: 448)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4888, size: 256, elements: !10)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4859, line: 428, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4858, file: !4859, line: 461, baseType: !117, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4858, file: !4859, line: 463, baseType: !117, size: 64, offset: 768)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4858, file: !4859, line: 465, baseType: !117, size: 64, offset: 832)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4858, file: !4859, line: 466, baseType: !117, size: 64, offset: 896)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4858, file: !4859, line: 467, baseType: !117, size: 64, offset: 960)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4858, file: !4859, line: 473, baseType: !4896, size: 64, offset: 1024)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4859, line: 10, flags: DIFlagFwdDecl)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4858, file: !4859, line: 480, baseType: !117, size: 64, offset: 1088)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4858, file: !4859, line: 482, baseType: !108, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4858, file: !4859, line: 491, baseType: !106, size: 32, offset: 1184)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4858, file: !4859, line: 501, baseType: !4902, size: 33792, offset: 1536)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4903, line: 448, size: 33792, elements: !4904)
!4903 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4904 = !{!4905, !4906, !4907, !5068, !5069, !5075, !5076}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4902, file: !4903, line: 461, baseType: !108, size: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4902, file: !4903, line: 468, baseType: !117, size: 64, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4902, file: !4903, line: 476, baseType: !4908, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4903, line: 356, size: 33280, align: 512, elements: !4910)
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4909, file: !4903, line: 358, baseType: !108, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4909, file: !4903, line: 361, baseType: !108, size: 32, offset: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4909, file: !4903, line: 364, baseType: !344, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4909, file: !4903, line: 367, baseType: !344, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4909, file: !4903, line: 370, baseType: !344, size: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4909, file: !4903, line: 373, baseType: !108, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4909, file: !4903, line: 376, baseType: !108, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4909, file: !4903, line: 391, baseType: !108, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4909, file: !4903, line: 394, baseType: !108, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4909, file: !4903, line: 397, baseType: !4921, size: 32768, offset: 512)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4903, line: 348, size: 32768, elements: !4922)
!4922 = !{!4923, !4938, !4975, !5052, !5064}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4921, file: !4903, line: 349, baseType: !4924, size: 896)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4903, line: 12, size: 896, elements: !4925)
!4925 = !{!4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4937}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4924, file: !4903, line: 13, baseType: !106, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4924, file: !4903, line: 14, baseType: !106, size: 32, offset: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4924, file: !4903, line: 15, baseType: !106, size: 32, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4924, file: !4903, line: 16, baseType: !106, size: 32, offset: 96)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4924, file: !4903, line: 17, baseType: !106, size: 32, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4924, file: !4903, line: 18, baseType: !106, size: 32, offset: 160)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4924, file: !4903, line: 19, baseType: !106, size: 32, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4924, file: !4903, line: 22, baseType: !4934, size: 640, offset: 224)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 640, elements: !4935)
!4935 = !{!4936}
!4936 = !DISubrange(count: 20)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4924, file: !4903, line: 25, baseType: !106, size: 32, offset: 864)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4921, file: !4903, line: 350, baseType: !4939, size: 4096, align: 128)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4903, line: 34, size: 4096, align: 128, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4945, !4960, !4961, !4962, !4964, !4966, !4970}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4939, file: !4903, line: 35, baseType: !88, size: 16)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4939, file: !4903, line: 36, baseType: !88, size: 16, offset: 16)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4939, file: !4903, line: 37, baseType: !88, size: 16, offset: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4939, file: !4903, line: 38, baseType: !88, size: 16, offset: 48)
!4945 = !DIDerivedType(tag: DW_TAG_member, scope: !4939, file: !4903, line: 39, baseType: !4946, size: 128, offset: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4939, file: !4903, line: 39, size: 128, elements: !4947)
!4947 = !{!4948, !4953}
!4948 = !DIDerivedType(tag: DW_TAG_member, scope: !4946, file: !4903, line: 40, baseType: !4949, size: 128)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4946, file: !4903, line: 40, size: 128, elements: !4950)
!4950 = !{!4951, !4952}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4949, file: !4903, line: 41, baseType: !344, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4949, file: !4903, line: 42, baseType: !344, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, scope: !4946, file: !4903, line: 44, baseType: !4954, size: 128)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4946, file: !4903, line: 44, size: 128, elements: !4955)
!4955 = !{!4956, !4957, !4958, !4959}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4954, file: !4903, line: 45, baseType: !106, size: 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4954, file: !4903, line: 46, baseType: !106, size: 32, offset: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4954, file: !4903, line: 47, baseType: !106, size: 32, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4954, file: !4903, line: 48, baseType: !106, size: 32, offset: 96)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4939, file: !4903, line: 51, baseType: !106, size: 32, offset: 192)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4939, file: !4903, line: 52, baseType: !106, size: 32, offset: 224)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4939, file: !4903, line: 55, baseType: !4963, size: 1024, offset: 256)
!4963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !2825)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4939, file: !4903, line: 58, baseType: !4965, size: 2048, offset: 1280)
!4965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2048, elements: !1322)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4939, file: !4903, line: 60, baseType: !4967, size: 384, offset: 3328)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 384, elements: !4968)
!4968 = !{!4969}
!4969 = !DISubrange(count: 12)
!4970 = !DIDerivedType(tag: DW_TAG_member, scope: !4939, file: !4903, line: 62, baseType: !4971, size: 384, offset: 3712)
!4971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4939, file: !4903, line: 62, size: 384, elements: !4972)
!4972 = !{!4973, !4974}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4971, file: !4903, line: 63, baseType: !4967, size: 384)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4971, file: !4903, line: 64, baseType: !4967, size: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4921, file: !4903, line: 351, baseType: !4976, size: 1088)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4903, line: 79, size: 1088, elements: !4977)
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !5051}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4976, file: !4903, line: 80, baseType: !106, size: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4976, file: !4903, line: 81, baseType: !106, size: 32, offset: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4976, file: !4903, line: 82, baseType: !106, size: 32, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4976, file: !4903, line: 83, baseType: !106, size: 32, offset: 96)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4976, file: !4903, line: 84, baseType: !106, size: 32, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4976, file: !4903, line: 85, baseType: !106, size: 32, offset: 160)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4976, file: !4903, line: 86, baseType: !106, size: 32, offset: 192)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4976, file: !4903, line: 88, baseType: !4934, size: 640, offset: 224)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4976, file: !4903, line: 89, baseType: !80, size: 8, offset: 864)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4976, file: !4903, line: 90, baseType: !80, size: 8, offset: 872)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4976, file: !4903, line: 91, baseType: !80, size: 8, offset: 880)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4976, file: !4903, line: 92, baseType: !80, size: 8, offset: 888)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4976, file: !4903, line: 93, baseType: !80, size: 8, offset: 896)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4976, file: !4903, line: 94, baseType: !80, size: 8, offset: 904)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4976, file: !4903, line: 95, baseType: !4993, size: 64, offset: 960)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4995, line: 11, size: 128, elements: !4996)
!4995 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4996 = !{!4997, !4998}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4994, file: !4995, line: 12, baseType: !1148, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4994, file: !4995, line: 13, baseType: !4999, size: 64, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5001, line: 103, size: 1344, elements: !5002)
!5001 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5002 = !{!5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5031, !5032, !5033}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5000, file: !5001, line: 109, baseType: !117, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5000, file: !5001, line: 110, baseType: !117, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5000, file: !5001, line: 111, baseType: !117, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5000, file: !5001, line: 112, baseType: !117, size: 64, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5000, file: !5001, line: 113, baseType: !117, size: 64, offset: 256)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5000, file: !5001, line: 114, baseType: !117, size: 64, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5000, file: !5001, line: 117, baseType: !117, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5000, file: !5001, line: 118, baseType: !117, size: 64, offset: 448)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5000, file: !5001, line: 119, baseType: !117, size: 64, offset: 512)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5000, file: !5001, line: 120, baseType: !117, size: 64, offset: 576)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5000, file: !5001, line: 121, baseType: !117, size: 64, offset: 640)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5000, file: !5001, line: 122, baseType: !117, size: 64, offset: 704)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5000, file: !5001, line: 123, baseType: !117, size: 64, offset: 768)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5000, file: !5001, line: 124, baseType: !117, size: 64, offset: 832)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5000, file: !5001, line: 125, baseType: !117, size: 64, offset: 896)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5000, file: !5001, line: 139, baseType: !117, size: 64, offset: 960)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5000, file: !5001, line: 142, baseType: !117, size: 64, offset: 1024)
!5020 = !DIDerivedType(tag: DW_TAG_member, scope: !5000, file: !5001, line: 144, baseType: !5021, size: 64, offset: 1088)
!5021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5000, file: !5001, line: 144, size: 64, elements: !5022)
!5022 = !{!5023, !5024, !5025}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5021, file: !5001, line: 146, baseType: !88, size: 16)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5021, file: !5001, line: 148, baseType: !344, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5021, file: !5001, line: 150, baseType: !5026, size: 64)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5001, line: 59, size: 64, elements: !5027)
!5027 = !{!5028, !5029, !5030}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5026, file: !5001, line: 61, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5026, file: !5001, line: 63, baseType: !344, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5026, file: !5001, line: 65, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5000, file: !5001, line: 153, baseType: !117, size: 64, offset: 1152)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5000, file: !5001, line: 154, baseType: !117, size: 64, offset: 1216)
!5033 = !DIDerivedType(tag: DW_TAG_member, scope: !5000, file: !5001, line: 156, baseType: !5034, size: 64, offset: 1280)
!5034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5000, file: !5001, line: 156, size: 64, elements: !5035)
!5035 = !{!5036, !5037, !5038}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5034, file: !5001, line: 158, baseType: !88, size: 16)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5034, file: !5001, line: 160, baseType: !344, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5034, file: !5001, line: 162, baseType: !5039, size: 64)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5001, line: 69, size: 64, elements: !5040)
!5040 = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5039, file: !5001, line: 71, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5039, file: !5001, line: 73, baseType: !344, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5039, file: !5001, line: 75, baseType: !344, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5039, file: !5001, line: 77, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5039, file: !5001, line: 80, baseType: !344, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5039, file: !5001, line: 83, baseType: !344, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5039, file: !5001, line: 86, baseType: !344, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5039, file: !5001, line: 88, baseType: !344, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5039, file: !5001, line: 93, baseType: !344, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5039, file: !5001, line: 100, baseType: !344, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4976, file: !4903, line: 96, baseType: !106, size: 32, offset: 1024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4921, file: !4903, line: 352, baseType: !5053, size: 4608, align: 512)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4903, line: 333, size: 4608, align: 512, elements: !5054)
!5054 = !{!5055, !5056, !5063}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5053, file: !4903, line: 334, baseType: !4939, size: 4096, align: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5053, file: !4903, line: 335, baseType: !5057, size: 512, offset: 4096)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4903, line: 312, size: 512, elements: !5058)
!5058 = !{!5059, !5060, !5061}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5057, file: !4903, line: 313, baseType: !344, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5057, file: !4903, line: 314, baseType: !344, size: 64, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5057, file: !4903, line: 315, baseType: !5062, size: 384, offset: 128)
!5062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !870)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5053, file: !4903, line: 336, baseType: !4090, offset: 4608)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4921, file: !4903, line: 353, baseType: !5065, size: 32768)
!5065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32768, elements: !5066)
!5066 = !{!5067}
!5067 = !DISubrange(count: 4096)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4902, file: !4903, line: 484, baseType: !4908, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4902, file: !4903, line: 491, baseType: !5070, size: 128, offset: 256)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4903, line: 404, size: 128, elements: !5071)
!5071 = !{!5072, !5073, !5074}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5070, file: !4903, line: 424, baseType: !344, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5070, file: !4903, line: 432, baseType: !108, size: 32, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5070, file: !4903, line: 440, baseType: !108, size: 32, offset: 96)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4902, file: !4903, line: 498, baseType: !5070, size: 128, offset: 384)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4902, file: !4903, line: 508, baseType: !4909, size: 33280, align: 512, offset: 512)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5079)
!5079 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !775)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !344)
!5082 = !{!0, !7, !12, !17, !22, !27, !32, !5083, !5086}
!5083 = !DIGlobalVariableExpression(var: !5084, expr: !DIExpression())
!5084 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !5085, isLocal: true, isDefinition: true)
!5085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !4968)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(scope: null, file: !262, line: 480, type: !5088, isLocal: true, isDefinition: true)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5089)
!5089 = !{!5090}
!5090 = !DISubrange(count: 21)
!5091 = !{!5092, !5093, !5094}
!5092 = !DILocalVariable(name: "buf", scope: !34, file: !2, line: 34, type: !37)
!5093 = !DILabel(scope: !34, name: "err_buf", file: !2, line: 48)
!5094 = !DILabel(scope: !34, name: "err", file: !2, line: 50)
!5095 = !{i32 7, !"Dwarf Version", i32 5}
!5096 = !{i32 2, !"Debug Info Version", i32 3}
!5097 = !{i32 1, !"wchar_size", i32 2}
!5098 = !{i32 8, !"cf-protection-branch", i32 1}
!5099 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5100 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5101 = !{i32 1, !"Code Model", i32 2}
!5102 = !{i32 1, !"override-stack-alignment", i32 8}
!5103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5104 = distinct !DISubprogram(name: "tty_audit_exit", scope: !2, file: !2, line: 112, type: !2442, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5105)
!5105 = !{!5106, !5107, !5110}
!5106 = !DILocalVariable(name: "buf", scope: !5104, file: !2, line: 114, type: !37)
!5107 = !DILocalVariable(name: "__ai_ptr", scope: !5108, file: !2, line: 116, type: !5109)
!5108 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 116, column: 8)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!5110 = !DILocalVariable(name: "__ret", scope: !5111, file: !2, line: 116, type: !37)
!5111 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 116, column: 8)
!5112 = !DILocation(line: 114, column: 2, scope: !5104)
!5113 = !DILocation(line: 114, column: 24, scope: !5104)
!5114 = !DILocation(line: 116, column: 8, scope: !5108)
!5115 = !DILocation(line: 116, column: 8, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 116, column: 8)
!5117 = !DILocation(line: 116, column: 8, scope: !5111)
!5118 = !{i64 2154908782}
!5119 = !DILocation(line: 116, column: 8, scope: !5104)
!5120 = !DILocation(line: 116, column: 6, scope: !5104)
!5121 = !DILocation(line: 117, column: 7, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 117, column: 6)
!5123 = !DILocation(line: 117, column: 6, scope: !5104)
!5124 = !DILocation(line: 118, column: 3, scope: !5122)
!5125 = !DILocation(line: 120, column: 21, scope: !5104)
!5126 = !DILocation(line: 120, column: 2, scope: !5104)
!5127 = !DILocation(line: 121, column: 21, scope: !5104)
!5128 = !DILocation(line: 121, column: 2, scope: !5104)
!5129 = !DILocation(line: 122, column: 1, scope: !5104)
!5130 = distinct !DISubprogram(name: "get_current", scope: !5131, file: !5131, line: 39, type: !5132, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5134)
!5131 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!276}
!5134 = !{!5135, !5137, !5139}
!5135 = !DILocalVariable(name: "pscr_ret__", scope: !5136, file: !5131, line: 41, type: !276)
!5136 = distinct !DILexicalBlock(scope: !5130, file: !5131, line: 41, column: 9)
!5137 = !DILocalVariable(name: "__vpp_verify", scope: !5138, file: !5131, line: 41, type: !1919)
!5138 = distinct !DILexicalBlock(scope: !5136, file: !5131, line: 41, column: 9)
!5139 = !DILocalVariable(name: "pfo_val__", scope: !5140, file: !5131, line: 41, type: !344)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !5131, line: 41, column: 9)
!5141 = !DILocation(line: 41, column: 9, scope: !5136)
!5142 = !DILocation(line: 41, column: 9, scope: !5138)
!5143 = !DILocation(line: 41, column: 9, scope: !5140)
!5144 = !{i64 2148215280}
!5145 = !DILocation(line: 41, column: 9, scope: !5130)
!5146 = !DILocation(line: 41, column: 2, scope: !5130)
!5147 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5148, file: !5148, line: 94, type: !5149, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5154)
!5148 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !5151, !113}
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5153)
!5153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5154 = !{!5155, !5156}
!5155 = !DILocalVariable(name: "v", arg: 1, scope: !5147, file: !5148, line: 94, type: !5151)
!5156 = !DILocalVariable(name: "size", arg: 2, scope: !5147, file: !5148, line: 94, type: !113)
!5157 = !DILocation(line: 94, column: 79, scope: !5147)
!5158 = !DILocation(line: 94, column: 89, scope: !5147)
!5159 = !DILocation(line: 96, column: 20, scope: !5147)
!5160 = !DILocation(line: 96, column: 23, scope: !5147)
!5161 = !DILocation(line: 96, column: 2, scope: !5147)
!5162 = !DILocation(line: 97, column: 2, scope: !5147)
!5163 = !DILocation(line: 98, column: 1, scope: !5147)
!5164 = distinct !DISubprogram(name: "ERR_PTR", scope: !5165, file: !5165, line: 39, type: !5166, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5168)
!5165 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!290, !1148}
!5168 = !{!5169}
!5169 = !DILocalVariable(name: "error", arg: 1, scope: !5164, file: !5165, line: 39, type: !1148)
!5170 = !DILocation(line: 39, column: 48, scope: !5164)
!5171 = !DILocation(line: 41, column: 18, scope: !5164)
!5172 = !DILocation(line: 41, column: 9, scope: !5164)
!5173 = !DILocation(line: 41, column: 2, scope: !5164)
!5174 = distinct !DISubprogram(name: "tty_audit_buf_push", scope: !2, file: !2, line: 91, type: !5175, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{null, !37}
!5177 = !{!5178}
!5178 = !DILocalVariable(name: "buf", arg: 1, scope: !5174, file: !2, line: 91, type: !37)
!5179 = !DILocation(line: 91, column: 54, scope: !5174)
!5180 = !DILocation(line: 93, column: 6, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 93, column: 6)
!5182 = !DILocation(line: 93, column: 11, scope: !5181)
!5183 = !DILocation(line: 93, column: 17, scope: !5181)
!5184 = !DILocation(line: 93, column: 6, scope: !5174)
!5185 = !DILocation(line: 94, column: 3, scope: !5181)
!5186 = !DILocation(line: 95, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 95, column: 6)
!5188 = !DILocation(line: 95, column: 20, scope: !5187)
!5189 = !DILocation(line: 95, column: 6, scope: !5174)
!5190 = !DILocation(line: 96, column: 3, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5187, file: !2, line: 95, column: 34)
!5192 = !DILocation(line: 96, column: 8, scope: !5191)
!5193 = !DILocation(line: 96, column: 14, scope: !5191)
!5194 = !DILocation(line: 97, column: 3, scope: !5191)
!5195 = !DILocation(line: 99, column: 23, scope: !5174)
!5196 = !DILocation(line: 99, column: 28, scope: !5174)
!5197 = !DILocation(line: 99, column: 33, scope: !5174)
!5198 = !DILocation(line: 99, column: 38, scope: !5174)
!5199 = !DILocation(line: 99, column: 44, scope: !5174)
!5200 = !DILocation(line: 99, column: 49, scope: !5174)
!5201 = !DILocation(line: 99, column: 2, scope: !5174)
!5202 = !DILocation(line: 100, column: 2, scope: !5174)
!5203 = !DILocation(line: 100, column: 7, scope: !5174)
!5204 = !DILocation(line: 100, column: 13, scope: !5174)
!5205 = !DILocation(line: 101, column: 1, scope: !5174)
!5206 = distinct !DISubprogram(name: "tty_audit_buf_free", scope: !2, file: !2, line: 54, type: !5175, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5207)
!5207 = !{!5208, !5209, !5211}
!5208 = !DILocalVariable(name: "buf", arg: 1, scope: !5206, file: !2, line: 54, type: !37)
!5209 = !DILocalVariable(name: "__ret_warn_on", scope: !5210, file: !2, line: 56, type: !75)
!5210 = distinct !DILexicalBlock(scope: !5206, file: !2, line: 56, column: 2)
!5211 = !DILocalVariable(name: "__flags", scope: !5212, file: !2, line: 56, type: !75)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !2, line: 56, column: 2)
!5213 = distinct !DILexicalBlock(scope: !5210, file: !2, line: 56, column: 2)
!5214 = !DILocation(line: 54, column: 54, scope: !5206)
!5215 = !DILocation(line: 56, column: 2, scope: !5210)
!5216 = !DILocation(line: 56, column: 2, scope: !5213)
!5217 = !DILocation(line: 56, column: 2, scope: !5212)
!5218 = !DILocation(line: 56, column: 2, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 56, column: 2)
!5220 = !DILocation(line: 56, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 56, column: 2)
!5222 = !{i64 2154895800, i64 2154895829, i64 2154895875, i64 2154895933, i64 2154895987, i64 2154896041, i64 2154896096, i64 2154896127, i64 2154896435, i64 2154896441, i64 2154896488, i64 2154896511, i64 2154896537}
!5223 = !DILocation(line: 56, column: 2, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 56, column: 2)
!5225 = !DILocation(line: 56, column: 2, scope: !5206)
!5226 = !DILocation(line: 57, column: 8, scope: !5206)
!5227 = !DILocation(line: 57, column: 13, scope: !5206)
!5228 = !DILocation(line: 57, column: 2, scope: !5206)
!5229 = !DILocation(line: 58, column: 8, scope: !5206)
!5230 = !DILocation(line: 58, column: 2, scope: !5206)
!5231 = !DILocation(line: 59, column: 1, scope: !5206)
!5232 = distinct !DISubprogram(name: "tty_audit_fork", scope: !2, file: !2, line: 129, type: !5233, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5235)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{null, !3498}
!5235 = !{!5236}
!5236 = !DILocalVariable(name: "sig", arg: 1, scope: !5232, file: !2, line: 129, type: !3498)
!5237 = !DILocation(line: 129, column: 43, scope: !5232)
!5238 = !DILocation(line: 131, column: 19, scope: !5232)
!5239 = !DILocation(line: 131, column: 28, scope: !5232)
!5240 = !DILocation(line: 131, column: 36, scope: !5232)
!5241 = !DILocation(line: 131, column: 2, scope: !5232)
!5242 = !DILocation(line: 131, column: 7, scope: !5232)
!5243 = !DILocation(line: 131, column: 17, scope: !5232)
!5244 = !DILocation(line: 132, column: 1, scope: !5232)
!5245 = distinct !DISubprogram(name: "tty_audit_tiocsti", scope: !2, file: !2, line: 137, type: !5246, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5250)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !5248, !80}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!5250 = !{!5251, !5252, !5253}
!5251 = !DILocalVariable(name: "tty", arg: 1, scope: !5245, file: !2, line: 137, type: !5248)
!5252 = !DILocalVariable(name: "ch", arg: 2, scope: !5245, file: !2, line: 137, type: !80)
!5253 = !DILocalVariable(name: "dev", scope: !5245, file: !2, line: 139, type: !104)
!5254 = !DILocation(line: 137, column: 49, scope: !5245)
!5255 = !DILocation(line: 137, column: 57, scope: !5245)
!5256 = !DILocation(line: 139, column: 2, scope: !5245)
!5257 = !DILocation(line: 139, column: 8, scope: !5245)
!5258 = !DILocation(line: 141, column: 8, scope: !5245)
!5259 = !DILocation(line: 141, column: 62, scope: !5245)
!5260 = !DILocation(line: 141, column: 67, scope: !5245)
!5261 = !DILocation(line: 141, column: 60, scope: !5245)
!5262 = !DILocation(line: 141, column: 6, scope: !5245)
!5263 = !DILocation(line: 142, column: 6, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 142, column: 6)
!5265 = !DILocation(line: 142, column: 6, scope: !5245)
!5266 = !DILocation(line: 143, column: 3, scope: !5264)
!5267 = !DILocation(line: 145, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 145, column: 6)
!5269 = !DILocation(line: 145, column: 6, scope: !5245)
!5270 = !DILocation(line: 146, column: 34, scope: !5268)
!5271 = !DILocation(line: 146, column: 3, scope: !5268)
!5272 = !DILocation(line: 147, column: 1, scope: !5245)
!5273 = distinct !DISubprogram(name: "tty_audit_push", scope: !2, file: !2, line: 154, type: !2198, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5274)
!5274 = !{!5275}
!5275 = !DILocalVariable(name: "buf", scope: !5273, file: !2, line: 156, type: !37)
!5276 = !DILocation(line: 156, column: 2, scope: !5273)
!5277 = !DILocation(line: 156, column: 24, scope: !5273)
!5278 = !DILocation(line: 158, column: 7, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5273, file: !2, line: 158, column: 6)
!5280 = !DILocation(line: 158, column: 16, scope: !5279)
!5281 = !DILocation(line: 158, column: 24, scope: !5279)
!5282 = !DILocation(line: 158, column: 6, scope: !5279)
!5283 = !DILocation(line: 158, column: 34, scope: !5279)
!5284 = !DILocation(line: 158, column: 6, scope: !5273)
!5285 = !DILocation(line: 159, column: 3, scope: !5279)
!5286 = !DILocation(line: 161, column: 8, scope: !5273)
!5287 = !DILocation(line: 161, column: 6, scope: !5273)
!5288 = !DILocation(line: 162, column: 22, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5273, file: !2, line: 162, column: 6)
!5290 = !DILocation(line: 162, column: 7, scope: !5289)
!5291 = !DILocation(line: 162, column: 6, scope: !5273)
!5292 = !DILocation(line: 163, column: 15, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 162, column: 28)
!5294 = !DILocation(line: 163, column: 20, scope: !5293)
!5295 = !DILocation(line: 163, column: 3, scope: !5293)
!5296 = !DILocation(line: 164, column: 22, scope: !5293)
!5297 = !DILocation(line: 164, column: 3, scope: !5293)
!5298 = !DILocation(line: 165, column: 17, scope: !5293)
!5299 = !DILocation(line: 165, column: 22, scope: !5293)
!5300 = !DILocation(line: 165, column: 3, scope: !5293)
!5301 = !DILocation(line: 166, column: 2, scope: !5293)
!5302 = !DILocation(line: 167, column: 2, scope: !5273)
!5303 = !DILocation(line: 168, column: 1, scope: !5273)
!5304 = distinct !DISubprogram(name: "tty_audit_log", scope: !2, file: !2, line: 61, type: !5305, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5307)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{null, !884, !104, !4135, !113}
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5316, !5317, !5318, !5320, !5322, !5323, !5324}
!5308 = !DILocalVariable(name: "description", arg: 1, scope: !5304, file: !2, line: 61, type: !884)
!5309 = !DILocalVariable(name: "dev", arg: 2, scope: !5304, file: !2, line: 61, type: !104)
!5310 = !DILocalVariable(name: "data", arg: 3, scope: !5304, file: !2, line: 62, type: !4135)
!5311 = !DILocalVariable(name: "size", arg: 4, scope: !5304, file: !2, line: 62, type: !113)
!5312 = !DILocalVariable(name: "ab", scope: !5304, file: !2, line: 64, type: !5313)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_buffer", file: !5315, line: 28, flags: DIFlagFwdDecl)
!5315 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!5316 = !DILocalVariable(name: "pid", scope: !5304, file: !2, line: 65, type: !3388)
!5317 = !DILocalVariable(name: "uid", scope: !5304, file: !2, line: 66, type: !770)
!5318 = !DILocalVariable(name: "___val", scope: !5319, file: !2, line: 66, type: !766)
!5319 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 66, column: 39)
!5320 = !DILocalVariable(name: "__UNIQUE_ID_rcu294", scope: !5321, file: !2, line: 66, type: !775)
!5321 = distinct !DILexicalBlock(scope: !5319, file: !2, line: 66, column: 39)
!5322 = !DILocalVariable(name: "loginuid", scope: !5304, file: !2, line: 67, type: !770)
!5323 = !DILocalVariable(name: "sessionid", scope: !5304, file: !2, line: 68, type: !108)
!5324 = !DILocalVariable(name: "name", scope: !5304, file: !2, line: 69, type: !3446)
!5325 = !DILocation(line: 61, column: 39, scope: !5304)
!5326 = !DILocation(line: 61, column: 58, scope: !5304)
!5327 = !DILocation(line: 62, column: 16, scope: !5304)
!5328 = !DILocation(line: 62, column: 29, scope: !5304)
!5329 = !DILocation(line: 64, column: 2, scope: !5304)
!5330 = !DILocation(line: 64, column: 23, scope: !5304)
!5331 = !DILocation(line: 65, column: 2, scope: !5304)
!5332 = !DILocation(line: 65, column: 8, scope: !5304)
!5333 = !DILocation(line: 65, column: 26, scope: !5304)
!5334 = !DILocation(line: 65, column: 14, scope: !5304)
!5335 = !DILocation(line: 66, column: 2, scope: !5304)
!5336 = !DILocation(line: 66, column: 8, scope: !5304)
!5337 = !DILocation(line: 66, column: 39, scope: !5319)
!5338 = !DILocation(line: 66, column: 39, scope: !5321)
!5339 = !DILocation(line: 66, column: 39, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5321, file: !2, line: 66, column: 39)
!5341 = !DILocation(line: 66, column: 39, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 66, column: 39)
!5343 = !DILocation(line: 66, column: 39, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5321, file: !2, line: 66, column: 39)
!5345 = !DILocation(line: 66, column: 39, scope: !5304)
!5346 = !DILocation(line: 66, column: 14, scope: !5304)
!5347 = !DILocation(line: 67, column: 2, scope: !5304)
!5348 = !DILocation(line: 67, column: 8, scope: !5304)
!5349 = !DILocation(line: 67, column: 63, scope: !5304)
!5350 = !DILocation(line: 67, column: 44, scope: !5304)
!5351 = !DILocation(line: 67, column: 19, scope: !5304)
!5352 = !DILocation(line: 68, column: 2, scope: !5304)
!5353 = !DILocation(line: 68, column: 15, scope: !5304)
!5354 = !DILocation(line: 68, column: 47, scope: !5304)
!5355 = !DILocation(line: 68, column: 27, scope: !5304)
!5356 = !DILocation(line: 69, column: 2, scope: !5304)
!5357 = !DILocation(line: 69, column: 7, scope: !5304)
!5358 = !DILocation(line: 71, column: 23, scope: !5304)
!5359 = !DILocation(line: 71, column: 7, scope: !5304)
!5360 = !DILocation(line: 71, column: 5, scope: !5304)
!5361 = !DILocation(line: 72, column: 7, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 72, column: 6)
!5363 = !DILocation(line: 72, column: 6, scope: !5304)
!5364 = !DILocation(line: 73, column: 3, scope: !5362)
!5365 = !DILocation(line: 75, column: 19, scope: !5304)
!5366 = !DILocation(line: 76, column: 5, scope: !5304)
!5367 = !DILocation(line: 76, column: 18, scope: !5304)
!5368 = !DILocation(line: 76, column: 23, scope: !5304)
!5369 = !DILocation(line: 76, column: 28, scope: !5304)
!5370 = !DILocation(line: 76, column: 38, scope: !5304)
!5371 = !DILocation(line: 77, column: 5, scope: !5304)
!5372 = !DILocation(line: 77, column: 17, scope: !5304)
!5373 = !DILocation(line: 75, column: 2, scope: !5304)
!5374 = !DILocation(line: 78, column: 2, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 78, column: 2)
!5376 = !DILocation(line: 78, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5375, file: !2, line: 78, column: 2)
!5378 = !DILocation(line: 79, column: 28, scope: !5304)
!5379 = !DILocation(line: 79, column: 32, scope: !5304)
!5380 = !DILocation(line: 79, column: 2, scope: !5304)
!5381 = !DILocation(line: 80, column: 19, scope: !5304)
!5382 = !DILocation(line: 80, column: 2, scope: !5304)
!5383 = !DILocation(line: 81, column: 18, scope: !5304)
!5384 = !DILocation(line: 81, column: 22, scope: !5304)
!5385 = !DILocation(line: 81, column: 28, scope: !5304)
!5386 = !DILocation(line: 81, column: 2, scope: !5304)
!5387 = !DILocation(line: 82, column: 16, scope: !5304)
!5388 = !DILocation(line: 82, column: 2, scope: !5304)
!5389 = !DILocation(line: 83, column: 1, scope: !5304)
!5390 = distinct !DISubprogram(name: "tty_audit_buf_ref", scope: !2, file: !2, line: 23, type: !35, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5391)
!5391 = !{!5392, !5393, !5395}
!5392 = !DILocalVariable(name: "buf", scope: !5390, file: !2, line: 25, type: !37)
!5393 = !DILocalVariable(name: "__ret_warn_on", scope: !5394, file: !2, line: 28, type: !75)
!5394 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 28, column: 2)
!5395 = !DILocalVariable(name: "__flags", scope: !5396, file: !2, line: 28, type: !75)
!5396 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 28, column: 2)
!5397 = distinct !DILexicalBlock(scope: !5394, file: !2, line: 28, column: 2)
!5398 = !DILocation(line: 25, column: 2, scope: !5390)
!5399 = !DILocation(line: 25, column: 24, scope: !5390)
!5400 = !DILocation(line: 27, column: 8, scope: !5390)
!5401 = !DILocation(line: 27, column: 17, scope: !5390)
!5402 = !DILocation(line: 27, column: 25, scope: !5390)
!5403 = !DILocation(line: 27, column: 6, scope: !5390)
!5404 = !DILocation(line: 28, column: 2, scope: !5394)
!5405 = !DILocation(line: 28, column: 2, scope: !5397)
!5406 = !DILocation(line: 28, column: 2, scope: !5396)
!5407 = !DILocation(line: 28, column: 2, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5396, file: !2, line: 28, column: 2)
!5409 = !DILocation(line: 28, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5396, file: !2, line: 28, column: 2)
!5411 = !{i64 2154893767, i64 2154893796, i64 2154893842, i64 2154893900, i64 2154893954, i64 2154894008, i64 2154894063, i64 2154894094, i64 2154894402, i64 2154894408, i64 2154894455, i64 2154894478, i64 2154894504}
!5412 = !DILocation(line: 28, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5396, file: !2, line: 28, column: 2)
!5414 = !DILocation(line: 28, column: 2, scope: !5390)
!5415 = !DILocation(line: 29, column: 9, scope: !5390)
!5416 = !DILocation(line: 30, column: 1, scope: !5390)
!5417 = !DILocation(line: 29, column: 2, scope: !5390)
!5418 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5165, file: !5165, line: 70, type: !5419, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5421)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{!110, !1919}
!5421 = !{!5422}
!5422 = !DILocalVariable(name: "ptr", arg: 1, scope: !5418, file: !5165, line: 70, type: !1919)
!5423 = !DILocation(line: 70, column: 68, scope: !5418)
!5424 = !DILocation(line: 72, column: 9, scope: !5418)
!5425 = !DILocation(line: 72, column: 24, scope: !5418)
!5426 = !DILocation(line: 72, column: 27, scope: !5418)
!5427 = !DILocation(line: 72, column: 2, scope: !5418)
!5428 = !DISubprogram(name: "mutex_lock", scope: !42, file: !42, line: 227, type: !5429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{null, !5431}
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!5432 = !DISubprogram(name: "mutex_unlock", scope: !42, file: !42, line: 246, type: !5429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5433 = distinct !DISubprogram(name: "tty_audit_add_data", scope: !2, file: !2, line: 202, type: !5434, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5436)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !5248, !1919, !113}
!5436 = !{!5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444}
!5437 = !DILocalVariable(name: "tty", arg: 1, scope: !5433, file: !2, line: 202, type: !5248)
!5438 = !DILocalVariable(name: "data", arg: 2, scope: !5433, file: !2, line: 202, type: !1919)
!5439 = !DILocalVariable(name: "size", arg: 3, scope: !5433, file: !2, line: 203, type: !113)
!5440 = !DILocalVariable(name: "buf", scope: !5433, file: !2, line: 205, type: !37)
!5441 = !DILocalVariable(name: "audit_tty", scope: !5433, file: !2, line: 206, type: !108)
!5442 = !DILocalVariable(name: "icanon", scope: !5433, file: !2, line: 207, type: !110)
!5443 = !DILocalVariable(name: "dev", scope: !5433, file: !2, line: 208, type: !104)
!5444 = !DILocalVariable(name: "run", scope: !5445, file: !2, line: 236, type: !113)
!5445 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 235, column: 5)
!5446 = !DILocation(line: 202, column: 50, scope: !5433)
!5447 = !DILocation(line: 202, column: 67, scope: !5433)
!5448 = !DILocation(line: 203, column: 11, scope: !5433)
!5449 = !DILocation(line: 205, column: 2, scope: !5433)
!5450 = !DILocation(line: 205, column: 24, scope: !5433)
!5451 = !DILocation(line: 206, column: 2, scope: !5433)
!5452 = !DILocation(line: 206, column: 15, scope: !5433)
!5453 = !DILocation(line: 207, column: 2, scope: !5433)
!5454 = !DILocation(line: 207, column: 7, scope: !5433)
!5455 = !DILocation(line: 207, column: 16, scope: !5433)
!5456 = !DILocation(line: 208, column: 2, scope: !5433)
!5457 = !DILocation(line: 208, column: 8, scope: !5433)
!5458 = !DILocation(line: 210, column: 14, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 210, column: 14)
!5460 = !DILocation(line: 210, column: 14, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5459, file: !2, line: 210, column: 14)
!5462 = !DILocation(line: 210, column: 12, scope: !5433)
!5463 = !DILocation(line: 211, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 211, column: 6)
!5465 = !DILocation(line: 211, column: 6, scope: !5464)
!5466 = !DILocation(line: 211, column: 17, scope: !5464)
!5467 = !DILocation(line: 211, column: 6, scope: !5433)
!5468 = !DILocation(line: 212, column: 3, scope: !5464)
!5469 = !DILocation(line: 214, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 214, column: 6)
!5471 = !DILocation(line: 214, column: 6, scope: !5433)
!5472 = !DILocation(line: 215, column: 3, scope: !5470)
!5473 = !DILocation(line: 217, column: 6, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 217, column: 6)
!5475 = !DILocation(line: 217, column: 11, scope: !5474)
!5476 = !DILocation(line: 217, column: 19, scope: !5474)
!5477 = !DILocation(line: 217, column: 24, scope: !5474)
!5478 = !DILocation(line: 218, column: 6, scope: !5474)
!5479 = !DILocation(line: 218, column: 9, scope: !5474)
!5480 = !DILocation(line: 218, column: 14, scope: !5474)
!5481 = !DILocation(line: 218, column: 22, scope: !5474)
!5482 = !DILocation(line: 218, column: 30, scope: !5474)
!5483 = !DILocation(line: 217, column: 6, scope: !5433)
!5484 = !DILocation(line: 219, column: 3, scope: !5474)
!5485 = !DILocation(line: 221, column: 8, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 221, column: 6)
!5487 = !DILocation(line: 221, column: 7, scope: !5486)
!5488 = !DILocation(line: 221, column: 18, scope: !5486)
!5489 = !DILocation(line: 221, column: 42, scope: !5486)
!5490 = !DILocation(line: 221, column: 45, scope: !5486)
!5491 = !{i8 0, i8 2}
!5492 = !DILocation(line: 221, column: 52, scope: !5486)
!5493 = !DILocation(line: 221, column: 56, scope: !5486)
!5494 = !DILocation(line: 221, column: 6, scope: !5433)
!5495 = !DILocation(line: 222, column: 3, scope: !5486)
!5496 = !DILocation(line: 224, column: 8, scope: !5433)
!5497 = !DILocation(line: 224, column: 6, scope: !5433)
!5498 = !DILocation(line: 225, column: 21, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 225, column: 6)
!5500 = !DILocation(line: 225, column: 6, scope: !5499)
!5501 = !DILocation(line: 225, column: 6, scope: !5433)
!5502 = !DILocation(line: 226, column: 3, scope: !5499)
!5503 = !DILocation(line: 228, column: 14, scope: !5433)
!5504 = !DILocation(line: 228, column: 19, scope: !5433)
!5505 = !DILocation(line: 228, column: 2, scope: !5433)
!5506 = !DILocation(line: 229, column: 8, scope: !5433)
!5507 = !DILocation(line: 229, column: 62, scope: !5433)
!5508 = !DILocation(line: 229, column: 67, scope: !5433)
!5509 = !DILocation(line: 229, column: 60, scope: !5433)
!5510 = !DILocation(line: 229, column: 6, scope: !5433)
!5511 = !DILocation(line: 230, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 230, column: 6)
!5513 = !DILocation(line: 230, column: 11, scope: !5512)
!5514 = !DILocation(line: 230, column: 18, scope: !5512)
!5515 = !DILocation(line: 230, column: 15, scope: !5512)
!5516 = !DILocation(line: 230, column: 22, scope: !5512)
!5517 = !DILocation(line: 230, column: 25, scope: !5512)
!5518 = !DILocation(line: 230, column: 30, scope: !5512)
!5519 = !DILocation(line: 230, column: 40, scope: !5512)
!5520 = !DILocation(line: 230, column: 37, scope: !5512)
!5521 = !DILocation(line: 230, column: 6, scope: !5433)
!5522 = !DILocation(line: 231, column: 22, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 230, column: 48)
!5524 = !DILocation(line: 231, column: 3, scope: !5523)
!5525 = !DILocation(line: 232, column: 14, scope: !5523)
!5526 = !DILocation(line: 232, column: 3, scope: !5523)
!5527 = !DILocation(line: 232, column: 8, scope: !5523)
!5528 = !DILocation(line: 232, column: 12, scope: !5523)
!5529 = !DILocation(line: 233, column: 17, scope: !5523)
!5530 = !DILocation(line: 233, column: 3, scope: !5523)
!5531 = !DILocation(line: 233, column: 8, scope: !5523)
!5532 = !DILocation(line: 233, column: 15, scope: !5523)
!5533 = !DILocation(line: 234, column: 2, scope: !5523)
!5534 = !DILocation(line: 235, column: 2, scope: !5433)
!5535 = !DILocation(line: 236, column: 3, scope: !5445)
!5536 = !DILocation(line: 236, column: 10, scope: !5445)
!5537 = !DILocation(line: 238, column: 26, scope: !5445)
!5538 = !DILocation(line: 238, column: 31, scope: !5445)
!5539 = !DILocation(line: 238, column: 24, scope: !5445)
!5540 = !DILocation(line: 238, column: 7, scope: !5445)
!5541 = !DILocation(line: 239, column: 7, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 239, column: 7)
!5543 = !DILocation(line: 239, column: 13, scope: !5542)
!5544 = !DILocation(line: 239, column: 11, scope: !5542)
!5545 = !DILocation(line: 239, column: 7, scope: !5445)
!5546 = !DILocation(line: 240, column: 10, scope: !5542)
!5547 = !DILocation(line: 240, column: 8, scope: !5542)
!5548 = !DILocation(line: 240, column: 4, scope: !5542)
!5549 = !DILocation(line: 241, column: 10, scope: !5445)
!5550 = !DILocation(line: 241, column: 15, scope: !5445)
!5551 = !DILocation(line: 241, column: 22, scope: !5445)
!5552 = !DILocation(line: 241, column: 27, scope: !5445)
!5553 = !DILocation(line: 241, column: 20, scope: !5445)
!5554 = !DILocation(line: 241, column: 34, scope: !5445)
!5555 = !DILocation(line: 241, column: 40, scope: !5445)
!5556 = !DILocation(line: 241, column: 3, scope: !5445)
!5557 = !DILocation(line: 242, column: 17, scope: !5445)
!5558 = !DILocation(line: 242, column: 3, scope: !5445)
!5559 = !DILocation(line: 242, column: 8, scope: !5445)
!5560 = !DILocation(line: 242, column: 14, scope: !5445)
!5561 = !DILocation(line: 243, column: 11, scope: !5445)
!5562 = !DILocation(line: 243, column: 8, scope: !5445)
!5563 = !DILocation(line: 244, column: 11, scope: !5445)
!5564 = !DILocation(line: 244, column: 8, scope: !5445)
!5565 = !DILocation(line: 245, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 245, column: 7)
!5567 = !DILocation(line: 245, column: 12, scope: !5566)
!5568 = !DILocation(line: 245, column: 18, scope: !5566)
!5569 = !DILocation(line: 245, column: 7, scope: !5445)
!5570 = !DILocation(line: 246, column: 23, scope: !5566)
!5571 = !DILocation(line: 246, column: 4, scope: !5566)
!5572 = !DILocation(line: 247, column: 2, scope: !5433)
!5573 = !DILocation(line: 247, column: 2, scope: !5445)
!5574 = !DILocation(line: 247, column: 11, scope: !5433)
!5575 = !DILocation(line: 247, column: 16, scope: !5433)
!5576 = distinct !{!5576, !5534, !5577, !5578, !5579}
!5577 = !DILocation(line: 247, column: 20, scope: !5433)
!5578 = !{!"llvm.loop.mustprogress"}
!5579 = !{!"llvm.loop.unroll.disable"}
!5580 = !DILocation(line: 248, column: 16, scope: !5433)
!5581 = !DILocation(line: 248, column: 21, scope: !5433)
!5582 = !DILocation(line: 248, column: 2, scope: !5433)
!5583 = !DILocation(line: 249, column: 1, scope: !5433)
!5584 = distinct !DISubprogram(name: "tty_audit_buf_get", scope: !2, file: !2, line: 177, type: !35, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5585)
!5585 = !{!5586, !5587, !5590, !5592, !5593, !5594}
!5586 = !DILocalVariable(name: "buf", scope: !5584, file: !2, line: 179, type: !37)
!5587 = !DILocalVariable(name: "__ai_ptr", scope: !5588, file: !2, line: 192, type: !5109)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 192, column: 6)
!5589 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 192, column: 6)
!5590 = !DILocalVariable(name: "__ret", scope: !5591, file: !2, line: 192, type: !37)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 192, column: 6)
!5592 = !DILocalVariable(name: "__old", scope: !5591, file: !2, line: 192, type: !37)
!5593 = !DILocalVariable(name: "__new", scope: !5591, file: !2, line: 192, type: !37)
!5594 = !DILocalVariable(name: "__ptr", scope: !5591, file: !2, line: 192, type: !5080)
!5595 = !DILocation(line: 179, column: 2, scope: !5584)
!5596 = !DILocation(line: 179, column: 24, scope: !5584)
!5597 = !DILocation(line: 181, column: 8, scope: !5584)
!5598 = !DILocation(line: 181, column: 6, scope: !5584)
!5599 = !DILocation(line: 182, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 182, column: 6)
!5601 = !DILocation(line: 182, column: 6, scope: !5584)
!5602 = !DILocation(line: 183, column: 10, scope: !5600)
!5603 = !DILocation(line: 183, column: 3, scope: !5600)
!5604 = !DILocation(line: 185, column: 8, scope: !5584)
!5605 = !DILocation(line: 185, column: 6, scope: !5584)
!5606 = !DILocation(line: 186, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 186, column: 6)
!5608 = !DILocation(line: 186, column: 10, scope: !5607)
!5609 = !DILocation(line: 186, column: 6, scope: !5584)
!5610 = !DILocation(line: 187, column: 3, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5607, file: !2, line: 186, column: 19)
!5612 = !DILocation(line: 188, column: 3, scope: !5611)
!5613 = !DILocation(line: 192, column: 6, scope: !5588)
!5614 = !DILocation(line: 192, column: 6, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 192, column: 6)
!5616 = !DILocation(line: 192, column: 6, scope: !5591)
!5617 = !{i64 2154911546, i64 2154911585, i64 2154911606, i64 2154911643, i64 2154911666, i64 2154911675}
!5618 = !DILocation(line: 192, column: 6, scope: !5589)
!5619 = !DILocation(line: 192, column: 58, scope: !5589)
!5620 = !DILocation(line: 192, column: 6, scope: !5584)
!5621 = !DILocation(line: 193, column: 22, scope: !5589)
!5622 = !DILocation(line: 193, column: 3, scope: !5589)
!5623 = !DILocation(line: 194, column: 9, scope: !5584)
!5624 = !DILocation(line: 194, column: 2, scope: !5584)
!5625 = !DILocation(line: 195, column: 1, scope: !5584)
!5626 = distinct !DISubprogram(name: "kasan_check_write", scope: !5627, file: !5627, line: 44, type: !5628, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5630)
!5627 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!110, !5151, !108}
!5630 = !{!5631, !5632}
!5631 = !DILocalVariable(name: "p", arg: 1, scope: !5626, file: !5627, line: 44, type: !5151)
!5632 = !DILocalVariable(name: "size", arg: 2, scope: !5626, file: !5627, line: 44, type: !108)
!5633 = !DILocation(line: 44, column: 59, scope: !5626)
!5634 = !DILocation(line: 44, column: 75, scope: !5626)
!5635 = !DILocation(line: 46, column: 2, scope: !5626)
!5636 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5637, file: !5637, line: 229, type: !5638, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5640)
!5637 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5638 = !DISubroutineType(types: !5639)
!5639 = !{null, !5151, !113, !75}
!5640 = !{!5641, !5642, !5643}
!5641 = !DILocalVariable(name: "ptr", arg: 1, scope: !5636, file: !5637, line: 229, type: !5151)
!5642 = !DILocalVariable(name: "size", arg: 2, scope: !5636, file: !5637, line: 229, type: !113)
!5643 = !DILocalVariable(name: "type", arg: 3, scope: !5636, file: !5637, line: 230, type: !75)
!5644 = !DILocation(line: 229, column: 60, scope: !5636)
!5645 = !DILocation(line: 229, column: 72, scope: !5636)
!5646 = !DILocation(line: 230, column: 15, scope: !5636)
!5647 = !DILocation(line: 230, column: 23, scope: !5636)
!5648 = !DISubprogram(name: "kfree", scope: !262, file: !262, line: 227, type: !5649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{null, !1919}
!5651 = distinct !DISubprogram(name: "task_pid_nr", scope: !278, file: !278, line: 1580, type: !5652, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5654)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!3388, !276}
!5654 = !{!5655}
!5655 = !DILocalVariable(name: "tsk", arg: 1, scope: !5651, file: !278, line: 1580, type: !276)
!5656 = !DILocation(line: 1580, column: 53, scope: !5651)
!5657 = !DILocation(line: 1582, column: 9, scope: !5651)
!5658 = !DILocation(line: 1582, column: 14, scope: !5651)
!5659 = !DILocation(line: 1582, column: 2, scope: !5651)
!5660 = distinct !DISubprogram(name: "from_kuid", scope: !744, file: !744, line: 153, type: !5661, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!770, !742, !766}
!5663 = !{!5664, !5665}
!5664 = !DILocalVariable(name: "to", arg: 1, scope: !5660, file: !744, line: 153, type: !742)
!5665 = !DILocalVariable(name: "kuid", arg: 2, scope: !5660, file: !744, line: 153, type: !766)
!5666 = !DILocation(line: 153, column: 54, scope: !5660)
!5667 = !DILocation(line: 153, column: 65, scope: !5660)
!5668 = !DILocation(line: 155, column: 9, scope: !5660)
!5669 = !DILocation(line: 155, column: 2, scope: !5660)
!5670 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5671, file: !5671, line: 782, type: !2442, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!5671 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5672 = !DILocation(line: 784, column: 2, scope: !5670)
!5673 = !DILocation(line: 786, column: 2, scope: !5670)
!5674 = !DILocation(line: 786, column: 2, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5670, file: !5671, line: 786, column: 2)
!5676 = !DILocation(line: 787, column: 2, scope: !5670)
!5677 = !DILocation(line: 787, column: 2, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5670, file: !5671, line: 787, column: 2)
!5679 = !DILocation(line: 789, column: 1, scope: !5670)
!5680 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5671, file: !5671, line: 813, type: !2442, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!5681 = !DILocation(line: 815, column: 2, scope: !5680)
!5682 = !DILocation(line: 815, column: 2, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !5671, line: 815, column: 2)
!5684 = !DILocation(line: 818, column: 2, scope: !5680)
!5685 = !DILocation(line: 819, column: 2, scope: !5680)
!5686 = !DILocation(line: 819, column: 2, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5680, file: !5671, line: 819, column: 2)
!5688 = !DILocation(line: 820, column: 1, scope: !5680)
!5689 = distinct !DISubprogram(name: "audit_get_loginuid", scope: !5315, file: !5315, line: 198, type: !5690, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5692)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!766, !276}
!5692 = !{!5693}
!5693 = !DILocalVariable(name: "tsk", arg: 1, scope: !5689, file: !5315, line: 198, type: !276)
!5694 = !DILocation(line: 198, column: 61, scope: !5689)
!5695 = !DILocation(line: 200, column: 9, scope: !5689)
!5696 = !DILocation(line: 200, column: 14, scope: !5689)
!5697 = !DILocation(line: 200, column: 2, scope: !5689)
!5698 = distinct !DISubprogram(name: "audit_get_sessionid", scope: !5315, file: !5315, line: 203, type: !5699, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5701)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{!108, !276}
!5701 = !{!5702}
!5702 = !DILocalVariable(name: "tsk", arg: 1, scope: !5698, file: !5315, line: 203, type: !276)
!5703 = !DILocation(line: 203, column: 68, scope: !5698)
!5704 = !DILocation(line: 205, column: 9, scope: !5698)
!5705 = !DILocation(line: 205, column: 14, scope: !5698)
!5706 = !DILocation(line: 205, column: 2, scope: !5698)
!5707 = !DISubprogram(name: "audit_log_start", scope: !5315, file: !5315, line: 161, type: !5708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!5313, !4519, !725, !75}
!5710 = distinct !DISubprogram(name: "audit_context", scope: !5315, file: !5315, line: 313, type: !5711, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!4519}
!5713 = !DILocation(line: 315, column: 9, scope: !5710)
!5714 = !DILocation(line: 315, column: 18, scope: !5710)
!5715 = !DILocation(line: 315, column: 2, scope: !5710)
!5716 = !DISubprogram(name: "audit_log_format", scope: !5315, file: !5315, line: 163, type: !5717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !5313, !884, null}
!5719 = !DISubprogram(name: "__get_task_comm", scope: !278, file: !278, line: 2014, type: !5720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!894, !894, !113, !276}
!5722 = !DISubprogram(name: "audit_log_untrustedstring", scope: !5315, file: !5315, line: 176, type: !5723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{null, !5313, !884}
!5725 = !DISubprogram(name: "audit_log_n_hex", scope: !5315, file: !5315, line: 167, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{null, !5313, !1032, !113}
!5728 = !DISubprogram(name: "audit_log_end", scope: !5315, file: !5315, line: 164, type: !5729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{null, !5313}
!5731 = distinct !DISubprogram(name: "__kuid_val", scope: !744, file: !744, line: 34, type: !5732, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5734)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!770, !766}
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "uid", arg: 1, scope: !5731, file: !744, line: 34, type: !766)
!5736 = !DILocation(line: 34, column: 39, scope: !5731)
!5737 = !DILocation(line: 36, column: 13, scope: !5731)
!5738 = !DILocation(line: 36, column: 2, scope: !5731)
!5739 = !DISubprogram(name: "__rcu_read_lock", scope: !5671, file: !5671, line: 74, type: !2442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5740 = !DISubprogram(name: "__rcu_read_unlock", scope: !5671, file: !5671, line: 75, type: !2442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5741 = !DILocation(line: 34, column: 2, scope: !34)
!5742 = !DILocation(line: 34, column: 24, scope: !34)
!5743 = !DILocation(line: 36, column: 8, scope: !34)
!5744 = !DILocation(line: 36, column: 6, scope: !34)
!5745 = !DILocation(line: 37, column: 7, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !34, file: !2, line: 37, column: 6)
!5747 = !DILocation(line: 37, column: 6, scope: !34)
!5748 = !DILocation(line: 38, column: 3, scope: !5746)
!5749 = !DILocation(line: 40, column: 14, scope: !34)
!5750 = !DILocation(line: 40, column: 2, scope: !34)
!5751 = !DILocation(line: 40, column: 7, scope: !34)
!5752 = !DILocation(line: 40, column: 12, scope: !34)
!5753 = !DILocation(line: 41, column: 7, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !34, file: !2, line: 41, column: 6)
!5755 = !DILocation(line: 41, column: 12, scope: !5754)
!5756 = !DILocation(line: 41, column: 6, scope: !34)
!5757 = !DILocation(line: 42, column: 3, scope: !5754)
!5758 = !DILocation(line: 44, column: 2, scope: !34)
!5759 = !DILocation(line: 44, column: 2, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !34, file: !2, line: 44, column: 2)
!5761 = !DILocation(line: 46, column: 9, scope: !34)
!5762 = !DILocation(line: 46, column: 2, scope: !34)
!5763 = !DILocation(line: 48, column: 1, scope: !34)
!5764 = !DILocation(line: 49, column: 8, scope: !34)
!5765 = !DILocation(line: 49, column: 2, scope: !34)
!5766 = !DILocation(line: 50, column: 1, scope: !34)
!5767 = !DILocation(line: 51, column: 2, scope: !34)
!5768 = !DILocation(line: 52, column: 1, scope: !34)
!5769 = !DISubprogram(name: "audit_log_lost", scope: !5315, file: !5315, line: 185, type: !5770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{null, !884}
!5772 = distinct !DISubprogram(name: "kzalloc", scope: !262, file: !262, line: 719, type: !5773, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5775)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!290, !113, !725}
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "size", arg: 1, scope: !5772, file: !262, line: 719, type: !113)
!5777 = !DILocalVariable(name: "flags", arg: 2, scope: !5772, file: !262, line: 719, type: !725)
!5778 = !DILocation(line: 719, column: 52, scope: !5772)
!5779 = !DILocation(line: 719, column: 64, scope: !5772)
!5780 = !DILocation(line: 721, column: 17, scope: !5772)
!5781 = !DILocation(line: 721, column: 23, scope: !5772)
!5782 = !DILocation(line: 721, column: 29, scope: !5772)
!5783 = !DILocation(line: 721, column: 9, scope: !5772)
!5784 = !DILocation(line: 721, column: 2, scope: !5772)
!5785 = distinct !DISubprogram(name: "kmalloc", scope: !262, file: !262, line: 591, type: !5773, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5786)
!5786 = !{!5787, !5788, !5789}
!5787 = !DILocalVariable(name: "size", arg: 1, scope: !5785, file: !262, line: 591, type: !113)
!5788 = !DILocalVariable(name: "flags", arg: 2, scope: !5785, file: !262, line: 591, type: !725)
!5789 = !DILocalVariable(name: "index", scope: !5790, file: !262, line: 594, type: !108)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !262, line: 593, column: 42)
!5791 = distinct !DILexicalBlock(scope: !5785, file: !262, line: 593, column: 6)
!5792 = !DILocation(line: 591, column: 61, scope: !5785)
!5793 = !DILocation(line: 591, column: 73, scope: !5785)
!5794 = !DILocation(line: 593, column: 27, scope: !5791)
!5795 = !DILocation(line: 593, column: 6, scope: !5791)
!5796 = !DILocation(line: 593, column: 33, scope: !5791)
!5797 = !DILocation(line: 593, column: 36, scope: !5791)
!5798 = !DILocation(line: 593, column: 6, scope: !5785)
!5799 = !DILocation(line: 594, column: 3, scope: !5790)
!5800 = !DILocation(line: 594, column: 16, scope: !5790)
!5801 = !DILocation(line: 596, column: 7, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5790, file: !262, line: 596, column: 7)
!5803 = !DILocation(line: 596, column: 12, scope: !5802)
!5804 = !DILocation(line: 596, column: 7, scope: !5790)
!5805 = !DILocation(line: 597, column: 25, scope: !5802)
!5806 = !DILocation(line: 597, column: 31, scope: !5802)
!5807 = !DILocation(line: 597, column: 11, scope: !5802)
!5808 = !DILocation(line: 597, column: 4, scope: !5802)
!5809 = !DILocation(line: 599, column: 11, scope: !5790)
!5810 = !DILocation(line: 599, column: 9, scope: !5790)
!5811 = !DILocation(line: 601, column: 33, scope: !5790)
!5812 = !DILocation(line: 601, column: 40, scope: !5790)
!5813 = !DILocation(line: 601, column: 20, scope: !5790)
!5814 = !DILocation(line: 601, column: 5, scope: !5790)
!5815 = !DILocation(line: 601, column: 51, scope: !5790)
!5816 = !DILocation(line: 602, column: 5, scope: !5790)
!5817 = !DILocation(line: 602, column: 12, scope: !5790)
!5818 = !DILocation(line: 600, column: 10, scope: !5790)
!5819 = !DILocation(line: 600, column: 3, scope: !5790)
!5820 = !DILocation(line: 603, column: 2, scope: !5791)
!5821 = !DILocation(line: 604, column: 19, scope: !5785)
!5822 = !DILocation(line: 604, column: 25, scope: !5785)
!5823 = !DILocation(line: 604, column: 9, scope: !5785)
!5824 = !DILocation(line: 604, column: 2, scope: !5785)
!5825 = !DILocation(line: 605, column: 1, scope: !5785)
!5826 = !DISubprogram(name: "__mutex_init", scope: !42, file: !42, line: 121, type: !5827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{null, !5431, !884, !5829}
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!5830 = !DISubprogram(name: "kmalloc_large", scope: !262, file: !262, line: 531, type: !5773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5831 = distinct !DISubprogram(name: "__kmalloc_index", scope: !262, file: !262, line: 444, type: !5832, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5834)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!108, !113, !110}
!5834 = !{!5835, !5836}
!5835 = !DILocalVariable(name: "size", arg: 1, scope: !5831, file: !262, line: 444, type: !113)
!5836 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5831, file: !262, line: 445, type: !110)
!5837 = !DILocation(line: 444, column: 60, scope: !5831)
!5838 = !DILocation(line: 445, column: 16, scope: !5831)
!5839 = !DILocation(line: 447, column: 7, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 447, column: 6)
!5841 = !DILocation(line: 447, column: 6, scope: !5831)
!5842 = !DILocation(line: 448, column: 3, scope: !5840)
!5843 = !DILocation(line: 450, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 450, column: 6)
!5845 = !DILocation(line: 450, column: 11, scope: !5844)
!5846 = !DILocation(line: 450, column: 6, scope: !5831)
!5847 = !DILocation(line: 451, column: 3, scope: !5844)
!5848 = !DILocation(line: 453, column: 32, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 453, column: 6)
!5850 = !DILocation(line: 453, column: 37, scope: !5849)
!5851 = !DILocation(line: 453, column: 42, scope: !5849)
!5852 = !DILocation(line: 453, column: 45, scope: !5849)
!5853 = !DILocation(line: 453, column: 50, scope: !5849)
!5854 = !DILocation(line: 453, column: 6, scope: !5831)
!5855 = !DILocation(line: 454, column: 3, scope: !5849)
!5856 = !DILocation(line: 455, column: 32, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 455, column: 6)
!5858 = !DILocation(line: 455, column: 37, scope: !5857)
!5859 = !DILocation(line: 455, column: 43, scope: !5857)
!5860 = !DILocation(line: 455, column: 46, scope: !5857)
!5861 = !DILocation(line: 455, column: 51, scope: !5857)
!5862 = !DILocation(line: 455, column: 6, scope: !5831)
!5863 = !DILocation(line: 456, column: 3, scope: !5857)
!5864 = !DILocation(line: 457, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 457, column: 6)
!5866 = !DILocation(line: 457, column: 11, scope: !5865)
!5867 = !DILocation(line: 457, column: 6, scope: !5831)
!5868 = !DILocation(line: 457, column: 26, scope: !5865)
!5869 = !DILocation(line: 458, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 458, column: 6)
!5871 = !DILocation(line: 458, column: 11, scope: !5870)
!5872 = !DILocation(line: 458, column: 6, scope: !5831)
!5873 = !DILocation(line: 458, column: 26, scope: !5870)
!5874 = !DILocation(line: 459, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 459, column: 6)
!5876 = !DILocation(line: 459, column: 11, scope: !5875)
!5877 = !DILocation(line: 459, column: 6, scope: !5831)
!5878 = !DILocation(line: 459, column: 26, scope: !5875)
!5879 = !DILocation(line: 460, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 460, column: 6)
!5881 = !DILocation(line: 460, column: 11, scope: !5880)
!5882 = !DILocation(line: 460, column: 6, scope: !5831)
!5883 = !DILocation(line: 460, column: 26, scope: !5880)
!5884 = !DILocation(line: 461, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 461, column: 6)
!5886 = !DILocation(line: 461, column: 11, scope: !5885)
!5887 = !DILocation(line: 461, column: 6, scope: !5831)
!5888 = !DILocation(line: 461, column: 26, scope: !5885)
!5889 = !DILocation(line: 462, column: 6, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 462, column: 6)
!5891 = !DILocation(line: 462, column: 11, scope: !5890)
!5892 = !DILocation(line: 462, column: 6, scope: !5831)
!5893 = !DILocation(line: 462, column: 26, scope: !5890)
!5894 = !DILocation(line: 463, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 463, column: 6)
!5896 = !DILocation(line: 463, column: 11, scope: !5895)
!5897 = !DILocation(line: 463, column: 6, scope: !5831)
!5898 = !DILocation(line: 463, column: 26, scope: !5895)
!5899 = !DILocation(line: 464, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 464, column: 6)
!5901 = !DILocation(line: 464, column: 11, scope: !5900)
!5902 = !DILocation(line: 464, column: 6, scope: !5831)
!5903 = !DILocation(line: 464, column: 26, scope: !5900)
!5904 = !DILocation(line: 465, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 465, column: 6)
!5906 = !DILocation(line: 465, column: 11, scope: !5905)
!5907 = !DILocation(line: 465, column: 6, scope: !5831)
!5908 = !DILocation(line: 465, column: 26, scope: !5905)
!5909 = !DILocation(line: 466, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 466, column: 6)
!5911 = !DILocation(line: 466, column: 11, scope: !5910)
!5912 = !DILocation(line: 466, column: 6, scope: !5831)
!5913 = !DILocation(line: 466, column: 26, scope: !5910)
!5914 = !DILocation(line: 467, column: 6, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 467, column: 6)
!5916 = !DILocation(line: 467, column: 11, scope: !5915)
!5917 = !DILocation(line: 467, column: 6, scope: !5831)
!5918 = !DILocation(line: 467, column: 26, scope: !5915)
!5919 = !DILocation(line: 468, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 468, column: 6)
!5921 = !DILocation(line: 468, column: 11, scope: !5920)
!5922 = !DILocation(line: 468, column: 6, scope: !5831)
!5923 = !DILocation(line: 468, column: 26, scope: !5920)
!5924 = !DILocation(line: 469, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 469, column: 6)
!5926 = !DILocation(line: 469, column: 11, scope: !5925)
!5927 = !DILocation(line: 469, column: 6, scope: !5831)
!5928 = !DILocation(line: 469, column: 26, scope: !5925)
!5929 = !DILocation(line: 470, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 470, column: 6)
!5931 = !DILocation(line: 470, column: 11, scope: !5930)
!5932 = !DILocation(line: 470, column: 6, scope: !5831)
!5933 = !DILocation(line: 470, column: 26, scope: !5930)
!5934 = !DILocation(line: 471, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 471, column: 6)
!5936 = !DILocation(line: 471, column: 11, scope: !5935)
!5937 = !DILocation(line: 471, column: 6, scope: !5831)
!5938 = !DILocation(line: 471, column: 26, scope: !5935)
!5939 = !DILocation(line: 472, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 472, column: 6)
!5941 = !DILocation(line: 472, column: 11, scope: !5940)
!5942 = !DILocation(line: 472, column: 6, scope: !5831)
!5943 = !DILocation(line: 472, column: 26, scope: !5940)
!5944 = !DILocation(line: 473, column: 6, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 473, column: 6)
!5946 = !DILocation(line: 473, column: 11, scope: !5945)
!5947 = !DILocation(line: 473, column: 6, scope: !5831)
!5948 = !DILocation(line: 473, column: 26, scope: !5945)
!5949 = !DILocation(line: 474, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 474, column: 6)
!5951 = !DILocation(line: 474, column: 11, scope: !5950)
!5952 = !DILocation(line: 474, column: 6, scope: !5831)
!5953 = !DILocation(line: 474, column: 27, scope: !5950)
!5954 = !DILocation(line: 475, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 475, column: 6)
!5956 = !DILocation(line: 475, column: 11, scope: !5955)
!5957 = !DILocation(line: 475, column: 6, scope: !5831)
!5958 = !DILocation(line: 475, column: 32, scope: !5955)
!5959 = !DILocation(line: 477, column: 50, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5831, file: !262, line: 477, column: 6)
!5961 = !DILocation(line: 477, column: 6, scope: !5831)
!5962 = !DILocation(line: 478, column: 3, scope: !5960)
!5963 = !DILocation(line: 478, column: 3, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5965, file: !262, line: 478, column: 3)
!5965 = distinct !DILexicalBlock(scope: !5960, file: !262, line: 478, column: 3)
!5966 = !{i32 -2141922803}
!5967 = !DILocation(line: 478, column: 3, scope: !5965)
!5968 = !DILocation(line: 480, column: 3, scope: !5960)
!5969 = !DILocation(line: 480, column: 3, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5960, file: !262, line: 480, column: 3)
!5971 = !DILocation(line: 480, column: 3, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5970, file: !262, line: 480, column: 3)
!5973 = !DILocation(line: 480, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5970, file: !262, line: 480, column: 3)
!5975 = !{i64 2153044696, i64 2153044725, i64 2153044771, i64 2153044829, i64 2153044883, i64 2153044937, i64 2153044992, i64 2153045023}
!5976 = !DILocation(line: 483, column: 2, scope: !5831)
!5977 = !DILocation(line: 484, column: 1, scope: !5831)
!5978 = !DISubprogram(name: "kmalloc_trace", scope: !262, file: !262, line: 525, type: !5979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!290, !733, !725, !113}
!5981 = distinct !DISubprogram(name: "kmalloc_type", scope: !262, file: !262, line: 401, type: !5982, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !5984)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!261, !725, !117}
!5984 = !{!5985, !5986}
!5985 = !DILocalVariable(name: "flags", arg: 1, scope: !5981, file: !262, line: 401, type: !725)
!5986 = !DILocalVariable(name: "caller", arg: 2, scope: !5981, file: !262, line: 401, type: !117)
!5987 = !DILocation(line: 401, column: 67, scope: !5981)
!5988 = !DILocation(line: 401, column: 88, scope: !5981)
!5989 = !DILocation(line: 407, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5981, file: !262, line: 407, column: 6)
!5991 = !DILocation(line: 407, column: 6, scope: !5981)
!5992 = !DILocation(line: 413, column: 3, scope: !5990)
!5993 = !DILocation(line: 423, column: 38, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5981, file: !262, line: 423, column: 6)
!5995 = !DILocation(line: 423, column: 44, scope: !5994)
!5996 = !DILocation(line: 423, column: 6, scope: !5981)
!5997 = !DILocation(line: 424, column: 3, scope: !5994)
!5998 = !DILocation(line: 426, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5981, file: !262, line: 425, column: 6)
!6000 = !DILocation(line: 429, column: 1, scope: !5981)
!6001 = !DISubprogram(name: "__kmalloc", scope: !262, file: !262, line: 488, type: !5773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = !DISubprogram(name: "__compiletime_assert_227", scope: !262, file: !262, line: 478, type: !2442, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
