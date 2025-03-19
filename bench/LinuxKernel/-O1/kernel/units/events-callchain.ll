; ModuleID = 'kernel/events/callchain.c'
source_filename = "kernel/events/callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.callchain_cpus_entries = type { %struct.callback_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.perf_callchain_entry_ctx = type { ptr, i32, i32, i16, i8 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.15, i64, i64, %union.anon.16 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@sysctl_perf_event_max_stack = hidden global i32 127, section ".data..read_mostly", align 4, !dbg !0
@sysctl_perf_event_max_contexts_per_stack = hidden global i32 8, section ".data..read_mostly", align 4, !dbg !5679
@callchain_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @callchain_mutex, i64 16), ptr getelementptr (i8, ptr @callchain_mutex, i64 16) } }, align 8, !dbg !5696
@nr_callchain_events = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !5692
@.str = private unnamed_addr constant [26 x i8] c"kernel/events/callchain.c\00", align 1, !dbg !5681
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@callchain_recursion = internal global [4 x i32] zeroinitializer, section ".data..percpu", align 16, !dbg !5689
@callchain_cpus_entries = internal global ptr null, align 8, !dbg !5694
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !5686
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@nr_cpu_ids = external dso_local global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5698
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local global [64 x i64], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @perf_callchain_kernel(ptr noundef %entry1, ptr noundef %regs) #0 align 16 !dbg !5712 {
entry:
  %entry.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5724, metadata !DIExpression()), !dbg !5726
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5725, metadata !DIExpression()), !dbg !5727
  ret void, !dbg !5728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @perf_callchain_user(ptr noundef %entry1, ptr noundef %regs) #0 align 16 !dbg !5729 {
entry:
  %entry.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5731, metadata !DIExpression()), !dbg !5733
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5732, metadata !DIExpression()), !dbg !5734
  ret void, !dbg !5735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_callchain_buffers(i32 noundef %event_max_stack) #0 align 16 !dbg !5736 {
entry:
  %event_max_stack.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %count = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %event_max_stack, ptr %event_max_stack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_max_stack.addr, metadata !5738, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5739, metadata !DIExpression()), !dbg !5750
  store i32 0, ptr %err, align 4, !dbg !5750
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !5751
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5740, metadata !DIExpression()), !dbg !5752
  call void @mutex_lock(ptr noundef @callchain_mutex) #16, !dbg !5753
  %call = call i32 @atomic_inc_return(ptr noundef @nr_callchain_events) #16, !dbg !5754
  store i32 %call, ptr %count, align 4, !dbg !5755
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5741, metadata !DIExpression()), !dbg !5756
  %0 = load i32, ptr %count, align 4, !dbg !5756
  %cmp = icmp slt i32 %0, 1, !dbg !5756
  %lnot = xor i1 %cmp, true, !dbg !5756
  %lnot1 = xor i1 %lnot, true, !dbg !5756
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5756
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5756
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5757
  %tobool = icmp ne i32 %1, 0, !dbg !5757
  %lnot2 = xor i1 %tobool, true, !dbg !5757
  %lnot4 = xor i1 %lnot2, true, !dbg !5757
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5757
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5757
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5757
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5757
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5756

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5757

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5744, metadata !DIExpression()), !dbg !5758
  store i32 2307, ptr %__flags, align 4, !dbg !5758
  br label %do.body7, !dbg !5758

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5759

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5759

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5758

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5761
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 116, i32 %2, i64 12) #15, !dbg !5761, !srcloc !5763
  br label %do.cond9, !dbg !5761

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5761

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5758

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5764

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5764

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5757
  br label %do.cond14, !dbg !5758

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5758

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5758

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5756
  %tobool16 = icmp ne i32 %3, 0, !dbg !5756
  %lnot17 = xor i1 %tobool16, true, !dbg !5756
  %lnot19 = xor i1 %lnot17, true, !dbg !5756
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5756
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5756
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5756
  store i64 %expval22, ptr %tmp, align 8, !dbg !5757
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5766
  %4 = load i64, ptr %tmp, align 8, !dbg !5756
  %tobool23 = icmp ne i64 %4, 0, !dbg !5766
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5767

if.then24:                                        ; preds = %if.end
  store i32 -22, ptr %err, align 4, !dbg !5768
  br label %exit, !dbg !5770

if.end25:                                         ; preds = %if.end
  %5 = load i32, ptr %event_max_stack.addr, align 4, !dbg !5771
  %6 = load i32, ptr @sysctl_perf_event_max_stack, align 4, !dbg !5773
  %cmp26 = icmp sgt i32 %5, %6, !dbg !5774
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5775

if.then28:                                        ; preds = %if.end25
  store i32 -75, ptr %err, align 4, !dbg !5776
  br label %exit, !dbg !5778

if.end29:                                         ; preds = %if.end25
  %7 = load i32, ptr %count, align 4, !dbg !5779
  %cmp30 = icmp eq i32 %7, 1, !dbg !5781
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !5782

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 @alloc_callchain_buffers() #16, !dbg !5783
  store i32 %call33, ptr %err, align 4, !dbg !5784
  br label %if.end34, !dbg !5785

if.end34:                                         ; preds = %if.then32, %if.end29
  br label %exit, !dbg !5786

exit:                                             ; preds = %if.end34, %if.then28, %if.then24
  call void @llvm.dbg.label(metadata !5747), !dbg !5787
  %8 = load i32, ptr %err, align 4, !dbg !5788
  %tobool35 = icmp ne i32 %8, 0, !dbg !5788
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5790

if.then36:                                        ; preds = %exit
  call void @atomic_dec(ptr noundef @nr_callchain_events) #16, !dbg !5791
  br label %if.end37, !dbg !5791

if.end37:                                         ; preds = %if.then36, %exit
  call void @mutex_unlock(ptr noundef @callchain_mutex) #16, !dbg !5792
  %9 = load i32, ptr %err, align 4, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5794
  ret i32 %9, !dbg !5795
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5796 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #4 align 16 !dbg !5800 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  br label %do.body, !dbg !5808

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5809

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5811
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5812
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5813
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #16, !dbg !5814
  ret i32 %call, !dbg !5815
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alloc_callchain_buffers() #0 align 16 !dbg !5816 {
entry:
  %retval = alloca i32, align 4
  %cpu = alloca i32, align 4
  %size = alloca i32, align 4
  %entries = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !5824
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5818, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5819, metadata !DIExpression()), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #15, !dbg !5828
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !5820, metadata !DIExpression()), !dbg !5829
  %0 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5830
  %conv = zext i32 %0 to i64, !dbg !5830
  %1 = mul i64 %conv, 8, !dbg !5830
  %2 = add i64 16, %1, !dbg !5830
  %conv1 = trunc i64 %2 to i32, !dbg !5830
  store i32 %conv1, ptr %size, align 4, !dbg !5831
  %3 = load i32, ptr %size, align 4, !dbg !5832
  %conv2 = sext i32 %3 to i64, !dbg !5832
  %call = call noalias ptr @kzalloc(i64 noundef %conv2, i32 noundef 3264) #17, !dbg !5833
  store ptr %call, ptr %entries, align 8, !dbg !5834
  %4 = load ptr, ptr %entries, align 8, !dbg !5835
  %tobool = icmp ne ptr %4, null, !dbg !5835
  br i1 %tobool, label %if.end, label %if.then, !dbg !5837

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %entry
  %call3 = call i64 @perf_callchain_entry__sizeof() #16, !dbg !5839
  %mul = mul i64 %call3, 4, !dbg !5840
  %conv4 = trunc i64 %mul to i32, !dbg !5839
  store i32 %conv4, ptr %size, align 4, !dbg !5841
  store i32 0, ptr %cpu, align 4, !dbg !5842
  br label %for.cond, !dbg !5842

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %cpu, align 4, !dbg !5844
  %conv5 = sext i32 %5 to i64, !dbg !5844
  %call6 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv5) #16, !dbg !5844
  %conv7 = trunc i64 %call6 to i32, !dbg !5844
  store i32 %conv7, ptr %cpu, align 4, !dbg !5844
  %6 = load i32, ptr %cpu, align 4, !dbg !5844
  %cmp = icmp ult i32 %6, 64, !dbg !5844
  br i1 %cmp, label %for.body, label %for.end, !dbg !5842

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %size, align 4, !dbg !5846
  %conv9 = sext i32 %7 to i64, !dbg !5846
  %8 = load i32, ptr %cpu, align 4, !dbg !5848
  %call10 = call i32 @cpu_to_node(i32 noundef %8) #16, !dbg !5849
  %call11 = call noalias ptr @kmalloc_node(i64 noundef %conv9, i32 noundef 3264, i32 noundef %call10) #17, !dbg !5850
  %9 = load ptr, ptr %entries, align 8, !dbg !5851
  %cpu_entries = getelementptr inbounds %struct.callchain_cpus_entries, ptr %9, i32 0, i32 1, !dbg !5852
  %10 = load i32, ptr %cpu, align 4, !dbg !5853
  %idxprom = sext i32 %10 to i64, !dbg !5851
  %arrayidx = getelementptr [0 x ptr], ptr %cpu_entries, i64 0, i64 %idxprom, !dbg !5851
  store ptr %call11, ptr %arrayidx, align 8, !dbg !5854
  %11 = load ptr, ptr %entries, align 8, !dbg !5855
  %cpu_entries12 = getelementptr inbounds %struct.callchain_cpus_entries, ptr %11, i32 0, i32 1, !dbg !5857
  %12 = load i32, ptr %cpu, align 4, !dbg !5858
  %idxprom13 = sext i32 %12 to i64, !dbg !5855
  %arrayidx14 = getelementptr [0 x ptr], ptr %cpu_entries12, i64 0, i64 %idxprom13, !dbg !5855
  %13 = load ptr, ptr %arrayidx14, align 8, !dbg !5855
  %tobool15 = icmp ne ptr %13, null, !dbg !5855
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !5859

if.then16:                                        ; preds = %for.body
  br label %fail, !dbg !5860

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !5861

for.inc:                                          ; preds = %if.end17
  %14 = load i32, ptr %cpu, align 4, !dbg !5844
  %inc = add i32 %14, 1, !dbg !5844
  store i32 %inc, ptr %cpu, align 4, !dbg !5844
  br label %for.cond, !dbg !5844, !llvm.loop !5862

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !5866

do.body:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !5821, metadata !DIExpression()), !dbg !5867
  %15 = load ptr, ptr %entries, align 8, !dbg !5867
  %16 = ptrtoint ptr %15 to i64, !dbg !5867
  store i64 %16, ptr %_r_a_p__v, align 8, !dbg !5867
  br i1 false, label %land.lhs.true, label %if.else, !dbg !5868

land.lhs.true:                                    ; preds = %do.body
  %17 = load i64, ptr %_r_a_p__v, align 8, !dbg !5868
  %cmp18 = icmp eq i64 %17, 0, !dbg !5868
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !5867

if.then20:                                        ; preds = %land.lhs.true
  br label %do.body21, !dbg !5868

do.body21:                                        ; preds = %if.then20
  br label %do.body22, !dbg !5870

do.body22:                                        ; preds = %do.body21
  br label %do.cond, !dbg !5872

do.cond:                                          ; preds = %do.body22
  br label %do.end, !dbg !5872

do.end:                                           ; preds = %do.cond
  br label %do.body23, !dbg !5870

do.body23:                                        ; preds = %do.end
  %18 = load i64, ptr %_r_a_p__v, align 8, !dbg !5874
  %19 = inttoptr i64 %18 to ptr, !dbg !5874
  store volatile ptr %19, ptr @callchain_cpus_entries, align 8, !dbg !5874
  br label %do.cond24, !dbg !5874

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5874

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5870

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5870

do.end27:                                         ; preds = %do.cond26
  br label %if.end49, !dbg !5870

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body28, !dbg !5868

do.body28:                                        ; preds = %if.else
  br label %do.body29, !dbg !5876

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !5878

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5878

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5876

do.body32:                                        ; preds = %do.end31
  br label %do.body33, !dbg !5880

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !5882

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5882

do.end35:                                         ; preds = %do.cond34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5880, !srcloc !5884
  br label %do.body36, !dbg !5880

do.body36:                                        ; preds = %do.end35
  br label %do.body37, !dbg !5885

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !5887

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5887

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !5885

do.body40:                                        ; preds = %do.end39
  %20 = load i64, ptr %_r_a_p__v, align 8, !dbg !5889
  %21 = inttoptr i64 %20 to ptr, !dbg !5889
  store volatile ptr %21, ptr @callchain_cpus_entries, align 8, !dbg !5889
  br label %do.cond41, !dbg !5889

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5889

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !5885

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !5885

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !5880

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5880

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !5876

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5876

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %do.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !5866
  br label %do.cond50, !dbg !5867

do.cond50:                                        ; preds = %if.end49
  br label %do.end51, !dbg !5867

do.end51:                                         ; preds = %do.cond50
  store i32 0, ptr %retval, align 4, !dbg !5891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5891

fail:                                             ; preds = %if.then16
  call void @llvm.dbg.label(metadata !5823), !dbg !5892
  store i32 0, ptr %cpu, align 4, !dbg !5893
  br label %for.cond52, !dbg !5893

for.cond52:                                       ; preds = %for.inc62, %fail
  %22 = load i32, ptr %cpu, align 4, !dbg !5895
  %conv53 = sext i32 %22 to i64, !dbg !5895
  %call54 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv53) #16, !dbg !5895
  %conv55 = trunc i64 %call54 to i32, !dbg !5895
  store i32 %conv55, ptr %cpu, align 4, !dbg !5895
  %23 = load i32, ptr %cpu, align 4, !dbg !5895
  %cmp56 = icmp ult i32 %23, 64, !dbg !5895
  br i1 %cmp56, label %for.body58, label %for.end64, !dbg !5893

for.body58:                                       ; preds = %for.cond52
  %24 = load ptr, ptr %entries, align 8, !dbg !5897
  %cpu_entries59 = getelementptr inbounds %struct.callchain_cpus_entries, ptr %24, i32 0, i32 1, !dbg !5898
  %25 = load i32, ptr %cpu, align 4, !dbg !5899
  %idxprom60 = sext i32 %25 to i64, !dbg !5897
  %arrayidx61 = getelementptr [0 x ptr], ptr %cpu_entries59, i64 0, i64 %idxprom60, !dbg !5897
  %26 = load ptr, ptr %arrayidx61, align 8, !dbg !5897
  call void @kfree(ptr noundef %26) #16, !dbg !5900
  br label %for.inc62, !dbg !5900

for.inc62:                                        ; preds = %for.body58
  %27 = load i32, ptr %cpu, align 4, !dbg !5895
  %inc63 = add i32 %27, 1, !dbg !5895
  store i32 %inc63, ptr %cpu, align 4, !dbg !5895
  br label %for.cond52, !dbg !5895, !llvm.loop !5901

for.end64:                                        ; preds = %for.cond52
  %28 = load ptr, ptr %entries, align 8, !dbg !5903
  call void @kfree(ptr noundef %28) #16, !dbg !5904
  store i32 -12, ptr %retval, align 4, !dbg !5905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5905

cleanup:                                          ; preds = %for.end64, %do.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #15, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !5906
  %29 = load i32, ptr %retval, align 4, !dbg !5906
  ret i32 %29, !dbg !5906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !5907 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5913
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5914
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5915
  call void @raw_atomic_dec(ptr noundef %1) #16, !dbg !5916
  ret void, !dbg !5917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5918 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_callchain_buffers() #0 align 16 !dbg !5919 {
entry:
  %call = call i32 @atomic_dec_and_mutex_lock(ptr noundef @nr_callchain_events, ptr noundef @callchain_mutex) #16, !dbg !5920
  %tobool = icmp ne i32 %call, 0, !dbg !5920
  br i1 %tobool, label %if.then, label %if.end, !dbg !5922

if.then:                                          ; preds = %entry
  call void @release_callchain_buffers() #16, !dbg !5923
  call void @mutex_unlock(ptr noundef @callchain_mutex) #16, !dbg !5925
  br label %if.end, !dbg !5926

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5928 dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_callchain_buffers() #0 align 16 !dbg !5931 {
entry:
  %entries = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #15, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !5933, metadata !DIExpression()), !dbg !5935
  %0 = load ptr, ptr @callchain_cpus_entries, align 8, !dbg !5936
  store ptr %0, ptr %entries, align 8, !dbg !5937
  br label %do.body, !dbg !5938

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5939

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5941

do.body2:                                         ; preds = %do.body1
  br label %do.cond, !dbg !5943

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5943

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5941

do.body3:                                         ; preds = %do.end
  store volatile ptr null, ptr @callchain_cpus_entries, align 8, !dbg !5945
  br label %do.cond4, !dbg !5945

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5945

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !5941

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !5941

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !5939

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !5939

do.end9:                                          ; preds = %do.cond8
  %1 = load ptr, ptr %entries, align 8, !dbg !5947
  %callback_head = getelementptr inbounds %struct.callchain_cpus_entries, ptr %1, i32 0, i32 0, !dbg !5948
  call void @call_rcu(ptr noundef %callback_head, ptr noundef @release_callchain_buffers_rcu) #16, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #15, !dbg !5950
  ret void, !dbg !5950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_callchain_entry(ptr noundef %rctx) #0 align 16 !dbg !5951 {
entry:
  %retval = alloca ptr, align 8
  %rctx.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %entries = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu323 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tcp_ptr__16 = alloca i64, align 8
  %tmp17 = alloca ptr, align 8
  %tmp19 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify21 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store ptr %rctx, ptr %rctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rctx.addr, metadata !5955, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5956, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #15, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !5957, metadata !DIExpression()), !dbg !5983
  br label %do.body, !dbg !5984

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5958, metadata !DIExpression()), !dbg !5985
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5985
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5984
  br label %do.cond, !dbg !5985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5985

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5961, metadata !DIExpression()), !dbg !5986
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @callchain_recursion) #18, !dbg !5986, !srcloc !5987
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !5986
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !5986
  %3 = inttoptr i64 %2 to ptr, !dbg !5986
  store ptr %3, ptr %tmp1, align 8, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !5984
  %4 = load ptr, ptr %tmp1, align 8, !dbg !5986
  store ptr %4, ptr %tmp, align 8, !dbg !5985
  %5 = load ptr, ptr %tmp, align 8, !dbg !5984
  %call = call i32 @get_recursion_context(ptr noundef %5) #16, !dbg !5988
  %6 = load ptr, ptr %rctx.addr, align 8, !dbg !5989
  store i32 %call, ptr %6, align 4, !dbg !5990
  %7 = load ptr, ptr %rctx.addr, align 8, !dbg !5991
  %8 = load i32, ptr %7, align 4, !dbg !5993
  %cmp = icmp eq i32 %8, -1, !dbg !5994
  br i1 %cmp, label %if.then, label %if.end, !dbg !5995

if.then:                                          ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !5996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5996

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu323) #15, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu323, metadata !5963, metadata !DIExpression()), !dbg !5997
  br label %do.body2, !dbg !5998

do.body2:                                         ; preds = %if.end
  br label %do.cond3, !dbg !6000

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6000

do.end4:                                          ; preds = %do.cond3
  %9 = load volatile ptr, ptr @callchain_cpus_entries, align 8, !dbg !5998
  store ptr %9, ptr %tmp5, align 8, !dbg !6000
  %10 = load ptr, ptr %tmp5, align 8, !dbg !5998
  store ptr %10, ptr %__UNIQUE_ID_rcu323, align 8, !dbg !5997
  br label %do.body6, !dbg !5997

do.body6:                                         ; preds = %do.end4
  br label %do.cond7, !dbg !6002

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6002

do.end8:                                          ; preds = %do.cond7
  %11 = load ptr, ptr %__UNIQUE_ID_rcu323, align 8, !dbg !5997
  store ptr %11, ptr %tmp9, align 8, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu323) #15, !dbg !6004
  %12 = load ptr, ptr %tmp9, align 8, !dbg !5997
  store ptr %12, ptr %entries, align 8, !dbg !6005
  %13 = load ptr, ptr %entries, align 8, !dbg !6006
  %tobool = icmp ne ptr %13, null, !dbg !6006
  br i1 %tobool, label %if.end18, label %if.then10, !dbg !6007

if.then10:                                        ; preds = %do.end8
  br label %do.body11, !dbg !6008

do.body11:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #15, !dbg !6009
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !5965, metadata !DIExpression()), !dbg !6009
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !6009
  %14 = load ptr, ptr %__vpp_verify12, align 8, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #15, !dbg !6008
  br label %do.cond13, !dbg !6009

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !6009

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__16) #15, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__16, metadata !5970, metadata !DIExpression()), !dbg !6010
  %15 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @callchain_recursion) #18, !dbg !6010, !srcloc !6011
  store i64 %15, ptr %tcp_ptr__16, align 8, !dbg !6010
  %16 = load i64, ptr %tcp_ptr__16, align 8, !dbg !6010
  %17 = inttoptr i64 %16 to ptr, !dbg !6010
  store ptr %17, ptr %tmp17, align 8, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__16) #15, !dbg !6008
  %18 = load ptr, ptr %tmp17, align 8, !dbg !6010
  store ptr %18, ptr %tmp15, align 8, !dbg !6009
  %19 = load ptr, ptr %tmp15, align 8, !dbg !6008
  %20 = load ptr, ptr %rctx.addr, align 8, !dbg !6012
  %21 = load i32, ptr %20, align 4, !dbg !6013
  call void @put_recursion_context(ptr noundef %19, i32 noundef %21) #16, !dbg !6014
  store ptr null, ptr %retval, align 8, !dbg !6015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6015

if.end18:                                         ; preds = %do.end8
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #16, !dbg !6016
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5972, metadata !DIExpression()), !dbg !6017
  br label %do.body20, !dbg !6017

do.body20:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify21) #15, !dbg !6018
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify21, metadata !5975, metadata !DIExpression()), !dbg !6018
  store ptr null, ptr %__vpp_verify21, align 8, !dbg !6018
  %22 = load ptr, ptr %__vpp_verify21, align 8, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify21) #15, !dbg !6017
  br label %do.cond22, !dbg !6018

do.cond22:                                        ; preds = %do.body20
  br label %do.end23, !dbg !6018

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5977, metadata !DIExpression()), !dbg !6019
  %23 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !6019, !srcloc !6020
  store i32 %23, ptr %pfo_val__, align 4, !dbg !6019
  %24 = load i32, ptr %pfo_val__, align 4, !dbg !6019
  %conv = zext i32 %24 to i64, !dbg !6019
  %conv25 = trunc i64 %conv to i32, !dbg !6019
  store i32 %conv25, ptr %tmp24, align 4, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !6017
  %25 = load i32, ptr %tmp24, align 4, !dbg !6019
  store i32 %25, ptr %pscr_ret__, align 4, !dbg !6017
  %26 = load i32, ptr %pscr_ret__, align 4, !dbg !6017
  store i32 %26, ptr %tmp26, align 4, !dbg !6017
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !6016
  %27 = load i32, ptr %tmp26, align 4, !dbg !6017
  store i32 %27, ptr %tmp19, align 4, !dbg !6016
  %28 = load i32, ptr %tmp19, align 4, !dbg !6016
  store i32 %28, ptr %cpu, align 4, !dbg !6021
  %29 = load ptr, ptr %entries, align 8, !dbg !6022
  %cpu_entries = getelementptr inbounds %struct.callchain_cpus_entries, ptr %29, i32 0, i32 1, !dbg !6023
  %30 = load i32, ptr %cpu, align 4, !dbg !6024
  %idxprom = sext i32 %30 to i64, !dbg !6022
  %arrayidx = getelementptr [0 x ptr], ptr %cpu_entries, i64 0, i64 %idxprom, !dbg !6022
  %31 = load ptr, ptr %arrayidx, align 8, !dbg !6022
  %32 = load ptr, ptr %rctx.addr, align 8, !dbg !6025
  %33 = load i32, ptr %32, align 4, !dbg !6026
  %conv27 = sext i32 %33 to i64, !dbg !6026
  %call28 = call i64 @perf_callchain_entry__sizeof() #16, !dbg !6027
  %mul = mul i64 %conv27, %call28, !dbg !6028
  %add.ptr = getelementptr i8, ptr %31, i64 %mul, !dbg !6029
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6030

cleanup:                                          ; preds = %do.end23, %do.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #15, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !6031
  %34 = load ptr, ptr %retval, align 8, !dbg !6031
  ret ptr %34, !dbg !6031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_recursion_context(ptr noundef %recursion) #6 align 16 !dbg !6032 {
entry:
  %retval = alloca i32, align 4
  %recursion.addr = alloca ptr, align 8
  %rctx = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %recursion, ptr %recursion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recursion.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 1, ptr %rctx) #15, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6037, metadata !DIExpression()), !dbg !6040
  %call = call zeroext i8 @interrupt_context_level() #16, !dbg !6041
  store i8 %call, ptr %rctx, align 1, !dbg !6040
  %0 = load ptr, ptr %recursion.addr, align 8, !dbg !6042
  %1 = load i8, ptr %rctx, align 1, !dbg !6044
  %idxprom = zext i8 %1 to i64, !dbg !6042
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom, !dbg !6042
  %2 = load i32, ptr %arrayidx, align 4, !dbg !6042
  %tobool = icmp ne i32 %2, 0, !dbg !6042
  br i1 %tobool, label %if.then, label %if.end, !dbg !6045

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !6046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6046

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %recursion.addr, align 8, !dbg !6047
  %4 = load i8, ptr %rctx, align 1, !dbg !6048
  %idxprom1 = zext i8 %4 to i64, !dbg !6047
  %arrayidx2 = getelementptr i32, ptr %3, i64 %idxprom1, !dbg !6047
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !6049
  %inc = add i32 %5, 1, !dbg !6049
  store i32 %inc, ptr %arrayidx2, align 4, !dbg !6049
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6050, !srcloc !6051
  %6 = load i8, ptr %rctx, align 1, !dbg !6052
  %conv = zext i8 %6 to i32, !dbg !6052
  store i32 %conv, ptr %retval, align 4, !dbg !6053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6053

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %rctx) #15, !dbg !6054
  %7 = load i32, ptr %retval, align 4, !dbg !6054
  ret i32 %7, !dbg !6054
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_recursion_context(ptr noundef %recursion, i32 noundef %rctx) #6 align 16 !dbg !6055 {
entry:
  %recursion.addr = alloca ptr, align 8
  %rctx.addr = alloca i32, align 4
  store ptr %recursion, ptr %recursion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recursion.addr, metadata !6059, metadata !DIExpression()), !dbg !6061
  store i32 %rctx, ptr %rctx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rctx.addr, metadata !6060, metadata !DIExpression()), !dbg !6062
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6063, !srcloc !6064
  %0 = load ptr, ptr %recursion.addr, align 8, !dbg !6065
  %1 = load i32, ptr %rctx.addr, align 4, !dbg !6066
  %idxprom = sext i32 %1 to i64, !dbg !6065
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom, !dbg !6065
  %2 = load i32, ptr %arrayidx, align 4, !dbg !6067
  %dec = add i32 %2, -1, !dbg !6067
  store i32 %dec, ptr %arrayidx, align 4, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !6069 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  ret void, !dbg !6076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @perf_callchain_entry__sizeof() #6 align 16 !dbg !6077 {
entry:
  %0 = load i32, ptr @sysctl_perf_event_max_stack, align 4, !dbg !6080
  %1 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4, !dbg !6081
  %add = add i32 %0, %1, !dbg !6082
  %conv = sext i32 %add to i64, !dbg !6083
  %mul = mul i64 8, %conv, !dbg !6084
  %add1 = add i64 8, %mul, !dbg !6085
  ret i64 %add1, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_callchain_entry(i32 noundef %rctx) #0 align 16 !dbg !6087 {
entry:
  %rctx.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %rctx, ptr %rctx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rctx.addr, metadata !6089, metadata !DIExpression()), !dbg !6095
  br label %do.body, !dbg !6096

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6097
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6090, metadata !DIExpression()), !dbg !6097
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6097
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6096
  br label %do.end, !dbg !6097

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6093, metadata !DIExpression()), !dbg !6098
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @callchain_recursion) #18, !dbg !6098, !srcloc !6099
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6098
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6098
  %3 = inttoptr i64 %2 to ptr, !dbg !6098
  store ptr %3, ptr %tmp1, align 8, !dbg !6098
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !6096
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6098
  store ptr %4, ptr %tmp, align 8, !dbg !6097
  %5 = load ptr, ptr %tmp, align 8, !dbg !6096
  %6 = load i32, ptr %rctx.addr, align 4, !dbg !6100
  call void @put_recursion_context(ptr noundef %5, i32 noundef %6) #16, !dbg !6101
  ret void, !dbg !6102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_perf_callchain(ptr noundef %regs, i32 noundef %init_nr, i1 noundef zeroext %kernel, i1 noundef zeroext %user, i32 noundef %max_stack, i1 noundef zeroext %crosstask, i1 noundef zeroext %add_mark) #0 align 16 !dbg !6103 {
entry:
  %retval = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %init_nr.addr = alloca i32, align 4
  %kernel.addr = alloca i8, align 1
  %user.addr = alloca i8, align 1
  %max_stack.addr = alloca i32, align 4
  %crosstask.addr = alloca i8, align 1
  %add_mark.addr = alloca i8, align 1
  %entry4 = alloca ptr, align 8
  %ctx = alloca %struct.perf_callchain_entry_ctx, align 8
  %rctx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6107, metadata !DIExpression()), !dbg !6125
  store i32 %init_nr, ptr %init_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %init_nr.addr, metadata !6108, metadata !DIExpression()), !dbg !6126
  %frombool = zext i1 %kernel to i8
  store i8 %frombool, ptr %kernel.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %kernel.addr, metadata !6109, metadata !DIExpression()), !dbg !6127
  %frombool1 = zext i1 %user to i8
  store i8 %frombool1, ptr %user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6110, metadata !DIExpression()), !dbg !6128
  store i32 %max_stack, ptr %max_stack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_stack.addr, metadata !6111, metadata !DIExpression()), !dbg !6129
  %frombool2 = zext i1 %crosstask to i8
  store i8 %frombool2, ptr %crosstask.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %crosstask.addr, metadata !6112, metadata !DIExpression()), !dbg !6130
  %frombool3 = zext i1 %add_mark to i8
  store i8 %frombool3, ptr %add_mark.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %add_mark.addr, metadata !6113, metadata !DIExpression()), !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry4) #15, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %entry4, metadata !6114, metadata !DIExpression()), !dbg !6133
  call void @llvm.lifetime.start.p0(i64 24, ptr %ctx) #15, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6115, metadata !DIExpression()), !dbg !6135
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #15, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6116, metadata !DIExpression()), !dbg !6137
  %call = call ptr @get_callchain_entry(ptr noundef %rctx) #16, !dbg !6138
  store ptr %call, ptr %entry4, align 8, !dbg !6139
  %0 = load ptr, ptr %entry4, align 8, !dbg !6140
  %tobool = icmp ne ptr %0, null, !dbg !6140
  br i1 %tobool, label %if.end, label %if.then, !dbg !6142

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6143

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry4, align 8, !dbg !6144
  %entry5 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 0, !dbg !6145
  store ptr %1, ptr %entry5, align 8, !dbg !6146
  %2 = load i32, ptr %max_stack.addr, align 4, !dbg !6147
  %max_stack6 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 1, !dbg !6148
  store i32 %2, ptr %max_stack6, align 8, !dbg !6149
  %3 = load i32, ptr %init_nr.addr, align 4, !dbg !6150
  %conv = zext i32 %3 to i64, !dbg !6150
  %4 = load ptr, ptr %entry4, align 8, !dbg !6151
  %nr = getelementptr inbounds %struct.perf_callchain_entry, ptr %4, i32 0, i32 0, !dbg !6152
  store i64 %conv, ptr %nr, align 8, !dbg !6153
  %conv7 = trunc i64 %conv to i32, !dbg !6151
  %nr8 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 2, !dbg !6154
  store i32 %conv7, ptr %nr8, align 4, !dbg !6155
  %contexts = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 3, !dbg !6156
  store i16 0, ptr %contexts, align 8, !dbg !6157
  %contexts_maxed = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 4, !dbg !6158
  store i8 0, ptr %contexts_maxed, align 2, !dbg !6159
  %5 = load i8, ptr %kernel.addr, align 1, !dbg !6160, !range !6162, !noundef !694
  %tobool9 = trunc i8 %5 to i1, !dbg !6160
  br i1 %tobool9, label %land.lhs.true, label %if.end18, !dbg !6163

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6164
  %call11 = call i32 @user_mode(ptr noundef %6) #16, !dbg !6165
  %tobool12 = icmp ne i32 %call11, 0, !dbg !6165
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !6166

if.then13:                                        ; preds = %land.lhs.true
  %7 = load i8, ptr %add_mark.addr, align 1, !dbg !6167, !range !6162, !noundef !694
  %tobool14 = trunc i8 %7 to i1, !dbg !6167
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !6170

if.then15:                                        ; preds = %if.then13
  %call16 = call i32 @perf_callchain_store_context(ptr noundef %ctx, i64 noundef -128) #16, !dbg !6171
  br label %if.end17, !dbg !6171

if.end17:                                         ; preds = %if.then15, %if.then13
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6172
  call void @perf_callchain_kernel(ptr noundef %ctx, ptr noundef %8) #16, !dbg !6173
  br label %if.end18, !dbg !6174

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.end
  %9 = load i8, ptr %user.addr, align 1, !dbg !6175, !range !6162, !noundef !694
  %tobool19 = trunc i8 %9 to i1, !dbg !6175
  br i1 %tobool19, label %if.then20, label %if.end41, !dbg !6176

if.then20:                                        ; preds = %if.end18
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6177
  %call21 = call i32 @user_mode(ptr noundef %10) #16, !dbg !6178
  %tobool22 = icmp ne i32 %call21, 0, !dbg !6178
  br i1 %tobool22, label %if.end30, label %if.then23, !dbg !6179

if.then23:                                        ; preds = %if.then20
  %call24 = call ptr @get_current() #16, !dbg !6180
  %mm = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 49, !dbg !6181
  %11 = load ptr, ptr %mm, align 64, !dbg !6181
  %tobool25 = icmp ne ptr %11, null, !dbg !6180
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !6182

if.then26:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6117, metadata !DIExpression()), !dbg !6183
  %call27 = call ptr @get_current() #16, !dbg !6183
  %call28 = call ptr @task_stack_page(ptr noundef %call27) #16, !dbg !6183
  %12 = ptrtoint ptr %call28 to i64, !dbg !6183
  store i64 %12, ptr %__ptr, align 8, !dbg !6183
  %13 = load i64, ptr %__ptr, align 8, !dbg !6183
  %add = add i64 %13, 16384, !dbg !6183
  store i64 %add, ptr %__ptr, align 8, !dbg !6183
  %14 = load i64, ptr %__ptr, align 8, !dbg !6183
  %15 = inttoptr i64 %14 to ptr, !dbg !6183
  %add.ptr = getelementptr %struct.pt_regs, ptr %15, i64 -1, !dbg !6183
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6184
  %16 = load ptr, ptr %tmp, align 8, !dbg !6183
  store ptr %16, ptr %regs.addr, align 8, !dbg !6185
  br label %if.end29, !dbg !6186

if.else:                                          ; preds = %if.then23
  store ptr null, ptr %regs.addr, align 8, !dbg !6187
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %if.end30, !dbg !6188

if.end30:                                         ; preds = %if.end29, %if.then20
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !6189
  %tobool31 = icmp ne ptr %17, null, !dbg !6189
  br i1 %tobool31, label %if.then32, label %if.end40, !dbg !6191

if.then32:                                        ; preds = %if.end30
  %18 = load i8, ptr %crosstask.addr, align 1, !dbg !6192, !range !6162, !noundef !694
  %tobool33 = trunc i8 %18 to i1, !dbg !6192
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6195

if.then34:                                        ; preds = %if.then32
  br label %exit_put, !dbg !6196

if.end35:                                         ; preds = %if.then32
  %19 = load i8, ptr %add_mark.addr, align 1, !dbg !6197, !range !6162, !noundef !694
  %tobool36 = trunc i8 %19 to i1, !dbg !6197
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !6199

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 @perf_callchain_store_context(ptr noundef %ctx, i64 noundef -512) #16, !dbg !6200
  br label %if.end39, !dbg !6200

if.end39:                                         ; preds = %if.then37, %if.end35
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !6201
  call void @perf_callchain_user(ptr noundef %ctx, ptr noundef %20) #16, !dbg !6202
  br label %if.end40, !dbg !6203

if.end40:                                         ; preds = %if.end39, %if.end30
  br label %if.end41, !dbg !6204

if.end41:                                         ; preds = %if.end40, %if.end18
  br label %exit_put, !dbg !6175

exit_put:                                         ; preds = %if.end41, %if.then34
  call void @llvm.dbg.label(metadata !6124), !dbg !6205
  %21 = load i32, ptr %rctx, align 4, !dbg !6206
  call void @put_callchain_entry(i32 noundef %21) #16, !dbg !6207
  %22 = load ptr, ptr %entry4, align 8, !dbg !6208
  store ptr %22, ptr %retval, align 8, !dbg !6209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6209

cleanup:                                          ; preds = %exit_put, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #15, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 24, ptr %ctx) #15, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry4) #15, !dbg !6210
  %23 = load ptr, ptr %retval, align 8, !dbg !6210
  ret ptr %23, !dbg !6210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #4 align 16 !dbg !6211 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6217
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !6218
  %2 = load i16, ptr %1, align 8, !dbg !6218
  %conv = zext i16 %2 to i32, !dbg !6217
  %and = and i32 %conv, 3, !dbg !6219
  %tobool = icmp ne i32 %and, 0, !dbg !6220
  %lnot = xor i1 %tobool, true, !dbg !6220
  %lnot1 = xor i1 %lnot, true, !dbg !6221
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6221
  ret i32 %lnot.ext, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_callchain_store_context(ptr noundef %ctx, i64 noundef %ip) #6 align 16 !dbg !6223 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %entry2 = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6227, metadata !DIExpression()), !dbg !6232
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6228, metadata !DIExpression()), !dbg !6233
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6234
  %contexts = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %0, i32 0, i32 3, !dbg !6235
  %1 = load i16, ptr %contexts, align 8, !dbg !6235
  %conv = sext i16 %1 to i32, !dbg !6234
  %2 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4, !dbg !6236
  %cmp = icmp slt i32 %conv, %2, !dbg !6237
  br i1 %cmp, label %if.then, label %if.else, !dbg !6238

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #15, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6229, metadata !DIExpression()), !dbg !6240
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6241
  %entry3 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %3, i32 0, i32 0, !dbg !6242
  %4 = load ptr, ptr %entry3, align 8, !dbg !6242
  store ptr %4, ptr %entry2, align 8, !dbg !6240
  %5 = load i64, ptr %ip.addr, align 8, !dbg !6243
  %6 = load ptr, ptr %entry2, align 8, !dbg !6244
  %ip4 = getelementptr inbounds %struct.perf_callchain_entry, ptr %6, i32 0, i32 1, !dbg !6245
  %7 = load ptr, ptr %entry2, align 8, !dbg !6246
  %nr = getelementptr inbounds %struct.perf_callchain_entry, ptr %7, i32 0, i32 0, !dbg !6247
  %8 = load i64, ptr %nr, align 8, !dbg !6248
  %inc = add i64 %8, 1, !dbg !6248
  store i64 %inc, ptr %nr, align 8, !dbg !6248
  %arrayidx = getelementptr [0 x i64], ptr %ip4, i64 0, i64 %8, !dbg !6244
  store i64 %5, ptr %arrayidx, align 8, !dbg !6249
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6250
  %contexts5 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %9, i32 0, i32 3, !dbg !6251
  %10 = load i16, ptr %contexts5, align 8, !dbg !6252
  %inc6 = add i16 %10, 1, !dbg !6252
  store i16 %inc6, ptr %contexts5, align 8, !dbg !6252
  store i32 0, ptr %retval, align 4, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #15, !dbg !6254
  br label %return

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6255
  %contexts_maxed = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %11, i32 0, i32 4, !dbg !6257
  store i8 1, ptr %contexts_maxed, align 2, !dbg !6258
  store i32 -1, ptr %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !6260
  ret i32 %12, !dbg !6260
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6261 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6266, metadata !DIExpression()), !dbg !6272
  br label %do.body, !dbg !6272

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6268, metadata !DIExpression()), !dbg !6273
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6273
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6272
  br label %do.cond, !dbg !6273

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6273

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6274
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6270, metadata !DIExpression()), !dbg !6274
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !6274, !srcloc !6275
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6274
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6274
  %3 = inttoptr i64 %2 to ptr, !dbg !6274
  store ptr %3, ptr %tmp, align 8, !dbg !6274
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6272
  %4 = load ptr, ptr %tmp, align 8, !dbg !6274
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6272
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6272
  store ptr %5, ptr %tmp1, align 8, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6276
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6272
  ret ptr %6, !dbg !6277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #4 align 16 !dbg !6278 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6287
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !6288
  %1 = load ptr, ptr %stack, align 32, !dbg !6288
  ret ptr %1, !dbg !6289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @perf_event_max_stack_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !6290 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %new_value = alloca i32, align 4
  %ret = alloca i32, align 4
  %new_table = alloca %struct.ctl_table, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !6292, metadata !DIExpression()), !dbg !6301
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6293, metadata !DIExpression()), !dbg !6302
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6294, metadata !DIExpression()), !dbg !6303
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !6295, metadata !DIExpression()), !dbg !6304
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6296, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6297, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %table.addr, align 8, !dbg !6308
  %data = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1, !dbg !6309
  %1 = load ptr, ptr %data, align 8, !dbg !6309
  store ptr %1, ptr %value, align 8, !dbg !6307
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_value) #15, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %new_value, metadata !6298, metadata !DIExpression()), !dbg !6311
  %2 = load ptr, ptr %value, align 8, !dbg !6312
  %3 = load i32, ptr %2, align 4, !dbg !6313
  store i32 %3, ptr %new_value, align 4, !dbg !6311
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6299, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 64, ptr %new_table) #15, !dbg !6315
  call void @llvm.dbg.declare(metadata ptr %new_table, metadata !6300, metadata !DIExpression()), !dbg !6316
  %4 = load ptr, ptr %table.addr, align 8, !dbg !6317
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new_table, ptr align 8 %4, i64 64, i1 false), !dbg !6318
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %new_table, i32 0, i32 1, !dbg !6319
  store ptr %new_value, ptr %data1, align 8, !dbg !6320
  %5 = load i32, ptr %write.addr, align 4, !dbg !6321
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !6322
  %7 = load ptr, ptr %lenp.addr, align 8, !dbg !6323
  %8 = load ptr, ptr %ppos.addr, align 8, !dbg !6324
  %call = call i32 @proc_dointvec_minmax(ptr noundef %new_table, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #16, !dbg !6325
  store i32 %call, ptr %ret, align 4, !dbg !6326
  %9 = load i32, ptr %ret, align 4, !dbg !6327
  %tobool = icmp ne i32 %9, 0, !dbg !6327
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6329

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, ptr %write.addr, align 4, !dbg !6330
  %tobool2 = icmp ne i32 %10, 0, !dbg !6330
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6331

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i32, ptr %ret, align 4, !dbg !6332
  store i32 %11, ptr %retval, align 4, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @callchain_mutex) #16, !dbg !6334
  %call3 = call i32 @atomic_read(ptr noundef @nr_callchain_events) #16, !dbg !6335
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6335
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6337

if.then5:                                         ; preds = %if.end
  store i32 -16, ptr %ret, align 4, !dbg !6338
  br label %if.end6, !dbg !6339

if.else:                                          ; preds = %if.end
  %12 = load i32, ptr %new_value, align 4, !dbg !6340
  %13 = load ptr, ptr %value, align 8, !dbg !6341
  store i32 %12, ptr %13, align 4, !dbg !6342
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  call void @mutex_unlock(ptr noundef @callchain_mutex) #16, !dbg !6343
  %14 = load i32, ptr %ret, align 4, !dbg !6344
  store i32 %14, ptr %retval, align 4, !dbg !6345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6345

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %new_table) #15, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_value) #15, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15, !dbg !6346
  %15 = load i32, ptr %retval, align 4, !dbg !6346
  ret i32 %15, !dbg !6346
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6347 dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !6348 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6356
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !6357
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6358
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !6359
  ret i32 %call, !dbg !6360
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6361 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6369, metadata !DIExpression()), !dbg !6371
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6373
  %1 = load i64, ptr %size.addr, align 8, !dbg !6374
  %conv = trunc i64 %1 to i32, !dbg !6374
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6375
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6376
  %3 = load i64, ptr %size.addr, align 8, !dbg !6376
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6376
  ret void, !dbg !6377
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #4 align 16 !dbg !6378 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6383
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #16, !dbg !6384
  ret i32 %call, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6386 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6392, metadata !DIExpression()), !dbg !6394
  ret i1 true, !dbg !6395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6396 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6401, metadata !DIExpression()), !dbg !6404
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6402, metadata !DIExpression()), !dbg !6405
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6403, metadata !DIExpression()), !dbg !6406
  ret void, !dbg !6407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6408 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6412, metadata !DIExpression()), !dbg !6414
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6413, metadata !DIExpression()), !dbg !6415
  %0 = load i32, ptr %i.addr, align 4, !dbg !6416
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6417
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #16, !dbg !6418
  ret i32 %call, !dbg !6419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6420 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6423, metadata !DIExpression()), !dbg !6427
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6424, metadata !DIExpression()), !dbg !6428
  %0 = load i32, ptr %i.addr, align 4, !dbg !6429
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6425, metadata !DIExpression()), !dbg !6430
  %1 = load i32, ptr %i.addr, align 4, !dbg !6430
  store i32 %1, ptr %__ret, align 4, !dbg !6430
  %2 = load i32, ptr %__ret, align 4, !dbg !6430
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6430
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6430
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #15, !dbg !6430, !srcloc !6431
  store i32 %4, ptr %__ret, align 4, !dbg !6430
  %5 = load i32, ptr %__ret, align 4, !dbg !6430
  store i32 %5, ptr %tmp, align 4, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !6432
  %6 = load i32, ptr %tmp, align 4, !dbg !6430
  %add = add i32 %0, %6, !dbg !6433
  ret i32 %add, !dbg !6434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6435 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6439, metadata !DIExpression()), !dbg !6441
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6440, metadata !DIExpression()), !dbg !6442
  %0 = load i64, ptr %size.addr, align 8, !dbg !6443
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6444
  %or = or i32 %1, 256, !dbg !6445
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6446
  ret ptr %call, !dbg !6447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !6448 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6454, metadata !DIExpression()), !dbg !6460
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6455, metadata !DIExpression()), !dbg !6461
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6456, metadata !DIExpression()), !dbg !6462
  %0 = load i64, ptr %size.addr, align 8, !dbg !6463
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6463
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6463

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6463
  %cmp = icmp ule i64 %2, 64, !dbg !6463
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6463

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6463
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6463
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6464

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !6465
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6457, metadata !DIExpression()), !dbg !6466
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6467
  %5 = load i64, ptr %size.addr, align 8, !dbg !6467
  %cmp3 = icmp uge i64 %4, %5, !dbg !6467
  %lnot = xor i1 %cmp3, true, !dbg !6467
  %lnot4 = xor i1 %lnot, true, !dbg !6467
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6467
  %conv = sext i32 %lnot.ext to i64, !dbg !6467
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6467
  %tobool = icmp ne i64 %expval, 0, !dbg !6467
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6469

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6470
  store i64 %6, ptr %retval, align 8, !dbg !6471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6471

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6472
  %8 = load i64, ptr %7, align 8, !dbg !6473
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6474
  %shl = shl i64 1, %9, !dbg !6474
  %sub = sub i64 -1, %shl, !dbg !6474
  %add = add i64 %sub, 1, !dbg !6474
  %10 = load i64, ptr %size.addr, align 8, !dbg !6474
  %sub6 = sub i64 %10, 1, !dbg !6474
  %sub7 = sub i64 63, %sub6, !dbg !6474
  %shr = lshr i64 -1, %sub7, !dbg !6474
  %and = and i64 %add, %shr, !dbg !6474
  %add8 = add i64 0, %and, !dbg !6474
  %and9 = and i64 %8, %add8, !dbg !6475
  store i64 %and9, ptr %val, align 8, !dbg !6476
  %11 = load i64, ptr %val, align 8, !dbg !6477
  %tobool10 = icmp ne i64 %11, 0, !dbg !6477
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6477

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6478
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6478
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6478

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6478
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6478
  %cast = trunc i64 %15 to i32, !dbg !6478
  %conv12 = sext i32 %cast to i64, !dbg !6478
  br label %cond.end, !dbg !6478

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6478
  %call = call i64 @variable__ffs(i64 noundef %16) #16, !dbg !6478
  br label %cond.end, !dbg !6478

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6478
  br label %cond.end14, !dbg !6477

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6479
  br label %cond.end14, !dbg !6477

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6477
  store i64 %cond15, ptr %retval, align 8, !dbg !6480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6480

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !6481
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6482
  %19 = load i64, ptr %size.addr, align 8, !dbg !6483
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6484
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #16, !dbg !6485
  store i64 %call17, ptr %retval, align 8, !dbg !6486
  br label %return, !dbg !6486

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6487
  ret i64 %21, !dbg !6487
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #9 align 16 !dbg !6488 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6492, metadata !DIExpression()), !dbg !6498
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6493, metadata !DIExpression()), !dbg !6499
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6494, metadata !DIExpression()), !dbg !6500
  %0 = load i64, ptr %size.addr, align 8, !dbg !6501
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6502
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6503

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6504
  %tobool = icmp ne i64 %2, 0, !dbg !6504
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6505

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6506
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6495, metadata !DIExpression()), !dbg !6507
  %3 = load i64, ptr %size.addr, align 8, !dbg !6508
  %cmp = icmp ugt i64 %3, 8192, !dbg !6510
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6511

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6512
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6513
  %6 = load i32, ptr %node.addr, align 4, !dbg !6514
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #17, !dbg !6515
  store ptr %call, ptr %retval, align 8, !dbg !6516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6516

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !6517
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #16, !dbg !6517
  store i32 %call2, ptr %index, align 4, !dbg !6518
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6519
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !6520
  %10 = ptrtoint ptr %9 to i64, !dbg !6520
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #16, !dbg !6521
  %idxprom = zext i32 %call3 to i64, !dbg !6522
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6522
  %11 = load i32, ptr %index, align 4, !dbg !6523
  %idxprom4 = zext i32 %11 to i64, !dbg !6522
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6522
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !6522
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6524
  %14 = load i32, ptr %node.addr, align 4, !dbg !6525
  %15 = load i64, ptr %size.addr, align 8, !dbg !6526
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #20, !dbg !6527
  store ptr %call6, ptr %retval, align 8, !dbg !6528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6528

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6529
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !6530
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6531
  %18 = load i32, ptr %node.addr, align 4, !dbg !6532
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #17, !dbg !6533
  store ptr %call8, ptr %retval, align 8, !dbg !6534
  br label %return, !dbg !6534

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !6535
  ret ptr %19, !dbg !6535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #6 align 16 !dbg !6536 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6539, metadata !DIExpression()), !dbg !6545
  br label %do.body, !dbg !6546

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6540, metadata !DIExpression()), !dbg !6547
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6547
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6547
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6546
  br label %do.end, !dbg !6547

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6543, metadata !DIExpression()), !dbg !6548
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !6548
  %1 = load i64, ptr %__ptr, align 8, !dbg !6548
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6548
  %idxprom = sext i32 %2 to i64, !dbg !6548
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6548
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6548
  %add = add i64 %1, %3, !dbg !6548
  %4 = inttoptr i64 %add to ptr, !dbg !6548
  store ptr %4, ptr %tmp1, align 8, !dbg !6548
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6546
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6548
  store ptr %5, ptr %tmp, align 8, !dbg !6547
  %6 = load ptr, ptr %tmp, align 8, !dbg !6546
  %7 = load i32, ptr %6, align 4, !dbg !6549
  ret i32 %7, !dbg !6550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6551 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6554 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6556, metadata !DIExpression()), !dbg !6561
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6557, metadata !DIExpression()), !dbg !6562
  %0 = load i64, ptr %size.addr, align 8, !dbg !6563
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6564
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6565

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6566
  %tobool = icmp ne i64 %2, 0, !dbg !6566
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6567

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6558, metadata !DIExpression()), !dbg !6569
  %3 = load i64, ptr %size.addr, align 8, !dbg !6570
  %cmp = icmp ugt i64 %3, 8192, !dbg !6572
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6573

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6574
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6575
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6576
  store ptr %call, ptr %retval, align 8, !dbg !6577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6577

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6578
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6578
  store i32 %call2, ptr %index, align 4, !dbg !6579
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6580
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6581
  %9 = ptrtoint ptr %8 to i64, !dbg !6581
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6582
  %idxprom = zext i32 %call3 to i64, !dbg !6583
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6583
  %10 = load i32, ptr %index, align 4, !dbg !6584
  %idxprom4 = zext i32 %10 to i64, !dbg !6583
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6583
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6583
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6585
  %13 = load i64, ptr %size.addr, align 8, !dbg !6586
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6587
  store ptr %call6, ptr %retval, align 8, !dbg !6588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6588

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6589
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6590
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6591
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6592
  store ptr %call8, ptr %retval, align 8, !dbg !6593
  br label %return, !dbg !6593

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6594
  ret ptr %16, !dbg !6594
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6595 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6596 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6600, metadata !DIExpression()), !dbg !6602
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  %0 = load i64, ptr %size.addr, align 8, !dbg !6604
  %tobool = icmp ne i64 %0, 0, !dbg !6604
  br i1 %tobool, label %if.end, label %if.then, !dbg !6606

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6607
  br label %return, !dbg !6607

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6608
  %cmp = icmp ule i64 %1, 8, !dbg !6610
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6611

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6612
  br label %return, !dbg !6612

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6613
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6615
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6616

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6617
  %cmp4 = icmp ule i64 %3, 96, !dbg !6618
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6619

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6621
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6623
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6624

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6625
  %cmp9 = icmp ule i64 %5, 192, !dbg !6626
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6627

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6628
  br label %return, !dbg !6628

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6629
  %cmp12 = icmp ule i64 %6, 8, !dbg !6631
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6632

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6633
  br label %return, !dbg !6633

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6634
  %cmp15 = icmp ule i64 %7, 16, !dbg !6636
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6637

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6638
  br label %return, !dbg !6638

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6639
  %cmp18 = icmp ule i64 %8, 32, !dbg !6641
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6642

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6643
  br label %return, !dbg !6643

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6644
  %cmp21 = icmp ule i64 %9, 64, !dbg !6646
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6647

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6648
  br label %return, !dbg !6648

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6649
  %cmp24 = icmp ule i64 %10, 128, !dbg !6651
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6652

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6654
  %cmp27 = icmp ule i64 %11, 256, !dbg !6656
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6657

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6659
  %cmp30 = icmp ule i64 %12, 512, !dbg !6661
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6662

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6663
  br label %return, !dbg !6663

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6664
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6666
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6667

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6668
  br label %return, !dbg !6668

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6669
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6671
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6672

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6673
  br label %return, !dbg !6673

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6674
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6676
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6677

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6678
  br label %return, !dbg !6678

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6679
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6681
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6682

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6683
  br label %return, !dbg !6683

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6684
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6686
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6687

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6688
  br label %return, !dbg !6688

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6689
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6691
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6692

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6693
  br label %return, !dbg !6693

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6696
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6697

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6701
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6702

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6704
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6706
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6707

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6708
  br label %return, !dbg !6708

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6709
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6711
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6712

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6713
  br label %return, !dbg !6713

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6714
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6716
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6717

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6718
  br label %return, !dbg !6718

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6719
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6721
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6722

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6724, !range !6162, !noundef !694
  %tobool69 = trunc i8 %25 to i1, !dbg !6724
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6726

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6727

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_227() #22, !dbg !6728, !srcloc !6731
  unreachable, !dbg !6728

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6732

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6733

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6734

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6736

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6734

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !6738, !srcloc !6740
  br label %do.end75, !dbg !6738

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6734

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6742
  ret i32 %26, !dbg !6742
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6743 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6746 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6754
  %and = and i32 %0, 17, !dbg !6754
  %cmp = icmp eq i32 %and, 0, !dbg !6754
  %lnot = xor i1 %cmp, true, !dbg !6754
  %lnot1 = xor i1 %lnot, true, !dbg !6754
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6754
  %conv = sext i32 %lnot.ext to i64, !dbg !6754
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6754
  %tobool = icmp ne i64 %expval, 0, !dbg !6754
  br i1 %tobool, label %if.then, label %if.end, !dbg !6756

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6758
  %and2 = and i32 %1, 1, !dbg !6760
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6760
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6761

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6763
  br label %return, !dbg !6763

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6765
  ret i32 %2, !dbg !6765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6766 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6767 dso_local void @__compiletime_assert_227() #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !6768 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6773, metadata !DIExpression()), !dbg !6774
  %0 = load i64, ptr %word.addr, align 8, !dbg !6775
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !6776, !srcloc !6777
  store i64 %1, ptr %word.addr, align 8, !dbg !6776
  %2 = load i64, ptr %word.addr, align 8, !dbg !6778
  ret i64 %2, !dbg !6779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6780 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6781 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !6782 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6785 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6786 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6788, metadata !DIExpression()), !dbg !6789
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6790
  call void @arch_atomic_dec(ptr noundef %0) #16, !dbg !6791
  ret void, !dbg !6792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6793 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6795, metadata !DIExpression()), !dbg !6796
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6797
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6798
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6799, !srcloc !6800
  ret void, !dbg !6801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6802 dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_callchain_buffers_rcu(ptr noundef %head) #0 align 16 !dbg !6807 {
entry:
  %head.addr = alloca ptr, align 8
  %entries = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6809, metadata !DIExpression()), !dbg !6814
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #15, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !6810, metadata !DIExpression()), !dbg !6816
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6811, metadata !DIExpression()), !dbg !6818
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6819
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6812, metadata !DIExpression()), !dbg !6819
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6819
  store ptr %0, ptr %__mptr, align 8, !dbg !6819
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6819
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6819
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6819
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6820
  %2 = load ptr, ptr %tmp, align 8, !dbg !6819
  store ptr %2, ptr %entries, align 8, !dbg !6821
  store i32 0, ptr %cpu, align 4, !dbg !6822
  br label %for.cond, !dbg !6822

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %cpu, align 4, !dbg !6824
  %conv = sext i32 %3 to i64, !dbg !6824
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #16, !dbg !6824
  %conv1 = trunc i64 %call to i32, !dbg !6824
  store i32 %conv1, ptr %cpu, align 4, !dbg !6824
  %4 = load i32, ptr %cpu, align 4, !dbg !6824
  %cmp = icmp ult i32 %4, 64, !dbg !6824
  br i1 %cmp, label %for.body, label %for.end, !dbg !6822

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %entries, align 8, !dbg !6826
  %cpu_entries = getelementptr inbounds %struct.callchain_cpus_entries, ptr %5, i32 0, i32 1, !dbg !6827
  %6 = load i32, ptr %cpu, align 4, !dbg !6828
  %idxprom = sext i32 %6 to i64, !dbg !6826
  %arrayidx = getelementptr [0 x ptr], ptr %cpu_entries, i64 0, i64 %idxprom, !dbg !6826
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !6826
  call void @kfree(ptr noundef %7) #16, !dbg !6829
  br label %for.inc, !dbg !6829

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %cpu, align 4, !dbg !6824
  %inc = add i32 %8, 1, !dbg !6824
  store i32 %inc, ptr %cpu, align 4, !dbg !6824
  br label %for.cond, !dbg !6824, !llvm.loop !6830

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %entries, align 8, !dbg !6832
  call void @kfree(ptr noundef %9) #16, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !6834
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #15, !dbg !6834
  ret void, !dbg !6834
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @interrupt_context_level() #4 align 16 !dbg !6835 {
entry:
  %pc = alloca i64, align 8
  %level = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #15, !dbg !6842
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !6840, metadata !DIExpression()), !dbg !6843
  %call = call i32 @preempt_count() #16, !dbg !6844
  %conv = sext i32 %call to i64, !dbg !6844
  store i64 %conv, ptr %pc, align 8, !dbg !6843
  call void @llvm.lifetime.start.p0(i64 1, ptr %level) #15, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %level, metadata !6841, metadata !DIExpression()), !dbg !6846
  store i8 0, ptr %level, align 1, !dbg !6846
  %0 = load i64, ptr %pc, align 8, !dbg !6847
  %and = and i64 %0, 15728640, !dbg !6848
  %tobool = icmp ne i64 %and, 0, !dbg !6849
  %lnot = xor i1 %tobool, true, !dbg !6849
  %lnot1 = xor i1 %lnot, true, !dbg !6850
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6850
  %1 = load i8, ptr %level, align 1, !dbg !6851
  %conv2 = zext i8 %1 to i32, !dbg !6851
  %add = add i32 %conv2, %lnot.ext, !dbg !6851
  %conv3 = trunc i32 %add to i8, !dbg !6851
  store i8 %conv3, ptr %level, align 1, !dbg !6851
  %2 = load i64, ptr %pc, align 8, !dbg !6852
  %and4 = and i64 %2, 16711680, !dbg !6853
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6854
  %lnot6 = xor i1 %tobool5, true, !dbg !6854
  %lnot8 = xor i1 %lnot6, true, !dbg !6855
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6855
  %3 = load i8, ptr %level, align 1, !dbg !6856
  %conv10 = zext i8 %3 to i32, !dbg !6856
  %add11 = add i32 %conv10, %lnot.ext9, !dbg !6856
  %conv12 = trunc i32 %add11 to i8, !dbg !6856
  store i8 %conv12, ptr %level, align 1, !dbg !6856
  %4 = load i64, ptr %pc, align 8, !dbg !6857
  %and13 = and i64 %4, 16711936, !dbg !6858
  %tobool14 = icmp ne i64 %and13, 0, !dbg !6859
  %lnot15 = xor i1 %tobool14, true, !dbg !6859
  %lnot17 = xor i1 %lnot15, true, !dbg !6860
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6860
  %5 = load i8, ptr %level, align 1, !dbg !6861
  %conv19 = zext i8 %5 to i32, !dbg !6861
  %add20 = add i32 %conv19, %lnot.ext18, !dbg !6861
  %conv21 = trunc i32 %add20 to i8, !dbg !6861
  store i8 %conv21, ptr %level, align 1, !dbg !6861
  %6 = load i8, ptr %level, align 1, !dbg !6862
  call void @llvm.lifetime.end.p0(i64 1, ptr %level) #15, !dbg !6863
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #15, !dbg !6863
  ret i8 %6, !dbg !6864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #4 align 16 !dbg !6865 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6868, metadata !DIExpression()), !dbg !6870
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6870, !srcloc !6871
  store i32 %0, ptr %pfo_val__, align 4, !dbg !6870
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !6870
  %conv = zext i32 %1 to i64, !dbg !6870
  %conv1 = trunc i64 %conv to i32, !dbg !6870
  store i32 %conv1, ptr %tmp, align 4, !dbg !6870
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !6872
  %2 = load i32, ptr %tmp, align 4, !dbg !6870
  %and = and i32 %2, 2147483647, !dbg !6873
  ret i32 %and, !dbg !6874
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6875 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6877, metadata !DIExpression()), !dbg !6879
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6878, metadata !DIExpression()), !dbg !6880
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6881
  %1 = load i64, ptr %size.addr, align 8, !dbg !6882
  %conv = trunc i64 %1 to i32, !dbg !6882
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !6883
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6884
  %3 = load i64, ptr %size.addr, align 8, !dbg !6884
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !6884
  ret void, !dbg !6885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6886 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6888, metadata !DIExpression()), !dbg !6889
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6890
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !6891
  ret i32 %call, !dbg !6892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6893 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6895, metadata !DIExpression()), !dbg !6897
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6896, metadata !DIExpression()), !dbg !6898
  ret i1 true, !dbg !6899
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6900 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6902, metadata !DIExpression()), !dbg !6903
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6904
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6904
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6904
  ret i32 %1, !dbg !6905
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { nounwind memory(read) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(3) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710}
!llvm.ident = !{!5711}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sysctl_perf_event_max_stack", scope: !2, file: !3, line: 22, type: !33, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/events/.callchain.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/events/callchain\22 -D KBUILD_BASENAME=\22callchain\22 -D KBUILD_MODNAME=\22callchain\22 -D __KBUILD_MODNAME=kmod_callchain -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/events/callchain.ll kernel/events/callchain.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !270, globals: !5678, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/events/callchain.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80e4311548c2dfb595a1891e93227e3a")
!4 = !{!5, !11, !22, !117, !127, !132, !140, !147, !155, !171, !178, !184, !189, !195, !201, !208, !214, !221, !229, !236, !245, !250, !255, !261}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_callchain_context", file: !12, line: 1236, baseType: !13, size: 64, elements: !14)
!12 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DIEnumerator(name: "PERF_CONTEXT_HV", value: 18446744073709551584, isUnsigned: true)
!16 = !DIEnumerator(name: "PERF_CONTEXT_KERNEL", value: 18446744073709551488, isUnsigned: true)
!17 = !DIEnumerator(name: "PERF_CONTEXT_USER", value: 18446744073709551104, isUnsigned: true)
!18 = !DIEnumerator(name: "PERF_CONTEXT_GUEST", value: 18446744073709549568, isUnsigned: true)
!19 = !DIEnumerator(name: "PERF_CONTEXT_GUEST_KERNEL", value: 18446744073709549440, isUnsigned: true)
!20 = !DIEnumerator(name: "PERF_CONTEXT_GUEST_USER", value: 18446744073709549056, isUnsigned: true)
!21 = !DIEnumerator(name: "PERF_CONTEXT_MAX", value: 18446744073709547521, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !24, file: !23, line: 147, baseType: !7, size: 32, elements: !114)
!23 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !23, line: 135, size: 512, elements: !25)
!25 = !{!26, !30, !32, !34, !38, !39, !54, !112, !113}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !24, file: !23, line: 136, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !23, line: 137, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !24, file: !23, line: 138, baseType: !33, size: 32, offset: 128)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !24, file: !23, line: 139, baseType: !35, size: 16, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !36, line: 24, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !23, line: 150, baseType: !22, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !24, file: !23, line: 151, baseType: !40, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !23, line: 64, baseType: !42)
!42 = !DISubroutineType(types: !43)
!43 = !{!33, !44, !33, !31, !45, !50}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 61, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !48, line: 72, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !48, line: 16, baseType: !13)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !36, line: 52, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !48, line: 88, baseType: !53)
!53 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !24, file: !23, line: 152, baseType: !55, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !23, line: 117, size: 256, elements: !57)
!57 = !{!58, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !56, file: !23, line: 118, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 174, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 172, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !36, line: 173, baseType: !33, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !56, file: !23, line: 119, baseType: !64, size: 192, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !65, line: 41, baseType: !66)
!65 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !65, line: 37, size: 192, elements: !67)
!67 = !{!68, !106}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !66, file: !65, line: 38, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !70, line: 29, baseType: !71)
!70 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !70, line: 17, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !70, line: 18, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !70, line: 18, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !74, file: !70, line: 19, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !78, line: 14, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !77, file: !78, line: 15, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !82, line: 44, baseType: !83)
!82 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !82, line: 14, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !82, line: 15, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !82, line: 15, size: 32, elements: !87)
!87 = !{!88, !89, !99}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !82, line: 16, baseType: !59, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 24, baseType: !90, size: 16)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 24, size: 16, elements: !91)
!91 = !{!92, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !90, file: !82, line: 25, baseType: !93, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !90, file: !82, line: 26, baseType: !93, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 28, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 28, size: 32, elements: !101)
!101 = !{!102, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !100, file: !82, line: 29, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !37)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !82, line: 30, baseType: !103, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !66, file: !65, line: 39, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 190, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !36, line: 191, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !36, line: 191, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !24, file: !23, line: 153, baseType: !31, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !24, file: !23, line: 154, baseType: !31, size: 64, offset: 448)
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!116 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !118, line: 364, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!121 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!122 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!123 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!124 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!125 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!126 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !128, line: 65, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!131 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !133, line: 9, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!136 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!137 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!138 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!139 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !141, line: 312, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!144 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!145 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!146 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !148, line: 68, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!149 = !{!150, !151, !152, !153, !154}
!150 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!154 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !156, line: 1325, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!158 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!159 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!160 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!161 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!162 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!163 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!164 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!165 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!166 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!167 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!168 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!169 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!170 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !172, line: 15, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!173 = !{!174, !175, !176, !177}
!174 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!175 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!176 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!177 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !179, line: 26, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!182 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!183 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !185, line: 2052, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!188 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !190, line: 54, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "USRQUOTA", value: 0)
!193 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!194 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !196, line: 16, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "TT_NONE", value: 0)
!199 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!200 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !202, line: 51, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!203 = !{!204, !205, !206, !207}
!204 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!205 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!206 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!207 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !209, line: 45, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!210 = !{!211, !212, !213}
!211 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!212 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!213 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !215, line: 487, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!218 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!219 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!220 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !222, line: 620, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!225 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!226 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!227 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!228 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !222, line: 597, baseType: !33, size: 32, elements: !230)
!230 = !{!231, !232, !233, !234, !235}
!231 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!232 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!233 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!234 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!235 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !215, line: 547, baseType: !7, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244}
!238 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!239 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!240 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!241 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!242 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!243 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!244 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !215, line: 564, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249}
!247 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!248 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!249 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !215, line: 577, baseType: !7, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!253 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!254 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !215, line: 503, baseType: !7, size: 32, elements: !256)
!256 = !{!257, !258, !259, !260}
!257 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!258 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!259 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!260 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !262, line: 593, baseType: !33, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!263 = !{!264, !265, !266, !267, !268, !269}
!264 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!265 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!266 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!267 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!268 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!269 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!270 = !{!271, !31, !272, !296, !33, !13, !299, !352, !353, !7, !362, !363, !364, !365, !5675}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callchain_cpus_entries", file: !3, line: 17, size: 128, elements: !274)
!274 = !{!275, !284}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !273, file: !3, line: 18, baseType: !276, size: 128, align: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !36, line: 232, size: 128, align: 64, elements: !277)
!277 = !{!278, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !36, line: 233, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !276, file: !36, line: 234, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !279}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entries", scope: !273, file: !3, line: 19, baseType: !285, offset: 128)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !294)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !262, line: 67, size: 64, elements: !288)
!288 = !{!289, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !287, file: !262, line: 68, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !291)
!291 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !287, file: !262, line: 69, baseType: !293, offset: 64)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: -1)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !301, line: 103, size: 1344, elements: !302)
!301 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !332, !333, !334}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !300, file: !301, line: 109, baseType: !13, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !300, file: !301, line: 110, baseType: !13, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !300, file: !301, line: 111, baseType: !13, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !300, file: !301, line: 112, baseType: !13, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !300, file: !301, line: 113, baseType: !13, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !300, file: !301, line: 114, baseType: !13, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !300, file: !301, line: 117, baseType: !13, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !300, file: !301, line: 118, baseType: !13, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !300, file: !301, line: 119, baseType: !13, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !300, file: !301, line: 120, baseType: !13, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !300, file: !301, line: 121, baseType: !13, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !300, file: !301, line: 122, baseType: !13, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !300, file: !301, line: 123, baseType: !13, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !300, file: !301, line: 124, baseType: !13, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !300, file: !301, line: 125, baseType: !13, size: 64, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !300, file: !301, line: 139, baseType: !13, size: 64, offset: 960)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !300, file: !301, line: 142, baseType: !13, size: 64, offset: 1024)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !301, line: 144, baseType: !321, size: 64, offset: 1088)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 144, size: 64, elements: !322)
!322 = !{!323, !324, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !321, file: !301, line: 146, baseType: !103, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !321, file: !301, line: 148, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !290)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !321, file: !301, line: 150, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !301, line: 59, size: 64, elements: !328)
!328 = !{!329, !330, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !327, file: !301, line: 61, baseType: !325, size: 16, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !327, file: !301, line: 63, baseType: !325, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !327, file: !301, line: 65, baseType: !325, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 153, baseType: !13, size: 64, offset: 1152)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !300, file: !301, line: 154, baseType: !13, size: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !301, line: 156, baseType: !335, size: 64, offset: 1280)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 156, size: 64, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !335, file: !301, line: 158, baseType: !103, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !335, file: !301, line: 160, baseType: !325, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !335, file: !301, line: 162, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !301, line: 69, size: 64, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !340, file: !301, line: 71, baseType: !325, size: 16, flags: DIFlagBitField, extraData: i64 0)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !340, file: !301, line: 73, baseType: !325, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !340, file: !301, line: 75, baseType: !325, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !340, file: !301, line: 77, baseType: !325, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !340, file: !301, line: 80, baseType: !325, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !301, line: 83, baseType: !325, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !340, file: !301, line: 86, baseType: !325, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !340, file: !301, line: 88, baseType: !325, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !340, file: !301, line: 93, baseType: !325, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !340, file: !301, line: 100, baseType: !325, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 154, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !356, line: 19, size: 64, elements: !357)
!356 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !355, file: !356, line: 19, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !36, line: 42, baseType: !13)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !367, line: 746, size: 58368, elements: !368)
!367 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!368 = !{!369, !379, !380, !381, !387, !388, !389, !390, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !470, !481, !582, !586, !589, !620, !621, !622, !623, !627, !629, !630, !631, !632, !633, !634, !645, !646, !649, !650, !651, !652, !653, !654, !655, !656, !663, !664, !671, !672, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3567, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3615, !3621, !3622, !3623, !3624, !3625, !3627, !3630, !3637, !3642, !3645, !3648, !3651, !3938, !4136, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4174, !4175, !4176, !4185, !4193, !4194, !4195, !4196, !4197, !4202, !4203, !4204, !4207, !4208, !4211, !4214, !4217, !4225, !4228, !4229, !4315, !4316, !4317, !4318, !4319, !4325, !4326, !4327, !4328, !4329, !4330, !4333, !4336, !4337, !4340, !4341, !4342, !4380, !4381, !4382, !4383, !4384, !4385, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4417, !4418, !4424, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4436, !4508, !4510, !4511, !4512, !4513, !4514, !4515, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4532, !4533, !4534}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !366, file: !367, line: 752, baseType: !370, size: 192)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !371, line: 56, size: 192, elements: !372)
!371 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!372 = !{!373, !374, !375, !378}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !371, line: 57, baseType: !13, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !370, file: !371, line: 58, baseType: !13, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !370, file: !371, line: 59, baseType: !376, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !7)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !370, file: !371, line: 61, baseType: !376, size: 32, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !366, file: !367, line: 754, baseType: !7, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !366, file: !367, line: 767, baseType: !31, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !366, file: !367, line: 768, baseType: !382, size: 32, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !383, line: 113, baseType: !384)
!383 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !383, line: 111, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !384, file: !383, line: 112, baseType: !59, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !367, line: 770, baseType: !7, size: 32, offset: 352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !366, file: !367, line: 771, baseType: !7, size: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !366, file: !367, line: 774, baseType: !33, size: 32, offset: 416)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !366, file: !367, line: 775, baseType: !391, size: 128, offset: 448)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !392, line: 58, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!393 = !{!394, !400, !405, !406}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !391, file: !392, line: 59, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !396, line: 60, size: 64, elements: !397)
!396 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !396, line: 61, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !392, line: 60, baseType: !401, size: 32, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 60, size: 32, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !401, file: !392, line: 61, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !401, file: !392, line: 62, baseType: !59, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !391, file: !392, line: 65, baseType: !103, size: 16, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !391, file: !392, line: 65, baseType: !103, size: 16, offset: 112)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !366, file: !367, line: 776, baseType: !7, size: 32, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !366, file: !367, line: 777, baseType: !13, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !366, file: !367, line: 778, baseType: !365, size: 64, offset: 704)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !366, file: !367, line: 787, baseType: !33, size: 32, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !366, file: !367, line: 788, baseType: !33, size: 32, offset: 800)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !366, file: !367, line: 790, baseType: !33, size: 32, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !366, file: !367, line: 792, baseType: !33, size: 32, offset: 864)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !366, file: !367, line: 793, baseType: !33, size: 32, offset: 896)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !366, file: !367, line: 794, baseType: !33, size: 32, offset: 928)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !366, file: !367, line: 795, baseType: !7, size: 32, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !366, file: !367, line: 797, baseType: !418, size: 2048, offset: 1024)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !367, line: 551, size: 2048, elements: !419)
!419 = !{!420, !425, !433, !434, !435, !436, !437, !438, !439, !440, !441, !444, !445, !446, !447, !449, !452, !453, !454}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !418, file: !367, line: 553, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !367, line: 411, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !421, file: !367, line: 412, baseType: !13, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !421, file: !367, line: 413, baseType: !376, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !418, file: !367, line: 554, baseType: !426, size: 192, align: 64, offset: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !427, line: 5, size: 192, align: 64, elements: !428)
!427 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!428 = !{!429, !430, !432}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !426, file: !427, line: 6, baseType: !13, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !426, file: !427, line: 7, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !426, file: !427, line: 8, baseType: !431, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !418, file: !367, line: 555, baseType: !325, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !418, file: !367, line: 556, baseType: !325, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !418, file: !367, line: 558, baseType: !107, size: 128, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !418, file: !367, line: 559, baseType: !7, size: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !418, file: !367, line: 561, baseType: !325, size: 64, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !418, file: !367, line: 562, baseType: !325, size: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !418, file: !367, line: 563, baseType: !325, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !418, file: !367, line: 564, baseType: !325, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !418, file: !367, line: 565, baseType: !442, size: 64, offset: 896)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !53)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !418, file: !367, line: 566, baseType: !325, size: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !418, file: !367, line: 568, baseType: !325, size: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !418, file: !367, line: 571, baseType: !33, size: 32, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !418, file: !367, line: 572, baseType: !448, size: 64, offset: 1152)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !418, file: !367, line: 574, baseType: !450, size: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !367, line: 49, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !418, file: !367, line: 576, baseType: !450, size: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !418, file: !367, line: 578, baseType: !13, size: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !418, file: !367, line: 588, baseType: !455, size: 512, align: 512, offset: 1536)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !367, line: 497, size: 512, align: 512, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !455, file: !367, line: 498, baseType: !325, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !455, file: !367, line: 499, baseType: !325, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !455, file: !367, line: 500, baseType: !325, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !455, file: !367, line: 501, baseType: !376, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !455, file: !367, line: 502, baseType: !376, size: 32, offset: 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !455, file: !367, line: 503, baseType: !13, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !455, file: !367, line: 504, baseType: !13, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !455, file: !367, line: 505, baseType: !13, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !455, file: !367, line: 506, baseType: !466, size: 64, align: 64, offset: 448)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !367, line: 445, size: 64, align: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !466, file: !367, line: 446, baseType: !7, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !466, file: !367, line: 447, baseType: !7, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !366, file: !367, line: 798, baseType: !471, size: 384, offset: 3072)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !367, line: 592, size: 384, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !471, file: !367, line: 593, baseType: !107, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !471, file: !367, line: 594, baseType: !13, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !471, file: !367, line: 595, baseType: !13, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !471, file: !367, line: 596, baseType: !7, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !367, line: 597, baseType: !37, size: 16, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !471, file: !367, line: 598, baseType: !37, size: 16, offset: 304)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !471, file: !367, line: 600, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !366, file: !367, line: 799, baseType: !482, size: 1792, offset: 3456)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !367, line: 610, size: 1792, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !579, !580}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !367, line: 611, baseType: !426, size: 192, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !482, file: !367, line: 618, baseType: !325, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !482, file: !367, line: 619, baseType: !325, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !482, file: !367, line: 620, baseType: !325, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !482, file: !367, line: 621, baseType: !325, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !482, file: !367, line: 622, baseType: !325, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !482, file: !367, line: 629, baseType: !442, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !482, file: !367, line: 630, baseType: !325, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !367, line: 631, baseType: !7, size: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !482, file: !367, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !482, file: !367, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !482, file: !367, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !482, file: !367, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !482, file: !367, line: 662, baseType: !498, size: 512, offset: 704)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !128, line: 118, size: 512, elements: !499)
!499 = !{!500, !508, !509, !514, !575, !576, !577, !578}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !128, line: 119, baseType: !501, size: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !502, line: 9, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !502, line: 10, baseType: !426, size: 192, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !501, file: !502, line: 11, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !507, line: 29, baseType: !442)
!507 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !498, file: !128, line: 120, baseType: !506, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !498, file: !128, line: 121, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!127, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !498, file: !128, line: 122, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !128, line: 159, size: 512, align: 512, elements: !517)
!517 = !{!518, !544, !545, !548, !558, !559, !570, !574}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !516, file: !128, line: 160, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !128, line: 215, size: 4608, align: 512, elements: !521)
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !128, line: 216, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !78, line: 23, baseType: !77)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !520, file: !128, line: 217, baseType: !7, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !520, file: !128, line: 218, baseType: !7, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !520, file: !128, line: 219, baseType: !7, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !520, file: !128, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !520, file: !128, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !520, file: !128, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !520, file: !128, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !520, file: !128, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !520, file: !128, line: 226, baseType: !7, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !520, file: !128, line: 227, baseType: !37, size: 16, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !520, file: !128, line: 228, baseType: !37, size: 16, offset: 208)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !520, file: !128, line: 229, baseType: !7, size: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !520, file: !128, line: 235, baseType: !506, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !520, file: !128, line: 236, baseType: !513, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !520, file: !128, line: 237, baseType: !506, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !520, file: !128, line: 238, baseType: !513, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !520, file: !128, line: 239, baseType: !541, size: 4096, align: 512, offset: 512)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 4096, align: 512, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 8)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !516, file: !128, line: 161, baseType: !7, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !516, file: !128, line: 162, baseType: !546, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !36, line: 32, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !48, line: 96, baseType: !33)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !516, file: !128, line: 163, baseType: !549, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !550, line: 274, baseType: !551)
!550 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !550, line: 274, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !551, file: !550, line: 274, baseType: !554, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !550, line: 69, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !550, line: 64, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !555, file: !550, line: 65, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !516, file: !128, line: 164, baseType: !513, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !516, file: !128, line: 165, baseType: !560, size: 128, offset: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !502, line: 14, size: 128, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !560, file: !502, line: 15, baseType: !563, size: 128)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !427, line: 26, size: 128, elements: !564)
!564 = !{!565, !569}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !563, file: !427, line: 27, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !427, line: 12, size: 64, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !566, file: !427, line: 13, baseType: !431, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !563, file: !427, line: 28, baseType: !431, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !516, file: !128, line: 166, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!506}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !516, file: !128, line: 167, baseType: !506, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !498, file: !128, line: 123, baseType: !93, size: 8, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !498, file: !128, line: 124, baseType: !93, size: 8, offset: 456)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !498, file: !128, line: 125, baseType: !93, size: 8, offset: 464)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !498, file: !128, line: 126, baseType: !93, size: 8, offset: 472)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !482, file: !367, line: 671, baseType: !498, size: 512, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !482, file: !367, line: 679, baseType: !581, size: 64, offset: 1728)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !366, file: !367, line: 800, baseType: !583, size: 64, offset: 5248)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !367, line: 800, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !366, file: !367, line: 809, baseType: !587, size: 64, offset: 5312)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !367, line: 70, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !366, file: !367, line: 825, baseType: !590, size: 2048, align: 512, offset: 5632)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !367, line: 509, size: 2048, align: 512, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !590, file: !367, line: 511, baseType: !325, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !590, file: !367, line: 512, baseType: !325, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !590, file: !367, line: 513, baseType: !325, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !590, file: !367, line: 514, baseType: !325, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !590, file: !367, line: 515, baseType: !325, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !590, file: !367, line: 516, baseType: !325, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !590, file: !367, line: 518, baseType: !325, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !590, file: !367, line: 519, baseType: !325, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !590, file: !367, line: 520, baseType: !442, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !590, file: !367, line: 522, baseType: !325, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !590, file: !367, line: 523, baseType: !325, size: 64, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !590, file: !367, line: 524, baseType: !442, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !590, file: !367, line: 526, baseType: !442, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !590, file: !367, line: 527, baseType: !325, size: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !590, file: !367, line: 529, baseType: !325, size: 64, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !590, file: !367, line: 530, baseType: !325, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !590, file: !367, line: 531, baseType: !325, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !590, file: !367, line: 532, baseType: !325, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !590, file: !367, line: 533, baseType: !325, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !590, file: !367, line: 535, baseType: !325, size: 64, offset: 1216)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !590, file: !367, line: 536, baseType: !325, size: 64, offset: 1280)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !590, file: !367, line: 537, baseType: !325, size: 64, offset: 1344)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !590, file: !367, line: 538, baseType: !325, size: 64, offset: 1408)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !590, file: !367, line: 539, baseType: !325, size: 64, offset: 1472)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !590, file: !367, line: 540, baseType: !325, size: 64, offset: 1536)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !590, file: !367, line: 541, baseType: !325, size: 64, offset: 1600)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !590, file: !367, line: 542, baseType: !325, size: 64, offset: 1664)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !590, file: !367, line: 543, baseType: !325, size: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !366, file: !367, line: 833, baseType: !7, size: 32, offset: 7680)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !366, file: !367, line: 836, baseType: !7, size: 32, offset: 7712)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !366, file: !367, line: 837, baseType: !33, size: 32, offset: 7744)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !366, file: !367, line: 838, baseType: !624, size: 64, offset: 7808)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !356, line: 19, baseType: !355)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !366, file: !367, line: 839, baseType: !628, size: 64, offset: 7872)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !366, file: !367, line: 840, baseType: !626, size: 64, offset: 7936)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !366, file: !367, line: 841, baseType: !31, size: 64, offset: 8000)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !366, file: !367, line: 843, baseType: !37, size: 16, offset: 8064)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !366, file: !367, line: 845, baseType: !37, size: 16, offset: 8080)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !366, file: !367, line: 848, baseType: !33, size: 32, offset: 8096)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !366, file: !367, line: 849, baseType: !635, size: 32, offset: 8128)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !367, line: 718, size: 32, elements: !636)
!636 = !{!637, !644}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !635, file: !367, line: 724, baseType: !638, size: 32)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !367, line: 719, size: 32, elements: !639)
!639 = !{!640, !641, !642, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !638, file: !367, line: 720, baseType: !93, size: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !638, file: !367, line: 721, baseType: !93, size: 8, offset: 8)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !638, file: !367, line: 722, baseType: !93, size: 8, offset: 16)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !638, file: !367, line: 723, baseType: !93, size: 8, offset: 24)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !635, file: !367, line: 725, baseType: !376, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !366, file: !367, line: 850, baseType: !107, size: 128, offset: 8192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !366, file: !367, line: 851, baseType: !647, size: 64, offset: 8320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !367, line: 60, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !366, file: !367, line: 855, baseType: !13, size: 64, offset: 8384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !366, file: !367, line: 856, baseType: !93, size: 8, offset: 8448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !366, file: !367, line: 857, baseType: !93, size: 8, offset: 8456)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !366, file: !367, line: 858, baseType: !33, size: 32, offset: 8480)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !366, file: !367, line: 859, baseType: !107, size: 128, offset: 8512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !366, file: !367, line: 860, baseType: !33, size: 32, offset: 8640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !366, file: !367, line: 861, baseType: !107, size: 128, offset: 8704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !366, file: !367, line: 873, baseType: !657, size: 256, offset: 8832)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !367, line: 376, size: 256, elements: !658)
!658 = !{!659, !660, !661, !662}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !657, file: !367, line: 381, baseType: !13, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !657, file: !367, line: 384, baseType: !291, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !657, file: !367, line: 389, baseType: !291, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !657, file: !367, line: 392, baseType: !291, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !366, file: !367, line: 875, baseType: !107, size: 128, offset: 9088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !366, file: !367, line: 877, baseType: !665, size: 320, offset: 9216)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !666, line: 86, size: 320, elements: !667)
!666 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!667 = !{!668, !669, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !665, file: !666, line: 87, baseType: !33, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !665, file: !666, line: 88, baseType: !107, size: 128, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !665, file: !666, line: 89, baseType: !107, size: 128, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !366, file: !367, line: 878, baseType: !426, size: 192, align: 64, offset: 9536)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !366, file: !367, line: 881, baseType: !673, size: 64, offset: 9728)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !156, line: 733, size: 10240, elements: !675)
!675 = !{!676, !3486}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !156, line: 734, baseType: !677, size: 10240)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !156, line: 734, size: 10240, elements: !678)
!678 = !{!679, !683, !697, !3365, !3366, !3367, !3368, !3369, !3370, !3377, !3378, !3379, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3418, !3420, !3423, !3466, !3467, !3468, !3471, !3472, !3473, !3476, !3477, !3478, !3484, !3485}
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !156, line: 739, baseType: !680, size: 512, align: 512)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !156, line: 739, size: 512, align: 512, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !680, file: !156, line: 747, baseType: !59, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !677, file: !156, line: 750, baseType: !684, size: 128, offset: 512)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !685, line: 218, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!686 = !{!687, !695, !696}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 219, baseType: !688, size: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 219, size: 32, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !688, file: !685, line: 220, baseType: !69, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !688, file: !685, line: 221, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !685, line: 197, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 197, elements: !694)
!694 = !{}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !684, file: !685, line: 223, baseType: !7, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !684, file: !685, line: 224, baseType: !31, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !677, file: !156, line: 752, baseType: !698, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!13, !701, !13, !13, !13, !13}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !185, line: 994, size: 1856, align: 64, elements: !703)
!703 = !{!704, !710, !711, !713, !720, !732, !733, !734, !1113, !1191, !1200, !3355, !3356, !3357, !3358, !3359, !3360, !3362, !3363, !3364}
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !185, line: 995, baseType: !705, size: 128)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !185, line: 995, size: 128, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !705, file: !185, line: 996, baseType: !395, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !705, file: !185, line: 997, baseType: !276, size: 128, align: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !705, file: !185, line: 998, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !702, file: !185, line: 1005, baseType: !69, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !702, file: !185, line: 1006, baseType: !712, size: 32, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !36, line: 156, baseType: !7)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !702, file: !185, line: 1007, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !715, line: 13, baseType: !716)
!715 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !36, line: 181, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 179, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !717, file: !36, line: 180, baseType: !442, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !702, file: !185, line: 1008, baseType: !721, size: 256, offset: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !722, line: 66, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!723 = !{!724, !725, !726, !731}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !721, file: !722, line: 67, baseType: !714, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !721, file: !722, line: 68, baseType: !523, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !721, file: !722, line: 70, baseType: !727, size: 32, offset: 96)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !728, line: 15, size: 32, elements: !729)
!728 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !727, file: !728, line: 20, baseType: !59, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !721, file: !722, line: 72, baseType: !107, size: 128, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !702, file: !185, line: 1009, baseType: !51, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !702, file: !185, line: 1010, baseType: !7, size: 32, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !702, file: !185, line: 1011, baseType: !735, size: 256, offset: 640)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !185, line: 948, size: 256, elements: !736)
!736 = !{!737, !760, !1109, !1110, !1111, !1112}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !735, file: !185, line: 949, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !739, line: 34, baseType: !740)
!739 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 25, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !740, file: !739, line: 26, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !744, line: 27, baseType: !745)
!744 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !744, line: 13, size: 64, elements: !746)
!746 = !{!747, !759}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !744, line: 14, baseType: !748, size: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !744, line: 14, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !748, file: !744, line: 15, baseType: !59, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 16, baseType: !752, size: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 16, size: 32, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !752, file: !744, line: 18, baseType: !93, size: 8)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !752, file: !744, line: 19, baseType: !756, size: 24, offset: 8)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 3)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !745, file: !744, line: 26, baseType: !81, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !735, file: !185, line: 950, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !133, line: 59, size: 768, elements: !763)
!763 = !{!764, !765, !766, !767, !780, !781, !782, !783}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !762, file: !133, line: 61, baseType: !382, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !762, file: !133, line: 62, baseType: !7, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !133, line: 63, baseType: !69, size: 32, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !762, file: !133, line: 65, baseType: !768, size: 256, offset: 128)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 256, elements: !778)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !36, line: 194, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !769, file: !36, line: 195, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !36, line: 198, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !36, line: 199, baseType: !772, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !773, file: !36, line: 199, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!778 = !{!779}
!779 = !DISubrange(count: 4)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !762, file: !133, line: 66, baseType: !769, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !762, file: !133, line: 68, baseType: !64, size: 192, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !762, file: !133, line: 69, baseType: !276, size: 128, align: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !762, file: !133, line: 70, baseType: !784, offset: 768)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, elements: !294)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !133, line: 54, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !785, file: !133, line: 55, baseType: !33, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !785, file: !133, line: 56, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !791, line: 26, size: 1152, elements: !792)
!791 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!792 = !{!793, !806, !807, !808, !809, !813, !814, !815, !818, !1105, !1106, !1107, !1108}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !790, file: !791, line: 27, baseType: !794, size: 192)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !795, line: 19, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!796 = !{!797, !804, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !794, file: !795, line: 20, baseType: !798, size: 128)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !799, line: 296, size: 128, elements: !800)
!799 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !798, file: !799, line: 297, baseType: !69, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !798, file: !799, line: 299, baseType: !352, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !798, file: !799, line: 300, baseType: !31, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !794, file: !795, line: 21, baseType: !7, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !794, file: !795, line: 22, baseType: !7, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !790, file: !791, line: 28, baseType: !276, size: 128, align: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !790, file: !791, line: 29, baseType: !7, size: 32, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !790, file: !791, line: 30, baseType: !365, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !790, file: !791, line: 31, baseType: !810, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !812, line: 325, flags: DIFlagFwdDecl)
!812 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!813 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !790, file: !791, line: 32, baseType: !7, size: 32, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !790, file: !791, line: 33, baseType: !789, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !790, file: !791, line: 35, baseType: !816, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !791, line: 17, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !790, file: !791, line: 37, baseType: !819, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !821, line: 68, size: 4800, elements: !822)
!821 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!822 = !{!823, !845, !846, !847, !848, !849, !857, !864, !875, !876, !879, !880, !1002, !1003, !1015, !1085, !1086, !1100, !1103}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !820, file: !821, line: 69, baseType: !824, size: 576)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !821, line: 23, size: 576, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !824, file: !821, line: 24, baseType: !376, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !821, line: 25, baseType: !828, size: 512, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !821, line: 25, size: 512, elements: !829)
!829 = !{!830, !839}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !828, file: !821, line: 26, baseType: !831, size: 480)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 480, elements: !837)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !821, line: 17, size: 96, elements: !833)
!833 = !{!834, !835, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !832, file: !821, line: 18, baseType: !376, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !832, file: !821, line: 19, baseType: !376, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !832, file: !821, line: 20, baseType: !376, size: 32, offset: 64)
!837 = !{!838}
!838 = !DISubrange(count: 5)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !821, line: 27, baseType: !840, size: 128)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !821, line: 27, size: 128, elements: !841)
!841 = !{!842, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !840, file: !821, line: 28, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !840, file: !821, line: 29, baseType: !843, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !820, file: !821, line: 70, baseType: !824, size: 576, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !820, file: !821, line: 71, baseType: !824, size: 576, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !820, file: !821, line: 72, baseType: !819, size: 64, offset: 1728)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !820, file: !821, line: 73, baseType: !33, size: 32, offset: 1792)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 74, baseType: !850, size: 32, offset: 1824)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !851, line: 23, baseType: !852)
!851 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 21, size: 32, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !852, file: !851, line: 22, baseType: !855, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !36, line: 37, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !48, line: 49, baseType: !7)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !820, file: !821, line: 75, baseType: !858, size: 32, offset: 1856)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !851, line: 28, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 26, size: 32, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !859, file: !851, line: 27, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !36, line: 38, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !48, line: 50, baseType: !7)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !820, file: !821, line: 76, baseType: !865, size: 192, offset: 1920)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !866, line: 9, size: 192, elements: !867)
!866 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!867 = !{!868, !869, !873, !874}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !865, file: !866, line: 10, baseType: !714, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !865, file: !866, line: 11, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !866, line: 7, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !865, file: !866, line: 12, baseType: !7, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !865, file: !866, line: 13, baseType: !382, size: 32, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !821, line: 77, baseType: !13, size: 64, offset: 2112)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !820, file: !821, line: 80, baseType: !877, size: 8, offset: 2176)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 35, baseType: !878)
!878 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !820, file: !821, line: 88, baseType: !107, size: 128, offset: 2240)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !820, file: !821, line: 89, baseType: !881, size: 64, offset: 2368)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !883, line: 195, size: 1728, elements: !884)
!883 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!884 = !{!885, !886, !891, !896, !905, !908, !909, !916, !917, !918, !919, !922, !923, !924, !926, !927, !966, !987}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !882, file: !883, line: 196, baseType: !382, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !882, file: !883, line: 197, baseType: !887, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !883, line: 28, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !36, line: 104, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !94, line: 20, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !96, line: 26, baseType: !33)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 198, baseType: !892, size: 192, offset: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 198, size: 192, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !892, file: !883, line: 199, baseType: !107, size: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !892, file: !883, line: 200, baseType: !426, size: 192, align: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !882, file: !883, line: 205, baseType: !897, size: 320, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !898, line: 48, size: 320, elements: !899)
!898 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!899 = !{!900, !901, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !897, file: !898, line: 49, baseType: !714, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !898, line: 55, baseType: !714, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !897, file: !898, line: 57, baseType: !727, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !897, file: !898, line: 59, baseType: !523, size: 32, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !897, file: !898, line: 60, baseType: !107, size: 128, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !882, file: !883, line: 206, baseType: !906, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !883, line: 206, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !882, file: !883, line: 207, baseType: !31, size: 64, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 208, baseType: !910, size: 64, offset: 704)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 208, size: 64, elements: !911)
!911 = !{!912, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !910, file: !883, line: 209, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !914, line: 8, baseType: !443)
!914 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!915 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !910, file: !883, line: 210, baseType: !913, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !882, file: !883, line: 212, baseType: !913, size: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !882, file: !883, line: 213, baseType: !850, size: 32, offset: 832)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !882, file: !883, line: 214, baseType: !858, size: 32, offset: 864)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !882, file: !883, line: 215, baseType: !920, size: 32, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !883, line: 31, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 110, baseType: !376)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !882, file: !883, line: 216, baseType: !37, size: 16, offset: 928)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !882, file: !883, line: 217, baseType: !37, size: 16, offset: 944)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !882, file: !883, line: 221, baseType: !925, size: 16, offset: 960)
!925 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 228, baseType: !13, size: 64, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 245, baseType: !928, size: 320, offset: 1088)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 245, size: 320, elements: !929)
!929 = !{!930, !957}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !928, file: !883, line: 246, baseType: !931, size: 320)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !883, line: 114, size: 320, elements: !932)
!932 = !{!933, !934, !946, !949, !956}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !931, file: !883, line: 116, baseType: !13, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !883, line: 117, baseType: !935, size: 64, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !883, line: 117, size: 64, elements: !936)
!936 = !{!937, !945}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !883, line: 118, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !883, line: 118, size: 64, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !938, file: !883, line: 120, baseType: !103, size: 16)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !938, file: !883, line: 121, baseType: !942, size: 48, offset: 16)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 6)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !935, file: !883, line: 127, baseType: !13, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !931, file: !883, line: 129, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !883, line: 102, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !931, file: !883, line: 130, baseType: !950, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !883, line: 108, size: 192, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !951, file: !883, line: 109, baseType: !276, size: 128, align: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !951, file: !883, line: 110, baseType: !382, size: 32, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !951, file: !883, line: 111, baseType: !877, size: 8, offset: 160)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !931, file: !883, line: 131, baseType: !27, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !883, line: 247, baseType: !958, size: 320)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !883, line: 247, size: 320, elements: !959)
!959 = !{!960, !961, !962, !963, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !958, file: !883, line: 248, baseType: !13, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !958, file: !883, line: 249, baseType: !13, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !958, file: !883, line: 250, baseType: !947, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !958, file: !883, line: 251, baseType: !950, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !958, file: !883, line: 252, baseType: !965, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 260, baseType: !967, size: 256, offset: 1408)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 260, size: 256, elements: !968)
!968 = !{!969, !975}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !967, file: !883, line: 261, baseType: !970, size: 256)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !883, line: 134, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !970, file: !883, line: 135, baseType: !31, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !970, file: !883, line: 136, baseType: !974, size: 256)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !778)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !883, line: 262, baseType: !976, size: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !883, line: 262, size: 256, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !976, file: !883, line: 264, baseType: !107, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !976, file: !883, line: 265, baseType: !980, size: 128, offset: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !981, line: 22, size: 128, elements: !982)
!981 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!982 = !{!983, !986}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !980, file: !981, line: 23, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !981, line: 23, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !980, file: !981, line: 24, baseType: !13, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !882, file: !883, line: 280, baseType: !988, size: 64, offset: 1664)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !883, line: 176, size: 192, elements: !990)
!990 = !{!991, !1000, !1001}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !989, file: !883, line: 177, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !883, line: 171, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!33, !881, !996, !998, !881}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !989, file: !883, line: 178, baseType: !881, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !989, file: !883, line: 179, baseType: !947, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !820, file: !821, line: 90, baseType: !897, size: 320, offset: 2432)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !820, file: !821, line: 97, baseType: !1004, size: 256, offset: 2752)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1005, line: 98, size: 256, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1004, file: !1005, line: 99, baseType: !714, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1004, file: !1005, line: 100, baseType: !107, size: 128, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1004, file: !1005, line: 101, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1005, line: 21, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !820, file: !821, line: 99, baseType: !1016, size: 768, offset: 3008)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !23, line: 199, size: 768, elements: !1017)
!1017 = !{!1018, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1016, file: !23, line: 200, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!33, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1016, file: !23, line: 201, baseType: !1024, size: 704, offset: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !23, line: 193, size: 704, elements: !1025)
!1025 = !{!1026, !1084}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1024, file: !23, line: 195, baseType: !1027, size: 640)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !23, line: 173, size: 640, elements: !1028)
!1028 = !{!1029, !1041, !1053, !1054, !1074, !1075, !1077, !1083}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !23, line: 174, baseType: !1030, size: 192)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !23, line: 174, size: 192, elements: !1031)
!1031 = !{!1032, !1040}
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !23, line: 175, baseType: !1033, size: 192)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !23, line: 175, size: 192, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1033, file: !23, line: 176, baseType: !44, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1033, file: !23, line: 177, baseType: !33, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1033, file: !23, line: 178, baseType: !33, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1033, file: !23, line: 179, baseType: !33, size: 32, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1033, file: !23, line: 180, baseType: !33, size: 32, offset: 160)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1030, file: !23, line: 182, baseType: !276, size: 128, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1027, file: !23, line: 184, baseType: !1042, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1044, line: 26, size: 256, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1043, file: !1044, line: 27, baseType: !7, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1043, file: !1044, line: 28, baseType: !1048, size: 192, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1049, line: 43, size: 192, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1048, file: !1049, line: 44, baseType: !523, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1048, file: !1049, line: 45, baseType: !107, size: 128, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1027, file: !23, line: 185, baseType: !44, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1027, file: !23, line: 186, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !23, line: 204, size: 960, elements: !1057)
!1057 = !{!1058, !1059, !1063, !1070}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1056, file: !23, line: 205, baseType: !1016, size: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1056, file: !23, line: 206, baseType: !1060, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1022, !1055}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1056, file: !23, line: 207, baseType: !1064, size: 64, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1056, file: !23, line: 209, baseType: !1071, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!33, !1067, !44}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1027, file: !23, line: 187, baseType: !1022, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1027, file: !23, line: 188, baseType: !1076, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !23, line: 189, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !23, line: 157, size: 256, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1079, file: !23, line: 158, baseType: !426, size: 192, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1079, file: !23, line: 159, baseType: !1067, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1027, file: !23, line: 190, baseType: !769, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1024, file: !23, line: 196, baseType: !566, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !820, file: !821, line: 100, baseType: !1067, size: 64, offset: 3776)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !820, file: !821, line: 102, baseType: !1087, size: 64, offset: 3840)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !821, line: 107, size: 1152, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1098}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1088, file: !821, line: 108, baseType: !773, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1088, file: !821, line: 109, baseType: !819, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1088, file: !821, line: 110, baseType: !850, size: 32, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1088, file: !821, line: 111, baseType: !59, size: 32, offset: 224)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1088, file: !821, line: 112, baseType: !1095, size: 640, offset: 256)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 640, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 10)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1088, file: !821, line: 113, baseType: !1099, size: 256, offset: 896)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !778)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !820, file: !821, line: 103, baseType: !1101, size: 640, offset: 3904)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 640, elements: !1096)
!1102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !820, file: !821, line: 104, baseType: !1104, size: 256, offset: 4544)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !778)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !790, file: !791, line: 38, baseType: !1087, size: 64, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !790, file: !791, line: 39, baseType: !33, size: 32, offset: 832)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !790, file: !791, line: 40, baseType: !865, size: 192, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !790, file: !791, line: 42, baseType: !33, size: 32, offset: 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !735, file: !185, line: 951, baseType: !132, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !735, file: !185, line: 952, baseType: !850, size: 32, offset: 160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !735, file: !185, line: 952, baseType: !850, size: 32, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !735, file: !185, line: 953, baseType: !33, size: 32, offset: 224)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !702, file: !185, line: 1012, baseType: !1114, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1117, line: 110, size: 1472, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1176, !1177, !1178, !1186}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1116, file: !1117, line: 111, baseType: !714, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1116, file: !1117, line: 112, baseType: !850, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1116, file: !1117, line: 113, baseType: !858, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1116, file: !1117, line: 114, baseType: !850, size: 32, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1116, file: !1117, line: 115, baseType: !858, size: 32, offset: 160)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1116, file: !1117, line: 116, baseType: !850, size: 32, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1116, file: !1117, line: 117, baseType: !858, size: 32, offset: 224)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1116, file: !1117, line: 118, baseType: !850, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1116, file: !1117, line: 119, baseType: !858, size: 32, offset: 288)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1116, file: !1117, line: 120, baseType: !7, size: 32, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1116, file: !1117, line: 121, baseType: !1130, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1131, line: 24, baseType: !1132)
!1131 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 24, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1132, file: !1131, line: 24, baseType: !325, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1116, file: !1117, line: 122, baseType: !1130, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1116, file: !1117, line: 123, baseType: !1130, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1116, file: !1117, line: 124, baseType: !1130, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1116, file: !1117, line: 125, baseType: !1130, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1116, file: !1117, line: 127, baseType: !97, size: 8, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1116, file: !1117, line: 129, baseType: !881, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1116, file: !1117, line: 130, baseType: !881, size: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1116, file: !1117, line: 131, baseType: !881, size: 64, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1116, file: !1117, line: 132, baseType: !881, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1116, file: !1117, line: 135, baseType: !31, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1116, file: !1117, line: 137, baseType: !1146, size: 64, offset: 1088)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1148, line: 14, size: 1088, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1149 = !{!1150, !1151, !1160, !1161, !1162, !1163, !1164, !1165}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1147, file: !1148, line: 15, baseType: !382, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1147, file: !1148, line: 17, baseType: !1152, size: 320, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1153, line: 22, size: 320, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1154 = !{!1155, !1156, !1157, !1158}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1152, file: !1153, line: 23, baseType: !523, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1152, file: !1153, line: 24, baseType: !442, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1152, file: !1153, line: 26, baseType: !107, size: 128, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1152, file: !1153, line: 28, baseType: !1159, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1147, file: !1148, line: 19, baseType: !13, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1147, file: !1148, line: 20, baseType: !714, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1147, file: !1148, line: 23, baseType: !773, size: 128, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1147, file: !1148, line: 24, baseType: !850, size: 32, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1147, file: !1148, line: 29, baseType: !714, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1147, file: !1148, line: 36, baseType: !1166, size: 320, offset: 768)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1167, line: 15, size: 320, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1167, line: 16, baseType: !523, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1166, file: !1167, line: 18, baseType: !33, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1166, file: !1167, line: 19, baseType: !33, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1166, file: !1167, line: 20, baseType: !33, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1166, file: !1167, line: 21, baseType: !33, size: 32, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1166, file: !1167, line: 22, baseType: !13, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1167, line: 23, baseType: !13, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1116, file: !1117, line: 138, baseType: !819, size: 64, offset: 1152)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1116, file: !1117, line: 139, baseType: !1087, size: 64, offset: 1216)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1116, file: !1117, line: 140, baseType: !1179, size: 64, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1117, line: 25, size: 64, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1180, file: !1117, line: 26, baseType: !59, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1180, file: !1117, line: 27, baseType: !33, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1180, file: !1117, line: 28, baseType: !1185, offset: 64)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, elements: !294)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1117, line: 142, baseType: !1187, size: 128, offset: 1344)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !1117, line: 142, size: 128, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1187, file: !1117, line: 143, baseType: !33, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1187, file: !1117, line: 144, baseType: !276, size: 128, align: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !702, file: !185, line: 1013, baseType: !1192, size: 256, offset: 960)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !185, line: 970, size: 256, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1192, file: !185, line: 971, baseType: !13, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1192, file: !185, line: 972, baseType: !7, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1192, file: !185, line: 973, baseType: !7, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1192, file: !185, line: 974, baseType: !7, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1192, file: !185, line: 975, baseType: !7, size: 32, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1192, file: !185, line: 976, baseType: !51, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !702, file: !185, line: 1014, baseType: !1201, size: 128, offset: 1216)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1202, line: 8, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1203 = !{!1204, !3354}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1201, file: !1202, line: 9, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1207, line: 70, size: 256, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1208 = !{!1209, !3351, !3352, !3353}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1206, file: !1207, line: 71, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1212, line: 82, size: 1536, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1213 = !{!1214, !1215, !1220, !1228, !1229, !1244, !3318, !3320, !3333, !3334, !3335, !3336, !3337, !3343, !3344, !3345}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1211, file: !1212, line: 84, baseType: !7, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1211, file: !1212, line: 85, baseType: !1216, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !550, line: 275, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !550, line: 275, size: 32, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1217, file: !550, line: 275, baseType: !554, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1211, file: !1212, line: 86, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1222, line: 38, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1223 = !{!1224, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1221, file: !1222, line: 39, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1221, file: !1222, line: 39, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1211, file: !1212, line: 87, baseType: !1210, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1211, file: !1212, line: 88, baseType: !1230, size: 128, offset: 256)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1212, line: 49, size: 128, elements: !1231)
!1231 = !{!1232, !1241}
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1212, line: 50, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1212, line: 50, size: 64, elements: !1234)
!1234 = !{!1235, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1212, line: 51, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1212, line: 51, size: 64, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1236, file: !1212, line: 52, baseType: !376, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1236, file: !1212, line: 52, baseType: !376, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1233, file: !1212, line: 54, baseType: !325, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1230, file: !1212, line: 56, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1211, file: !1212, line: 89, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !185, line: 641, size: 4800, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1257, !1258, !1445, !3132, !3133, !3134, !3135, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3300, !3303, !3304, !3305, !3314, !3315, !3316, !3317}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1246, file: !185, line: 642, baseType: !35, size: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1246, file: !185, line: 643, baseType: !37, size: 16, offset: 16)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1246, file: !185, line: 644, baseType: !850, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1246, file: !185, line: 645, baseType: !107, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1246, file: !185, line: 646, baseType: !858, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1246, file: !185, line: 647, baseType: !7, size: 32, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1246, file: !185, line: 650, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !185, line: 607, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1246, file: !185, line: 651, baseType: !1255, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1246, file: !185, line: 654, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !185, line: 1966, size: 2048, align: 512, elements: !1262)
!1262 = !{!1263, !1267, !1280, !1286, !1290, !1294, !1298, !1302, !1306, !1310, !1314, !1315, !1321, !1325, !1362, !1393, !1400, !1406, !1410, !1414, !1418, !1422, !1426, !1432, !1436}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1261, file: !185, line: 1967, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1210, !1245, !1210, !7}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1261, file: !185, line: 1968, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!27, !1210, !1245, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1273, line: 10, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1274 = !{!1275, !1279}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1272, file: !1273, line: 11, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !31}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1272, file: !1273, line: 12, baseType: !31, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1261, file: !185, line: 1969, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!33, !1284, !1245, !33}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1131, line: 42, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1261, file: !185, line: 1970, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1255, !1245, !33, !877}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1261, file: !185, line: 1972, baseType: !1291, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!33, !1210, !965, !33}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1261, file: !185, line: 1974, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!33, !1284, !1245, !1210, !35, !877}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1261, file: !185, line: 1976, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!33, !1210, !1245, !1210}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1261, file: !185, line: 1977, baseType: !1303, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!33, !1245, !1210}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1261, file: !185, line: 1978, baseType: !1307, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!33, !1284, !1245, !1210, !27}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1261, file: !185, line: 1980, baseType: !1311, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!33, !1284, !1245, !1210, !35}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1261, file: !185, line: 1982, baseType: !1303, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1261, file: !185, line: 1983, baseType: !1316, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!33, !1284, !1245, !1210, !35, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !36, line: 21, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !36, line: 18, baseType: !376)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1261, file: !185, line: 1985, baseType: !1322, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!33, !1284, !1245, !1210, !1245, !1210, !7}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1261, file: !185, line: 1987, baseType: !1326, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!33, !1284, !1210, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !185, line: 226, size: 640, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1344, !1353, !1354, !1359, !1360, !1361}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1330, file: !185, line: 227, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1330, file: !185, line: 228, baseType: !35, size: 16, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !185, line: 241, baseType: !1335, size: 32, offset: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !185, line: 241, size: 32, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1335, file: !185, line: 242, baseType: !850, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1335, file: !185, line: 243, baseType: !1339, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1340, line: 16, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 14, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1341, file: !1340, line: 15, baseType: !855, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !185, line: 245, baseType: !1345, size: 32, offset: 96)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !185, line: 245, size: 32, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1345, file: !185, line: 246, baseType: !858, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1345, file: !185, line: 247, baseType: !1349, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1340, line: 20, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 18, size: 32, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1350, file: !1340, line: 19, baseType: !862, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1330, file: !185, line: 249, baseType: !51, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1330, file: !185, line: 250, baseType: !1355, size: 128, offset: 192)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !914, line: 13, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1355, file: !914, line: 14, baseType: !913, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1355, file: !914, line: 15, baseType: !1102, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1330, file: !185, line: 251, baseType: !1355, size: 128, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1330, file: !185, line: 252, baseType: !1355, size: 128, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1330, file: !185, line: 259, baseType: !701, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1261, file: !185, line: 1988, baseType: !1363, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!33, !1284, !1366, !1368, !376, !7}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1370, line: 22, size: 1280, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1369, file: !1370, line: 23, baseType: !376, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1369, file: !1370, line: 24, baseType: !35, size: 16, offset: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1369, file: !1370, line: 25, baseType: !7, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1369, file: !1370, line: 26, baseType: !921, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1369, file: !1370, line: 27, baseType: !325, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1369, file: !1370, line: 28, baseType: !325, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1369, file: !1370, line: 41, baseType: !325, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1369, file: !1370, line: 42, baseType: !1319, size: 32, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1369, file: !1370, line: 43, baseType: !1319, size: 32, offset: 352)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1369, file: !1370, line: 44, baseType: !850, size: 32, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1369, file: !1370, line: 45, baseType: !858, size: 32, offset: 416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1369, file: !1370, line: 46, baseType: !51, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1369, file: !1370, line: 47, baseType: !1355, size: 128, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1369, file: !1370, line: 48, baseType: !1355, size: 128, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1369, file: !1370, line: 49, baseType: !1355, size: 128, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1369, file: !1370, line: 50, baseType: !1355, size: 128, offset: 896)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1369, file: !1370, line: 51, baseType: !325, size: 64, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1369, file: !1370, line: 52, baseType: !325, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1369, file: !1370, line: 53, baseType: !376, size: 32, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1369, file: !1370, line: 54, baseType: !376, size: 32, offset: 1184)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1369, file: !1370, line: 55, baseType: !325, size: 64, offset: 1216)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1261, file: !185, line: 1990, baseType: !1394, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1397, !1210, !965, !46}
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 66, baseType: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !48, line: 73, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !48, line: 15, baseType: !1102)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1261, file: !185, line: 1991, baseType: !1401, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!33, !1245, !1404, !325, !325}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !185, line: 55, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1261, file: !185, line: 1993, baseType: !1407, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!33, !1245, !33}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1261, file: !185, line: 1994, baseType: !1411, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!33, !1245, !1210, !701, !7, !35}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1261, file: !185, line: 1997, baseType: !1415, size: 64, offset: 1216)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!33, !1284, !1245, !701, !35}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1261, file: !185, line: 1999, baseType: !1419, size: 64, offset: 1280)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1255, !1284, !1210, !33}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1261, file: !185, line: 2001, baseType: !1423, size: 64, offset: 1344)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!33, !1284, !1210, !1255, !33}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1261, file: !185, line: 2003, baseType: !1427, size: 64, offset: 1408)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!33, !1284, !1210, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !185, line: 76, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1261, file: !185, line: 2005, baseType: !1433, size: 64, offset: 1472)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!33, !1210, !1430}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1261, file: !185, line: 2006, baseType: !1437, size: 64, offset: 1536)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1440, !1245}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !185, line: 3192, size: 192, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1441, file: !185, line: 3193, baseType: !798, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1441, file: !185, line: 3194, baseType: !376, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1246, file: !185, line: 655, baseType: !1446, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !185, line: 1190, size: 10752, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !2645, !2777, !2817, !2900, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2917, !2921, !2922, !2925, !2928, !2931, !2934, !2935, !2936, !2977, !3003, !3004, !3005, !3006, !3007, !3008, !3011, !3015, !3024, !3025, !3026, !3027, !3086, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1447, file: !185, line: 1191, baseType: !107, size: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1447, file: !185, line: 1192, baseType: !1319, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1447, file: !185, line: 1193, baseType: !97, size: 8, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1447, file: !185, line: 1194, baseType: !13, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1447, file: !185, line: 1195, baseType: !51, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1447, file: !185, line: 1196, baseType: !1455, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !185, line: 2366, size: 576, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1466, !1470, !1474, !1478, !2633, !2634, !2635, !2637, !2638, !2639, !2641, !2642, !2643, !2644}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1456, file: !185, line: 2367, baseType: !27, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1456, file: !185, line: 2368, baseType: !33, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1456, file: !185, line: 2376, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!33, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1207, line: 21, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1456, file: !185, line: 2377, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !185, line: 75, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1456, file: !185, line: 2378, baseType: !1471, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1210, !1455, !33, !27, !31}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1456, file: !185, line: 2380, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1446}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1456, file: !185, line: 2381, baseType: !1479, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !141, line: 402, size: 9216, align: 512, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1488, !2289, !2315, !2316, !2317, !2318, !2322, !2325, !2326, !2327, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2395, !2399, !2419, !2438, !2439, !2440, !2441, !2450, !2473, !2474, !2477, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2491, !2492, !2591, !2599, !2600, !2601, !2603, !2607, !2608, !2612, !2613, !2614, !2615, !2617, !2618, !2619, !2626, !2627, !2628, !2632}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1480, file: !141, line: 403, baseType: !140, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1480, file: !141, line: 406, baseType: !107, size: 128, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1480, file: !141, line: 409, baseType: !1485, size: 448, offset: 192)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 448, elements: !1486)
!1486 = !{!1487}
!1487 = !DISubrange(count: 56)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1480, file: !141, line: 417, baseType: !1489, size: 768, offset: 640)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !141, line: 45, size: 768, elements: !1490)
!1490 = !{!1491, !2283, !2284, !2285, !2288}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1489, file: !141, line: 46, baseType: !1492, size: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1493, line: 64, size: 512, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1494 = !{!1495, !1496, !1497, !1499, !1543, !2139, !2273, !2278, !2279, !2280, !2281, !2282}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1492, file: !1493, line: 65, baseType: !27, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1492, file: !1493, line: 66, baseType: !107, size: 128, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1492, file: !1493, line: 67, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1492, file: !1493, line: 68, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1493, line: 168, size: 768, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1501, file: !1493, line: 169, baseType: !107, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1501, file: !1493, line: 170, baseType: !69, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1501, file: !1493, line: 171, baseType: !1492, size: 512, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1501, file: !1493, line: 172, baseType: !1507, size: 64, offset: 704)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1493, line: 133, size: 192, elements: !1510)
!1510 = !{!1511, !1518, !1523}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1509, file: !1493, line: 134, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!33, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1509, file: !1493, line: 135, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!27, !1516}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1509, file: !1493, line: 136, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!33, !1516, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1493, line: 125, size: 20736, elements: !1530)
!1530 = !{!1531, !1533, !1537, !1538, !1542}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1529, file: !1493, line: 126, baseType: !1532, size: 192)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 192, elements: !757)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1529, file: !1493, line: 127, baseType: !1534, size: 4096, offset: 192)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 4096, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1529, file: !1493, line: 128, baseType: !33, size: 32, offset: 4288)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1529, file: !1493, line: 129, baseType: !1539, size: 16384, offset: 4320)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16384, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 2048)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1529, file: !1493, line: 130, baseType: !33, size: 32, offset: 20704)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1492, file: !1493, line: 69, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1493, line: 116, size: 384, elements: !1547)
!1547 = !{!1548, !1552, !1571, !2101, !2131, !2135}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1546, file: !1493, line: 117, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1498}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1546, file: !1493, line: 118, baseType: !1553, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1556, line: 254, size: 128, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1557 = !{!1558, !1567}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1555, file: !1556, line: 255, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1397, !1498, !1562, !965}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1556, line: 30, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1563, file: !1556, line: 31, baseType: !27, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1563, file: !1556, line: 32, baseType: !35, size: 16, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1555, file: !1556, line: 256, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1397, !1498, !1562, !27, !46}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1546, file: !1493, line: 119, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1556, line: 84, size: 320, elements: !1576)
!1576 = !{!1577, !1578, !1582, !2097, !2099}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1575, file: !1556, line: 85, baseType: !27, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1575, file: !1556, line: 86, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!35, !1498, !1562, !33}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1575, file: !1556, line: 88, baseType: !1583, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!35, !1498, !1586, !33}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1556, line: 175, size: 512, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !2088, !2092, !2093}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1587, file: !1556, line: 176, baseType: !1563, size: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1587, file: !1556, line: 177, baseType: !46, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1587, file: !1556, line: 178, baseType: !31, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1587, file: !1556, line: 179, baseType: !1593, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !185, line: 472, size: 1536, align: 64, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !2080, !2081, !2082, !2085, !2086, !2087}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1597, file: !185, line: 473, baseType: !1245, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1597, file: !185, line: 474, baseType: !798, size: 128, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1597, file: !185, line: 475, baseType: !897, size: 320, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1597, file: !185, line: 476, baseType: !352, size: 32, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1597, file: !185, line: 477, baseType: !59, size: 32, offset: 544)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1597, file: !185, line: 482, baseType: !563, size: 128, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1597, file: !185, line: 483, baseType: !13, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1597, file: !185, line: 484, baseType: !13, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1597, file: !185, line: 485, baseType: !1608, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !185, line: 404, size: 1280, elements: !1611)
!1611 = !{!1612, !1905, !1975, !1979, !1983, !1989, !1995, !1999, !2004, !2008, !2012, !2016, !2044, !2048, !2052, !2056, !2061, !2065, !2072, !2076}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1610, file: !185, line: 405, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!33, !1616, !1903}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !156, line: 74, size: 512, align: 128, elements: !1618)
!1618 = !{!1619, !1620, !1897, !1902}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !156, line: 75, baseType: !13, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !156, line: 83, baseType: !1621, size: 320, offset: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !156, line: 83, size: 320, elements: !1622)
!1622 = !{!1623, !1644, !1658, !1662, !1896}
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !156, line: 84, baseType: !1624, size: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !156, line: 84, size: 320, elements: !1625)
!1625 = !{!1626, !1637, !1638, !1643}
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !156, line: 90, baseType: !1627, size: 128)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !156, line: 90, size: 128, elements: !1628)
!1628 = !{!1629, !1630, !1635, !1636}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1627, file: !156, line: 91, baseType: !107, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !156, line: 94, baseType: !1631, size: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1627, file: !156, line: 94, size: 128, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1631, file: !156, line: 96, baseType: !31, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1631, file: !156, line: 98, baseType: !7, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1627, file: !156, line: 102, baseType: !107, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1627, file: !156, line: 103, baseType: !107, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1624, file: !156, line: 106, baseType: !1596, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !156, line: 107, baseType: !1639, size: 64, offset: 192)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !156, line: 107, size: 64, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1639, file: !156, line: 108, baseType: !13, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1639, file: !156, line: 109, baseType: !13, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1624, file: !156, line: 117, baseType: !13, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !156, line: 119, baseType: !1645, size: 320)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !156, line: 119, size: 320, elements: !1646)
!1646 = !{!1647, !1648, !1651, !1652, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1645, file: !156, line: 124, baseType: !13, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1645, file: !156, line: 125, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !156, line: 125, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1645, file: !156, line: 126, baseType: !13, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1645, file: !156, line: 127, baseType: !13, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !156, line: 128, baseType: !1654, size: 64, offset: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !156, line: 128, size: 64, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1654, file: !156, line: 133, baseType: !13, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1654, file: !156, line: 138, baseType: !714, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !156, line: 141, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !156, line: 141, size: 64, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1659, file: !156, line: 142, baseType: !13, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !156, line: 144, baseType: !1663, size: 128)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !156, line: 144, size: 128, elements: !1664)
!1664 = !{!1665, !1895}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1663, file: !156, line: 146, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !148, line: 126, size: 1216, elements: !1668)
!1668 = !{!1669, !1679, !1700, !1701, !1702, !1703, !1704, !1877, !1878, !1879}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1667, file: !148, line: 127, baseType: !1670, size: 384)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !148, line: 21, size: 384, elements: !1671)
!1671 = !{!1672, !1673, !1675, !1676, !1677, !1678}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1670, file: !148, line: 22, baseType: !13, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1670, file: !148, line: 23, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1670, file: !148, line: 24, baseType: !1674, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1670, file: !148, line: 25, baseType: !13, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1670, file: !148, line: 26, baseType: !13, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1670, file: !148, line: 27, baseType: !13, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1667, file: !148, line: 128, baseType: !1680, size: 128, offset: 384)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1681, line: 105, size: 128, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1680, file: !1681, line: 110, baseType: !13, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1681, line: 118, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1681, line: 95, size: 448, elements: !1687)
!1687 = !{!1688, !1689, !1695, !1696, !1697, !1698, !1699}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1686, file: !1681, line: 96, baseType: !714, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1686, file: !1681, line: 97, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1681, line: 60, baseType: !1692)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1686, file: !1681, line: 98, baseType: !1690, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1686, file: !1681, line: 99, baseType: !877, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1686, file: !1681, line: 100, baseType: !877, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1686, file: !1681, line: 101, baseType: !276, size: 128, align: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1686, file: !1681, line: 102, baseType: !1694, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1667, file: !148, line: 129, baseType: !1043, size: 256, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1667, file: !148, line: 130, baseType: !147, size: 32, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !148, line: 131, baseType: !7, size: 32, offset: 800)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1667, file: !148, line: 132, baseType: !13, size: 64, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1667, file: !148, line: 133, baseType: !1705, size: 64, offset: 896)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !148, line: 77, size: 192, elements: !1708)
!1708 = !{!1709, !1713, !1873}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1707, file: !148, line: 83, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1616}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1707, file: !148, line: 89, baseType: !1714, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !156, line: 1184, baseType: !7)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1720, line: 512, size: 896, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1721 = !{!1722, !1840, !1841, !1848, !1855, !1865, !1866, !1867, !1869, !1871}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 513, baseType: !1723, size: 320)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1719, file: !1720, line: 513, size: 320, elements: !1724)
!1724 = !{!1725, !1836, !1837, !1838, !1839}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1723, file: !1720, line: 514, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !156, line: 625, size: 1344, elements: !1728)
!1728 = !{!1729, !1738, !1739, !1747, !1754, !1755, !1760, !1761, !1766, !1767, !1770, !1829, !1830, !1831, !1832, !1833, !1834}
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !156, line: 628, baseType: !1730, size: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !156, line: 628, size: 128, elements: !1731)
!1731 = !{!1732, !1737}
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !156, line: 629, baseType: !1733, size: 128)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !156, line: 629, size: 128, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1733, file: !156, line: 631, baseType: !13, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1733, file: !156, line: 632, baseType: !13, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1730, file: !156, line: 635, baseType: !276, size: 128, align: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1727, file: !156, line: 639, baseType: !673, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1727, file: !156, line: 640, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1741, line: 297, baseType: !1742)
!1741 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1741, line: 297, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1742, file: !1741, line: 297, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1746, line: 19, baseType: !13)
!1746 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !156, line: 646, baseType: !1748, size: 64, offset: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !156, line: 646, size: 64, elements: !1749)
!1749 = !{!1750, !1753}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1748, file: !156, line: 647, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !156, line: 542, baseType: !13)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1748, file: !156, line: 648, baseType: !1752, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1727, file: !156, line: 666, baseType: !33, size: 32, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1727, file: !156, line: 667, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !156, line: 579, size: 320, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1757, file: !156, line: 580, baseType: !897, size: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1727, file: !156, line: 670, baseType: !877, size: 8, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1727, file: !156, line: 681, baseType: !1762, size: 256, offset: 512)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1727, file: !156, line: 678, size: 256, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1762, file: !156, line: 679, baseType: !426, size: 192, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1762, file: !156, line: 680, baseType: !13, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1727, file: !156, line: 689, baseType: !107, size: 128, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1727, file: !156, line: 691, baseType: !1768, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !156, line: 691, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1727, file: !156, line: 694, baseType: !1771, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1720, line: 563, size: 1024, elements: !1774)
!1774 = !{!1775, !1779, !1780, !1784, !1788, !1792, !1793, !1797, !1801, !1805, !1806, !1807, !1811, !1815, !1821, !1825}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1773, file: !1720, line: 564, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1726}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1773, file: !1720, line: 569, baseType: !1776, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1773, file: !1720, line: 571, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!33, !1726, !13}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1773, file: !1720, line: 572, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!33, !1726}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1773, file: !1720, line: 578, baseType: !1789, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!33, !1726, !13, !13, !13}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1773, file: !1720, line: 580, baseType: !1714, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1773, file: !1720, line: 581, baseType: !1794, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1717, !1718, !7}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1773, file: !1720, line: 582, baseType: !1798, size: 64, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1717, !1718, !13, !13}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1773, file: !1720, line: 584, baseType: !1802, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!13, !1726}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1773, file: !1720, line: 588, baseType: !1714, size: 64, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1773, file: !1720, line: 591, baseType: !1714, size: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1773, file: !1720, line: 597, baseType: !1808, size: 64, offset: 704)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!33, !1726, !13, !31, !33, !33}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !1720, line: 603, baseType: !1812, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!27, !1726}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1773, file: !1720, line: 613, baseType: !1816, size: 64, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!33, !1726, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !367, line: 54, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1773, file: !1720, line: 625, baseType: !1822, size: 64, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1819, !1726, !13}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1773, file: !1720, line: 633, baseType: !1826, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1616, !1726, !13}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1727, file: !156, line: 697, baseType: !13, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1727, file: !156, line: 699, baseType: !701, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1727, file: !156, line: 700, baseType: !31, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1727, file: !156, line: 711, baseType: !714, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1727, file: !156, line: 717, baseType: !1819, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1727, file: !156, line: 722, baseType: !1835, offset: 1344)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !156, line: 570, elements: !694)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1723, file: !1720, line: 515, baseType: !352, size: 32, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1723, file: !1720, line: 516, baseType: !13, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1723, file: !1720, line: 517, baseType: !13, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1723, file: !1720, line: 518, baseType: !13, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1719, file: !1720, line: 520, baseType: !155, size: 32, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1719, file: !1720, line: 522, baseType: !1842, size: 64, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1746, line: 22, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 22, size: 64, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1844, file: !1746, line: 22, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1746, line: 15, baseType: !13)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1719, file: !1720, line: 524, baseType: !1849, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1741, line: 372, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 372, size: 64, elements: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1851, file: !1741, line: 372, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1746, line: 16, baseType: !13)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 527, baseType: !1856, size: 64, offset: 512)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 527, size: 64, elements: !1857)
!1857 = !{!1858, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1856, file: !1720, line: 528, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1746, line: 21, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 21, size: 64, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1860, file: !1746, line: 21, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1746, line: 14, baseType: !13)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1856, file: !1720, line: 529, baseType: !1843, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1719, file: !1720, line: 534, baseType: !1616, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1719, file: !1720, line: 535, baseType: !1616, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1719, file: !1720, line: 541, baseType: !1868, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1719, file: !1720, line: 545, baseType: !1870, size: 64, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1719, file: !1720, line: 549, baseType: !1872, size: 64, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1741, line: 520, baseType: !1616)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1707, file: !148, line: 100, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!33, !1666, !13, !13, !33}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1667, file: !148, line: 134, baseType: !31, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1667, file: !148, line: 135, baseType: !33, size: 32, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !148, line: 136, baseType: !1880, size: 128, offset: 1088)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !148, line: 136, size: 128, elements: !1881)
!1881 = !{!1882, !1888}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1880, file: !148, line: 137, baseType: !1883, size: 128)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1884, line: 6, size: 128, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1883, file: !1884, line: 7, baseType: !325, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1883, file: !1884, line: 8, baseType: !325, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !148, line: 138, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !148, line: 138, elements: !1890)
!1890 = !{!1891, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1889, file: !148, line: 138, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !148, line: 138, elements: !694)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1889, file: !148, line: 138, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, elements: !294)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1663, file: !156, line: 147, baseType: !31, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1621, file: !156, line: 161, baseType: !276, size: 128, align: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !156, line: 164, baseType: !1898, size: 32, offset: 384)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !156, line: 164, size: 32, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1898, file: !156, line: 169, baseType: !59, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1898, file: !156, line: 177, baseType: !7, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1617, file: !156, line: 181, baseType: !59, size: 32, offset: 416)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !185, line: 309, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1610, file: !185, line: 406, baseType: !1906, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!33, !701, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !156, line: 293, size: 1536, elements: !1911)
!1911 = !{!1912, !1942, !1956}
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !156, line: 295, baseType: !1913, size: 512)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !156, line: 295, size: 512, elements: !1914)
!1914 = !{!1915, !1941}
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !156, line: 296, baseType: !1916, size: 448)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !156, line: 296, size: 448, elements: !1917)
!1917 = !{!1918, !1919, !1928, !1929, !1930, !1939, !1940}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !156, line: 298, baseType: !13, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !156, line: 299, baseType: !1920, size: 128, offset: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !156, line: 299, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1920, file: !156, line: 300, baseType: !107, size: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !156, line: 302, baseType: !1924, size: 128)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !156, line: 302, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1924, file: !156, line: 303, baseType: !31, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1924, file: !156, line: 305, baseType: !7, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1916, file: !156, line: 310, baseType: !1596, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1916, file: !156, line: 311, baseType: !13, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !156, line: 312, baseType: !1931, size: 64, offset: 320)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !156, line: 312, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1931, file: !156, line: 313, baseType: !31, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1931, file: !156, line: 314, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !156, line: 257, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 255, size: 64, elements: !1937)
!1937 = !{!1938}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1936, file: !156, line: 256, baseType: !13, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1916, file: !156, line: 316, baseType: !59, size: 32, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1916, file: !156, line: 317, baseType: !59, size: 32, offset: 416)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1913, file: !156, line: 323, baseType: !1617, size: 512, align: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !156, line: 325, baseType: !1943, size: 512, offset: 512)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !156, line: 325, size: 512, elements: !1944)
!1944 = !{!1945, !1955}
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !156, line: 326, baseType: !1946, size: 320)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !156, line: 326, size: 320, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1946, file: !156, line: 327, baseType: !13, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1946, file: !156, line: 328, baseType: !13, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1946, file: !156, line: 329, baseType: !13, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1946, file: !156, line: 331, baseType: !59, size: 32, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1946, file: !156, line: 332, baseType: !59, size: 32, offset: 224)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1946, file: !156, line: 333, baseType: !59, size: 32, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1946, file: !156, line: 335, baseType: !7, size: 32, offset: 288)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1943, file: !156, line: 339, baseType: !1617, size: 512, align: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !156, line: 341, baseType: !1957, size: 512, offset: 1024)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !156, line: 341, size: 512, elements: !1958)
!1958 = !{!1959, !1968, !1974}
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !156, line: 342, baseType: !1960, size: 384)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1957, file: !156, line: 342, size: 384, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1960, file: !156, line: 343, baseType: !13, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1960, file: !156, line: 344, baseType: !13, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1960, file: !156, line: 346, baseType: !31, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1960, file: !156, line: 347, baseType: !31, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1960, file: !156, line: 348, baseType: !31, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1960, file: !156, line: 349, baseType: !31, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !156, line: 352, baseType: !1969, size: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1957, file: !156, line: 352, size: 256, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1969, file: !156, line: 353, baseType: !13, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1969, file: !156, line: 354, baseType: !13, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1969, file: !156, line: 356, baseType: !107, size: 128, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1957, file: !156, line: 359, baseType: !1617, size: 512, align: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1610, file: !185, line: 409, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!33, !1596, !1903}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1610, file: !185, line: 412, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!877, !1596, !1909}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1610, file: !185, line: 414, baseType: !1984, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !185, line: 310, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1610, file: !185, line: 416, baseType: !1990, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!33, !701, !1596, !51, !7, !1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1610, file: !185, line: 419, baseType: !1996, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!33, !701, !1596, !51, !7, !7, !1616, !31}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1610, file: !185, line: 424, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !1596, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !36, line: 131, baseType: !325)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1610, file: !185, line: 425, baseType: !2005, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1909, !46, !46}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1610, file: !185, line: 426, baseType: !2009, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!877, !1909, !352}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1610, file: !185, line: 427, baseType: !2013, size: 64, offset: 640)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !1909}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1610, file: !185, line: 428, baseType: !2017, size: 64, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!1397, !2020, !2042}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !185, line: 373, size: 384, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2029, !2030, !2031, !2032}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2021, file: !185, line: 374, baseType: !701, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2021, file: !185, line: 375, baseType: !51, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2021, file: !185, line: 376, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !2020, !1102}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2021, file: !185, line: 377, baseType: !31, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2021, file: !185, line: 378, baseType: !33, size: 32, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2021, file: !185, line: 379, baseType: !103, size: 16, offset: 288)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !185, line: 380, baseType: !2033, size: 64, offset: 320)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !185, line: 380, size: 64, elements: !2034)
!2034 = !{!2035, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2033, file: !185, line: 386, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !185, line: 386, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2033, file: !185, line: 395, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1397, !31}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !185, line: 69, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1610, file: !185, line: 433, baseType: !2045, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!33, !1596, !1909, !1909, !171}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1610, file: !185, line: 435, baseType: !2049, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!33, !1909}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1610, file: !185, line: 436, baseType: !2053, size: 64, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!877, !1909, !46, !46}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1610, file: !185, line: 438, baseType: !2057, size: 64, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1909, !2060, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1610, file: !185, line: 439, baseType: !2062, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!33, !1596, !1616}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1610, file: !185, line: 442, baseType: !2066, size: 64, offset: 1088)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!33, !2069, !701, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !185, line: 66, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1610, file: !185, line: 444, baseType: !2073, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !701}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1610, file: !185, line: 445, baseType: !2077, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!33, !2020, !2042}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !185, line: 486, baseType: !13, size: 64, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1597, file: !185, line: 487, baseType: !897, size: 320, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1597, file: !185, line: 488, baseType: !2083, size: 32, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2084, line: 8, baseType: !376)
!2084 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1597, file: !185, line: 489, baseType: !69, size: 32, offset: 1312)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1597, file: !185, line: 490, baseType: !107, size: 128, offset: 1344)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1597, file: !185, line: 491, baseType: !31, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1587, file: !1556, line: 180, baseType: !2089, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!1397, !701, !1498, !1586, !965, !51, !46}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1587, file: !1556, line: 182, baseType: !2089, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1587, file: !1556, line: 184, baseType: !2094, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!33, !701, !1498, !1586, !1726}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1575, file: !1556, line: 90, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1575, file: !1556, line: 91, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1546, file: !1493, line: 120, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !1516}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !179, line: 39, size: 384, elements: !2108)
!2108 = !{!2109, !2110, !2114, !2118, !2126, !2130}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2107, file: !179, line: 40, baseType: !178, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2107, file: !179, line: 41, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!877}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2107, file: !179, line: 42, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!31}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2107, file: !179, line: 43, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !179, line: 19, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2107, file: !179, line: 44, baseType: !2127, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2122}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2107, file: !179, line: 45, baseType: !1276, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1546, file: !1493, line: 121, baseType: !2132, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2122, !1516}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1546, file: !1493, line: 122, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !1516, !1068, !1069}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1492, file: !1493, line: 70, baseType: !2140, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2142, line: 190, size: 1152, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2265, !2266, !2267, !2268, !2269, !2272}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2141, file: !2142, line: 191, baseType: !59, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2141, file: !2142, line: 192, baseType: !59, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2141, file: !2142, line: 202, baseType: !2140, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2141, file: !2142, line: 203, baseType: !27, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2141, file: !2142, line: 205, baseType: !426, size: 192, align: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2141, file: !2142, line: 207, baseType: !2122, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2141, file: !2142, line: 208, baseType: !7, size: 32, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2142, line: 209, baseType: !2152, size: 256, offset: 512)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2142, line: 209, size: 256, elements: !2153)
!2153 = !{!2154, !2163, !2167}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2152, file: !2142, line: 210, baseType: !2155, size: 256)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2142, line: 153, size: 256, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2162}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2155, file: !2142, line: 154, baseType: !13, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2155, file: !2142, line: 156, baseType: !566, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2155, file: !2142, line: 162, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2142, line: 162, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2155, file: !2142, line: 167, baseType: !13, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2152, file: !2142, line: 211, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2142, line: 170, size: 64, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2164, file: !2142, line: 171, baseType: !2140, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2152, file: !2142, line: 212, baseType: !2168, size: 256)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2142, line: 174, size: 256, elements: !2169)
!2169 = !{!2170, !2260, !2263, !2264}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2168, file: !2142, line: 175, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2142, line: 271, size: 768, elements: !2174)
!2174 = !{!2175, !2233, !2237, !2238, !2239, !2240, !2241, !2245, !2246, !2247, !2248, !2256}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2173, file: !2142, line: 276, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!33, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2142, line: 251, size: 1216, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2180, file: !2142, line: 253, baseType: !2140, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2180, file: !2142, line: 254, baseType: !701, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2180, file: !2142, line: 255, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2187, line: 17, size: 960, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2218, !2219, !2222}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2186, file: !2187, line: 18, baseType: !965, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2186, file: !2187, line: 19, baseType: !46, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2186, file: !2187, line: 20, baseType: !46, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2186, file: !2187, line: 21, baseType: !46, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2186, file: !2187, line: 22, baseType: !46, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2186, file: !2187, line: 23, baseType: !51, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2186, file: !2187, line: 24, baseType: !51, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2186, file: !2187, line: 25, baseType: !721, size: 256, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2186, file: !2187, line: 26, baseType: !2198, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2187, line: 32, size: 256, elements: !2201)
!2201 = !{!2202, !2206, !2210, !2214}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2200, file: !2187, line: 33, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!31, !2185, !50}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2200, file: !2187, line: 34, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2185, !31}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2200, file: !2187, line: 35, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!31, !2185, !31, !50}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2200, file: !2187, line: 36, baseType: !2215, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!33, !2185, !31}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2186, file: !2187, line: 27, baseType: !33, size: 32, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2186, file: !2187, line: 28, baseType: !2220, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2186, file: !2187, line: 29, baseType: !31, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2180, file: !2142, line: 256, baseType: !31, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2180, file: !2142, line: 259, baseType: !721, size: 256, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2180, file: !2142, line: 260, baseType: !721, size: 256, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2180, file: !2142, line: 261, baseType: !33, size: 32, offset: 768)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2180, file: !2142, line: 262, baseType: !107, size: 128, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2180, file: !2142, line: 263, baseType: !965, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2180, file: !2142, line: 265, baseType: !46, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2180, file: !2142, line: 266, baseType: !877, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2180, file: !2142, line: 267, baseType: !877, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2180, file: !2142, line: 268, baseType: !1771, size: 64, offset: 1152)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2173, file: !2142, line: 277, baseType: !2234, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2179}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2173, file: !2142, line: 290, baseType: !2215, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2173, file: !2142, line: 292, baseType: !2203, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2173, file: !2142, line: 293, baseType: !2211, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2173, file: !2142, line: 294, baseType: !2207, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2173, file: !2142, line: 296, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1397, !2179, !965, !46, !51}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2173, file: !2142, line: 306, baseType: !46, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2173, file: !2142, line: 313, baseType: !877, size: 8, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2173, file: !2142, line: 314, baseType: !2242, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2173, file: !2142, line: 317, baseType: !2249, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2252, !2179, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2253, line: 59, baseType: !7)
!2253 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !185, line: 61, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2173, file: !2142, line: 320, baseType: !2257, size: 64, offset: 704)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!33, !2179, !1726}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2168, file: !2142, line: 176, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2142, line: 35, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2168, file: !2142, line: 177, baseType: !51, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2168, file: !2142, line: 178, baseType: !2140, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2141, file: !2142, line: 215, baseType: !31, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2141, file: !2142, line: 221, baseType: !325, size: 64, offset: 832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2142, line: 223, baseType: !37, size: 16, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2141, file: !2142, line: 224, baseType: !35, size: 16, offset: 912)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2141, file: !2142, line: 225, baseType: !2270, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2142, line: 36, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2141, file: !2142, line: 227, baseType: !276, size: 128, align: 64, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1492, file: !1493, line: 71, baseType: !2274, size: 32, offset: 448)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2275, line: 19, size: 32, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2276 = !{!2277}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2274, file: !2275, line: 20, baseType: !382, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1492, file: !1493, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1492, file: !1493, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1492, file: !1493, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1492, file: !1493, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1492, file: !1493, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1489, file: !141, line: 47, baseType: !1479, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1489, file: !141, line: 48, baseType: !1498, size: 64, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1489, file: !141, line: 49, baseType: !2286, size: 64, offset: 640)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !141, line: 49, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1489, file: !141, line: 50, baseType: !1042, size: 64, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1480, file: !141, line: 418, baseType: !2290, size: 64, offset: 1408)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !141, line: 53, size: 448, elements: !2292)
!2292 = !{!2293, !2294, !2299, !2303, !2307, !2311}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2291, file: !141, line: 54, baseType: !1563, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2291, file: !141, line: 55, baseType: !2295, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!1397, !2290, !2298, !965}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2291, file: !141, line: 57, baseType: !2300, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!1397, !2290, !2298, !27, !46}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2291, file: !141, line: 59, baseType: !2304, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !1479, !27}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2291, file: !141, line: 60, baseType: !2308, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!33, !1479}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2291, file: !141, line: 61, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !1479}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1480, file: !141, line: 419, baseType: !27, size: 64, offset: 1472)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1480, file: !141, line: 420, baseType: !27, size: 64, offset: 1536)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1480, file: !141, line: 421, baseType: !1498, size: 64, offset: 1600)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1480, file: !141, line: 424, baseType: !2319, size: 64, offset: 1664)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !141, line: 424, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1480, file: !141, line: 425, baseType: !2323, size: 64, offset: 1728)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1480, file: !141, line: 426, baseType: !7, size: 32, offset: 1792)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1480, file: !141, line: 435, baseType: !721, size: 256, offset: 1856)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1480, file: !141, line: 437, baseType: !2328, size: 64, offset: 2112)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2330, line: 69, size: 320, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2331 = !{!2332, !2333, !2334, !2351, !2353, !2357, !2358}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2329, file: !2330, line: 70, baseType: !27, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2329, file: !2330, line: 71, baseType: !1479, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !2330, line: 72, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2330, line: 47, size: 256, elements: !2338)
!2338 = !{!2339, !2340, !2346, !2350}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !2330, line: 49, baseType: !7, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2337, file: !2330, line: 51, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!33, !27, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2337, file: !2330, line: 53, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!33, !965, !2344}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2337, file: !2330, line: 55, baseType: !1276, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2329, file: !2330, line: 73, baseType: !2352, size: 16, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2329, file: !2330, line: 74, baseType: !2354, size: 8, offset: 208)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !94, line: 16, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !96, line: 20, baseType: !2356)
!2356 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2329, file: !2330, line: 75, baseType: !93, size: 8, offset: 216)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !2330, line: 76, baseType: !2359, size: 64, offset: 256)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2329, file: !2330, line: 76, size: 64, elements: !2360)
!2360 = !{!2361, !2362, !2369}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2359, file: !2330, line: 77, baseType: !31, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2359, file: !2330, line: 78, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2330, line: 86, size: 128, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2365, file: !2330, line: 87, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2365, file: !2330, line: 88, baseType: !965, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2359, file: !2330, line: 79, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2330, line: 92, size: 256, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2378, !2379}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2372, file: !2330, line: 94, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2372, file: !2330, line: 95, baseType: !7, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2372, file: !2330, line: 96, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2372, file: !2330, line: 97, baseType: !2335, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2372, file: !2330, line: 98, baseType: !31, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1480, file: !141, line: 438, baseType: !7, size: 32, offset: 2176)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1480, file: !141, line: 441, baseType: !7, size: 32, offset: 2208)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1480, file: !141, line: 442, baseType: !2319, size: 64, offset: 2240)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1480, file: !141, line: 443, baseType: !2323, size: 64, offset: 2304)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1480, file: !141, line: 444, baseType: !877, size: 8, offset: 2368)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1480, file: !141, line: 451, baseType: !877, size: 8, offset: 2376)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1480, file: !141, line: 454, baseType: !7, size: 32, offset: 2400)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1480, file: !141, line: 455, baseType: !2388, size: 64, offset: 2432)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2390, line: 23, size: 96, elements: !2391)
!2390 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2391 = !{!2392, !2393, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2389, file: !2390, line: 24, baseType: !33, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2389, file: !2390, line: 24, baseType: !33, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2389, file: !2390, line: 24, baseType: !33, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1480, file: !141, line: 458, baseType: !2396, size: 64, offset: 2496)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!33}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1480, file: !141, line: 460, baseType: !2400, size: 4032, align: 512, offset: 2560)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2401, size: 4032, elements: !2417)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !141, line: 362, size: 576, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2401, file: !141, line: 363, baseType: !31, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2401, file: !141, line: 364, baseType: !7, size: 32, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2401, file: !141, line: 367, baseType: !2406, size: 448, offset: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !141, line: 319, size: 448, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2406, file: !141, line: 320, baseType: !1479, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2406, file: !141, line: 321, baseType: !2410, size: 384, offset: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2411, line: 40, size: 384, elements: !2412)
!2411 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2412 = !{!2413}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2410, file: !2411, line: 41, baseType: !2414, size: 384, align: 64)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, align: 64, elements: !2415)
!2415 = !{!2416}
!2416 = !DISubrange(count: 2)
!2417 = !{!2418}
!2418 = !DISubrange(count: 7)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1480, file: !141, line: 463, baseType: !2420, size: 192, offset: 6592)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2421, line: 8, size: 192, elements: !2422)
!2421 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2422 = !{!2423, !2424, !2425}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2420, file: !2421, line: 10, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2420, file: !2421, line: 11, baseType: !271, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2420, file: !2421, line: 12, baseType: !2426, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2428, line: 59, size: 48, elements: !2429)
!2428 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2429 = !{!2430, !2433, !2434, !2435, !2436, !2437}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2427, file: !2428, line: 60, baseType: !2431, size: 16)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !2432)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !925)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2427, file: !2428, line: 61, baseType: !2431, size: 16, offset: 16)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2427, file: !2428, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2427, file: !2428, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2427, file: !2428, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2427, file: !2428, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1480, file: !141, line: 465, baseType: !13, size: 64, offset: 6784)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1480, file: !141, line: 469, baseType: !7, size: 32, offset: 6848)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1480, file: !141, line: 470, baseType: !107, size: 128, offset: 6912)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1480, file: !141, line: 471, baseType: !2442, size: 64, offset: 7040)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2444, line: 33, size: 96, elements: !2445)
!2444 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2443, file: !2444, line: 37, baseType: !33, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2443, file: !2444, line: 43, baseType: !33, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2443, file: !2444, line: 45, baseType: !37, size: 16, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !2444, line: 47, baseType: !37, size: 16, offset: 80)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1480, file: !141, line: 476, baseType: !2451, size: 64, offset: 7104)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !141, line: 378, size: 256, elements: !2453)
!2453 = !{!2454, !2470, !2471, !2472}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2452, file: !141, line: 379, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2457, line: 204, baseType: !2458)
!2457 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2457, line: 197, size: 192, elements: !2459)
!2459 = !{!2460, !2462, !2463, !2464, !2466, !2468}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2458, file: !2457, line: 198, baseType: !2461, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2457, line: 21, baseType: !377)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2458, file: !2457, line: 199, baseType: !97, size: 8, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2458, file: !2457, line: 200, baseType: !97, size: 8, offset: 40)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2458, file: !2457, line: 201, baseType: !2465, size: 16, offset: 48)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2457, line: 17, baseType: !104)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2458, file: !2457, line: 202, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2457, line: 16, baseType: !290)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2458, file: !2457, line: 203, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2457, line: 22, baseType: !290)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2452, file: !141, line: 380, baseType: !7, size: 32, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2452, file: !141, line: 381, baseType: !965, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2452, file: !141, line: 382, baseType: !965, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1480, file: !141, line: 477, baseType: !2452, size: 256, offset: 7168)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1480, file: !141, line: 480, baseType: !2475, size: 64, offset: 7424)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !141, line: 480, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1480, file: !141, line: 483, baseType: !2478, size: 64, offset: 7488)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !141, line: 483, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1480, file: !141, line: 488, baseType: !965, size: 64, offset: 7552)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1480, file: !141, line: 492, baseType: !31, size: 64, offset: 7616)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1480, file: !141, line: 493, baseType: !7, size: 32, offset: 7680)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1480, file: !141, line: 495, baseType: !31, size: 64, offset: 7744)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1480, file: !141, line: 496, baseType: !7, size: 32, offset: 7808)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1480, file: !141, line: 499, baseType: !7, size: 32, offset: 7840)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1480, file: !141, line: 500, baseType: !2487, size: 64, offset: 7872)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2489, line: 45, baseType: !2490)
!2489 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1480, file: !141, line: 503, baseType: !7, size: 32, offset: 7936)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1480, file: !141, line: 504, baseType: !2493, size: 64, offset: 8000)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2496, line: 96, size: 192, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2497 = !{!2498, !2499, !2552, !2555}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2495, file: !2496, line: 97, baseType: !7, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2495, file: !2496, line: 98, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2496, line: 24, size: 3072, elements: !2502)
!2502 = !{!2503, !2505, !2506, !2507, !2508, !2521, !2522, !2523, !2524, !2536, !2537, !2538, !2549, !2550, !2551}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2501, file: !2496, line: 26, baseType: !2504, size: 128)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 128, elements: !2415)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2501, file: !2496, line: 27, baseType: !2504, size: 128, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2501, file: !2496, line: 28, baseType: !33, size: 32, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2501, file: !2496, line: 31, baseType: !69, size: 32, align: 512, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2501, file: !2496, line: 32, baseType: !2509, size: 960, offset: 576)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2510, line: 206, size: 960, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2511 = !{!2512, !2513, !2516, !2518, !2519, !2520}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2509, file: !2510, line: 207, baseType: !279, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2509, file: !2510, line: 208, baseType: !2514, size: 256, offset: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2515, size: 256, elements: !778)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2509, file: !2510, line: 209, baseType: !2517, size: 256, offset: 320)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !778)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2509, file: !2510, line: 213, baseType: !1102, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2509, file: !2510, line: 215, baseType: !1104, size: 256, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !2510, line: 216, baseType: !93, size: 8, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2501, file: !2496, line: 33, baseType: !13, size: 64, offset: 1536)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2501, file: !2496, line: 34, baseType: !13, size: 64, offset: 1600)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2501, file: !2496, line: 35, baseType: !877, size: 8, offset: 1664)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2501, file: !2496, line: 36, baseType: !2525, size: 320, offset: 1728)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2526, line: 11, size: 320, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2527 = !{!2528, !2529, !2530, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2525, file: !2526, line: 16, baseType: !773, size: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2525, file: !2526, line: 17, baseType: !13, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2525, file: !2526, line: 18, baseType: !2531, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2525, file: !2526, line: 19, baseType: !376, size: 32, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2501, file: !2496, line: 37, baseType: !1004, size: 256, offset: 2048)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2501, file: !2496, line: 38, baseType: !276, size: 128, align: 64, offset: 2304)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2501, file: !2496, line: 39, baseType: !2539, size: 64, offset: 2432)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2496, line: 49, size: 768, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2540, file: !2496, line: 50, baseType: !69, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2540, file: !2496, line: 51, baseType: !2517, size: 256, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2540, file: !2496, line: 53, baseType: !2517, size: 256, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2540, file: !2496, line: 54, baseType: !13, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2540, file: !2496, line: 55, baseType: !2539, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2540, file: !2496, line: 56, baseType: !33, size: 32, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2540, file: !2496, line: 57, baseType: !33, size: 32, offset: 736)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2501, file: !2496, line: 40, baseType: !13, size: 64, offset: 2496)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2501, file: !2496, line: 42, baseType: !33, size: 32, offset: 2560)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2501, file: !2496, line: 43, baseType: !2494, size: 64, offset: 2624)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2495, file: !2496, line: 99, baseType: !2553, offset: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2554, line: 211, elements: !694)
!2554 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2495, file: !2496, line: 100, baseType: !2556, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2496, line: 63, size: 3008, elements: !2558)
!2558 = !{!2559, !2560, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2590}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2557, file: !2496, line: 64, baseType: !2539, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2557, file: !2496, line: 65, baseType: !2561, size: 192, offset: 64)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2539, size: 192, elements: !757)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2557, file: !2496, line: 67, baseType: !33, size: 32, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2557, file: !2496, line: 68, baseType: !721, size: 256, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2557, file: !2496, line: 69, baseType: !69, size: 32, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2557, file: !2496, line: 70, baseType: !721, size: 256, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2557, file: !2496, line: 71, baseType: !13, size: 64, offset: 896)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2557, file: !2496, line: 72, baseType: !13, size: 64, offset: 960)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2557, file: !2496, line: 73, baseType: !13, size: 64, offset: 1024)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2557, file: !2496, line: 74, baseType: !13, size: 64, offset: 1088)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2557, file: !2496, line: 75, baseType: !13, size: 64, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2557, file: !2496, line: 76, baseType: !13, size: 64, offset: 1216)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2557, file: !2496, line: 77, baseType: !13, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2557, file: !2496, line: 78, baseType: !13, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2557, file: !2496, line: 79, baseType: !877, size: 8, offset: 1408)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2557, file: !2496, line: 80, baseType: !13, size: 64, offset: 1472)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2557, file: !2496, line: 81, baseType: !721, size: 256, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2557, file: !2496, line: 82, baseType: !1043, size: 256, offset: 1792)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2557, file: !2496, line: 84, baseType: !59, size: 32, offset: 2048)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2557, file: !2496, line: 87, baseType: !13, size: 64, offset: 2112)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2557, file: !2496, line: 88, baseType: !13, size: 64, offset: 2176)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2557, file: !2496, line: 89, baseType: !2582, size: 704, offset: 2240)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1005, line: 111, size: 704, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2589}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2582, file: !1005, line: 112, baseType: !1004, size: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2582, file: !1005, line: 113, baseType: !2525, size: 320, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2582, file: !1005, line: 116, baseType: !2587, size: 64, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1005, line: 18, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2582, file: !1005, line: 117, baseType: !33, size: 32, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2557, file: !2496, line: 90, baseType: !2494, size: 64, offset: 2944)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1480, file: !141, line: 515, baseType: !2592, size: 64, offset: 8064)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2594, line: 117, size: 128, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2595 = !{!2596, !2597, !2598}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2593, file: !2594, line: 118, baseType: !889, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2593, file: !2594, line: 119, baseType: !889, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2593, file: !2594, line: 120, baseType: !1102, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1480, file: !141, line: 516, baseType: !7, size: 32, offset: 8128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1480, file: !141, line: 519, baseType: !7, size: 32, offset: 8160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1480, file: !141, line: 520, baseType: !2602, size: 64, offset: 8192)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1480, file: !141, line: 523, baseType: !2604, size: 64, offset: 8256)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !141, line: 523, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1480, file: !141, line: 524, baseType: !7, size: 32, offset: 8320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1480, file: !141, line: 525, baseType: !2609, size: 64, offset: 8384)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !141, line: 525, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1480, file: !141, line: 526, baseType: !7, size: 32, offset: 8448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1480, file: !141, line: 533, baseType: !31, size: 64, offset: 8512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1480, file: !141, line: 534, baseType: !7, size: 32, offset: 8576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1480, file: !141, line: 535, baseType: !2616, size: 64, offset: 8640)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1480, file: !141, line: 536, baseType: !7, size: 32, offset: 8704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1480, file: !141, line: 539, baseType: !33, size: 32, offset: 8736)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1480, file: !141, line: 540, baseType: !2620, size: 64, offset: 8768)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2622, line: 32, size: 64, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2621, file: !2622, line: 33, baseType: !889, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2621, file: !2622, line: 34, baseType: !889, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1480, file: !141, line: 563, baseType: !107, size: 128, offset: 8832)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1480, file: !141, line: 565, baseType: !107, size: 128, offset: 8960)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1480, file: !141, line: 568, baseType: !2629, size: 64, offset: 9088)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1480, file: !141, line: 570, baseType: !59, size: 32, offset: 9152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1456, file: !185, line: 2382, baseType: !1455, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1456, file: !185, line: 2383, baseType: !769, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1456, file: !185, line: 2385, baseType: !2636, offset: 576)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2554, line: 206, elements: !694)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1456, file: !185, line: 2386, baseType: !2636, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1456, file: !185, line: 2387, baseType: !2636, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1456, file: !185, line: 2388, baseType: !2640, offset: 576)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, elements: !757)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1456, file: !185, line: 2390, baseType: !2636, offset: 576)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1456, file: !185, line: 2391, baseType: !2636, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1456, file: !185, line: 2392, baseType: !2636, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1456, file: !185, line: 2393, baseType: !2636, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1447, file: !185, line: 1197, baseType: !2646, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !185, line: 2057, size: 1664, elements: !2649)
!2649 = !{!2650, !2654, !2658, !2659, !2663, !2667, !2671, !2672, !2673, !2677, !2681, !2685, !2686, !2687, !2693, !2697, !2698, !2702, !2703, !2704, !2705, !2709, !2713, !2760, !2775, !2776}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2648, file: !185, line: 2058, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!1245, !1446}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2648, file: !185, line: 2059, baseType: !2655, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !1245}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2648, file: !185, line: 2060, baseType: !2655, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2648, file: !185, line: 2062, baseType: !2660, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !1245, !33}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2648, file: !185, line: 2063, baseType: !2664, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!33, !1245, !1903}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2648, file: !185, line: 2064, baseType: !2668, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!33, !1245}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2648, file: !185, line: 2065, baseType: !2655, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2648, file: !185, line: 2066, baseType: !1475, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2648, file: !185, line: 2067, baseType: !2674, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!33, !1446, !33}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2648, file: !185, line: 2068, baseType: !2678, size: 64, offset: 576)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!33, !1446, !184}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2648, file: !185, line: 2069, baseType: !2682, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!33, !1446}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2648, file: !185, line: 2070, baseType: !2678, size: 64, offset: 704)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2648, file: !185, line: 2071, baseType: !2682, size: 64, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2648, file: !185, line: 2072, baseType: !2688, size: 64, offset: 832)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!33, !1210, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !185, line: 62, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2648, file: !185, line: 2073, baseType: !2694, size: 64, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!33, !1446, !271, !965}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2648, file: !185, line: 2074, baseType: !1475, size: 64, offset: 960)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2648, file: !185, line: 2076, baseType: !2699, size: 64, offset: 1024)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!33, !2185, !1210}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2648, file: !185, line: 2077, baseType: !2699, size: 64, offset: 1088)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2648, file: !185, line: 2078, baseType: !2699, size: 64, offset: 1152)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2648, file: !185, line: 2079, baseType: !2699, size: 64, offset: 1216)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2648, file: !185, line: 2081, baseType: !2706, size: 64, offset: 1280)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!1397, !1446, !33, !965, !46, !51}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2648, file: !185, line: 2082, baseType: !2710, size: 64, offset: 1344)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!1397, !1446, !33, !27, !46, !51}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2648, file: !185, line: 2083, baseType: !2714, size: 64, offset: 1408)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!2717, !1245}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !190, line: 296, size: 1664, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2745, !2746, !2747}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2719, file: !190, line: 297, baseType: !773, size: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2719, file: !190, line: 298, baseType: !107, size: 128, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2719, file: !190, line: 299, baseType: !107, size: 128, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2719, file: !190, line: 300, baseType: !107, size: 128, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2719, file: !190, line: 301, baseType: !721, size: 256, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2719, file: !190, line: 302, baseType: !69, size: 32, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2719, file: !190, line: 303, baseType: !59, size: 32, offset: 800)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2719, file: !190, line: 304, baseType: !1446, size: 64, offset: 832)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2719, file: !190, line: 305, baseType: !2730, size: 64, offset: 896)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !190, line: 68, size: 64, elements: !2731)
!2731 = !{!2732, !2744}
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !190, line: 69, baseType: !2733, size: 32)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !190, line: 69, size: 32, elements: !2734)
!2734 = !{!2735, !2736, !2737}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2733, file: !190, line: 70, baseType: !850, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2733, file: !190, line: 71, baseType: !858, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2733, file: !190, line: 72, baseType: !2738, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2739, line: 24, baseType: !2740)
!2739 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2739, line: 22, size: 32, elements: !2741)
!2741 = !{!2742}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2740, file: !2739, line: 23, baseType: !2743, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2739, line: 20, baseType: !856)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2730, file: !190, line: 74, baseType: !189, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2719, file: !190, line: 306, baseType: !51, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2719, file: !190, line: 307, baseType: !13, size: 64, offset: 1024)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2719, file: !190, line: 308, baseType: !2748, size: 576, offset: 1088)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !190, line: 205, size: 576, elements: !2749)
!2749 = !{!2750, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2748, file: !190, line: 206, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !190, line: 66, baseType: !53)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2748, file: !190, line: 207, baseType: !2751, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2748, file: !190, line: 208, baseType: !2751, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2748, file: !190, line: 209, baseType: !2751, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2748, file: !190, line: 210, baseType: !2751, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2748, file: !190, line: 211, baseType: !2751, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2748, file: !190, line: 212, baseType: !2751, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2748, file: !190, line: 213, baseType: !913, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2748, file: !190, line: 214, baseType: !913, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2648, file: !185, line: 2085, baseType: !2761, size: 64, offset: 1472)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!1102, !1446, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2766, line: 15, size: 256, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2767 = !{!2768, !2769, !2770, !2771, !2772}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2765, file: !2766, line: 16, baseType: !352, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2765, file: !2766, line: 19, baseType: !33, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2765, file: !2766, line: 26, baseType: !13, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2765, file: !2766, line: 33, baseType: !13, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2765, file: !2766, line: 36, baseType: !2773, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !156, line: 33, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2648, file: !185, line: 2087, baseType: !2761, size: 64, offset: 1536)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2648, file: !185, line: 2089, baseType: !1475, size: 64, offset: 1600)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1447, file: !185, line: 1198, baseType: !2778, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !190, line: 324, size: 704, elements: !2781)
!2781 = !{!2782, !2786, !2790, !2794, !2795, !2796, !2797, !2798, !2803, !2808, !2812}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2780, file: !190, line: 325, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!33, !2718}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2780, file: !190, line: 326, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2718, !1446, !33}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2780, file: !190, line: 327, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2718}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2780, file: !190, line: 328, baseType: !2783, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2780, file: !190, line: 329, baseType: !2783, size: 64, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2780, file: !190, line: 330, baseType: !2783, size: 64, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2780, file: !190, line: 331, baseType: !2674, size: 64, offset: 384)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2780, file: !190, line: 334, baseType: !2799, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!2802, !1245}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2780, file: !190, line: 335, baseType: !2804, size: 64, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!33, !1245, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2780, file: !190, line: 337, baseType: !2809, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!33, !1245, !2802}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2780, file: !190, line: 339, baseType: !2813, size: 64, offset: 640)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!33, !1446, !2816}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1447, file: !185, line: 1199, baseType: !2818, size: 64, offset: 512)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !190, line: 430, size: 704, elements: !2821)
!2821 = !{!2822, !2826, !2827, !2831, !2832, !2833, !2848, !2871, !2875, !2876, !2899}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2820, file: !190, line: 431, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!33, !1446, !33, !33, !1366}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2820, file: !190, line: 432, baseType: !2674, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2820, file: !190, line: 433, baseType: !2828, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!33, !1446, !7}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2820, file: !190, line: 434, baseType: !2828, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2820, file: !190, line: 435, baseType: !2674, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2820, file: !190, line: 436, baseType: !2834, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!33, !1446, !33, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !190, line: 417, size: 256, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2838, file: !190, line: 418, baseType: !33, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2838, file: !190, line: 419, baseType: !7, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2838, file: !190, line: 420, baseType: !7, size: 32, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2838, file: !190, line: 422, baseType: !7, size: 32, offset: 96)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2838, file: !190, line: 423, baseType: !7, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2838, file: !190, line: 424, baseType: !7, size: 32, offset: 160)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2838, file: !190, line: 425, baseType: !7, size: 32, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2838, file: !190, line: 426, baseType: !7, size: 32, offset: 224)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2820, file: !190, line: 437, baseType: !2849, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!33, !1446, !2730, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !190, line: 345, size: 960, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2853, file: !190, line: 346, baseType: !33, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2853, file: !190, line: 347, baseType: !325, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2853, file: !190, line: 348, baseType: !325, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2853, file: !190, line: 349, baseType: !325, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2853, file: !190, line: 350, baseType: !325, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2853, file: !190, line: 351, baseType: !325, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2853, file: !190, line: 352, baseType: !325, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2853, file: !190, line: 353, baseType: !442, size: 64, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2853, file: !190, line: 355, baseType: !442, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2853, file: !190, line: 356, baseType: !33, size: 32, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2853, file: !190, line: 357, baseType: !33, size: 32, offset: 608)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2853, file: !190, line: 358, baseType: !325, size: 64, offset: 640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2853, file: !190, line: 359, baseType: !325, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2853, file: !190, line: 360, baseType: !325, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2853, file: !190, line: 361, baseType: !442, size: 64, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2853, file: !190, line: 362, baseType: !33, size: 32, offset: 896)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2820, file: !190, line: 438, baseType: !2872, size: 64, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!33, !1446, !2816, !2852}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2820, file: !190, line: 440, baseType: !2849, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2820, file: !190, line: 441, baseType: !2877, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!33, !1446, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !190, line: 411, size: 1408, elements: !2882)
!2882 = !{!2883, !2884}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2881, file: !190, line: 412, baseType: !7, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2881, file: !190, line: 413, baseType: !2885, size: 1344, offset: 64)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2886, size: 1344, elements: !757)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !190, line: 397, size: 448, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2898}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2886, file: !190, line: 398, baseType: !7, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2886, file: !190, line: 399, baseType: !7, size: 32, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2886, file: !190, line: 401, baseType: !7, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2886, file: !190, line: 402, baseType: !7, size: 32, offset: 96)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2886, file: !190, line: 403, baseType: !7, size: 32, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2886, file: !190, line: 404, baseType: !7, size: 32, offset: 160)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2886, file: !190, line: 405, baseType: !7, size: 32, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2886, file: !190, line: 406, baseType: !291, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2886, file: !190, line: 407, baseType: !2897, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !36, line: 132, baseType: !325)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2886, file: !190, line: 408, baseType: !2897, size: 64, offset: 384)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2820, file: !190, line: 442, baseType: !2828, size: 64, offset: 640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1447, file: !185, line: 1200, baseType: !2901, size: 64, offset: 576)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !185, line: 54, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1447, file: !185, line: 1201, baseType: !13, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1447, file: !185, line: 1202, baseType: !13, size: 64, offset: 704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1447, file: !185, line: 1203, baseType: !13, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1447, file: !185, line: 1204, baseType: !1210, size: 64, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1447, file: !185, line: 1205, baseType: !897, size: 320, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1447, file: !185, line: 1206, baseType: !33, size: 32, offset: 1216)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1447, file: !185, line: 1207, baseType: !59, size: 32, offset: 1248)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1447, file: !185, line: 1209, baseType: !31, size: 64, offset: 1280)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1447, file: !185, line: 1211, baseType: !2913, size: 64, offset: 1344)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2916)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !185, line: 1211, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1447, file: !185, line: 1223, baseType: !2918, size: 64, offset: 1408)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1222, line: 34, size: 64, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2918, file: !1222, line: 35, baseType: !1225, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1447, file: !185, line: 1224, baseType: !107, size: 128, offset: 1472)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1447, file: !185, line: 1225, baseType: !2923, size: 64, offset: 1600)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !185, line: 1225, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1447, file: !185, line: 1226, baseType: !2926, size: 64, offset: 1664)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !185, line: 1226, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1447, file: !185, line: 1227, baseType: !2929, size: 64, offset: 1728)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !185, line: 50, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1447, file: !185, line: 1228, baseType: !2932, size: 64, offset: 1792)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !185, line: 1228, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1447, file: !185, line: 1229, baseType: !773, size: 128, offset: 1856)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1447, file: !185, line: 1230, baseType: !7, size: 32, offset: 1984)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1447, file: !185, line: 1231, baseType: !2937, size: 2496, offset: 2048)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !190, line: 521, size: 2496, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2943, !2975}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2937, file: !190, line: 522, baseType: !7, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2937, file: !190, line: 523, baseType: !897, size: 320, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2937, file: !190, line: 524, baseType: !2942, size: 192, offset: 384)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 192, elements: !757)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2937, file: !190, line: 525, baseType: !2944, size: 1728, offset: 576)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 1728, elements: !757)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !190, line: 222, size: 576, elements: !2946)
!2946 = !{!2947, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2945, file: !190, line: 223, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !190, line: 445, size: 256, elements: !2950)
!2950 = !{!2951, !2952, !2965, !2966}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2949, file: !190, line: 446, baseType: !33, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2949, file: !190, line: 447, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !190, line: 312, size: 512, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2955, file: !190, line: 313, baseType: !2674, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2955, file: !190, line: 314, baseType: !2674, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2955, file: !190, line: 315, baseType: !2674, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2955, file: !190, line: 316, baseType: !2674, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2955, file: !190, line: 317, baseType: !2783, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2955, file: !190, line: 318, baseType: !2783, size: 64, offset: 320)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2955, file: !190, line: 319, baseType: !2783, size: 64, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2955, file: !190, line: 320, baseType: !2813, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2949, file: !190, line: 448, baseType: !1479, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2949, file: !190, line: 449, baseType: !2948, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2945, file: !190, line: 224, baseType: !33, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2945, file: !190, line: 226, baseType: !107, size: 128, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2945, file: !190, line: 227, baseType: !13, size: 64, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2945, file: !190, line: 228, baseType: !7, size: 32, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2945, file: !190, line: 229, baseType: !7, size: 32, offset: 352)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2945, file: !190, line: 230, baseType: !2751, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2945, file: !190, line: 231, baseType: !2751, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2945, file: !190, line: 232, baseType: !31, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2937, file: !190, line: 526, baseType: !2976, size: 192, offset: 2304)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 192, elements: !757)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1447, file: !185, line: 1233, baseType: !2978, size: 2368, offset: 4544)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !185, line: 1184, size: 2368, elements: !2979)
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2978, file: !185, line: 1185, baseType: !37, size: 16)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2978, file: !185, line: 1186, baseType: !37, size: 16, offset: 16)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2978, file: !185, line: 1187, baseType: !2983, size: 2304, offset: 64)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 2304, elements: !757)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2985, line: 12, size: 768, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2986 = !{!2987, !2995, !2996, !3001, !3002}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2984, file: !2985, line: 13, baseType: !2988, size: 384)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2989, line: 17, size: 384, elements: !2990)
!2989 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2990 = !{!2991, !2992, !2993, !2994}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2988, file: !2989, line: 18, baseType: !33, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2988, file: !2989, line: 19, baseType: !33, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2988, file: !2989, line: 20, baseType: !64, size: 192, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2988, file: !2989, line: 22, baseType: !276, size: 128, align: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2984, file: !2985, line: 14, baseType: !2377, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2984, file: !2985, line: 15, baseType: !2997, size: 64, offset: 448)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2998, line: 16, size: 64, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2997, file: !2998, line: 17, baseType: !365, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2984, file: !2985, line: 16, baseType: !64, size: 192, offset: 512)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2984, file: !2985, line: 17, baseType: !59, size: 32, offset: 704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1447, file: !185, line: 1240, baseType: !31, size: 64, offset: 6912)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1447, file: !185, line: 1243, baseType: !376, size: 32, offset: 6976)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1447, file: !185, line: 1245, baseType: !913, size: 64, offset: 7040)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1447, file: !185, line: 1246, baseType: !913, size: 64, offset: 7104)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1447, file: !185, line: 1248, baseType: !377, size: 32, offset: 7168)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1447, file: !185, line: 1249, baseType: !3009, size: 64, offset: 7232)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !185, line: 634, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1447, file: !185, line: 1252, baseType: !3012, size: 256, offset: 7296)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !3013)
!3013 = !{!3014}
!3014 = !DISubrange(count: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1447, file: !185, line: 1253, baseType: !3016, size: 128, offset: 7552)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3017, line: 21, baseType: !3018)
!3017 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3017, line: 19, size: 128, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3018, file: !3017, line: 20, baseType: !3021, size: 128)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !3022)
!3022 = !{!3023}
!3023 = !DISubrange(count: 16)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1447, file: !185, line: 1255, baseType: !7, size: 32, offset: 7680)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1447, file: !185, line: 1261, baseType: !721, size: 256, offset: 7744)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1447, file: !185, line: 1267, baseType: !27, size: 64, offset: 8000)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1447, file: !185, line: 1269, baseType: !3028, size: 64, offset: 8064)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3030)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1212, line: 128, size: 1024, align: 512, elements: !3031)
!3031 = !{!3032, !3036, !3037, !3044, !3050, !3054, !3058, !3062, !3063, !3067, !3071, !3076, !3080}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3030, file: !1212, line: 129, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!33, !1210, !7}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3030, file: !1212, line: 130, baseType: !3033, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3030, file: !1212, line: 131, baseType: !3038, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!33, !3041, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3030, file: !1212, line: 132, baseType: !3045, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!33, !3041, !7, !27, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3030, file: !1212, line: 134, baseType: !3051, size: 64, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!33, !3041}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3030, file: !1212, line: 135, baseType: !3055, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!33, !1210}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3030, file: !1212, line: 136, baseType: !3059, size: 64, offset: 384)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !1210}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3030, file: !1212, line: 137, baseType: !3059, size: 64, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3030, file: !1212, line: 138, baseType: !3064, size: 64, offset: 512)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !1210, !1245}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3030, file: !1212, line: 139, baseType: !3068, size: 64, offset: 576)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!965, !1210, !965, !33}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3030, file: !1212, line: 140, baseType: !3072, size: 64, offset: 640)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!1205, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3030, file: !1212, line: 141, baseType: !3077, size: 64, offset: 704)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!33, !1366, !877}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3030, file: !1212, line: 142, baseType: !3081, size: 64, offset: 768)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!1210, !1210, !3084}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1447, file: !185, line: 1271, baseType: !3087, size: 448, offset: 8128)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2766, line: 63, size: 448, elements: !3088)
!3088 = !{!3089, !3094, !3095, !3096, !3097, !3098, !3099}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3087, file: !2766, line: 64, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!13, !3093, !2764}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3087, file: !2766, line: 66, baseType: !3090, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3087, file: !2766, line: 69, baseType: !1102, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3087, file: !2766, line: 70, baseType: !33, size: 32, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3087, file: !2766, line: 71, baseType: !7, size: 32, offset: 224)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3087, file: !2766, line: 74, baseType: !107, size: 128, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3087, file: !2766, line: 85, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1447, file: !185, line: 1274, baseType: !714, size: 64, offset: 8576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1447, file: !185, line: 1280, baseType: !714, size: 64, offset: 8640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1447, file: !185, line: 1283, baseType: !33, size: 32, offset: 8704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1447, file: !185, line: 1286, baseType: !2083, size: 32, offset: 8736)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1447, file: !185, line: 1289, baseType: !2587, size: 64, offset: 8768)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1447, file: !185, line: 1290, baseType: !769, size: 64, offset: 8832)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1447, file: !185, line: 1297, baseType: !819, size: 64, offset: 8896)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1447, file: !185, line: 1304, baseType: !3109, size: 64, offset: 8960)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3110, line: 49, size: 64, elements: !3111)
!3110 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3109, file: !3110, line: 50, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3110, line: 41, size: 512, align: 512, elements: !3115)
!3115 = !{!3116, !3117, !3122}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !3110, line: 43, baseType: !69, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3114, file: !3110, line: 45, baseType: !3118, size: 192, offset: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3110, line: 29, size: 192, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3118, file: !3110, line: 30, baseType: !107, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3118, file: !3110, line: 32, baseType: !1102, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3114, file: !3110, line: 46, baseType: !1102, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1447, file: !185, line: 1305, baseType: !3109, size: 64, offset: 9024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !185, line: 1306, baseType: !276, size: 128, align: 64, offset: 9088)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1447, file: !185, line: 1307, baseType: !1004, size: 256, offset: 9216)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1447, file: !185, line: 1309, baseType: !721, size: 256, offset: 9472)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1447, file: !185, line: 1314, baseType: !33, size: 32, offset: 9728)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1447, file: !185, line: 1317, baseType: !69, size: 32, align: 512, offset: 10240)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1447, file: !185, line: 1318, baseType: !107, size: 128, offset: 10304)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1447, file: !185, line: 1320, baseType: !69, size: 32, offset: 10432)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1447, file: !185, line: 1321, baseType: !107, size: 128, offset: 10496)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1246, file: !185, line: 656, baseType: !1596, size: 64, offset: 512)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1246, file: !185, line: 659, baseType: !31, size: 64, offset: 576)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1246, file: !185, line: 663, baseType: !13, size: 64, offset: 640)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !185, line: 671, baseType: !3136, size: 32, offset: 704)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !185, line: 671, size: 32, elements: !3137)
!3137 = !{!3138, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3136, file: !185, line: 672, baseType: !3139, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3136, file: !185, line: 673, baseType: !7, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1246, file: !185, line: 675, baseType: !1319, size: 32, offset: 736)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1246, file: !185, line: 676, baseType: !51, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1246, file: !185, line: 677, baseType: !1355, size: 128, offset: 832)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1246, file: !185, line: 678, baseType: !1355, size: 128, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1246, file: !185, line: 679, baseType: !1355, size: 128, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1246, file: !185, line: 680, baseType: !69, size: 32, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1246, file: !185, line: 681, baseType: !37, size: 16, offset: 1248)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1246, file: !185, line: 682, baseType: !93, size: 8, offset: 1264)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1246, file: !185, line: 683, baseType: !93, size: 8, offset: 1272)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1246, file: !185, line: 684, baseType: !2897, size: 64, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1246, file: !185, line: 691, baseType: !13, size: 64, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1246, file: !185, line: 692, baseType: !897, size: 320, offset: 1408)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1246, file: !185, line: 694, baseType: !13, size: 64, offset: 1728)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1246, file: !185, line: 695, baseType: !13, size: 64, offset: 1792)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1246, file: !185, line: 697, baseType: !773, size: 128, offset: 1856)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1246, file: !185, line: 698, baseType: !107, size: 128, offset: 1984)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1246, file: !185, line: 707, baseType: !107, size: 128, offset: 2112)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1246, file: !185, line: 708, baseType: !107, size: 128, offset: 2240)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !185, line: 709, baseType: !3160, size: 128, offset: 2368)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !185, line: 709, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3160, file: !185, line: 710, baseType: !769, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3160, file: !185, line: 711, baseType: !276, size: 128, align: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1246, file: !185, line: 713, baseType: !716, size: 64, offset: 2496)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1246, file: !185, line: 714, baseType: !716, size: 64, offset: 2560)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1246, file: !185, line: 715, baseType: !59, size: 32, offset: 2624)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1246, file: !185, line: 716, baseType: !59, size: 32, offset: 2656)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1246, file: !185, line: 717, baseType: !59, size: 32, offset: 2688)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1246, file: !185, line: 719, baseType: !59, size: 32, offset: 2720)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !185, line: 721, baseType: !3171, size: 64, offset: 2752)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !185, line: 721, size: 64, elements: !3172)
!3172 = !{!3173, !3299}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3171, file: !185, line: 722, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3176)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !185, line: 1914, size: 2112, elements: !3177)
!3177 = !{!3178, !3179, !3183, !3187, !3191, !3192, !3193, !3199, !3212, !3216, !3220, !3221, !3225, !3226, !3230, !3235, !3236, !3240, !3244, !3250, !3251, !3255, !3256, !3262, !3266, !3267, !3272, !3276, !3280, !3284, !3288, !3289, !3295}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3176, file: !185, line: 1915, baseType: !1479, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3176, file: !185, line: 1916, baseType: !3180, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!51, !701, !51, !33}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3176, file: !185, line: 1917, baseType: !3184, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!1397, !701, !965, !46, !50}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3176, file: !185, line: 1918, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!1397, !701, !27, !46, !50}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3176, file: !185, line: 1919, baseType: !2017, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3176, file: !185, line: 1920, baseType: !2017, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3176, file: !185, line: 1921, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!33, !2020, !3197, !7}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !185, line: 53, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3176, file: !185, line: 1923, baseType: !3200, size: 64, offset: 448)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!33, !701, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !185, line: 1858, size: 128, elements: !3205)
!3205 = !{!3206, !3211}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3204, file: !185, line: 1859, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !185, line: 1855, baseType: !3208)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!877, !3203, !27, !33, !51, !325, !7}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3204, file: !185, line: 1860, baseType: !51, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3176, file: !185, line: 1924, baseType: !3213, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!2252, !701, !2254}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3176, file: !185, line: 1925, baseType: !3217, size: 64, offset: 576)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!1102, !701, !7, !13}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3176, file: !185, line: 1926, baseType: !3217, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3176, file: !185, line: 1927, baseType: !3222, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!33, !701, !1726}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3176, file: !185, line: 1928, baseType: !13, size: 64, offset: 768)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3176, file: !185, line: 1929, baseType: !3227, size: 64, offset: 832)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!33, !1245, !701}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3176, file: !185, line: 1930, baseType: !3231, size: 64, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!33, !701, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !185, line: 1061, baseType: !31)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3176, file: !185, line: 1931, baseType: !3227, size: 64, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3176, file: !185, line: 1932, baseType: !3237, size: 64, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!33, !701, !51, !51, !33}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3176, file: !185, line: 1933, baseType: !3241, size: 64, offset: 1088)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!33, !33, !701, !33}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3176, file: !185, line: 1934, baseType: !3245, size: 64, offset: 1152)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!33, !701, !33, !3248}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !185, line: 1063, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3176, file: !185, line: 1935, baseType: !698, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3176, file: !185, line: 1936, baseType: !3252, size: 64, offset: 1280)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!33, !33}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3176, file: !185, line: 1937, baseType: !3245, size: 64, offset: 1344)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3176, file: !185, line: 1938, baseType: !3257, size: 64, offset: 1408)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!1397, !3260, !701, !50, !46, !7}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !367, line: 59, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3176, file: !185, line: 1939, baseType: !3263, size: 64, offset: 1472)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!1397, !701, !50, !3260, !46, !7}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3176, file: !185, line: 1940, baseType: !2073, size: 64, offset: 1536)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3176, file: !185, line: 1941, baseType: !3268, size: 64, offset: 1600)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!33, !701, !33, !3271, !1994}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3176, file: !185, line: 1942, baseType: !3273, size: 64, offset: 1664)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!1102, !701, !33, !51, !51}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3176, file: !185, line: 1944, baseType: !3277, size: 64, offset: 1728)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !2185, !701}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3176, file: !185, line: 1948, baseType: !3281, size: 64, offset: 1792)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!1397, !701, !51, !701, !51, !46, !7}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3176, file: !185, line: 1950, baseType: !3285, size: 64, offset: 1856)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!51, !701, !51, !701, !51, !51, !7}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3176, file: !185, line: 1953, baseType: !3237, size: 64, offset: 1920)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3176, file: !185, line: 1954, baseType: !3290, size: 64, offset: 1984)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!33, !3293, !7}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !185, line: 1911, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3176, file: !185, line: 1955, baseType: !3296, size: 64, offset: 2048)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!33, !3293, !3197, !7}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3171, file: !185, line: 723, baseType: !2655, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1246, file: !185, line: 725, baseType: !3301, size: 64, offset: 2816)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !185, line: 725, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1246, file: !185, line: 726, baseType: !1597, size: 1536, align: 64, offset: 2880)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1246, file: !185, line: 727, baseType: !107, size: 128, offset: 4416)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !185, line: 728, baseType: !3306, size: 64, offset: 4544)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !185, line: 728, size: 64, elements: !3307)
!3307 = !{!3308, !3309, !3312, !3313}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3306, file: !185, line: 729, baseType: !3260, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3306, file: !185, line: 730, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !185, line: 730, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3306, file: !185, line: 731, baseType: !965, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3306, file: !185, line: 732, baseType: !7, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1246, file: !185, line: 735, baseType: !377, size: 32, offset: 4608)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1246, file: !185, line: 738, baseType: !377, size: 32, offset: 4640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1246, file: !185, line: 739, baseType: !3009, size: 64, offset: 4672)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1246, file: !185, line: 750, baseType: !31, size: 64, offset: 4736)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1211, file: !1212, line: 91, baseType: !3319, size: 256, offset: 448)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !3013)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1211, file: !1212, line: 94, baseType: !3321, size: 64, offset: 704)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3322, line: 25, size: 64, elements: !3323)
!3322 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3323 = !{!3324}
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !3322, line: 26, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3321, file: !3322, line: 26, size: 64, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3325, file: !3322, line: 28, baseType: !290, size: 64, align: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !3322, line: 30, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3325, file: !3322, line: 30, size: 64, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3329, file: !3322, line: 31, baseType: !69, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3329, file: !3322, line: 32, baseType: !33, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1211, file: !1212, line: 95, baseType: !3028, size: 64, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1211, file: !1212, line: 96, baseType: !1446, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1211, file: !1212, line: 97, baseType: !13, size: 64, offset: 896)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1211, file: !1212, line: 98, baseType: !31, size: 64, offset: 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1212, line: 100, baseType: !3338, size: 128, offset: 1024)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 100, size: 128, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3338, file: !1212, line: 101, baseType: !107, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3338, file: !1212, line: 102, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1211, file: !1212, line: 104, baseType: !107, size: 128, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1211, file: !1212, line: 105, baseType: !107, size: 128, offset: 1280)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1211, file: !1212, line: 113, baseType: !3346, size: 128, offset: 1408)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 109, size: 128, elements: !3347)
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3346, file: !1212, line: 110, baseType: !773, size: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3346, file: !1212, line: 111, baseType: !1221, size: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3346, file: !1212, line: 112, baseType: !276, size: 128, align: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1206, file: !1207, line: 72, baseType: !1446, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1206, file: !1207, line: 73, baseType: !33, size: 32, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1206, file: !1207, line: 74, baseType: !1284, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1201, file: !1202, line: 10, baseType: !1210, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !702, file: !185, line: 1015, baseType: !1245, size: 64, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !702, file: !185, line: 1016, baseType: !3174, size: 64, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !702, file: !185, line: 1018, baseType: !325, size: 64, offset: 1472)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !702, file: !185, line: 1020, baseType: !31, size: 64, offset: 1536)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !702, file: !185, line: 1023, baseType: !31, size: 64, offset: 1600)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !702, file: !185, line: 1027, baseType: !3361, size: 64, offset: 1664)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !702, file: !185, line: 1029, baseType: !1596, size: 64, offset: 1728)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !702, file: !185, line: 1030, baseType: !2083, size: 32, offset: 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !702, file: !185, line: 1031, baseType: !2083, size: 32, offset: 1824)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !677, file: !156, line: 756, baseType: !13, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !677, file: !156, line: 757, baseType: !13, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !677, file: !156, line: 760, baseType: !13, size: 64, offset: 832)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !677, file: !156, line: 761, baseType: !13, size: 64, offset: 896)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !677, file: !156, line: 763, baseType: !13, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !677, file: !156, line: 764, baseType: !3371, size: 64, offset: 1024)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1741, line: 299, baseType: !3373)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 299, size: 64, elements: !3374)
!3374 = !{!3375}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3373, file: !1741, line: 299, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1746, line: 18, baseType: !13)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !677, file: !156, line: 773, baseType: !59, size: 32, offset: 1088)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !677, file: !156, line: 785, baseType: !59, size: 32, offset: 1120)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !677, file: !156, line: 795, baseType: !3380, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !156, line: 726, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3381, file: !156, line: 727, baseType: !325, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3381, file: !156, line: 728, baseType: !33, size: 32, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !677, file: !156, line: 801, baseType: !13, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !677, file: !156, line: 804, baseType: !714, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !677, file: !156, line: 806, baseType: !33, size: 32, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !677, file: !156, line: 808, baseType: !69, size: 32, offset: 1376)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !677, file: !156, line: 823, baseType: !897, size: 320, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !677, file: !156, line: 825, baseType: !107, size: 128, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !677, file: !156, line: 845, baseType: !33, size: 32, offset: 1856)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !677, file: !156, line: 849, baseType: !13, size: 64, offset: 1920)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !677, file: !156, line: 850, baseType: !13, size: 64, offset: 1984)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !677, file: !156, line: 852, baseType: !13, size: 64, offset: 2048)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !677, file: !156, line: 853, baseType: !13, size: 64, offset: 2112)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !677, file: !156, line: 854, baseType: !716, size: 64, offset: 2176)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !677, file: !156, line: 855, baseType: !13, size: 64, offset: 2240)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !677, file: !156, line: 856, baseType: !13, size: 64, offset: 2304)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !677, file: !156, line: 857, baseType: !13, size: 64, offset: 2368)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !677, file: !156, line: 858, baseType: !13, size: 64, offset: 2432)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !677, file: !156, line: 865, baseType: !554, size: 32, offset: 2496)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !677, file: !156, line: 867, baseType: !69, size: 32, offset: 2528)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !677, file: !156, line: 869, baseType: !13, size: 64, offset: 2560)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !677, file: !156, line: 869, baseType: !13, size: 64, offset: 2624)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !677, file: !156, line: 869, baseType: !13, size: 64, offset: 2688)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !677, file: !156, line: 869, baseType: !13, size: 64, offset: 2752)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !677, file: !156, line: 870, baseType: !13, size: 64, offset: 2816)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !677, file: !156, line: 870, baseType: !13, size: 64, offset: 2880)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !677, file: !156, line: 870, baseType: !13, size: 64, offset: 2944)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !677, file: !156, line: 871, baseType: !13, size: 64, offset: 3008)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !677, file: !156, line: 871, baseType: !13, size: 64, offset: 3072)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !677, file: !156, line: 871, baseType: !13, size: 64, offset: 3136)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !677, file: !156, line: 871, baseType: !13, size: 64, offset: 3200)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !677, file: !156, line: 873, baseType: !3415, size: 3328, offset: 3264)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3328, elements: !3416)
!3416 = !{!3417}
!3417 = !DISubrange(count: 52)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !677, file: !156, line: 875, baseType: !3419, size: 1280, offset: 6592)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 1280, elements: !778)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !677, file: !156, line: 877, baseType: !3421, size: 64, offset: 7872)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !156, line: 877, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !677, file: !156, line: 880, baseType: !3424, size: 1088, offset: 7936)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3425, line: 72, baseType: !3426)
!3425 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3425, line: 23, size: 1088, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3435, !3436, !3437, !3438, !3463, !3464, !3465}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3426, file: !3425, line: 28, baseType: !325, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3426, file: !3425, line: 38, baseType: !716, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3426, file: !3425, line: 40, baseType: !13, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3426, file: !3425, line: 43, baseType: !897, size: 320, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3426, file: !3425, line: 44, baseType: !3433, size: 64, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3425, line: 44, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3426, file: !3425, line: 48, baseType: !13, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3426, file: !3425, line: 59, baseType: !721, size: 256, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3426, file: !3425, line: 60, baseType: !31, size: 64, offset: 896)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3426, file: !3425, line: 61, baseType: !3439, size: 64, offset: 960)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3441)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3442, line: 13, size: 1216, elements: !3443)
!3442 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3441, file: !3442, line: 14, baseType: !31, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3441, file: !3442, line: 15, baseType: !13, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3441, file: !3442, line: 17, baseType: !13, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3441, file: !3442, line: 17, baseType: !13, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3441, file: !3442, line: 18, baseType: !13, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3441, file: !3442, line: 18, baseType: !13, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3441, file: !3442, line: 19, baseType: !2122, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3441, file: !3442, line: 21, baseType: !1102, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3441, file: !3442, line: 23, baseType: !1102, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3441, file: !3442, line: 24, baseType: !1102, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3441, file: !3442, line: 25, baseType: !1102, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3441, file: !3442, line: 26, baseType: !1102, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3441, file: !3442, line: 27, baseType: !1102, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3441, file: !3442, line: 28, baseType: !1102, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3441, file: !3442, line: 29, baseType: !1102, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3441, file: !3442, line: 30, baseType: !1102, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3441, file: !3442, line: 31, baseType: !1102, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3441, file: !3442, line: 32, baseType: !1102, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3441, file: !3442, line: 33, baseType: !1102, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3426, file: !3425, line: 63, baseType: !59, size: 32, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3426, file: !3425, line: 69, baseType: !103, size: 16, offset: 1056)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3426, file: !3425, line: 70, baseType: !2431, size: 16, offset: 1072)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !156, line: 882, baseType: !13, size: 64, offset: 9024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !677, file: !156, line: 885, baseType: !69, size: 32, offset: 9088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !677, file: !156, line: 886, baseType: !3469, size: 64, offset: 9152)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !156, line: 732, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !677, file: !156, line: 901, baseType: !819, size: 64, offset: 9216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !677, file: !156, line: 904, baseType: !701, size: 64, offset: 9280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !677, file: !156, line: 906, baseType: !3474, size: 64, offset: 9344)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !156, line: 906, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !677, file: !156, line: 930, baseType: !59, size: 32, offset: 9408)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !677, file: !156, line: 933, baseType: !59, size: 32, offset: 9440)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !677, file: !156, line: 935, baseType: !3479, size: 64, offset: 9472)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !202, line: 103, size: 64, elements: !3480)
!3480 = !{!3481}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3479, file: !202, line: 104, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !202, line: 101, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !677, file: !156, line: 940, baseType: !714, size: 64, offset: 9536)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !677, file: !156, line: 942, baseType: !1004, size: 256, offset: 9600)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !674, file: !156, line: 986, baseType: !3487, offset: 10240)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !294)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !366, file: !367, line: 882, baseType: !673, size: 64, offset: 9792)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !366, file: !367, line: 884, baseType: !33, size: 32, offset: 9856)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !366, file: !367, line: 885, baseType: !33, size: 32, offset: 9888)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !366, file: !367, line: 886, baseType: !33, size: 32, offset: 9920)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !366, file: !367, line: 888, baseType: !33, size: 32, offset: 9952)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !366, file: !367, line: 890, baseType: !13, size: 64, offset: 9984)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !366, file: !367, line: 893, baseType: !7, size: 32, offset: 10048)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !366, file: !367, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !366, file: !367, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !366, file: !367, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !366, file: !367, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !366, file: !367, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !366, file: !367, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !366, file: !367, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !366, file: !367, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !366, file: !367, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !366, file: !367, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !366, file: !367, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !366, file: !367, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !366, file: !367, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !366, file: !367, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !366, file: !367, line: 969, baseType: !13, size: 64, offset: 10176)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !366, file: !367, line: 971, baseType: !3511, size: 448, offset: 10240)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 448, elements: !3512)
!3512 = !{!3513, !3514, !3519}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3511, file: !196, line: 26, baseType: !13, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3511, file: !196, line: 27, baseType: !3515, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!1102, !3518}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, scope: !3511, file: !196, line: 28, baseType: !3520, size: 320, offset: 128)
!3520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3511, file: !196, line: 28, size: 320, elements: !3521)
!3521 = !{!3522, !3532, !3557}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3520, file: !196, line: 37, baseType: !3523, size: 320)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3520, file: !196, line: 30, size: 320, elements: !3524)
!3524 = !{!3525, !3527, !3528, !3529, !3530, !3531}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3523, file: !196, line: 31, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3523, file: !196, line: 32, baseType: !376, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !196, line: 33, baseType: !376, size: 32, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3523, file: !196, line: 34, baseType: !376, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3523, file: !196, line: 35, baseType: !325, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3523, file: !196, line: 36, baseType: !3526, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3520, file: !196, line: 47, baseType: !3533, size: 192)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3520, file: !196, line: 39, size: 192, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3556}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3533, file: !196, line: 40, baseType: !546, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3533, file: !196, line: 41, baseType: !195, size: 32, offset: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !196, line: 42, baseType: !3538, size: 64, offset: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3533, file: !196, line: 42, size: 64, elements: !3539)
!3539 = !{!3540, !3548}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3538, file: !196, line: 43, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3543, line: 7, size: 128, elements: !3544)
!3543 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3544 = !{!3545, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3542, file: !3543, line: 8, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !48, line: 93, baseType: !53)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3542, file: !3543, line: 9, baseType: !53, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3538, file: !196, line: 44, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3551, line: 7, size: 64, elements: !3552)
!3551 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3552 = !{!3553, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3550, file: !3551, line: 8, baseType: !3554, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3551, line: 5, baseType: !889)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3550, file: !3551, line: 9, baseType: !889, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3533, file: !196, line: 46, baseType: !325, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3520, file: !196, line: 55, baseType: !3558, size: 256)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3520, file: !196, line: 49, size: 256, elements: !3559)
!3559 = !{!3560, !3563, !3564, !3565, !3566}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3558, file: !196, line: 50, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !196, line: 14, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3558, file: !196, line: 51, baseType: !33, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3558, file: !196, line: 52, baseType: !33, size: 32, offset: 96)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3558, file: !196, line: 53, baseType: !13, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3558, file: !196, line: 54, baseType: !13, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !366, file: !367, line: 973, baseType: !3568, size: 32, offset: 10688)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !36, line: 27, baseType: !3569)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !48, line: 28, baseType: !33)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !366, file: !367, line: 974, baseType: !3568, size: 32, offset: 10720)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !366, file: !367, line: 978, baseType: !13, size: 64, offset: 10752)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !366, file: !367, line: 987, baseType: !365, size: 64, offset: 10816)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !366, file: !367, line: 990, baseType: !365, size: 64, offset: 10880)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !366, file: !367, line: 995, baseType: !107, size: 128, offset: 10944)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !366, file: !367, line: 996, baseType: !107, size: 128, offset: 11072)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !366, file: !367, line: 997, baseType: !365, size: 64, offset: 11200)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !366, file: !367, line: 1005, baseType: !107, size: 128, offset: 11264)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !366, file: !367, line: 1006, baseType: !107, size: 128, offset: 11392)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !366, file: !367, line: 1009, baseType: !761, size: 64, offset: 11520)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !366, file: !367, line: 1010, baseType: !3581, size: 512, offset: 11584)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 512, elements: !778)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !366, file: !367, line: 1011, baseType: !107, size: 128, offset: 12096)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !366, file: !367, line: 1012, baseType: !107, size: 128, offset: 12224)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !366, file: !367, line: 1014, baseType: !1042, size: 64, offset: 12352)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !366, file: !367, line: 1017, baseType: !271, size: 64, offset: 12416)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !366, file: !367, line: 1020, baseType: !271, size: 64, offset: 12480)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !366, file: !367, line: 1023, baseType: !31, size: 64, offset: 12544)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !366, file: !367, line: 1025, baseType: !325, size: 64, offset: 12608)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !366, file: !367, line: 1026, baseType: !325, size: 64, offset: 12672)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !366, file: !367, line: 1031, baseType: !325, size: 64, offset: 12736)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !366, file: !367, line: 1032, baseType: !3592, size: 192, offset: 12800)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !367, line: 324, size: 192, elements: !3593)
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3592, file: !367, line: 326, baseType: !325, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3592, file: !367, line: 327, baseType: !325, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3592, file: !367, line: 328, baseType: !523, size: 32, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !366, file: !367, line: 1041, baseType: !13, size: 64, offset: 12992)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !366, file: !367, line: 1042, baseType: !13, size: 64, offset: 13056)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !366, file: !367, line: 1045, baseType: !325, size: 64, offset: 13120)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !366, file: !367, line: 1048, baseType: !325, size: 64, offset: 13184)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !366, file: !367, line: 1051, baseType: !13, size: 64, offset: 13248)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !366, file: !367, line: 1052, baseType: !13, size: 64, offset: 13312)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !366, file: !367, line: 1055, baseType: !3604, size: 640, offset: 13376)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3605, line: 132, size: 640, elements: !3606)
!3605 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3606 = !{!3607, !3613, !3614}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3604, file: !3605, line: 133, baseType: !3608, size: 576)
!3608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3609, size: 576, elements: !757)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3605, line: 117, size: 192, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3609, file: !3605, line: 118, baseType: !325, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3609, file: !3605, line: 119, baseType: !560, size: 128, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3604, file: !3605, line: 134, baseType: !7, size: 32, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3604, file: !3605, line: 135, baseType: !7, size: 32, offset: 608)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !366, file: !367, line: 1058, baseType: !3616, size: 448, offset: 14016)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3605, line: 144, size: 448, elements: !3617)
!3617 = !{!3618, !3619, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3616, file: !3605, line: 145, baseType: !276, size: 128, align: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3616, file: !3605, line: 146, baseType: !721, size: 256, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3616, file: !3605, line: 147, baseType: !7, size: 32, offset: 384)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !366, file: !367, line: 1064, baseType: !1114, size: 64, offset: 14464)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !366, file: !367, line: 1067, baseType: !1114, size: 64, offset: 14528)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !366, file: !367, line: 1070, baseType: !1114, size: 64, offset: 14592)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !366, file: !367, line: 1074, baseType: !881, size: 64, offset: 14656)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !366, file: !367, line: 1084, baseType: !3626, size: 128, offset: 14720)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !3022)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !366, file: !367, line: 1086, baseType: !3628, size: 64, offset: 14848)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !367, line: 55, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !366, file: !367, line: 1089, baseType: !3631, size: 64, offset: 14912)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3632, line: 12, size: 64, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3631, file: !3632, line: 13, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3632, line: 8, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !366, file: !367, line: 1090, baseType: !3638, size: 128, offset: 14976)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3639, line: 13, size: 128, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3638, file: !3639, line: 14, baseType: !107, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !366, file: !367, line: 1097, baseType: !3643, size: 64, offset: 15104)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !367, line: 50, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !366, file: !367, line: 1100, baseType: !3646, size: 64, offset: 15168)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !367, line: 1100, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !366, file: !367, line: 1103, baseType: !3649, size: 64, offset: 15232)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !367, line: 53, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !366, file: !367, line: 1107, baseType: !3652, size: 64, offset: 15296)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3654, line: 31, size: 576, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3655 = !{!3656, !3657, !3660, !3663, !3666, !3667, !3670, !3673, !3674}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3653, file: !3654, line: 32, baseType: !382, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3653, file: !3654, line: 33, baseType: !3658, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3654, line: 9, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3653, file: !3654, line: 34, baseType: !3661, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3654, line: 10, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3653, file: !3654, line: 35, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3654, line: 8, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3653, file: !3654, line: 36, baseType: !789, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3653, file: !3654, line: 37, baseType: !3668, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !883, line: 34, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3653, file: !3654, line: 38, baseType: !3671, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3654, line: 38, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3653, file: !3654, line: 39, baseType: !3671, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3653, file: !3654, line: 40, baseType: !3675, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3677, line: 771, size: 384, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3676, file: !3677, line: 772, baseType: !865, size: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3676, file: !3677, line: 773, baseType: !819, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3676, file: !3677, line: 774, baseType: !1087, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3676, file: !3677, line: 775, baseType: !3683, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3685, line: 209, size: 4736, elements: !3686)
!3685 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3686 = !{!3687, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3684, file: !3685, line: 215, baseType: !3688, size: 896)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3689, size: 896, elements: !3747)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3685, line: 152, size: 1600, elements: !3691)
!3691 = !{!3692, !3798, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3916}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3690, file: !3685, line: 154, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3685, line: 389, size: 7872, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3715, !3716, !3720, !3721, !3722, !3723, !3724, !3725, !3744, !3745, !3749, !3750, !3751, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3785, !3788, !3789, !3796}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3694, file: !3685, line: 391, baseType: !3690, size: 1600)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3694, file: !3685, line: 393, baseType: !13, size: 64, offset: 1600)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3694, file: !3685, line: 401, baseType: !33, size: 32, offset: 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3694, file: !3685, line: 404, baseType: !33, size: 32, offset: 1696)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3694, file: !3685, line: 417, baseType: !33, size: 32, offset: 1728)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3694, file: !3685, line: 418, baseType: !33, size: 32, offset: 1760)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3694, file: !3685, line: 419, baseType: !33, size: 32, offset: 1792)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3694, file: !3685, line: 432, baseType: !33, size: 32, offset: 1824)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3694, file: !3685, line: 433, baseType: !33, size: 32, offset: 1856)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3694, file: !3685, line: 434, baseType: !33, size: 32, offset: 1888)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3694, file: !3685, line: 436, baseType: !33, size: 32, offset: 1920)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3694, file: !3685, line: 439, baseType: !7, size: 32, offset: 1952)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3694, file: !3685, line: 441, baseType: !2140, size: 64, offset: 1984)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3694, file: !3685, line: 442, baseType: !3710, size: 448, offset: 2048)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3685, line: 138, size: 448, elements: !3711)
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3710, file: !3685, line: 140, baseType: !2140, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3710, file: !3685, line: 141, baseType: !13, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3710, file: !3685, line: 142, baseType: !2525, size: 320, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3694, file: !3685, line: 443, baseType: !3710, size: 448, offset: 2496)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3694, file: !3685, line: 446, baseType: !3717, offset: 2944)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3710, elements: !3718)
!3718 = !{!3719}
!3719 = !DISubrange(count: 0)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3694, file: !3685, line: 455, baseType: !103, size: 16, offset: 2944)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3694, file: !3685, line: 456, baseType: !103, size: 16, offset: 2960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3694, file: !3685, line: 457, baseType: !103, size: 16, offset: 2976)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3694, file: !3685, line: 458, baseType: !103, size: 16, offset: 2992)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3694, file: !3685, line: 461, baseType: !3688, size: 896, offset: 3008)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3694, file: !3685, line: 463, baseType: !3726, size: 64, offset: 3904)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3685, line: 537, size: 41664, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3742}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3727, file: !3685, line: 538, baseType: !2160, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3727, file: !3685, line: 541, baseType: !7, size: 32, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3727, file: !3685, line: 544, baseType: !33, size: 32, offset: 96)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3727, file: !3685, line: 547, baseType: !107, size: 128, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3727, file: !3685, line: 548, baseType: !276, size: 128, align: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3727, file: !3685, line: 555, baseType: !3694, size: 7872, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3727, file: !3685, line: 558, baseType: !3693, size: 64, offset: 8256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3727, file: !3685, line: 561, baseType: !59, size: 32, offset: 8320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3727, file: !3685, line: 564, baseType: !7, size: 32, offset: 8352)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3727, file: !3685, line: 567, baseType: !3739, size: 32768, offset: 8384)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32768, elements: !3740)
!3740 = !{!3741}
!3741 = !DISubrange(count: 4096)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3727, file: !3685, line: 570, baseType: !3743, size: 512, offset: 41152)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !1535)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3694, file: !3685, line: 469, baseType: !107, size: 128, offset: 3968)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3694, file: !3685, line: 478, baseType: !3746, size: 1792, offset: 4096)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1792, elements: !3747)
!3747 = !{!3748}
!3748 = !DISubrange(count: 14)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3694, file: !3685, line: 487, baseType: !3693, size: 64, offset: 5888)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3694, file: !3685, line: 488, baseType: !3693, size: 64, offset: 5952)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3694, file: !3685, line: 491, baseType: !3752, size: 64, offset: 6016)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3685, line: 327, size: 896, elements: !3754)
!3754 = !{!3755, !3758, !3768, !3769, !3770, !3771, !3772}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3753, file: !3685, line: 332, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3757, line: 64, elements: !694)
!3757 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3753, file: !3685, line: 333, baseType: !3759, size: 192)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3685, line: 299, size: 192, elements: !3760)
!3760 = !{!3761}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3759, file: !3685, line: 300, baseType: !3762, size: 192)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3763, line: 17, size: 192, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3762, file: !3763, line: 18, baseType: !325, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3762, file: !3763, line: 19, baseType: !325, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3762, file: !3763, line: 20, baseType: !291, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3753, file: !3685, line: 339, baseType: !3759, size: 192, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3753, file: !3685, line: 347, baseType: !3759, size: 192, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3753, file: !3685, line: 353, baseType: !3759, size: 192, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3753, file: !3685, line: 366, baseType: !3693, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3753, file: !3685, line: 367, baseType: !3693, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3694, file: !3685, line: 492, baseType: !107, size: 128, offset: 6080)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3694, file: !3685, line: 495, baseType: !3759, size: 192, offset: 6208)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3694, file: !3685, line: 496, baseType: !3759, size: 192, offset: 6400)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3694, file: !3685, line: 497, baseType: !3592, size: 192, offset: 6592)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3694, file: !3685, line: 503, baseType: !107, size: 128, offset: 6784)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3694, file: !3685, line: 504, baseType: !721, size: 256, offset: 6912)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3694, file: !3685, line: 507, baseType: !64, size: 192, offset: 7168)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3694, file: !3685, line: 510, baseType: !1004, size: 256, offset: 7360)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3694, file: !3685, line: 513, baseType: !3782, size: 64, offset: 7616)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3784, line: 214, elements: !694)
!3784 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3694, file: !3685, line: 516, baseType: !3786, offset: 7680)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3787, line: 76, elements: !694)
!3787 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3694, file: !3685, line: 519, baseType: !59, size: 32, offset: 7680)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3694, file: !3685, line: 522, baseType: !3790, size: 128, offset: 7712)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3685, line: 370, size: 128, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3790, file: !3685, line: 372, baseType: !877, size: 8)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3790, file: !3685, line: 375, baseType: !33, size: 32, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3790, file: !3685, line: 380, baseType: !33, size: 32, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3790, file: !3685, line: 386, baseType: !33, size: 32, offset: 96)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3694, file: !3685, line: 529, baseType: !3797, offset: 7872)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3693, elements: !294)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3690, file: !3685, line: 157, baseType: !3799, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3685, line: 669, size: 1984, elements: !3801)
!3801 = !{!3802, !3806, !3810, !3814, !3815, !3816, !3817, !3821, !3825, !3826, !3832, !3836, !3837, !3838, !3842, !3846, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3899, !3900}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3800, file: !3685, line: 670, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3689, !3689}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3800, file: !3685, line: 671, baseType: !3807, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!33, !3689}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3800, file: !3685, line: 672, baseType: !3811, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3689}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3800, file: !3685, line: 673, baseType: !3811, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3800, file: !3685, line: 674, baseType: !3811, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3800, file: !3685, line: 675, baseType: !3811, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3800, file: !3685, line: 676, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3689, !33}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3800, file: !3685, line: 677, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!33, !2185, !3689}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3800, file: !3685, line: 679, baseType: !3822, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3800, file: !3685, line: 682, baseType: !3827, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!33, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3685, line: 30, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3800, file: !3685, line: 683, baseType: !3833, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3830}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3800, file: !3685, line: 684, baseType: !3833, size: 64, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3800, file: !3685, line: 685, baseType: !2629, size: 64, offset: 768)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3800, file: !3685, line: 686, baseType: !3839, size: 64, offset: 832)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!33, !365, !3683}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3800, file: !3685, line: 688, baseType: !3843, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !365, !3683}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3800, file: !3685, line: 689, baseType: !3847, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !365}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3800, file: !3685, line: 690, baseType: !3847, size: 64, offset: 1024)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3800, file: !3685, line: 691, baseType: !3847, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3800, file: !3685, line: 692, baseType: !3811, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3800, file: !3685, line: 694, baseType: !877, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3800, file: !3685, line: 707, baseType: !877, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3800, file: !3685, line: 719, baseType: !877, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3800, file: !3685, line: 722, baseType: !33, size: 32, offset: 1248)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3800, file: !3685, line: 723, baseType: !27, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3800, file: !3685, line: 726, baseType: !27, size: 64, offset: 1344)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3800, file: !3685, line: 729, baseType: !3726, size: 64, offset: 1408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3800, file: !3685, line: 732, baseType: !794, size: 192, offset: 1472)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3800, file: !3685, line: 738, baseType: !107, size: 128, offset: 1664)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3800, file: !3685, line: 744, baseType: !3863, size: 64, offset: 1792)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3685, line: 580, size: 1728, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3875, !3876, !3877, !3881, !3885, !3886, !3887, !3888, !3889, !3893, !3897, !3898}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3864, file: !3685, line: 586, baseType: !3743, size: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3864, file: !3685, line: 587, baseType: !13, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3864, file: !3685, line: 593, baseType: !46, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !3685, line: 596, baseType: !7, size: 32, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3864, file: !3685, line: 604, baseType: !7, size: 32, offset: 672)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3864, file: !3685, line: 610, baseType: !3799, size: 64, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3864, file: !3685, line: 611, baseType: !107, size: 128, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3864, file: !3685, line: 612, baseType: !3874, size: 64, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3864, file: !3685, line: 614, baseType: !2176, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3864, file: !3685, line: 615, baseType: !2234, size: 64, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3864, file: !3685, line: 621, baseType: !3878, size: 64, offset: 1088)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!325, !3689, !3863}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3864, file: !3685, line: 625, baseType: !3882, size: 64, offset: 1152)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!442, !3689, !3863}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3864, file: !3685, line: 628, baseType: !2215, size: 64, offset: 1216)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3864, file: !3685, line: 631, baseType: !2203, size: 64, offset: 1280)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3864, file: !3685, line: 632, baseType: !2211, size: 64, offset: 1344)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3864, file: !3685, line: 633, baseType: !2207, size: 64, offset: 1408)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3864, file: !3685, line: 640, baseType: !3890, size: 64, offset: 1472)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!33, !3689, !3863, !325}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3864, file: !3685, line: 645, baseType: !3894, size: 64, offset: 1536)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!33, !3689, !3863, !442}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3864, file: !3685, line: 654, baseType: !2242, size: 64, offset: 1600)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3864, file: !3685, line: 657, baseType: !2249, size: 64, offset: 1664)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3800, file: !3685, line: 745, baseType: !3863, size: 64, offset: 1856)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3800, file: !3685, line: 754, baseType: !7, size: 32, offset: 1920)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3690, file: !3685, line: 160, baseType: !1680, size: 128, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3690, file: !3685, line: 163, baseType: !107, size: 128, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3690, file: !3685, line: 164, baseType: !107, size: 128, offset: 384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3690, file: !3685, line: 167, baseType: !107, size: 128, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3690, file: !3685, line: 173, baseType: !33, size: 32, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3690, file: !3685, line: 175, baseType: !7, size: 32, offset: 672)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3690, file: !3685, line: 183, baseType: !325, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3690, file: !3685, line: 189, baseType: !59, size: 32, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3690, file: !3685, line: 192, baseType: !1004, size: 256, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3690, file: !3685, line: 193, baseType: !3911, size: 448, offset: 1088)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1005, line: 120, size: 448, elements: !3912)
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3911, file: !1005, line: 121, baseType: !1004, size: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3911, file: !1005, line: 122, baseType: !276, size: 128, align: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3911, file: !1005, line: 125, baseType: !2587, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3690, file: !3685, line: 199, baseType: !3689, size: 64, offset: 1536)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3684, file: !3685, line: 218, baseType: !382, size: 32, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3684, file: !3685, line: 226, baseType: !3683, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3684, file: !3685, line: 229, baseType: !3693, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3684, file: !3685, line: 232, baseType: !33, size: 32, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3684, file: !3685, line: 241, baseType: !107, size: 128, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3684, file: !3685, line: 242, baseType: !107, size: 128, offset: 1280)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3684, file: !3685, line: 243, baseType: !107, size: 128, offset: 1408)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3684, file: !3685, line: 246, baseType: !107, size: 128, offset: 1536)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3684, file: !3685, line: 255, baseType: !3746, size: 1792, offset: 1664)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3684, file: !3685, line: 258, baseType: !107, size: 128, offset: 3456)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3684, file: !3685, line: 259, baseType: !107, size: 128, offset: 3584)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3684, file: !3685, line: 265, baseType: !773, size: 128, offset: 3712)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3684, file: !3685, line: 271, baseType: !107, size: 128, offset: 3840)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3684, file: !3685, line: 277, baseType: !107, size: 128, offset: 3968)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3684, file: !3685, line: 278, baseType: !107, size: 128, offset: 4096)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3684, file: !3685, line: 279, baseType: !107, size: 128, offset: 4224)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3684, file: !3685, line: 288, baseType: !3693, size: 64, offset: 4352)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3684, file: !3685, line: 289, baseType: !3693, size: 64, offset: 4416)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3684, file: !3685, line: 290, baseType: !3683, size: 64, offset: 4480)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3684, file: !3685, line: 293, baseType: !877, size: 8, offset: 4544)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3684, file: !3685, line: 296, baseType: !276, size: 128, align: 64, offset: 4608)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !366, file: !367, line: 1110, baseType: !3939, size: 64, offset: 15360)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3941, line: 93, size: 8768, elements: !3942)
!3941 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3991, !4000, !4001, !4003, !4004, !4005, !4008, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4046, !4047, !4054, !4064, !4126, !4127, !4130, !4131, !4132, !4133, !4134, !4135}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3940, file: !3941, line: 94, baseType: !382, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3940, file: !3941, line: 95, baseType: !59, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3940, file: !3941, line: 96, baseType: !33, size: 32, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3940, file: !3941, line: 97, baseType: !33, size: 32, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3940, file: !3941, line: 98, baseType: !107, size: 128, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3940, file: !3941, line: 100, baseType: !64, size: 192, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3940, file: !3941, line: 103, baseType: !365, size: 64, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3940, file: !3941, line: 106, baseType: !3951, size: 192, offset: 512)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3952, line: 32, size: 192, elements: !3953)
!3952 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3951, file: !3952, line: 33, baseType: !107, size: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3951, file: !3952, line: 34, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3957, line: 25, baseType: !3958)
!3957 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3957, line: 23, size: 64, elements: !3959)
!3959 = !{!3960}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3958, file: !3957, line: 24, baseType: !359, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3940, file: !3941, line: 109, baseType: !769, size: 64, offset: 704)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3940, file: !3941, line: 112, baseType: !33, size: 32, offset: 768)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3940, file: !3941, line: 114, baseType: !33, size: 32, offset: 800)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3940, file: !3941, line: 115, baseType: !365, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3940, file: !3941, line: 118, baseType: !33, size: 32, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3940, file: !3941, line: 119, baseType: !7, size: 32, offset: 928)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3940, file: !3941, line: 121, baseType: !3968, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3941, line: 80, size: 448, elements: !3970)
!3970 = !{!3971, !3972, !3978}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3969, file: !3941, line: 81, baseType: !59, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3969, file: !3941, line: 82, baseType: !3973, size: 128, offset: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3941, line: 75, size: 128, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3973, file: !3941, line: 76, baseType: !365, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3973, file: !3941, line: 77, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3969, file: !3941, line: 83, baseType: !1043, size: 256, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3940, file: !3941, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3940, file: !3941, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3940, file: !3941, line: 138, baseType: !7, size: 32, offset: 1056)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3940, file: !3941, line: 139, baseType: !107, size: 128, offset: 1088)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3940, file: !3941, line: 142, baseType: !498, size: 512, offset: 1216)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3940, file: !3941, line: 143, baseType: !506, size: 64, offset: 1728)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3940, file: !3941, line: 150, baseType: !3986, size: 256, offset: 1792)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3987, size: 256, elements: !2415)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3941, line: 38, size: 128, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3987, file: !3941, line: 39, baseType: !325, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3987, file: !3941, line: 40, baseType: !325, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3940, file: !3941, line: 156, baseType: !3992, size: 192, offset: 2048)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3941, line: 66, size: 192, elements: !3993)
!3993 = !{!3994}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3992, file: !3941, line: 67, baseType: !3995, size: 192)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3941, line: 47, size: 192, elements: !3996)
!3996 = !{!3997, !3998, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3995, file: !3941, line: 48, baseType: !716, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3995, file: !3941, line: 49, baseType: !716, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3995, file: !3941, line: 50, baseType: !716, size: 64, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3940, file: !3941, line: 160, baseType: !3604, size: 640, offset: 2240)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3940, file: !3941, line: 163, baseType: !4002, size: 256, offset: 2880)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 256, elements: !778)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3940, file: !3941, line: 169, baseType: !761, size: 64, offset: 3136)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3940, file: !3941, line: 172, baseType: !33, size: 32, offset: 3200)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3940, file: !3941, line: 174, baseType: !4006, size: 64, offset: 3264)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3941, line: 174, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3940, file: !3941, line: 185, baseType: !4009, size: 64, offset: 3328)
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !550, line: 860, baseType: !4010)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 853, size: 64, elements: !4011)
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4010, file: !550, line: 858, baseType: !1216, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4010, file: !550, line: 859, baseType: !69, size: 32, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3940, file: !3941, line: 186, baseType: !325, size: 64, offset: 3392)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3940, file: !3941, line: 186, baseType: !325, size: 64, offset: 3456)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3940, file: !3941, line: 186, baseType: !325, size: 64, offset: 3520)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3940, file: !3941, line: 186, baseType: !325, size: 64, offset: 3584)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3940, file: !3941, line: 187, baseType: !325, size: 64, offset: 3648)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3940, file: !3941, line: 188, baseType: !325, size: 64, offset: 3712)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3940, file: !3941, line: 189, baseType: !3592, size: 192, offset: 3776)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3940, file: !3941, line: 190, baseType: !13, size: 64, offset: 3968)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3940, file: !3941, line: 190, baseType: !13, size: 64, offset: 4032)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3940, file: !3941, line: 190, baseType: !13, size: 64, offset: 4096)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3940, file: !3941, line: 190, baseType: !13, size: 64, offset: 4160)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3940, file: !3941, line: 191, baseType: !13, size: 64, offset: 4224)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3940, file: !3941, line: 191, baseType: !13, size: 64, offset: 4288)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3940, file: !3941, line: 191, baseType: !13, size: 64, offset: 4352)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3940, file: !3941, line: 191, baseType: !13, size: 64, offset: 4416)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3940, file: !3941, line: 192, baseType: !13, size: 64, offset: 4480)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3940, file: !3941, line: 192, baseType: !13, size: 64, offset: 4544)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3940, file: !3941, line: 192, baseType: !13, size: 64, offset: 4608)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3940, file: !3941, line: 192, baseType: !13, size: 64, offset: 4672)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3940, file: !3941, line: 193, baseType: !13, size: 64, offset: 4736)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3940, file: !3941, line: 193, baseType: !13, size: 64, offset: 4800)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3940, file: !3941, line: 194, baseType: !4036, size: 448, offset: 4864)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4037, line: 12, size: 448, elements: !4038)
!4037 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4036, file: !4037, line: 15, baseType: !325, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4036, file: !4037, line: 17, baseType: !325, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4036, file: !4037, line: 19, baseType: !325, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4036, file: !4037, line: 21, baseType: !325, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4036, file: !4037, line: 29, baseType: !325, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4036, file: !4037, line: 35, baseType: !325, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4036, file: !4037, line: 44, baseType: !325, size: 64, offset: 384)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3940, file: !3941, line: 202, baseType: !291, size: 64, offset: 5312)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3940, file: !3941, line: 213, baseType: !4048, size: 2048, offset: 5376)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4049, size: 2048, elements: !3022)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4050, line: 43, size: 128, elements: !4051)
!4050 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4049, file: !4050, line: 44, baseType: !49, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4049, file: !4050, line: 45, baseType: !49, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3940, file: !3941, line: 216, baseType: !4055, size: 448, offset: 7424)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3941, line: 30, size: 448, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4055, file: !3941, line: 31, baseType: !33, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4055, file: !3941, line: 32, baseType: !1102, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4055, file: !3941, line: 33, baseType: !13, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4055, file: !3941, line: 34, baseType: !325, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4055, file: !3941, line: 34, baseType: !325, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4055, file: !3941, line: 35, baseType: !13, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4055, file: !3941, line: 35, baseType: !13, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3940, file: !3941, line: 219, baseType: !4065, size: 64, offset: 7872)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4067, line: 41, size: 3456, elements: !4068)
!4067 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4066, file: !4067, line: 47, baseType: !104, size: 16)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4066, file: !4067, line: 48, baseType: !377, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4066, file: !4067, line: 54, baseType: !95, size: 8, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4066, file: !4067, line: 55, baseType: !95, size: 8, offset: 72)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4066, file: !4067, line: 73, baseType: !290, size: 64, align: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4066, file: !4067, line: 74, baseType: !290, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4066, file: !4067, line: 81, baseType: !290, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4066, file: !4067, line: 82, baseType: !290, size: 64, offset: 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4066, file: !4067, line: 85, baseType: !290, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4066, file: !4067, line: 86, baseType: !290, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4066, file: !4067, line: 94, baseType: !290, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4066, file: !4067, line: 102, baseType: !290, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4066, file: !4067, line: 107, baseType: !3012, size: 256, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4066, file: !4067, line: 108, baseType: !95, size: 8, align: 64, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4066, file: !4067, line: 110, baseType: !4084, size: 24, offset: 904)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !757)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4066, file: !4067, line: 111, baseType: !377, size: 32, align: 64, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4066, file: !4067, line: 113, baseType: !377, size: 32, offset: 992)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4066, file: !4067, line: 114, baseType: !377, size: 32, offset: 1024)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4066, file: !4067, line: 115, baseType: !377, size: 32, offset: 1056)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4066, file: !4067, line: 117, baseType: !377, size: 32, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4066, file: !4067, line: 118, baseType: !290, size: 64, align: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4066, file: !4067, line: 120, baseType: !290, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4066, file: !4067, line: 121, baseType: !290, size: 64, offset: 1280)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4066, file: !4067, line: 122, baseType: !290, size: 64, offset: 1344)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4066, file: !4067, line: 123, baseType: !290, size: 64, offset: 1408)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4066, file: !4067, line: 133, baseType: !290, size: 64, offset: 1472)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4066, file: !4067, line: 137, baseType: !290, size: 64, offset: 1536)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4066, file: !4067, line: 142, baseType: !290, size: 64, offset: 1600)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4066, file: !4067, line: 143, baseType: !290, size: 64, offset: 1664)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4066, file: !4067, line: 146, baseType: !290, size: 64, offset: 1728)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4066, file: !4067, line: 147, baseType: !290, size: 64, offset: 1792)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4066, file: !4067, line: 148, baseType: !290, size: 64, offset: 1856)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4066, file: !4067, line: 149, baseType: !290, size: 64, offset: 1920)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4066, file: !4067, line: 154, baseType: !290, size: 64, offset: 1984)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4066, file: !4067, line: 155, baseType: !290, size: 64, offset: 2048)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4066, file: !4067, line: 156, baseType: !290, size: 64, offset: 2112)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4066, file: !4067, line: 158, baseType: !290, size: 64, offset: 2176)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4066, file: !4067, line: 159, baseType: !290, size: 64, offset: 2240)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4066, file: !4067, line: 162, baseType: !290, size: 64, offset: 2304)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4066, file: !4067, line: 163, baseType: !290, size: 64, offset: 2368)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4066, file: !4067, line: 164, baseType: !290, size: 64, offset: 2432)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4066, file: !4067, line: 167, baseType: !290, size: 64, offset: 2496)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4066, file: !4067, line: 168, baseType: !290, size: 64, offset: 2560)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4066, file: !4067, line: 171, baseType: !290, size: 64, offset: 2624)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4066, file: !4067, line: 172, baseType: !290, size: 64, offset: 2688)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4066, file: !4067, line: 175, baseType: !290, size: 64, offset: 2752)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4066, file: !4067, line: 178, baseType: !290, size: 64, offset: 2816)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4066, file: !4067, line: 179, baseType: !290, size: 64, offset: 2880)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4066, file: !4067, line: 182, baseType: !377, size: 32, offset: 2944)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4066, file: !4067, line: 186, baseType: !290, size: 64, align: 64, offset: 3008)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4066, file: !4067, line: 194, baseType: !290, size: 64, offset: 3072)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4066, file: !4067, line: 195, baseType: !290, size: 64, offset: 3136)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4066, file: !4067, line: 199, baseType: !290, size: 64, offset: 3200)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4066, file: !4067, line: 200, baseType: !290, size: 64, offset: 3264)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4066, file: !4067, line: 203, baseType: !290, size: 64, offset: 3328)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4066, file: !4067, line: 204, baseType: !290, size: 64, offset: 3392)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3940, file: !3941, line: 222, baseType: !7, size: 32, offset: 7936)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3940, file: !3941, line: 223, baseType: !4128, size: 64, offset: 8000)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3941, line: 223, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3940, file: !3941, line: 230, baseType: !877, size: 8, offset: 8064)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3940, file: !3941, line: 231, baseType: !925, size: 16, offset: 8080)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3940, file: !3941, line: 232, baseType: !925, size: 16, offset: 8096)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3940, file: !3941, line: 234, baseType: !673, size: 64, offset: 8128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3940, file: !3941, line: 237, baseType: !721, size: 256, offset: 8192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3940, file: !3941, line: 243, baseType: !897, size: 320, offset: 8448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !366, file: !367, line: 1111, baseType: !4137, size: 64, offset: 15424)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3941, line: 20, size: 16640, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4138, file: !3941, line: 21, baseType: !69, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4138, file: !3941, line: 22, baseType: !382, size: 32, offset: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4138, file: !3941, line: 23, baseType: !64, size: 192, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4138, file: !3941, line: 24, baseType: !4144, size: 16384, offset: 256)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4145, size: 16384, elements: !1535)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3952, line: 51, size: 256, elements: !4146)
!4146 = !{!4147}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4145, file: !3952, line: 52, baseType: !4148, size: 256)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3952, line: 37, size: 256, elements: !4149)
!4149 = !{!4150, !4157, !4158, !4162}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4148, file: !3952, line: 39, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4152, line: 83, baseType: !4153)
!4152 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4152, line: 82, baseType: !4155)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !33}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4148, file: !3952, line: 40, baseType: !13, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4148, file: !3952, line: 46, baseType: !4159, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4152, line: 86, baseType: !4160)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4152, line: 85, baseType: !2630)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4148, file: !3952, line: 48, baseType: !3956, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !366, file: !367, line: 1112, baseType: !3956, size: 64, offset: 15488)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !366, file: !367, line: 1113, baseType: !3956, size: 64, offset: 15552)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !366, file: !367, line: 1115, baseType: !3956, size: 64, offset: 15616)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !366, file: !367, line: 1116, baseType: !3951, size: 192, offset: 15680)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !366, file: !367, line: 1117, baseType: !13, size: 64, offset: 15872)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !366, file: !367, line: 1118, baseType: !46, size: 64, offset: 15936)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !366, file: !367, line: 1119, baseType: !7, size: 32, offset: 16000)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !366, file: !367, line: 1121, baseType: !279, size: 64, offset: 16064)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !366, file: !367, line: 1125, baseType: !4172, size: 64, offset: 16128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !367, line: 43, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !366, file: !367, line: 1127, baseType: !850, size: 32, offset: 16192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !366, file: !367, line: 1128, baseType: !7, size: 32, offset: 16224)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !366, file: !367, line: 1130, baseType: !4177, size: 128, offset: 16256)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4178, line: 37, size: 128, elements: !4179)
!4178 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4179 = !{!4180, !4181, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4177, file: !4178, line: 38, baseType: !33, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4177, file: !4178, line: 39, baseType: !59, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4177, file: !4178, line: 40, baseType: !4183, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4178, line: 24, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !366, file: !367, line: 1131, baseType: !4186, size: 256, offset: 16384)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4187, line: 12, size: 256, elements: !4188)
!4187 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4188 = !{!4189, !4190, !4191, !4192}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4186, file: !4187, line: 13, baseType: !965, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4186, file: !4187, line: 14, baseType: !13, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4186, file: !4187, line: 15, baseType: !13, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4186, file: !4187, line: 16, baseType: !877, size: 8, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !366, file: !367, line: 1134, baseType: !325, size: 64, offset: 16640)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !366, file: !367, line: 1135, baseType: !325, size: 64, offset: 16704)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !366, file: !367, line: 1138, baseType: !69, size: 32, offset: 16768)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !366, file: !367, line: 1141, baseType: !523, size: 32, offset: 16800)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !366, file: !367, line: 1143, baseType: !4198, size: 64, offset: 16832)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !367, line: 735, size: 64, elements: !4199)
!4199 = !{!4200}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4198, file: !367, line: 736, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !366, file: !367, line: 1147, baseType: !563, size: 128, offset: 16896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !366, file: !367, line: 1149, baseType: !365, size: 64, offset: 17024)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !366, file: !367, line: 1151, baseType: !4205, size: 64, offset: 17088)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !367, line: 1151, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !366, file: !367, line: 1188, baseType: !31, size: 64, offset: 17152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !366, file: !367, line: 1191, baseType: !4209, size: 64, offset: 17216)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !367, line: 44, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !366, file: !367, line: 1194, baseType: !4212, size: 64, offset: 17280)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !367, line: 45, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !366, file: !367, line: 1197, baseType: !4215, size: 64, offset: 17344)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !367, line: 61, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !366, file: !367, line: 1199, baseType: !4218, size: 64, offset: 17408)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4220, line: 99, size: 128, elements: !4221)
!4220 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4221 = !{!4222, !4223, !4224}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4219, file: !4220, line: 100, baseType: !714, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4219, file: !4220, line: 101, baseType: !59, size: 32, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4219, file: !4220, line: 103, baseType: !37, size: 16, offset: 96)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !366, file: !367, line: 1202, baseType: !4226, size: 64, offset: 17472)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !367, line: 48, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !366, file: !367, line: 1205, baseType: !13, size: 64, offset: 17536)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !366, file: !367, line: 1206, baseType: !4230, size: 64, offset: 17600)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3952, line: 14, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3952, line: 12, size: 384, elements: !4233)
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, scope: !4232, file: !3952, line: 13, baseType: !4235, size: 384)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4232, file: !3952, line: 13, size: 384, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4240}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4235, file: !3952, line: 13, baseType: !33, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4235, file: !3952, line: 13, baseType: !33, size: 32, offset: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4235, file: !3952, line: 13, baseType: !33, size: 32, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4235, file: !3952, line: 13, baseType: !4241, size: 256, offset: 128)
!4241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4242, line: 37, size: 256, elements: !4243)
!4242 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4243 = !{!4244, !4249, !4262, !4268, !4277, !4304, !4309}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4241, file: !4242, line: 42, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 39, size: 64, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4245, file: !4242, line: 40, baseType: !3569, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4245, file: !4242, line: 41, baseType: !856, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4241, file: !4242, line: 50, baseType: !4250, size: 192)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 45, size: 192, elements: !4251)
!4251 = !{!4252, !4254, !4255, !4261}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4250, file: !4242, line: 46, baseType: !4253, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !48, line: 95, baseType: !33)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4250, file: !4242, line: 47, baseType: !33, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4250, file: !4242, line: 48, baseType: !4256, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4242, line: 11, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4242, line: 8, size: 64, elements: !4258)
!4258 = !{!4259, !4260}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4257, file: !4242, line: 9, baseType: !33, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4257, file: !4242, line: 10, baseType: !31, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4250, file: !4242, line: 49, baseType: !33, size: 32, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4241, file: !4242, line: 57, baseType: !4263, size: 128)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 53, size: 128, elements: !4264)
!4264 = !{!4265, !4266, !4267}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4263, file: !4242, line: 54, baseType: !3569, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4263, file: !4242, line: 55, baseType: !856, size: 32, offset: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4263, file: !4242, line: 56, baseType: !4256, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4241, file: !4242, line: 66, baseType: !4269, size: 256)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 60, size: 256, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4276}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4269, file: !4242, line: 61, baseType: !3569, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4269, file: !4242, line: 62, baseType: !856, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4269, file: !4242, line: 63, baseType: !33, size: 32, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4269, file: !4242, line: 64, baseType: !4275, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !48, line: 94, baseType: !1399)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4269, file: !4242, line: 65, baseType: !4275, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4241, file: !4242, line: 105, baseType: !4278, size: 256)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 69, size: 256, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4278, file: !4242, line: 70, baseType: !31, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !4278, file: !4242, line: 79, baseType: !4282, size: 192, offset: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4278, file: !4242, line: 79, size: 192, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4293, !4298}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4282, file: !4242, line: 81, baseType: !33, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4282, file: !4242, line: 86, baseType: !925, size: 16)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4282, file: !4242, line: 92, baseType: !4287, size: 192)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4242, line: 88, size: 192, elements: !4288)
!4288 = !{!4289, !4291, !4292}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4287, file: !4242, line: 89, baseType: !4290, size: 64)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !542)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4287, file: !4242, line: 90, baseType: !31, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4287, file: !4242, line: 91, baseType: !31, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4282, file: !4242, line: 97, baseType: !4294, size: 96)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4242, line: 94, size: 96, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4294, file: !4242, line: 95, baseType: !4290, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4294, file: !4242, line: 96, baseType: !377, size: 32, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4282, file: !4242, line: 103, baseType: !4299, size: 128)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4242, line: 99, size: 128, elements: !4300)
!4300 = !{!4301, !4302, !4303}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4299, file: !4242, line: 100, baseType: !13, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4299, file: !4242, line: 101, baseType: !377, size: 32, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4299, file: !4242, line: 102, baseType: !377, size: 32, offset: 96)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4241, file: !4242, line: 111, baseType: !4305, size: 128)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 108, size: 128, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4305, file: !4242, line: 109, baseType: !1102, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4305, file: !4242, line: 110, baseType: !33, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4241, file: !4242, line: 118, baseType: !4310, size: 128)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !4242, line: 114, size: 128, elements: !4311)
!4311 = !{!4312, !4313, !4314}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4310, file: !4242, line: 115, baseType: !31, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4310, file: !4242, line: 116, baseType: !33, size: 32, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4310, file: !4242, line: 117, baseType: !7, size: 32, offset: 96)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !366, file: !367, line: 1208, baseType: !4036, size: 448, offset: 17664)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !366, file: !367, line: 1215, baseType: !325, size: 64, offset: 18112)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !366, file: !367, line: 1217, baseType: !325, size: 64, offset: 18176)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !366, file: !367, line: 1219, baseType: !325, size: 64, offset: 18240)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !366, file: !367, line: 1223, baseType: !4320, size: 64, offset: 18304)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4321, line: 99, baseType: !4322)
!4321 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4321, line: 99, size: 64, elements: !4323)
!4323 = !{!4324}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4322, file: !4321, line: 99, baseType: !359, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !366, file: !367, line: 1225, baseType: !1216, size: 32, offset: 18368)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !366, file: !367, line: 1226, baseType: !33, size: 32, offset: 18400)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !366, file: !367, line: 1227, baseType: !33, size: 32, offset: 18432)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !366, file: !367, line: 1231, baseType: !3683, size: 64, offset: 18496)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !366, file: !367, line: 1233, baseType: !107, size: 128, offset: 18560)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !366, file: !367, line: 1240, baseType: !4331, size: 64, offset: 18688)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !367, line: 62, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !366, file: !367, line: 1242, baseType: !4334, size: 64, offset: 18752)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !367, line: 1242, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !366, file: !367, line: 1244, baseType: !107, size: 128, offset: 18816)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !366, file: !367, line: 1245, baseType: !4338, size: 64, offset: 18944)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !367, line: 51, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !366, file: !367, line: 1246, baseType: !721, size: 256, offset: 19008)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !366, file: !367, line: 1247, baseType: !7, size: 32, offset: 19264)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !366, file: !367, line: 1250, baseType: !4343, size: 64, offset: 19328)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !262, line: 912, size: 1792, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4344, file: !262, line: 917, baseType: !523, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4344, file: !262, line: 923, baseType: !721, size: 256, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !4344, file: !262, line: 925, baseType: !107, size: 128, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !4344, file: !262, line: 926, baseType: !4350, size: 128, offset: 448)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !262, line: 901, size: 128, elements: !4351)
!4351 = !{!4352, !4353}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !4350, file: !262, line: 902, baseType: !566, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4350, file: !262, line: 903, baseType: !325, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !4344, file: !262, line: 927, baseType: !4350, size: 128, offset: 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4344, file: !262, line: 928, baseType: !107, size: 128, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !4344, file: !262, line: 930, baseType: !33, size: 32, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !4344, file: !262, line: 931, baseType: !33, size: 32, offset: 864)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !4344, file: !262, line: 932, baseType: !33, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !4344, file: !262, line: 934, baseType: !33, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !4344, file: !262, line: 935, baseType: !33, size: 32, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !4344, file: !262, line: 936, baseType: !33, size: 32, offset: 992)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !4344, file: !262, line: 937, baseType: !33, size: 32, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4344, file: !262, line: 939, baseType: !382, size: 32, offset: 1056)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4344, file: !262, line: 940, baseType: !365, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4344, file: !262, line: 945, baseType: !325, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4344, file: !262, line: 946, baseType: !325, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4344, file: !262, line: 947, baseType: !325, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !4344, file: !262, line: 953, baseType: !4343, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !4344, file: !262, line: 954, baseType: !325, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4344, file: !262, line: 955, baseType: !325, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !4344, file: !262, line: 956, baseType: !33, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !4344, file: !262, line: 958, baseType: !33, size: 32, offset: 1568)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4344, file: !262, line: 960, baseType: !276, size: 128, align: 64, offset: 1600)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !4344, file: !262, line: 968, baseType: !4375, size: 64, offset: 1728)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !4376, line: 12, baseType: !4377)
!4376 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4376, line: 10, size: 64, elements: !4378)
!4378 = !{!4379}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4377, file: !4376, line: 11, baseType: !714, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !366, file: !367, line: 1251, baseType: !721, size: 256, offset: 19392)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !366, file: !367, line: 1252, baseType: !107, size: 128, offset: 19648)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !366, file: !367, line: 1259, baseType: !1819, size: 64, offset: 19776)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !366, file: !367, line: 1260, baseType: !925, size: 16, offset: 19840)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !366, file: !367, line: 1261, baseType: !925, size: 16, offset: 19856)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !366, file: !367, line: 1314, baseType: !4386, size: 64, offset: 19904)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4388, line: 62, size: 256, align: 256, elements: !4389)
!4388 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4387, file: !4388, line: 75, baseType: !377, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4387, file: !4388, line: 90, baseType: !377, size: 32, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4387, file: !4388, line: 112, baseType: !290, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4387, file: !4388, line: 132, baseType: !377, size: 32, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4387, file: !4388, line: 140, baseType: !377, size: 32, offset: 160)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4387, file: !4388, line: 149, baseType: !377, size: 32, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4387, file: !4388, line: 154, baseType: !4397, offset: 224)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !294)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !366, file: !367, line: 1315, baseType: !376, size: 32, offset: 19968)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !366, file: !367, line: 1316, baseType: !376, size: 32, offset: 20000)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !366, file: !367, line: 1321, baseType: !13, size: 64, offset: 20032)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !366, file: !367, line: 1325, baseType: !33, size: 32, offset: 20096)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !366, file: !367, line: 1326, baseType: !33, size: 32, offset: 20128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !366, file: !367, line: 1327, baseType: !33, size: 32, offset: 20160)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !366, file: !367, line: 1328, baseType: !33, size: 32, offset: 20192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !366, file: !367, line: 1329, baseType: !276, size: 128, align: 64, offset: 20224)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !366, file: !367, line: 1332, baseType: !4407, size: 128, offset: 20352)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4408, line: 51, size: 128, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4409 = !{!4410, !4415, !4416}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4407, file: !4408, line: 60, baseType: !4411, size: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4412, line: 7, size: 64, elements: !4413)
!4412 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4413 = !{!4414}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4411, file: !4412, line: 12, baseType: !355, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4407, file: !4408, line: 63, baseType: !877, size: 8, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4407, file: !4408, line: 70, baseType: !877, size: 8, offset: 72)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !366, file: !367, line: 1335, baseType: !3260, size: 64, offset: 20480)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !366, file: !367, line: 1337, baseType: !4419, size: 128, offset: 20544)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4408, line: 39, size: 128, elements: !4420)
!4420 = !{!4421, !4422, !4423}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4419, file: !4408, line: 40, baseType: !1616, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4419, file: !4408, line: 42, baseType: !377, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4419, file: !4408, line: 43, baseType: !377, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !366, file: !367, line: 1340, baseType: !4425, size: 64, offset: 20672)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !367, line: 69, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !366, file: !367, line: 1351, baseType: !33, size: 32, offset: 20736)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !366, file: !367, line: 1352, baseType: !33, size: 32, offset: 20768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !366, file: !367, line: 1354, baseType: !13, size: 64, offset: 20800)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !366, file: !367, line: 1364, baseType: !325, size: 64, offset: 20864)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !366, file: !367, line: 1365, baseType: !325, size: 64, offset: 20928)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !366, file: !367, line: 1412, baseType: !13, size: 64, offset: 20992)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !366, file: !367, line: 1453, baseType: !4434, size: 64, offset: 21056)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !367, line: 1453, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !366, file: !367, line: 1457, baseType: !4437, size: 64, offset: 21120)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !202, line: 61, size: 576, elements: !4439)
!4439 = !{!4440, !4441, !4460, !4463, !4464, !4497, !4507}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4438, file: !202, line: 62, baseType: !201, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, scope: !4438, file: !202, line: 64, baseType: !4442, size: 192, offset: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4438, file: !202, line: 64, size: 192, elements: !4443)
!4443 = !{!4444, !4455}
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !202, line: 65, baseType: !4445, size: 192)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4442, file: !202, line: 65, size: 192, elements: !4446)
!4446 = !{!4447, !4454}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4445, file: !202, line: 66, baseType: !4448, size: 128)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4449, line: 50, size: 128, elements: !4450)
!4449 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4450 = !{!4451, !4452, !4453}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4448, file: !4449, line: 52, baseType: !13, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4448, file: !4449, line: 54, baseType: !7, size: 32, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4448, file: !4449, line: 55, baseType: !7, size: 32, offset: 96)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4445, file: !202, line: 67, baseType: !13, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !202, line: 70, baseType: !4456, size: 192)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4442, file: !202, line: 70, size: 192, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4456, file: !202, line: 71, baseType: !276, size: 128, align: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4456, file: !202, line: 72, baseType: !13, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4438, file: !202, line: 76, baseType: !4461, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !202, line: 76, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4438, file: !202, line: 77, baseType: !13, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4438, file: !202, line: 79, baseType: !4465, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4449, line: 25, size: 256, elements: !4467)
!4467 = !{!4468, !4474, !4478}
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !4466, file: !4449, line: 26, baseType: !4469, size: 128)
!4469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4466, file: !4449, line: 26, size: 128, elements: !4470)
!4470 = !{!4471, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4469, file: !4449, line: 27, baseType: !4472, size: 128)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !3022)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4469, file: !4449, line: 28, baseType: !4472, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4466, file: !4449, line: 31, baseType: !4475, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4449, line: 23, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4466, file: !4449, line: 33, baseType: !4479, size: 64, offset: 192)
!4479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4466, file: !4449, line: 33, size: 64, elements: !4480)
!4480 = !{!4481, !4487, !4492}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4479, file: !4449, line: 38, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 34, size: 64, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4482, file: !4449, line: 35, baseType: !889, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4482, file: !4449, line: 36, baseType: !93, size: 8, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4482, file: !4449, line: 37, baseType: !93, size: 8, offset: 40)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4479, file: !4449, line: 42, baseType: !4488, size: 16)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 39, size: 16, elements: !4489)
!4489 = !{!4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4488, file: !4449, line: 40, baseType: !93, size: 8)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4488, file: !4449, line: 41, baseType: !93, size: 8, offset: 8)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4479, file: !4449, line: 46, baseType: !4493, size: 16)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 43, size: 16, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4493, file: !4449, line: 44, baseType: !93, size: 8)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4493, file: !4449, line: 45, baseType: !93, size: 8, offset: 8)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4438, file: !202, line: 81, baseType: !4498, size: 64, offset: 448)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !202, line: 85, size: 384, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4499, file: !202, line: 86, baseType: !4461, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4499, file: !202, line: 87, baseType: !13, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4499, file: !202, line: 88, baseType: !13, size: 64, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4499, file: !202, line: 89, baseType: !13, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4499, file: !202, line: 90, baseType: !877, size: 8, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4499, file: !202, line: 92, baseType: !4498, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4438, file: !202, line: 82, baseType: !7, size: 32, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !366, file: !367, line: 1463, baseType: !4509, offset: 21184)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !367, line: 739, elements: !694)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !366, file: !367, line: 1470, baseType: !276, size: 128, align: 64, offset: 21184)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !366, file: !367, line: 1471, baseType: !382, size: 32, offset: 21312)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !366, file: !367, line: 1472, baseType: !33, size: 32, offset: 21344)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !366, file: !367, line: 1474, baseType: !365, size: 64, offset: 21376)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !366, file: !367, line: 1475, baseType: !2525, size: 320, offset: 21440)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !366, file: !367, line: 1478, baseType: !4516, size: 64, offset: 21760)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !367, line: 1478, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !366, file: !367, line: 1482, baseType: !382, size: 32, offset: 21824)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !366, file: !367, line: 1489, baseType: !31, size: 64, offset: 21888)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !366, file: !367, line: 1504, baseType: !31, size: 64, offset: 21952)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !366, file: !367, line: 1505, baseType: !290, size: 64, offset: 22016)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !366, file: !367, line: 1506, baseType: !325, size: 64, offset: 22080)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !366, file: !367, line: 1507, baseType: !290, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !366, file: !367, line: 1508, baseType: !290, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !366, file: !367, line: 1509, baseType: !290, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !366, file: !367, line: 1510, baseType: !276, size: 128, align: 64, offset: 22208)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !366, file: !367, line: 1511, baseType: !33, size: 32, offset: 22336)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !366, file: !367, line: 1515, baseType: !4529, size: 64, offset: 22400)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !396, line: 56, size: 64, elements: !4530)
!4530 = !{!4531}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4529, file: !396, line: 57, baseType: !399, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !366, file: !367, line: 1518, baseType: !4529, size: 64, offset: 22464)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !366, file: !367, line: 1528, baseType: !276, size: 128, align: 64, offset: 22528)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !366, file: !367, line: 1552, baseType: !4535, size: 35328, offset: 23040)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4536, line: 430, size: 35328, elements: !4537)
!4536 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4537 = !{!4538, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !5541, !5542, !5543, !5544, !5545, !5546, !5549, !5550, !5551, !5552}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4535, file: !4536, line: 432, baseType: !4539, size: 192)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4540, size: 192, elements: !757)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4541, line: 16, size: 64, elements: !4542)
!4541 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4542 = !{!4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4540, file: !4541, line: 17, baseType: !103, size: 16)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4540, file: !4541, line: 18, baseType: !103, size: 16, offset: 16)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4540, file: !4541, line: 19, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4540, file: !4541, line: 19, baseType: !103, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4540, file: !4541, line: 19, baseType: !103, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4540, file: !4541, line: 19, baseType: !103, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4540, file: !4541, line: 19, baseType: !103, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4540, file: !4541, line: 20, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4540, file: !4541, line: 20, baseType: !103, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4540, file: !4541, line: 20, baseType: !103, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4540, file: !4541, line: 20, baseType: !103, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4540, file: !4541, line: 20, baseType: !103, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4540, file: !4541, line: 20, baseType: !103, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4535, file: !4536, line: 436, baseType: !13, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4535, file: !4536, line: 440, baseType: !37, size: 16, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4535, file: !4536, line: 441, baseType: !37, size: 16, offset: 272)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4535, file: !4536, line: 442, baseType: !37, size: 16, offset: 288)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4535, file: !4536, line: 443, baseType: !37, size: 16, offset: 304)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4535, file: !4536, line: 447, baseType: !13, size: 64, offset: 320)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4535, file: !4536, line: 448, baseType: !13, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4535, file: !4536, line: 459, baseType: !4564, size: 256, offset: 448)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4565, size: 256, elements: !778)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !262, line: 671, size: 8512, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !5145, !5146, !5147, !5148, !5154, !5155, !5156, !5157, !5158, !5241, !5242, !5243, !5244, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5364, !5365, !5366, !5367, !5368, !5369, !5380, !5381, !5382, !5383, !5384, !5390, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5407, !5520, !5521, !5522, !5525, !5538, !5539, !5540}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !4566, file: !262, line: 678, baseType: !107, size: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !4566, file: !262, line: 684, baseType: !107, size: 128, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !4566, file: !262, line: 685, baseType: !107, size: 128, offset: 256)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !4566, file: !262, line: 689, baseType: !426, size: 192, align: 64, offset: 384)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !4566, file: !262, line: 690, baseType: !325, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !4566, file: !262, line: 696, baseType: !107, size: 128, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !4566, file: !262, line: 698, baseType: !773, size: 128, offset: 768)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !4566, file: !262, line: 699, baseType: !107, size: 128, offset: 896)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !4566, file: !262, line: 700, baseType: !33, size: 32, offset: 1024)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !4566, file: !262, line: 703, baseType: !33, size: 32, offset: 1056)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !4566, file: !262, line: 705, baseType: !33, size: 32, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !4566, file: !262, line: 707, baseType: !7, size: 32, offset: 1120)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !4566, file: !262, line: 708, baseType: !4565, size: 64, offset: 1152)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !4566, file: !262, line: 714, baseType: !4582, size: 64, offset: 1216)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !262, line: 302, size: 2432, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4973, !4974, !4975, !4976, !4977, !4981, !4982, !4986, !4990, !4991, !4995, !4999, !5000, !5001, !5005, !5009, !5013, !5014, !5015, !5019, !5020, !5024, !5028, !5029, !5131, !5135, !5136, !5137, !5141}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4583, file: !262, line: 303, baseType: !107, size: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4583, file: !262, line: 305, baseType: !1479, size: 64, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4583, file: !262, line: 306, baseType: !4588, size: 64, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !215, line: 705, size: 5824, elements: !4590)
!4590 = !{!4591, !4592, !4593, !4596, !4597, !4650, !4720, !4721, !4722, !4723, !4724, !4731, !4823, !4836, !4846, !4850, !4852, !4853, !4854, !4858, !4865, !4866, !4869, !4872, !4876, !4879, !4880, !4881, !4882, !4883, !4884, !4914, !4915, !4916, !4919, !4922, !4931, !4932, !4933, !4934, !4935, !4936}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4589, file: !215, line: 706, baseType: !1492, size: 512)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4589, file: !215, line: 707, baseType: !4588, size: 64, offset: 512)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4589, file: !215, line: 709, baseType: !4594, size: 64, offset: 576)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !215, line: 37, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4589, file: !215, line: 711, baseType: !27, size: 64, offset: 640)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4589, file: !215, line: 712, baseType: !4598, size: 64, offset: 704)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !215, line: 89, size: 384, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4610, !4615, !4619}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4600, file: !215, line: 90, baseType: !27, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4600, file: !215, line: 91, baseType: !1572, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4600, file: !215, line: 92, baseType: !4605, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!33, !4608, !1528}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4589)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4600, file: !215, line: 93, baseType: !4611, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!965, !4608, !4614, !1068, !1069}
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4600, file: !215, line: 95, baseType: !4616, size: 64, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{null, !4588}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4600, file: !215, line: 97, baseType: !4620, size: 64, offset: 320)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4622)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !222, line: 286, size: 1472, elements: !4623)
!4623 = !{!4624, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4622, file: !222, line: 287, baseType: !4625, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!33, !4588}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4622, file: !222, line: 288, baseType: !4616, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4622, file: !222, line: 289, baseType: !4625, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4622, file: !222, line: 290, baseType: !4625, size: 64, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4622, file: !222, line: 291, baseType: !4625, size: 64, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4622, file: !222, line: 292, baseType: !4625, size: 64, offset: 320)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4622, file: !222, line: 293, baseType: !4625, size: 64, offset: 384)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4622, file: !222, line: 294, baseType: !4625, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4622, file: !222, line: 295, baseType: !4625, size: 64, offset: 512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4622, file: !222, line: 296, baseType: !4625, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4622, file: !222, line: 297, baseType: !4625, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4622, file: !222, line: 298, baseType: !4625, size: 64, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4622, file: !222, line: 299, baseType: !4625, size: 64, offset: 768)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4622, file: !222, line: 300, baseType: !4625, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4622, file: !222, line: 301, baseType: !4625, size: 64, offset: 896)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4622, file: !222, line: 302, baseType: !4625, size: 64, offset: 960)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4622, file: !222, line: 303, baseType: !4625, size: 64, offset: 1024)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4622, file: !222, line: 304, baseType: !4625, size: 64, offset: 1088)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4622, file: !222, line: 305, baseType: !4625, size: 64, offset: 1152)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4622, file: !222, line: 306, baseType: !4625, size: 64, offset: 1216)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4622, file: !222, line: 307, baseType: !4625, size: 64, offset: 1280)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4622, file: !222, line: 308, baseType: !4625, size: 64, offset: 1344)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4622, file: !222, line: 309, baseType: !4625, size: 64, offset: 1408)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4589, file: !215, line: 714, baseType: !4651, size: 64, offset: 768)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4654, line: 80, size: 1344, elements: !4655)
!4654 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4655 = !{!4656, !4657, !4658, !4659, !4660, !4661, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4719}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4653, file: !4654, line: 81, baseType: !27, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4653, file: !4654, line: 82, baseType: !27, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4653, file: !4654, line: 83, baseType: !1572, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4653, file: !4654, line: 84, baseType: !1572, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4653, file: !4654, line: 85, baseType: !1572, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4653, file: !4654, line: 87, baseType: !4662, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!33, !4588, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !209, line: 96, size: 1152, elements: !4667)
!4667 = !{!4668, !4669, !4670, !4671, !4672, !4673, !4674, !4678, !4682, !4683, !4684, !4685, !4686, !4694, !4695, !4696, !4697, !4698, !4699}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4666, file: !209, line: 97, baseType: !27, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4666, file: !209, line: 98, baseType: !4651, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4666, file: !209, line: 100, baseType: !1479, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4666, file: !209, line: 101, baseType: !27, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4666, file: !209, line: 103, baseType: !877, size: 8, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4666, file: !209, line: 104, baseType: !208, size: 32, offset: 288)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4666, file: !209, line: 106, baseType: !4675, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4677)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !209, line: 106, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4666, file: !209, line: 107, baseType: !4679, size: 64, offset: 384)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4681)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !209, line: 107, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4666, file: !209, line: 109, baseType: !4625, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4666, file: !209, line: 110, baseType: !4616, size: 64, offset: 512)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4666, file: !209, line: 111, baseType: !4625, size: 64, offset: 576)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4666, file: !209, line: 112, baseType: !4616, size: 64, offset: 640)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4666, file: !209, line: 113, baseType: !4687, size: 64, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!33, !4588, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !222, line: 60, baseType: !4691)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !222, line: 58, size: 32, elements: !4692)
!4692 = !{!4693}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4691, file: !222, line: 59, baseType: !33, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4666, file: !209, line: 114, baseType: !4625, size: 64, offset: 768)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4666, file: !209, line: 115, baseType: !1572, size: 64, offset: 832)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4666, file: !209, line: 116, baseType: !1572, size: 64, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4666, file: !209, line: 118, baseType: !4620, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4666, file: !209, line: 119, baseType: !4616, size: 64, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4666, file: !209, line: 121, baseType: !4700, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !209, line: 121, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4653, file: !4654, line: 88, baseType: !4605, size: 64, offset: 384)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4653, file: !4654, line: 89, baseType: !4625, size: 64, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4653, file: !4654, line: 90, baseType: !4616, size: 64, offset: 512)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4653, file: !4654, line: 91, baseType: !4616, size: 64, offset: 576)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4653, file: !4654, line: 92, baseType: !4616, size: 64, offset: 640)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4653, file: !4654, line: 94, baseType: !4625, size: 64, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4653, file: !4654, line: 95, baseType: !4625, size: 64, offset: 768)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4653, file: !4654, line: 97, baseType: !4687, size: 64, offset: 832)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4653, file: !4654, line: 98, baseType: !4625, size: 64, offset: 896)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4653, file: !4654, line: 100, baseType: !4625, size: 64, offset: 960)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4653, file: !4654, line: 102, baseType: !4625, size: 64, offset: 1024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4653, file: !4654, line: 103, baseType: !4616, size: 64, offset: 1088)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4653, file: !4654, line: 105, baseType: !4620, size: 64, offset: 1152)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4653, file: !4654, line: 107, baseType: !4716, size: 64, offset: 1216)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4654, line: 107, flags: DIFlagFwdDecl)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4653, file: !4654, line: 109, baseType: !877, size: 8, offset: 1280)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4589, file: !215, line: 715, baseType: !4665, size: 64, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4589, file: !215, line: 717, baseType: !31, size: 64, offset: 896)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4589, file: !215, line: 719, baseType: !31, size: 64, offset: 960)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4589, file: !215, line: 721, baseType: !721, size: 256, offset: 1024)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4589, file: !215, line: 725, baseType: !4725, size: 448, offset: 1280)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !215, line: 517, size: 448, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4730}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4725, file: !215, line: 518, baseType: !107, size: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4725, file: !215, line: 519, baseType: !107, size: 128, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4725, file: !215, line: 520, baseType: !107, size: 128, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4725, file: !215, line: 521, baseType: !214, size: 32, offset: 384)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4589, file: !215, line: 726, baseType: !4732, size: 2496, offset: 1728)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !222, line: 663, size: 2496, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4816, !4820}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4732, file: !222, line: 664, baseType: !4690, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4732, file: !222, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4732, file: !222, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4732, file: !222, line: 667, baseType: !877, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4732, file: !222, line: 668, baseType: !877, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4732, file: !222, line: 669, baseType: !877, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4732, file: !222, line: 670, baseType: !877, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4732, file: !222, line: 671, baseType: !877, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4732, file: !222, line: 672, baseType: !877, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4732, file: !222, line: 673, baseType: !877, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4732, file: !222, line: 674, baseType: !877, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4732, file: !222, line: 675, baseType: !376, size: 32, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4732, file: !222, line: 676, baseType: !69, size: 32, offset: 96)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4732, file: !222, line: 678, baseType: !107, size: 128, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4732, file: !222, line: 679, baseType: !1043, size: 256, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4732, file: !222, line: 680, baseType: !4750, size: 64, offset: 512)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4752, line: 43, size: 1536, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4753 = !{!4754, !4755, !4756, !4757, !4758, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4751, file: !4752, line: 44, baseType: !27, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4751, file: !4752, line: 45, baseType: !33, size: 32, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4751, file: !4752, line: 46, baseType: !107, size: 128, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4751, file: !4752, line: 47, baseType: !69, size: 32, offset: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4751, file: !4752, line: 48, baseType: !4759, size: 64, offset: 320)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !222, line: 629, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4751, file: !4752, line: 49, baseType: !2525, size: 320, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4751, file: !4752, line: 50, baseType: !13, size: 64, offset: 704)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4751, file: !4752, line: 51, baseType: !506, size: 64, offset: 768)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4751, file: !4752, line: 52, baseType: !506, size: 64, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4751, file: !4752, line: 53, baseType: !506, size: 64, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4751, file: !4752, line: 54, baseType: !506, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4751, file: !4752, line: 55, baseType: !506, size: 64, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4751, file: !4752, line: 56, baseType: !13, size: 64, offset: 1088)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4751, file: !4752, line: 57, baseType: !13, size: 64, offset: 1152)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4751, file: !4752, line: 58, baseType: !13, size: 64, offset: 1216)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4751, file: !4752, line: 59, baseType: !13, size: 64, offset: 1280)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4751, file: !4752, line: 60, baseType: !13, size: 64, offset: 1344)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4751, file: !4752, line: 61, baseType: !4588, size: 64, offset: 1408)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4751, file: !4752, line: 62, baseType: !877, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4751, file: !4752, line: 63, baseType: !877, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4732, file: !222, line: 681, baseType: !877, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4732, file: !222, line: 682, baseType: !877, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4732, file: !222, line: 683, baseType: !877, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4732, file: !222, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4732, file: !222, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4732, file: !222, line: 690, baseType: !498, size: 512, offset: 640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4732, file: !222, line: 691, baseType: !325, size: 64, offset: 1152)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4732, file: !222, line: 692, baseType: !1004, size: 256, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4732, file: !222, line: 693, baseType: !64, size: 192, offset: 1472)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4732, file: !222, line: 694, baseType: !4759, size: 64, offset: 1664)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4732, file: !222, line: 695, baseType: !59, size: 32, offset: 1728)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4732, file: !222, line: 696, baseType: !59, size: 32, offset: 1760)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4732, file: !222, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4732, file: !222, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4732, file: !222, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4732, file: !222, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4732, file: !222, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4732, file: !222, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4732, file: !222, line: 703, baseType: !877, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4732, file: !222, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4732, file: !222, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4732, file: !222, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4732, file: !222, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4732, file: !222, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4732, file: !222, line: 709, baseType: !7, size: 32, offset: 1824)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4732, file: !222, line: 710, baseType: !221, size: 32, offset: 1856)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4732, file: !222, line: 711, baseType: !229, size: 32, offset: 1888)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4732, file: !222, line: 712, baseType: !229, size: 32, offset: 1920)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4732, file: !222, line: 713, baseType: !33, size: 32, offset: 1952)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4732, file: !222, line: 714, baseType: !33, size: 32, offset: 1984)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4732, file: !222, line: 715, baseType: !325, size: 64, offset: 2048)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4732, file: !222, line: 716, baseType: !325, size: 64, offset: 2112)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4732, file: !222, line: 717, baseType: !325, size: 64, offset: 2176)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4732, file: !222, line: 718, baseType: !325, size: 64, offset: 2240)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4732, file: !222, line: 720, baseType: !4811, size: 64, offset: 2304)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !222, line: 632, size: 64, elements: !4813)
!4813 = !{!4814, !4815}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4812, file: !222, line: 633, baseType: !69, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4812, file: !222, line: 634, baseType: !7, size: 32, offset: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4732, file: !222, line: 721, baseType: !4817, size: 64, offset: 2368)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{null, !4588, !889}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4732, file: !222, line: 722, baseType: !4821, size: 64, offset: 2432)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !222, line: 722, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4589, file: !215, line: 727, baseType: !4824, size: 64, offset: 4224)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !222, line: 742, size: 1792, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4833, !4834, !4835}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4825, file: !222, line: 743, baseType: !4622, size: 1472)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4825, file: !222, line: 744, baseType: !4625, size: 64, offset: 1472)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4825, file: !222, line: 745, baseType: !4830, size: 64, offset: 1536)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !4588, !877}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4825, file: !222, line: 746, baseType: !4625, size: 64, offset: 1600)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4825, file: !222, line: 747, baseType: !4616, size: 64, offset: 1664)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4825, file: !222, line: 748, baseType: !4616, size: 64, offset: 1728)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4589, file: !215, line: 736, baseType: !4837, size: 128, offset: 4288)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !215, line: 529, size: 128, elements: !4838)
!4838 = !{!4839, !4843}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4837, file: !215, line: 531, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4842, line: 13, flags: DIFlagFwdDecl)
!4842 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4837, file: !215, line: 532, baseType: !4844, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !215, line: 49, flags: DIFlagFwdDecl)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4589, file: !215, line: 738, baseType: !4847, size: 64, offset: 4416)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4849)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !215, line: 738, flags: DIFlagFwdDecl)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4589, file: !215, line: 740, baseType: !4851, size: 64, offset: 4480)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4589, file: !215, line: 741, baseType: !325, size: 64, offset: 4544)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4589, file: !215, line: 746, baseType: !325, size: 64, offset: 4608)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4589, file: !215, line: 747, baseType: !4855, size: 64, offset: 4672)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4857)
!4857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !215, line: 747, flags: DIFlagFwdDecl)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4589, file: !215, line: 749, baseType: !4859, size: 64, offset: 4736)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !215, line: 428, size: 128, elements: !4861)
!4861 = !{!4862, !4863, !4864}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4860, file: !215, line: 433, baseType: !7, size: 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4860, file: !215, line: 434, baseType: !7, size: 32, offset: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4860, file: !215, line: 435, baseType: !13, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4589, file: !215, line: 751, baseType: !107, size: 128, offset: 4800)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4589, file: !215, line: 762, baseType: !4867, size: 64, offset: 4928)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !215, line: 762, flags: DIFlagFwdDecl)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4589, file: !215, line: 770, baseType: !4870, offset: 4992)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4871, line: 5, elements: !694)
!4871 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4589, file: !215, line: 772, baseType: !4873, size: 64, offset: 4992)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4875, line: 18, flags: DIFlagFwdDecl)
!4875 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4589, file: !215, line: 773, baseType: !4877, size: 64, offset: 5056)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4654, line: 22, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4589, file: !215, line: 776, baseType: !33, size: 32, offset: 5120)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4589, file: !215, line: 778, baseType: !1319, size: 32, offset: 5152)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4589, file: !215, line: 779, baseType: !376, size: 32, offset: 5184)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4589, file: !215, line: 781, baseType: !69, size: 32, offset: 5216)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4589, file: !215, line: 782, baseType: !107, size: 128, offset: 5248)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4589, file: !215, line: 784, baseType: !4885, size: 64, offset: 5376)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4887)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4888, line: 52, size: 768, elements: !4889)
!4888 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4889 = !{!4890, !4891, !4892, !4893, !4894, !4898, !4902, !4903, !4904, !4905, !4909, !4913}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4887, file: !4888, line: 53, baseType: !27, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4887, file: !4888, line: 55, baseType: !1572, size: 64, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4887, file: !4888, line: 56, baseType: !1572, size: 64, offset: 128)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4887, file: !4888, line: 58, baseType: !4605, size: 64, offset: 192)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4887, file: !4888, line: 59, baseType: !4895, size: 64, offset: 256)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!965, !4608, !4614}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4887, file: !4888, line: 61, baseType: !4899, size: 64, offset: 320)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !4885}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4887, file: !4888, line: 62, baseType: !4616, size: 64, offset: 384)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4887, file: !4888, line: 64, baseType: !4625, size: 64, offset: 448)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4887, file: !4888, line: 66, baseType: !2105, size: 64, offset: 512)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4887, file: !4888, line: 67, baseType: !4906, size: 64, offset: 576)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!2122, !4608}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4887, file: !4888, line: 69, baseType: !4910, size: 64, offset: 640)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4608, !1068, !1069}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4887, file: !4888, line: 71, baseType: !4620, size: 64, offset: 704)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4589, file: !215, line: 785, baseType: !1572, size: 64, offset: 5440)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4589, file: !215, line: 787, baseType: !4616, size: 64, offset: 5504)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4589, file: !215, line: 788, baseType: !4917, size: 64, offset: 5568)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !215, line: 46, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4589, file: !215, line: 789, baseType: !4920, size: 64, offset: 5632)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !215, line: 48, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4589, file: !215, line: 791, baseType: !4923, size: 64, offset: 5696)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !215, line: 597, size: 128, elements: !4925)
!4925 = !{!4926, !4927, !4928, !4929, !4930}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4924, file: !215, line: 598, baseType: !236, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4924, file: !215, line: 599, baseType: !245, size: 32, offset: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4924, file: !215, line: 600, baseType: !250, size: 32, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4924, file: !215, line: 601, baseType: !877, size: 8, offset: 96)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4924, file: !215, line: 602, baseType: !877, size: 8, offset: 104)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4589, file: !215, line: 793, baseType: !255, size: 32, offset: 5760)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4589, file: !215, line: 795, baseType: !877, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4589, file: !215, line: 796, baseType: !877, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4589, file: !215, line: 797, baseType: !877, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4589, file: !215, line: 798, baseType: !877, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4589, file: !215, line: 799, baseType: !877, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4583, file: !262, line: 307, baseType: !4588, size: 64, offset: 256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !4583, file: !262, line: 308, baseType: !1572, size: 64, offset: 320)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !4583, file: !262, line: 309, baseType: !1572, size: 64, offset: 384)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !262, line: 310, baseType: !27, size: 64, offset: 448)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4583, file: !262, line: 311, baseType: !33, size: 32, offset: 512)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4583, file: !262, line: 316, baseType: !33, size: 32, offset: 544)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !4583, file: !262, line: 318, baseType: !271, size: 64, offset: 576)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !4583, file: !262, line: 319, baseType: !4945, size: 64, offset: 640)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !262, line: 977, size: 1856, elements: !4947)
!4947 = !{!4948, !4963, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !4946, file: !262, line: 978, baseType: !4949, size: 896)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !262, line: 873, size: 896, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !4949, file: !262, line: 874, baseType: !4582, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4949, file: !262, line: 875, baseType: !4343, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !4949, file: !262, line: 877, baseType: !107, size: 128, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !4949, file: !262, line: 879, baseType: !107, size: 128, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !4949, file: !262, line: 880, baseType: !107, size: 128, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !4949, file: !262, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !4949, file: !262, line: 885, baseType: !7, size: 32, offset: 544)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !4949, file: !262, line: 886, baseType: !7, size: 32, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4949, file: !262, line: 888, baseType: !59, size: 32, offset: 608)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4949, file: !262, line: 889, baseType: !276, size: 128, align: 64, offset: 640)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !4949, file: !262, line: 891, baseType: !31, size: 64, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !4949, file: !262, line: 898, baseType: !33, size: 32, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !4946, file: !262, line: 979, baseType: !4964, size: 64, offset: 896)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !4946, file: !262, line: 981, baseType: !107, size: 128, offset: 960)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !4946, file: !262, line: 982, baseType: !33, size: 32, offset: 1088)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !4946, file: !262, line: 984, baseType: !33, size: 32, offset: 1120)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4946, file: !262, line: 985, baseType: !33, size: 32, offset: 1152)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !4946, file: !262, line: 987, baseType: !523, size: 32, offset: 1184)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4946, file: !262, line: 988, baseType: !498, size: 512, offset: 1216)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !4946, file: !262, line: 989, baseType: !506, size: 64, offset: 1728)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !4946, file: !262, line: 990, baseType: !7, size: 32, offset: 1792)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !4583, file: !262, line: 320, baseType: !59, size: 32, offset: 704)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !4583, file: !262, line: 321, baseType: !33, size: 32, offset: 736)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !4583, file: !262, line: 322, baseType: !33, size: 32, offset: 768)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !4583, file: !262, line: 325, baseType: !7, size: 32, offset: 800)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !4583, file: !262, line: 331, baseType: !4978, size: 64, offset: 832)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4582}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !4583, file: !262, line: 332, baseType: !4978, size: 64, offset: 896)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !4583, file: !262, line: 350, baseType: !4983, size: 64, offset: 960)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!33, !4565}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !4583, file: !262, line: 356, baseType: !4987, size: 64, offset: 1024)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !4565, !673}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !4583, file: !262, line: 357, baseType: !4987, size: 64, offset: 1088)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4583, file: !262, line: 385, baseType: !4992, size: 64, offset: 1152)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!33, !4565, !33}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !4583, file: !262, line: 386, baseType: !4996, size: 64, offset: 1216)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{null, !4565, !33}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4583, file: !262, line: 406, baseType: !4996, size: 64, offset: 1280)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4583, file: !262, line: 407, baseType: !4996, size: 64, offset: 1344)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4583, file: !262, line: 415, baseType: !5002, size: 64, offset: 1408)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{null, !4565}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !4583, file: !262, line: 427, baseType: !5006, size: 64, offset: 1472)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !4582, !7}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !4583, file: !262, line: 436, baseType: !5010, size: 64, offset: 1536)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!33, !4582}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !4583, file: !262, line: 443, baseType: !4978, size: 64, offset: 1600)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !4583, file: !262, line: 450, baseType: !4983, size: 64, offset: 1664)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !4583, file: !262, line: 455, baseType: !5016, size: 64, offset: 1728)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{null, !4964, !877}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !4583, file: !262, line: 461, baseType: !810, size: 64, offset: 1792)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !4583, file: !262, line: 469, baseType: !5021, size: 64, offset: 1856)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !4964, !4964}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !4583, file: !262, line: 476, baseType: !5025, size: 64, offset: 1920)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!31, !4565, !1994, !33, !877}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !4583, file: !262, line: 483, baseType: !1276, size: 64, offset: 1984)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !4583, file: !262, line: 494, baseType: !5030, size: 64, offset: 2048)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!1102, !4565, !5033, !13}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !262, line: 1014, size: 448, elements: !5035)
!5035 = !{!5036, !5037, !5122, !5123, !5124, !5125, !5130}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5034, file: !262, line: 1015, baseType: !4565, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5034, file: !262, line: 1016, baseType: !5038, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !5040, line: 13, size: 2176, elements: !5041)
!5040 = !DIFile(filename: "kernel/events/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4001ba2ca95b9a1f8bc0aaa85c500637")
!5041 = !{!5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5120}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5039, file: !5040, line: 14, baseType: !382, size: 32)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5039, file: !5040, line: 15, baseType: !276, size: 128, align: 64, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5039, file: !5040, line: 20, baseType: !33, size: 32, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "overwrite", scope: !5039, file: !5040, line: 21, baseType: !33, size: 32, offset: 224)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "paused", scope: !5039, file: !5040, line: 22, baseType: !33, size: 32, offset: 256)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5039, file: !5040, line: 24, baseType: !59, size: 32, offset: 288)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5039, file: !5040, line: 26, baseType: !4375, size: 64, offset: 320)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "nest", scope: !5039, file: !5040, line: 27, baseType: !7, size: 32, offset: 384)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5039, file: !5040, line: 28, baseType: !4375, size: 64, offset: 448)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5039, file: !5040, line: 29, baseType: !4375, size: 64, offset: 512)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "lost", scope: !5039, file: !5040, line: 30, baseType: !4375, size: 64, offset: 576)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !5039, file: !5040, line: 32, baseType: !1102, size: 64, offset: 640)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !5039, file: !5040, line: 33, baseType: !1102, size: 64, offset: 704)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !5039, file: !5040, line: 35, baseType: !69, size: 32, offset: 768)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5039, file: !5040, line: 36, baseType: !107, size: 128, offset: 832)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !5039, file: !5040, line: 38, baseType: !59, size: 32, offset: 960)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_locked", scope: !5039, file: !5040, line: 39, baseType: !13, size: 64, offset: 1024)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_user", scope: !5039, file: !5040, line: 40, baseType: !1146, size: 64, offset: 1088)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "aux_mutex", scope: !5039, file: !5040, line: 43, baseType: !721, size: 256, offset: 1152)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "aux_head", scope: !5039, file: !5040, line: 44, baseType: !1102, size: 64, offset: 1408)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "aux_nest", scope: !5039, file: !5040, line: 45, baseType: !7, size: 32, offset: 1472)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "aux_wakeup", scope: !5039, file: !5040, line: 46, baseType: !1102, size: 64, offset: 1536)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "aux_pgoff", scope: !5039, file: !5040, line: 47, baseType: !13, size: 64, offset: 1600)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "aux_nr_pages", scope: !5039, file: !5040, line: 48, baseType: !33, size: 32, offset: 1664)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "aux_overwrite", scope: !5039, file: !5040, line: 49, baseType: !33, size: 32, offset: 1696)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "aux_mmap_count", scope: !5039, file: !5040, line: 50, baseType: !59, size: 32, offset: 1728)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "aux_mmap_locked", scope: !5039, file: !5040, line: 51, baseType: !13, size: 64, offset: 1792)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !5039, file: !5040, line: 52, baseType: !1276, size: 64, offset: 1856)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "aux_refcount", scope: !5039, file: !5040, line: 53, baseType: !382, size: 32, offset: 1920)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "aux_in_sampling", scope: !5039, file: !5040, line: 54, baseType: !33, size: 32, offset: 1952)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "aux_pages", scope: !5039, file: !5040, line: 55, baseType: !1994, size: 64, offset: 1984)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "aux_priv", scope: !5039, file: !5040, line: 56, baseType: !31, size: 64, offset: 2048)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "user_page", scope: !5039, file: !5040, line: 58, baseType: !5075, size: 64, offset: 2112)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_mmap_page", file: !12, line: 567, size: 8704, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5076, file: !12, line: 568, baseType: !377, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "compat_version", scope: !5076, file: !12, line: 569, baseType: !377, size: 32, offset: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5076, file: !12, line: 606, baseType: !377, size: 32, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5076, file: !12, line: 607, baseType: !377, size: 32, offset: 96)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5076, file: !12, line: 608, baseType: !443, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "time_enabled", scope: !5076, file: !12, line: 609, baseType: !290, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "time_running", scope: !5076, file: !12, line: 610, baseType: !290, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_member, scope: !5076, file: !12, line: 611, baseType: !5086, size: 64, offset: 320)
!5086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5076, file: !12, line: 611, size: 64, elements: !5087)
!5087 = !{!5088, !5089}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5086, file: !12, line: 612, baseType: !290, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5086, file: !12, line: 613, baseType: !5090, size: 64)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5086, file: !12, line: 613, size: 64, elements: !5091)
!5091 = !{!5092, !5093, !5094, !5095, !5096, !5097, !5098}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bit0", scope: !5090, file: !12, line: 614, baseType: !290, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bit0_is_deprecated", scope: !5090, file: !12, line: 615, baseType: !290, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "cap_user_rdpmc", scope: !5090, file: !12, line: 617, baseType: !290, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "cap_user_time", scope: !5090, file: !12, line: 618, baseType: !290, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "cap_user_time_zero", scope: !5090, file: !12, line: 619, baseType: !290, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "cap_user_time_short", scope: !5090, file: !12, line: 620, baseType: !290, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "cap_____res", scope: !5090, file: !12, line: 621, baseType: !290, size: 58, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "pmc_width", scope: !5076, file: !12, line: 634, baseType: !104, size: 16, offset: 384)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "time_shift", scope: !5076, file: !12, line: 660, baseType: !104, size: 16, offset: 400)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "time_mult", scope: !5076, file: !12, line: 661, baseType: !377, size: 32, offset: 416)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset", scope: !5076, file: !12, line: 662, baseType: !290, size: 64, offset: 448)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "time_zero", scope: !5076, file: !12, line: 679, baseType: !290, size: 64, offset: 512)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5076, file: !12, line: 681, baseType: !377, size: 32, offset: 576)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !5076, file: !12, line: 682, baseType: !377, size: 32, offset: 608)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "time_cycles", scope: !5076, file: !12, line: 695, baseType: !290, size: 64, offset: 640)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "time_mask", scope: !5076, file: !12, line: 696, baseType: !290, size: 64, offset: 704)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !5076, file: !12, line: 702, baseType: !5109, size: 7424, offset: 768)
!5109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 7424, elements: !5110)
!5110 = !{!5111}
!5111 = !DISubrange(count: 928)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "data_head", scope: !5076, file: !12, line: 720, baseType: !290, size: 64, offset: 8192)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "data_tail", scope: !5076, file: !12, line: 721, baseType: !290, size: 64, offset: 8256)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "data_offset", scope: !5076, file: !12, line: 722, baseType: !290, size: 64, offset: 8320)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !5076, file: !12, line: 723, baseType: !290, size: 64, offset: 8384)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "aux_head", scope: !5076, file: !12, line: 736, baseType: !290, size: 64, offset: 8448)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "aux_tail", scope: !5076, file: !12, line: 737, baseType: !290, size: 64, offset: 8512)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "aux_offset", scope: !5076, file: !12, line: 738, baseType: !290, size: 64, offset: 8576)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5076, file: !12, line: 739, baseType: !290, size: 64, offset: 8640)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "data_pages", scope: !5039, file: !5040, line: 59, baseType: !5121, offset: 2176)
!5121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !294)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5034, file: !262, line: 1017, baseType: !13, size: 64, offset: 128)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5034, file: !262, line: 1018, baseType: !13, size: 64, offset: 192)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !5034, file: !262, line: 1019, baseType: !325, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_member, scope: !5034, file: !262, line: 1020, baseType: !5126, size: 64, offset: 320)
!5126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5034, file: !262, line: 1020, size: 64, elements: !5127)
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5126, file: !262, line: 1021, baseType: !31, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5126, file: !262, line: 1022, baseType: !13, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5034, file: !262, line: 1024, baseType: !33, size: 32, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !4583, file: !262, line: 506, baseType: !5132, size: 64, offset: 2112)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!33, !110}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !4583, file: !262, line: 520, baseType: !5002, size: 64, offset: 2176)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !4583, file: !262, line: 530, baseType: !4983, size: 64, offset: 2240)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4583, file: !262, line: 537, baseType: !5138, size: 64, offset: 2304)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!877, !4582, !33}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !4583, file: !262, line: 542, baseType: !5142, size: 64, offset: 2368)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!33, !4565, !325}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !4566, file: !262, line: 715, baseType: !31, size: 64, offset: 1280)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4566, file: !262, line: 717, baseType: !261, size: 32, offset: 1344)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !4566, file: !262, line: 718, baseType: !7, size: 32, offset: 1376)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4566, file: !262, line: 719, baseType: !5149, size: 64, offset: 1408)
!5149 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !5150, line: 26, baseType: !5151)
!5150 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5150, line: 24, size: 64, elements: !5152)
!5152 = !{!5153}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !5151, file: !5150, line: 25, baseType: !4375, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4566, file: !262, line: 720, baseType: !716, size: 64, offset: 1472)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !4566, file: !262, line: 728, baseType: !325, size: 64, offset: 1536)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !4566, file: !262, line: 729, baseType: !325, size: 64, offset: 1600)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4566, file: !262, line: 730, baseType: !325, size: 64, offset: 1664)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4566, file: !262, line: 732, baseType: !5159, size: 1088, offset: 1728)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !12, line: 385, size: 1088, elements: !5160)
!5160 = !{!5161, !5162, !5163, !5164, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5214, !5215, !5222, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5159, file: !12, line: 390, baseType: !377, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5159, file: !12, line: 395, baseType: !377, size: 32, offset: 32)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5159, file: !12, line: 400, baseType: !290, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !12, line: 402, baseType: !5165, size: 64, offset: 128)
!5165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !12, line: 402, size: 64, elements: !5166)
!5166 = !{!5167, !5168}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5165, file: !12, line: 403, baseType: !290, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !5165, file: !12, line: 404, baseType: !290, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !5159, file: !12, line: 407, baseType: !290, size: 64, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !5159, file: !12, line: 408, baseType: !290, size: 64, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5159, file: !12, line: 410, baseType: !290, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !5159, file: !12, line: 411, baseType: !290, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !5159, file: !12, line: 412, baseType: !290, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5159, file: !12, line: 413, baseType: !290, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !5159, file: !12, line: 414, baseType: !290, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !5159, file: !12, line: 415, baseType: !290, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !5159, file: !12, line: 416, baseType: !290, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !5159, file: !12, line: 417, baseType: !290, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5159, file: !12, line: 418, baseType: !290, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5159, file: !12, line: 419, baseType: !290, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5159, file: !12, line: 420, baseType: !290, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !5159, file: !12, line: 421, baseType: !290, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !5159, file: !12, line: 422, baseType: !290, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5159, file: !12, line: 423, baseType: !290, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !5159, file: !12, line: 424, baseType: !290, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !5159, file: !12, line: 435, baseType: !290, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !5159, file: !12, line: 436, baseType: !290, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !5159, file: !12, line: 437, baseType: !290, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !5159, file: !12, line: 439, baseType: !290, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !5159, file: !12, line: 440, baseType: !290, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !5159, file: !12, line: 442, baseType: !290, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !5159, file: !12, line: 443, baseType: !290, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !5159, file: !12, line: 444, baseType: !290, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !5159, file: !12, line: 445, baseType: !290, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !5159, file: !12, line: 446, baseType: !290, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !5159, file: !12, line: 447, baseType: !290, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !5159, file: !12, line: 448, baseType: !290, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !5159, file: !12, line: 449, baseType: !290, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !5159, file: !12, line: 450, baseType: !290, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !5159, file: !12, line: 451, baseType: !290, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !5159, file: !12, line: 452, baseType: !290, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5159, file: !12, line: 453, baseType: !290, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !5159, file: !12, line: 454, baseType: !290, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !5159, file: !12, line: 455, baseType: !290, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !5159, file: !12, line: 456, baseType: !290, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !5159, file: !12, line: 457, baseType: !290, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !5159, file: !12, line: 458, baseType: !290, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !5159, file: !12, line: 459, baseType: !290, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!5209 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !12, line: 461, baseType: !5210, size: 32, offset: 384)
!5210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !12, line: 461, size: 32, elements: !5211)
!5211 = !{!5212, !5213}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !5210, file: !12, line: 462, baseType: !377, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !5210, file: !12, line: 463, baseType: !377, size: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !5159, file: !12, line: 466, baseType: !377, size: 32, offset: 416)
!5215 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !12, line: 467, baseType: !5216, size: 64, offset: 448)
!5216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !12, line: 467, size: 64, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !5216, file: !12, line: 468, baseType: !290, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !5216, file: !12, line: 469, baseType: !290, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !5216, file: !12, line: 470, baseType: !290, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !5216, file: !12, line: 471, baseType: !290, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !12, line: 473, baseType: !5223, size: 64, offset: 512)
!5223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !12, line: 473, size: 64, elements: !5224)
!5224 = !{!5225, !5226, !5227, !5228}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !5223, file: !12, line: 474, baseType: !290, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !5223, file: !12, line: 475, baseType: !290, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !5223, file: !12, line: 476, baseType: !290, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !5223, file: !12, line: 477, baseType: !290, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !5159, file: !12, line: 479, baseType: !290, size: 64, offset: 576)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !5159, file: !12, line: 485, baseType: !290, size: 64, offset: 640)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !5159, file: !12, line: 490, baseType: !377, size: 32, offset: 704)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5159, file: !12, line: 492, baseType: !890, size: 32, offset: 736)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !5159, file: !12, line: 501, baseType: !290, size: 64, offset: 768)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !5159, file: !12, line: 506, baseType: !377, size: 32, offset: 832)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !5159, file: !12, line: 507, baseType: !104, size: 16, offset: 864)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !5159, file: !12, line: 508, baseType: !104, size: 16, offset: 880)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !5159, file: !12, line: 509, baseType: !377, size: 32, offset: 896)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !5159, file: !12, line: 510, baseType: !377, size: 32, offset: 928)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !5159, file: !12, line: 518, baseType: !290, size: 64, offset: 960)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !5159, file: !12, line: 520, baseType: !290, size: 64, offset: 1024)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !4566, file: !262, line: 733, baseType: !103, size: 16, offset: 2816)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !4566, file: !262, line: 734, baseType: !103, size: 16, offset: 2832)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !4566, file: !262, line: 735, baseType: !103, size: 16, offset: 2848)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !4566, file: !262, line: 736, baseType: !5245, size: 1536, offset: 2880)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !262, line: 155, size: 1536, elements: !5246)
!5246 = !{!5247, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5331, !5332, !5333, !5334}
!5247 = !DIDerivedType(tag: DW_TAG_member, scope: !5245, file: !262, line: 157, baseType: !5248, size: 768)
!5248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5245, file: !262, line: 157, size: 768, elements: !5249)
!5249 = !{!5250, !5269, !5273, !5277, !5282, !5304}
!5250 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 158, baseType: !5251, size: 768)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 158, size: 768, elements: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5268}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5251, file: !262, line: 159, baseType: !325, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !5251, file: !262, line: 160, baseType: !325, size: 64, offset: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !5251, file: !262, line: 161, baseType: !13, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !5251, file: !262, line: 162, baseType: !13, size: 64, offset: 192)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !5251, file: !262, line: 163, baseType: !33, size: 32, offset: 256)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5251, file: !262, line: 164, baseType: !33, size: 32, offset: 288)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5251, file: !262, line: 165, baseType: !33, size: 32, offset: 320)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5251, file: !262, line: 166, baseType: !33, size: 32, offset: 352)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !5251, file: !262, line: 168, baseType: !5262, size: 192, offset: 384)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !262, line: 134, size: 192, elements: !5263)
!5263 = !{!5264, !5265, !5266, !5267}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5262, file: !262, line: 135, baseType: !325, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5262, file: !262, line: 136, baseType: !7, size: 32, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5262, file: !262, line: 137, baseType: !33, size: 32, offset: 96)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5262, file: !262, line: 138, baseType: !33, size: 32, offset: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !5251, file: !262, line: 169, baseType: !5262, size: 192, offset: 576)
!5269 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 171, baseType: !5270, size: 512)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 171, size: 512, elements: !5271)
!5271 = !{!5272}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5270, file: !262, line: 172, baseType: !498, size: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 174, baseType: !5274, size: 128)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 174, size: 128, elements: !5275)
!5275 = !{!5276}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !5274, file: !262, line: 176, baseType: !107, size: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 178, baseType: !5278, size: 128)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 178, size: 128, elements: !5279)
!5279 = !{!5280, !5281}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !5278, file: !262, line: 179, baseType: !325, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !5278, file: !262, line: 180, baseType: !325, size: 64, offset: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 183, baseType: !5283, size: 320)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 183, size: 320, elements: !5284)
!5284 = !{!5285, !5293}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5283, file: !262, line: 189, baseType: !5286, size: 192)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !5287, line: 14, size: 192, elements: !5288)
!5287 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!5288 = !{!5289, !5290, !5291, !5292}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5286, file: !5287, line: 15, baseType: !13, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5286, file: !5287, line: 16, baseType: !13, size: 64, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5286, file: !5287, line: 17, baseType: !93, size: 8, offset: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5286, file: !5287, line: 18, baseType: !93, size: 8, offset: 136)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !5283, file: !262, line: 190, baseType: !5294, size: 128, offset: 192)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !5295, line: 21, size: 128, elements: !5296)
!5295 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!5296 = !{!5297, !5302}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !5294, file: !5295, line: 22, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !5295, line: 17, size: 64, elements: !5299)
!5299 = !{!5300}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5298, file: !5295, line: 18, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5294, file: !5295, line: 23, baseType: !5303, size: 64, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, scope: !5248, file: !262, line: 193, baseType: !5305, size: 192)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5248, file: !262, line: 193, size: 192, elements: !5306)
!5306 = !{!5307, !5308, !5309, !5310, !5311}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !5305, file: !262, line: 194, baseType: !93, size: 8)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !5305, file: !262, line: 195, baseType: !93, size: 8, offset: 8)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5305, file: !262, line: 196, baseType: !103, size: 16, offset: 16)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5305, file: !262, line: 197, baseType: !325, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !5305, file: !262, line: 198, baseType: !325, size: 64, offset: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5245, file: !262, line: 205, baseType: !365, size: 64, offset: 768)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !5245, file: !262, line: 211, baseType: !31, size: 64, offset: 832)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !5245, file: !262, line: 214, baseType: !13, size: 64, offset: 896)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5245, file: !262, line: 223, baseType: !33, size: 32, offset: 960)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !5245, file: !262, line: 229, baseType: !5149, size: 64, offset: 1024)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5245, file: !262, line: 234, baseType: !325, size: 64, offset: 1088)
!5318 = !DIDerivedType(tag: DW_TAG_member, scope: !5245, file: !262, line: 236, baseType: !5319, size: 128, offset: 1152)
!5319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5245, file: !262, line: 236, size: 128, elements: !5320)
!5320 = !{!5321, !5326}
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !5319, file: !262, line: 237, baseType: !5322, size: 128)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5319, file: !262, line: 237, size: 128, elements: !5323)
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !5322, file: !262, line: 241, baseType: !325, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !5322, file: !262, line: 249, baseType: !5149, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, scope: !5319, file: !262, line: 251, baseType: !5327, size: 128)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5319, file: !262, line: 251, size: 128, elements: !5328)
!5328 = !{!5329, !5330}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !5327, file: !262, line: 252, baseType: !325, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !5327, file: !262, line: 253, baseType: !325, size: 64, offset: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !5245, file: !262, line: 261, baseType: !325, size: 64, offset: 1280)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5245, file: !262, line: 262, baseType: !325, size: 64, offset: 1344)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !5245, file: !262, line: 268, baseType: !325, size: 64, offset: 1408)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !5245, file: !262, line: 269, baseType: !325, size: 64, offset: 1472)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4566, file: !262, line: 738, baseType: !4343, size: 64, offset: 4416)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !4566, file: !262, line: 744, baseType: !4964, size: 64, offset: 4480)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4566, file: !262, line: 745, baseType: !714, size: 64, offset: 4544)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !4566, file: !262, line: 751, baseType: !716, size: 64, offset: 4608)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !4566, file: !262, line: 752, baseType: !716, size: 64, offset: 4672)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !4566, file: !262, line: 757, baseType: !721, size: 256, offset: 4736)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !4566, file: !262, line: 758, baseType: !107, size: 128, offset: 4992)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4566, file: !262, line: 759, baseType: !4565, size: 64, offset: 5120)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !4566, file: !262, line: 761, baseType: !33, size: 32, offset: 5184)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4566, file: !262, line: 762, baseType: !33, size: 32, offset: 5216)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !4566, file: !262, line: 764, baseType: !107, size: 128, offset: 5248)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4566, file: !262, line: 765, baseType: !365, size: 64, offset: 5376)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !4566, file: !262, line: 768, baseType: !721, size: 256, offset: 5440)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !4566, file: !262, line: 769, baseType: !59, size: 32, offset: 5696)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4566, file: !262, line: 771, baseType: !5038, size: 64, offset: 5760)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !4566, file: !262, line: 772, baseType: !107, size: 128, offset: 5824)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !4566, file: !262, line: 773, baseType: !13, size: 64, offset: 5952)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !4566, file: !262, line: 774, baseType: !33, size: 32, offset: 6016)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !4566, file: !262, line: 777, baseType: !64, size: 192, offset: 6080)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4566, file: !262, line: 778, baseType: !5355, size: 64, offset: 6272)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !185, line: 1083, size: 384, elements: !5357)
!5357 = !{!5358, !5359, !5360, !5361, !5362, !5363}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5356, file: !185, line: 1084, baseType: !738, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5356, file: !185, line: 1085, baseType: !33, size: 32, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5356, file: !185, line: 1086, baseType: !33, size: 32, offset: 96)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5356, file: !185, line: 1087, baseType: !5355, size: 64, offset: 128)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5356, file: !185, line: 1088, baseType: !701, size: 64, offset: 192)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5356, file: !185, line: 1089, baseType: !276, size: 128, align: 64, offset: 256)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !4566, file: !262, line: 781, baseType: !7, size: 32, offset: 6336)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !4566, file: !262, line: 782, baseType: !7, size: 32, offset: 6368)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !4566, file: !262, line: 783, baseType: !7, size: 32, offset: 6400)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !4566, file: !262, line: 784, baseType: !7, size: 32, offset: 6432)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !4566, file: !262, line: 785, baseType: !13, size: 64, offset: 6464)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !4566, file: !262, line: 786, baseType: !5370, size: 256, offset: 6528)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5371, line: 17, size: 256, elements: !5372)
!5371 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5372 = !{!5373, !5374, !5379}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5370, file: !5371, line: 18, baseType: !391, size: 128)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5370, file: !5371, line: 19, baseType: !5375, size: 64, offset: 128)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{null, !5378}
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5370, file: !5371, line: 20, baseType: !2997, size: 64, offset: 192)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !4566, file: !262, line: 787, baseType: !276, size: 128, align: 64, offset: 6784)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4566, file: !262, line: 788, baseType: !7, size: 32, offset: 6912)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !4566, file: !262, line: 789, baseType: !2997, size: 64, offset: 6976)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !4566, file: !262, line: 791, baseType: !59, size: 32, offset: 7040)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4566, file: !262, line: 794, baseType: !5385, size: 192, offset: 7104)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !262, line: 579, size: 192, elements: !5386)
!5386 = !{!5387, !5388, !5389}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5385, file: !262, line: 580, baseType: !107, size: 128)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5385, file: !262, line: 581, baseType: !523, size: 32, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !5385, file: !262, line: 582, baseType: !7, size: 32, offset: 160)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !4566, file: !262, line: 796, baseType: !5391, size: 64, offset: 7296)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !262, line: 585, size: 128, elements: !5393)
!5393 = !{!5394, !5395}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5392, file: !262, line: 586, baseType: !13, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5392, file: !262, line: 587, baseType: !13, size: 64, offset: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4566, file: !262, line: 797, baseType: !13, size: 64, offset: 7360)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !4566, file: !262, line: 800, baseType: !4565, size: 64, offset: 7424)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4566, file: !262, line: 802, baseType: !5002, size: 64, offset: 7488)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4566, file: !262, line: 803, baseType: !276, size: 128, align: 64, offset: 7552)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4566, file: !262, line: 805, baseType: !789, size: 64, offset: 7680)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4566, file: !262, line: 806, baseType: !325, size: 64, offset: 7744)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !4566, file: !262, line: 808, baseType: !716, size: 64, offset: 7808)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4566, file: !262, line: 810, baseType: !5404, size: 64, offset: 7872)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!325}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !4566, file: !262, line: 811, baseType: !5408, size: 64, offset: 7936)
!5408 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !262, line: 605, baseType: !5409)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{null, !4565, !5412, !299}
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !262, line: 1148, size: 2048, align: 512, elements: !5414)
!5414 = !{!5415, !5416, !5417, !5418, !5419, !5424, !5425, !5426, !5431, !5432, !5433, !5454, !5476, !5486, !5504, !5505, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !5413, file: !262, line: 1153, baseType: !325, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5413, file: !262, line: 1154, baseType: !325, size: 64, offset: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !5413, file: !262, line: 1155, baseType: !325, size: 64, offset: 128)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5413, file: !262, line: 1161, baseType: !325, size: 64, offset: 192)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !5413, file: !262, line: 1165, baseType: !5420, size: 64, offset: 256)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5413, file: !262, line: 1162, size: 64, elements: !5421)
!5421 = !{!5422, !5423}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5420, file: !262, line: 1163, baseType: !376, size: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !5420, file: !262, line: 1164, baseType: !376, size: 32, offset: 32)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5413, file: !262, line: 1166, baseType: !325, size: 64, offset: 320)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5413, file: !262, line: 1167, baseType: !325, size: 64, offset: 384)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !5413, file: !262, line: 1171, baseType: !5427, size: 64, offset: 448)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5413, file: !262, line: 1168, size: 64, elements: !5428)
!5428 = !{!5429, !5430}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5427, file: !262, line: 1169, baseType: !376, size: 32)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5427, file: !262, line: 1170, baseType: !376, size: 32, offset: 32)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5413, file: !262, line: 1177, baseType: !325, size: 64, offset: 512)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !5413, file: !262, line: 1178, baseType: !286, size: 64, offset: 576)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5413, file: !262, line: 1179, baseType: !5434, size: 64, offset: 640)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !262, line: 93, size: 256, elements: !5436)
!5436 = !{!5437, !5453}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !5435, file: !262, line: 94, baseType: !5438, size: 224)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !262, line: 83, size: 224, elements: !5439)
!5439 = !{!5440, !5446, !5451, !5452}
!5440 = !DIDerivedType(tag: DW_TAG_member, scope: !5438, file: !262, line: 84, baseType: !5441, size: 64)
!5441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5438, file: !262, line: 84, size: 64, elements: !5442)
!5442 = !{!5443, !5445}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5441, file: !262, line: 85, baseType: !5444, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5441, file: !262, line: 86, baseType: !13, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5438, file: !262, line: 88, baseType: !5447, size: 64, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !262, line: 80, baseType: !5448)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!13, !31, !2122, !13, !13}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5438, file: !262, line: 89, baseType: !31, size: 64, offset: 128)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5438, file: !262, line: 90, baseType: !376, size: 32, offset: 192)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5435, file: !262, line: 95, baseType: !376, size: 32, offset: 224)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !5413, file: !262, line: 1180, baseType: !5455, size: 64, offset: 704)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !262, line: 123, size: 128, elements: !5457)
!5457 = !{!5458, !5459, !5460}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5456, file: !262, line: 124, baseType: !290, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !5456, file: !262, line: 125, baseType: !290, size: 64, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5456, file: !262, line: 126, baseType: !5461, offset: 128)
!5461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5462, elements: !294)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !12, line: 1415, size: 192, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5462, file: !12, line: 1416, baseType: !290, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5462, file: !12, line: 1417, baseType: !290, size: 64, offset: 64)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !5462, file: !12, line: 1418, baseType: !290, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !5462, file: !12, line: 1419, baseType: !290, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !5462, file: !12, line: 1420, baseType: !290, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !5462, file: !12, line: 1421, baseType: !290, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5462, file: !12, line: 1422, baseType: !290, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5462, file: !12, line: 1423, baseType: !290, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5462, file: !12, line: 1424, baseType: !290, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !5462, file: !12, line: 1425, baseType: !290, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5462, file: !12, line: 1426, baseType: !290, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5462, file: !12, line: 1427, baseType: !290, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5413, file: !262, line: 1181, baseType: !5477, size: 64, offset: 768)
!5477 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !12, line: 1430, size: 64, elements: !5478)
!5478 = !{!5479, !5480}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5477, file: !12, line: 1431, baseType: !290, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, scope: !5477, file: !12, line: 1433, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5477, file: !12, line: 1433, size: 64, elements: !5482)
!5482 = !{!5483, !5484, !5485}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !5481, file: !12, line: 1434, baseType: !377, size: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !5481, file: !12, line: 1435, baseType: !104, size: 16, offset: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !5481, file: !12, line: 1436, baseType: !104, size: 16, offset: 48)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !5413, file: !262, line: 1182, baseType: !5487, size: 64, offset: 832)
!5487 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !12, line: 1267, size: 64, elements: !5488)
!5488 = !{!5489, !5490}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5487, file: !12, line: 1268, baseType: !290, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, scope: !5487, file: !12, line: 1269, baseType: !5491, size: 64)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5487, file: !12, line: 1269, size: 64, elements: !5492)
!5492 = !{!5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !5491, file: !12, line: 1270, baseType: !290, size: 5, flags: DIFlagBitField, extraData: i64 0)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !5491, file: !12, line: 1271, baseType: !290, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !5491, file: !12, line: 1272, baseType: !290, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !5491, file: !12, line: 1273, baseType: !290, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !5491, file: !12, line: 1274, baseType: !290, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !5491, file: !12, line: 1275, baseType: !290, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !5491, file: !12, line: 1276, baseType: !290, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !5491, file: !12, line: 1277, baseType: !290, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !5491, file: !12, line: 1278, baseType: !290, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !5491, file: !12, line: 1279, baseType: !290, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !5491, file: !12, line: 1280, baseType: !290, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !5413, file: !262, line: 1183, baseType: !325, size: 64, offset: 896)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !5413, file: !262, line: 1185, baseType: !5506, size: 128, offset: 960)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !5507, line: 7, size: 128, elements: !5508)
!5507 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!5508 = !{!5509, !5510}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !5506, file: !5507, line: 8, baseType: !290, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5506, file: !5507, line: 9, baseType: !299, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !5413, file: !262, line: 1186, baseType: !5506, size: 128, offset: 1088)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !5413, file: !262, line: 1187, baseType: !325, size: 64, offset: 1216)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5413, file: !262, line: 1189, baseType: !325, size: 64, offset: 1280)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5413, file: !262, line: 1190, baseType: !325, size: 64, offset: 1344)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5413, file: !262, line: 1191, baseType: !325, size: 64, offset: 1408)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5413, file: !262, line: 1192, baseType: !325, size: 64, offset: 1472)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !5413, file: !262, line: 1193, baseType: !325, size: 64, offset: 1536)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !5413, file: !262, line: 1194, baseType: !325, size: 64, offset: 1600)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5413, file: !262, line: 1195, baseType: !325, size: 64, offset: 1664)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !4566, file: !262, line: 812, baseType: !31, size: 64, offset: 8000)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !4566, file: !262, line: 820, baseType: !2605, size: 64, offset: 8064)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4566, file: !262, line: 821, baseType: !5523, size: 64, offset: 8128)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !262, line: 821, flags: DIFlagFwdDecl)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4566, file: !262, line: 828, baseType: !5526, size: 64, offset: 8192)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !262, line: 1046, size: 1664, elements: !5528)
!5528 = !{!5529, !5530}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !5527, file: !262, line: 1047, baseType: !3690, size: 1600)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5527, file: !262, line: 1048, baseType: !5531, size: 64, offset: 1600)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !262, line: 1039, size: 256, elements: !5533)
!5533 = !{!5534, !5535, !5536, !5537}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5532, file: !262, line: 1040, baseType: !325, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5532, file: !262, line: 1041, baseType: !325, size: 64, offset: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !5532, file: !262, line: 1042, baseType: !325, size: 64, offset: 128)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5532, file: !262, line: 1043, baseType: !33, size: 32, offset: 192)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4566, file: !262, line: 832, baseType: !31, size: 64, offset: 8256)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !4566, file: !262, line: 834, baseType: !107, size: 128, offset: 8320)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !4566, file: !262, line: 842, baseType: !377, size: 32, offset: 8448)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4535, file: !4536, line: 461, baseType: !13, size: 64, offset: 704)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4535, file: !4536, line: 463, baseType: !13, size: 64, offset: 768)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4535, file: !4536, line: 465, baseType: !13, size: 64, offset: 832)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4535, file: !4536, line: 466, baseType: !13, size: 64, offset: 896)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4535, file: !4536, line: 467, baseType: !13, size: 64, offset: 960)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4535, file: !4536, line: 473, baseType: !5547, size: 64, offset: 1024)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4536, line: 10, flags: DIFlagFwdDecl)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4535, file: !4536, line: 480, baseType: !13, size: 64, offset: 1088)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4535, file: !4536, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4535, file: !4536, line: 491, baseType: !376, size: 32, offset: 1184)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4535, file: !4536, line: 501, baseType: !5553, size: 33792, offset: 1536)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5554, line: 448, size: 33792, elements: !5555)
!5554 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5555 = !{!5556, !5557, !5558, !5666, !5667, !5673, !5674}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5553, file: !5554, line: 461, baseType: !7, size: 32)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5553, file: !5554, line: 468, baseType: !13, size: 64, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5553, file: !5554, line: 476, baseType: !5559, size: 64, offset: 128)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5554, line: 356, size: 33280, align: 512, elements: !5561)
!5561 = !{!5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5560, file: !5554, line: 358, baseType: !7, size: 32)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5560, file: !5554, line: 361, baseType: !7, size: 32, offset: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5560, file: !5554, line: 364, baseType: !325, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5560, file: !5554, line: 367, baseType: !325, size: 64, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5560, file: !5554, line: 370, baseType: !325, size: 64, offset: 192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5560, file: !5554, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5560, file: !5554, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5560, file: !5554, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5560, file: !5554, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5560, file: !5554, line: 397, baseType: !5572, size: 32768, offset: 512)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5554, line: 348, size: 32768, elements: !5573)
!5573 = !{!5574, !5589, !5626, !5651, !5664}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5572, file: !5554, line: 349, baseType: !5575, size: 896)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5554, line: 12, size: 896, elements: !5576)
!5576 = !{!5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5588}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5575, file: !5554, line: 13, baseType: !376, size: 32)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5575, file: !5554, line: 14, baseType: !376, size: 32, offset: 32)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5575, file: !5554, line: 15, baseType: !376, size: 32, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5575, file: !5554, line: 16, baseType: !376, size: 32, offset: 96)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5575, file: !5554, line: 17, baseType: !376, size: 32, offset: 128)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5575, file: !5554, line: 18, baseType: !376, size: 32, offset: 160)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5575, file: !5554, line: 19, baseType: !376, size: 32, offset: 192)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5575, file: !5554, line: 22, baseType: !5585, size: 640, offset: 224)
!5585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 640, elements: !5586)
!5586 = !{!5587}
!5587 = !DISubrange(count: 20)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5575, file: !5554, line: 25, baseType: !376, size: 32, offset: 864)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5572, file: !5554, line: 350, baseType: !5590, size: 4096, align: 128)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5554, line: 34, size: 4096, align: 128, elements: !5591)
!5591 = !{!5592, !5593, !5594, !5595, !5596, !5611, !5612, !5613, !5615, !5617, !5621}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5590, file: !5554, line: 35, baseType: !103, size: 16)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5590, file: !5554, line: 36, baseType: !103, size: 16, offset: 16)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5590, file: !5554, line: 37, baseType: !103, size: 16, offset: 32)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5590, file: !5554, line: 38, baseType: !103, size: 16, offset: 48)
!5596 = !DIDerivedType(tag: DW_TAG_member, scope: !5590, file: !5554, line: 39, baseType: !5597, size: 128, offset: 64)
!5597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5590, file: !5554, line: 39, size: 128, elements: !5598)
!5598 = !{!5599, !5604}
!5599 = !DIDerivedType(tag: DW_TAG_member, scope: !5597, file: !5554, line: 40, baseType: !5600, size: 128)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5554, line: 40, size: 128, elements: !5601)
!5601 = !{!5602, !5603}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5600, file: !5554, line: 41, baseType: !325, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5600, file: !5554, line: 42, baseType: !325, size: 64, offset: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, scope: !5597, file: !5554, line: 44, baseType: !5605, size: 128)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5554, line: 44, size: 128, elements: !5606)
!5606 = !{!5607, !5608, !5609, !5610}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5605, file: !5554, line: 45, baseType: !376, size: 32)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5605, file: !5554, line: 46, baseType: !376, size: 32, offset: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5605, file: !5554, line: 47, baseType: !376, size: 32, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5605, file: !5554, line: 48, baseType: !376, size: 32, offset: 96)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5590, file: !5554, line: 51, baseType: !376, size: 32, offset: 192)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5590, file: !5554, line: 52, baseType: !376, size: 32, offset: 224)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5590, file: !5554, line: 55, baseType: !5614, size: 1024, offset: 256)
!5614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 1024, elements: !3013)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5590, file: !5554, line: 58, baseType: !5616, size: 2048, offset: 1280)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 2048, elements: !1535)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5590, file: !5554, line: 60, baseType: !5618, size: 384, offset: 3328)
!5618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !5619)
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
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5627, file: !5554, line: 80, baseType: !376, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5627, file: !5554, line: 81, baseType: !376, size: 32, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5627, file: !5554, line: 82, baseType: !376, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5627, file: !5554, line: 83, baseType: !376, size: 32, offset: 96)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5627, file: !5554, line: 84, baseType: !376, size: 32, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5627, file: !5554, line: 85, baseType: !376, size: 32, offset: 160)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5627, file: !5554, line: 86, baseType: !376, size: 32, offset: 192)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5627, file: !5554, line: 88, baseType: !5585, size: 640, offset: 224)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5627, file: !5554, line: 89, baseType: !93, size: 8, offset: 864)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5627, file: !5554, line: 90, baseType: !93, size: 8, offset: 872)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5627, file: !5554, line: 91, baseType: !93, size: 8, offset: 880)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5627, file: !5554, line: 92, baseType: !93, size: 8, offset: 888)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5627, file: !5554, line: 93, baseType: !93, size: 8, offset: 896)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5627, file: !5554, line: 94, baseType: !93, size: 8, offset: 904)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5627, file: !5554, line: 95, baseType: !5644, size: 64, offset: 960)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5646, line: 11, size: 128, elements: !5647)
!5646 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5647 = !{!5648, !5649}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5645, file: !5646, line: 12, baseType: !1102, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5645, file: !5646, line: 13, baseType: !299, size: 64, offset: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5627, file: !5554, line: 96, baseType: !376, size: 32, offset: 1024)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5572, file: !5554, line: 352, baseType: !5652, size: 4608, align: 512)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5554, line: 333, size: 4608, align: 512, elements: !5653)
!5653 = !{!5654, !5655, !5662}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5652, file: !5554, line: 334, baseType: !5590, size: 4096, align: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5652, file: !5554, line: 335, baseType: !5656, size: 512, offset: 4096)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5554, line: 312, size: 512, elements: !5657)
!5657 = !{!5658, !5659, !5660}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5656, file: !5554, line: 313, baseType: !325, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5656, file: !5554, line: 314, baseType: !325, size: 64, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5656, file: !5554, line: 315, baseType: !5661, size: 384, offset: 128)
!5661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 384, elements: !943)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5652, file: !5554, line: 336, baseType: !5663, offset: 4608)
!5663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, elements: !294)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5572, file: !5554, line: 353, baseType: !5665, size: 32768)
!5665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32768, elements: !3740)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5553, file: !5554, line: 484, baseType: !5559, size: 64, offset: 192)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5553, file: !5554, line: 491, baseType: !5668, size: 128, offset: 256)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5554, line: 404, size: 128, elements: !5669)
!5669 = !{!5670, !5671, !5672}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5668, file: !5554, line: 424, baseType: !325, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5668, file: !5554, line: 432, baseType: !7, size: 32, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5668, file: !5554, line: 440, baseType: !7, size: 32, offset: 96)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5553, file: !5554, line: 498, baseType: !5668, size: 128, offset: 384)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5553, file: !5554, line: 508, baseType: !5560, size: 33280, align: 512, offset: 512)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5677)
!5677 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!5678 = !{!0, !5679, !5681, !5686, !5689, !5692, !5694, !5696, !5698}
!5679 = !DIGlobalVariableExpression(var: !5680, expr: !DIExpression())
!5680 = distinct !DIGlobalVariable(name: "sysctl_perf_event_max_contexts_per_stack", scope: !2, file: !3, line: 23, type: !33, isLocal: false, isDefinition: true)
!5681 = !DIGlobalVariableExpression(var: !5682, expr: !DIExpression())
!5682 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !5683, isLocal: true, isDefinition: true)
!5683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 208, elements: !5684)
!5684 = !{!5685}
!5685 = !DISubrange(count: 26)
!5686 = !DIGlobalVariableExpression(var: !5687, expr: !DIExpression())
!5687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !5688, isLocal: true, isDefinition: true)
!5688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 40, elements: !837)
!5689 = !DIGlobalVariableExpression(var: !5690, expr: !DIExpression())
!5690 = distinct !DIGlobalVariable(name: "callchain_recursion", scope: !2, file: !3, line: 32, type: !5691, isLocal: true, isDefinition: true)
!5691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !778)
!5692 = !DIGlobalVariableExpression(var: !5693, expr: !DIExpression())
!5693 = distinct !DIGlobalVariable(name: "nr_callchain_events", scope: !2, file: !3, line: 33, type: !59, isLocal: true, isDefinition: true)
!5694 = !DIGlobalVariableExpression(var: !5695, expr: !DIExpression())
!5695 = distinct !DIGlobalVariable(name: "callchain_cpus_entries", scope: !2, file: !3, line: 35, type: !272, isLocal: true, isDefinition: true)
!5696 = !DIGlobalVariableExpression(var: !5697, expr: !DIExpression())
!5697 = distinct !DIGlobalVariable(name: "callchain_mutex", scope: !2, file: !3, line: 34, type: !721, isLocal: true, isDefinition: true)
!5698 = !DIGlobalVariableExpression(var: !5699, expr: !DIExpression())
!5699 = distinct !DIGlobalVariable(scope: null, file: !118, line: 480, type: !5700, isLocal: true, isDefinition: true)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 168, elements: !5701)
!5701 = !{!5702}
!5702 = !DISubrange(count: 21)
!5703 = !{i32 7, !"Dwarf Version", i32 5}
!5704 = !{i32 2, !"Debug Info Version", i32 3}
!5705 = !{i32 1, !"wchar_size", i32 2}
!5706 = !{i32 8, !"cf-protection-branch", i32 1}
!5707 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5708 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5709 = !{i32 1, !"Code Model", i32 2}
!5710 = !{i32 1, !"override-stack-alignment", i32 8}
!5711 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5712 = distinct !DISubprogram(name: "perf_callchain_kernel", scope: !3, file: !3, line: 38, type: !5713, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{null, !5715, !299}
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry_ctx", file: !262, line: 72, size: 192, elements: !5717)
!5717 = !{!5718, !5719, !5720, !5721, !5722}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5716, file: !262, line: 73, baseType: !286, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "max_stack", scope: !5716, file: !262, line: 74, baseType: !376, size: 32, offset: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5716, file: !262, line: 75, baseType: !376, size: 32, offset: 96)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "contexts", scope: !5716, file: !262, line: 76, baseType: !925, size: 16, offset: 128)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_maxed", scope: !5716, file: !262, line: 77, baseType: !877, size: 8, offset: 144)
!5723 = !{!5724, !5725}
!5724 = !DILocalVariable(name: "entry", arg: 1, scope: !5712, file: !3, line: 38, type: !5715)
!5725 = !DILocalVariable(name: "regs", arg: 2, scope: !5712, file: !3, line: 39, type: !299)
!5726 = !DILocation(line: 38, column: 68, scope: !5712)
!5727 = !DILocation(line: 39, column: 23, scope: !5712)
!5728 = !DILocation(line: 41, column: 1, scope: !5712)
!5729 = distinct !DISubprogram(name: "perf_callchain_user", scope: !3, file: !3, line: 43, type: !5713, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5730)
!5730 = !{!5731, !5732}
!5731 = !DILocalVariable(name: "entry", arg: 1, scope: !5729, file: !3, line: 43, type: !5715)
!5732 = !DILocalVariable(name: "regs", arg: 2, scope: !5729, file: !3, line: 44, type: !299)
!5733 = !DILocation(line: 43, column: 66, scope: !5729)
!5734 = !DILocation(line: 44, column: 21, scope: !5729)
!5735 = !DILocation(line: 46, column: 1, scope: !5729)
!5736 = distinct !DISubprogram(name: "get_callchain_buffers", scope: !3, file: !3, line: 108, type: !3253, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5737 = !{!5738, !5739, !5740, !5741, !5744, !5747}
!5738 = !DILocalVariable(name: "event_max_stack", arg: 1, scope: !5736, file: !3, line: 108, type: !33)
!5739 = !DILocalVariable(name: "err", scope: !5736, file: !3, line: 110, type: !33)
!5740 = !DILocalVariable(name: "count", scope: !5736, file: !3, line: 111, type: !33)
!5741 = !DILocalVariable(name: "__ret_warn_on", scope: !5742, file: !3, line: 116, type: !33)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 116, column: 6)
!5743 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 116, column: 6)
!5744 = !DILocalVariable(name: "__flags", scope: !5745, file: !3, line: 116, type: !33)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 116, column: 6)
!5746 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 116, column: 6)
!5747 = !DILabel(scope: !5736, name: "exit", file: !3, line: 135)
!5748 = !DILocation(line: 108, column: 31, scope: !5736)
!5749 = !DILocation(line: 110, column: 2, scope: !5736)
!5750 = !DILocation(line: 110, column: 6, scope: !5736)
!5751 = !DILocation(line: 111, column: 2, scope: !5736)
!5752 = !DILocation(line: 111, column: 6, scope: !5736)
!5753 = !DILocation(line: 113, column: 2, scope: !5736)
!5754 = !DILocation(line: 115, column: 10, scope: !5736)
!5755 = !DILocation(line: 115, column: 8, scope: !5736)
!5756 = !DILocation(line: 116, column: 6, scope: !5742)
!5757 = !DILocation(line: 116, column: 6, scope: !5746)
!5758 = !DILocation(line: 116, column: 6, scope: !5745)
!5759 = !DILocation(line: 116, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 116, column: 6)
!5761 = !DILocation(line: 116, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 116, column: 6)
!5763 = !{i64 2155315046, i64 2155315075, i64 2155315121, i64 2155315179, i64 2155315233, i64 2155315287, i64 2155315342, i64 2155315373, i64 2155315681, i64 2155315687, i64 2155315734, i64 2155315757, i64 2155315783}
!5764 = !DILocation(line: 116, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 116, column: 6)
!5766 = !DILocation(line: 116, column: 6, scope: !5743)
!5767 = !DILocation(line: 116, column: 6, scope: !5736)
!5768 = !DILocation(line: 117, column: 7, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 116, column: 31)
!5770 = !DILocation(line: 118, column: 3, scope: !5769)
!5771 = !DILocation(line: 128, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 128, column: 6)
!5773 = !DILocation(line: 128, column: 24, scope: !5772)
!5774 = !DILocation(line: 128, column: 22, scope: !5772)
!5775 = !DILocation(line: 128, column: 6, scope: !5736)
!5776 = !DILocation(line: 129, column: 7, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 128, column: 53)
!5778 = !DILocation(line: 130, column: 3, scope: !5777)
!5779 = !DILocation(line: 133, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 133, column: 6)
!5781 = !DILocation(line: 133, column: 12, scope: !5780)
!5782 = !DILocation(line: 133, column: 6, scope: !5736)
!5783 = !DILocation(line: 134, column: 9, scope: !5780)
!5784 = !DILocation(line: 134, column: 7, scope: !5780)
!5785 = !DILocation(line: 134, column: 3, scope: !5780)
!5786 = !DILocation(line: 133, column: 15, scope: !5780)
!5787 = !DILocation(line: 135, column: 1, scope: !5736)
!5788 = !DILocation(line: 136, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 136, column: 6)
!5790 = !DILocation(line: 136, column: 6, scope: !5736)
!5791 = !DILocation(line: 137, column: 3, scope: !5789)
!5792 = !DILocation(line: 139, column: 2, scope: !5736)
!5793 = !DILocation(line: 141, column: 9, scope: !5736)
!5794 = !DILocation(line: 142, column: 1, scope: !5736)
!5795 = !DILocation(line: 141, column: 2, scope: !5736)
!5796 = !DISubprogram(name: "mutex_lock", scope: !722, file: !722, line: 227, type: !5797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{null, !5799}
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!5800 = distinct !DISubprogram(name: "atomic_inc_return", scope: !5801, file: !5801, line: 450, type: !5802, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5805)
!5801 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!33, !5804}
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!5805 = !{!5806}
!5806 = !DILocalVariable(name: "v", arg: 1, scope: !5800, file: !5801, line: 450, type: !5804)
!5807 = !DILocation(line: 450, column: 29, scope: !5800)
!5808 = !DILocation(line: 452, column: 2, scope: !5800)
!5809 = !DILocation(line: 452, column: 2, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5800, file: !5801, line: 452, column: 2)
!5811 = !DILocation(line: 453, column: 31, scope: !5800)
!5812 = !DILocation(line: 453, column: 2, scope: !5800)
!5813 = !DILocation(line: 454, column: 31, scope: !5800)
!5814 = !DILocation(line: 454, column: 9, scope: !5800)
!5815 = !DILocation(line: 454, column: 2, scope: !5800)
!5816 = distinct !DISubprogram(name: "alloc_callchain_buffers", scope: !3, file: !3, line: 70, type: !2397, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5817 = !{!5818, !5819, !5820, !5821, !5823}
!5818 = !DILocalVariable(name: "cpu", scope: !5816, file: !3, line: 72, type: !33)
!5819 = !DILocalVariable(name: "size", scope: !5816, file: !3, line: 73, type: !33)
!5820 = !DILocalVariable(name: "entries", scope: !5816, file: !3, line: 74, type: !272)
!5821 = !DILocalVariable(name: "_r_a_p__v", scope: !5822, file: !3, line: 96, type: !362)
!5822 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 96, column: 2)
!5823 = !DILabel(scope: !5816, name: "fail", file: !3, line: 100)
!5824 = !DILocation(line: 72, column: 2, scope: !5816)
!5825 = !DILocation(line: 72, column: 6, scope: !5816)
!5826 = !DILocation(line: 73, column: 2, scope: !5816)
!5827 = !DILocation(line: 73, column: 6, scope: !5816)
!5828 = !DILocation(line: 74, column: 2, scope: !5816)
!5829 = !DILocation(line: 74, column: 33, scope: !5816)
!5830 = !DILocation(line: 81, column: 9, scope: !5816)
!5831 = !DILocation(line: 81, column: 7, scope: !5816)
!5832 = !DILocation(line: 83, column: 20, scope: !5816)
!5833 = !DILocation(line: 83, column: 12, scope: !5816)
!5834 = !DILocation(line: 83, column: 10, scope: !5816)
!5835 = !DILocation(line: 84, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 84, column: 6)
!5837 = !DILocation(line: 84, column: 6, scope: !5816)
!5838 = !DILocation(line: 85, column: 3, scope: !5836)
!5839 = !DILocation(line: 87, column: 9, scope: !5816)
!5840 = !DILocation(line: 87, column: 40, scope: !5816)
!5841 = !DILocation(line: 87, column: 7, scope: !5816)
!5842 = !DILocation(line: 89, column: 2, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 89, column: 2)
!5844 = !DILocation(line: 89, column: 2, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 89, column: 2)
!5846 = !DILocation(line: 90, column: 44, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 89, column: 29)
!5848 = !DILocation(line: 91, column: 21, scope: !5847)
!5849 = !DILocation(line: 91, column: 9, scope: !5847)
!5850 = !DILocation(line: 90, column: 31, scope: !5847)
!5851 = !DILocation(line: 90, column: 3, scope: !5847)
!5852 = !DILocation(line: 90, column: 12, scope: !5847)
!5853 = !DILocation(line: 90, column: 24, scope: !5847)
!5854 = !DILocation(line: 90, column: 29, scope: !5847)
!5855 = !DILocation(line: 92, column: 8, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 92, column: 7)
!5857 = !DILocation(line: 92, column: 17, scope: !5856)
!5858 = !DILocation(line: 92, column: 29, scope: !5856)
!5859 = !DILocation(line: 92, column: 7, scope: !5847)
!5860 = !DILocation(line: 93, column: 4, scope: !5856)
!5861 = !DILocation(line: 94, column: 2, scope: !5847)
!5862 = distinct !{!5862, !5842, !5863, !5864, !5865}
!5863 = !DILocation(line: 94, column: 2, scope: !5843)
!5864 = !{!"llvm.loop.mustprogress"}
!5865 = !{!"llvm.loop.unroll.disable"}
!5866 = !DILocation(line: 96, column: 2, scope: !5816)
!5867 = !DILocation(line: 96, column: 2, scope: !5822)
!5868 = !DILocation(line: 96, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 96, column: 2)
!5870 = !DILocation(line: 96, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 96, column: 2)
!5872 = !DILocation(line: 96, column: 2, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 96, column: 2)
!5874 = !DILocation(line: 96, column: 2, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 96, column: 2)
!5876 = !DILocation(line: 96, column: 2, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 96, column: 2)
!5878 = !DILocation(line: 96, column: 2, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 96, column: 2)
!5880 = !DILocation(line: 96, column: 2, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 96, column: 2)
!5882 = !DILocation(line: 96, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 96, column: 2)
!5884 = !{i64 2155311264}
!5885 = !DILocation(line: 96, column: 2, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 96, column: 2)
!5887 = !DILocation(line: 96, column: 2, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 96, column: 2)
!5889 = !DILocation(line: 96, column: 2, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 96, column: 2)
!5891 = !DILocation(line: 98, column: 2, scope: !5816)
!5892 = !DILocation(line: 100, column: 1, scope: !5816)
!5893 = !DILocation(line: 101, column: 2, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 101, column: 2)
!5895 = !DILocation(line: 101, column: 2, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 101, column: 2)
!5897 = !DILocation(line: 102, column: 9, scope: !5896)
!5898 = !DILocation(line: 102, column: 18, scope: !5896)
!5899 = !DILocation(line: 102, column: 30, scope: !5896)
!5900 = !DILocation(line: 102, column: 3, scope: !5896)
!5901 = distinct !{!5901, !5893, !5902, !5864, !5865}
!5902 = !DILocation(line: 102, column: 34, scope: !5894)
!5903 = !DILocation(line: 103, column: 8, scope: !5816)
!5904 = !DILocation(line: 103, column: 2, scope: !5816)
!5905 = !DILocation(line: 105, column: 2, scope: !5816)
!5906 = !DILocation(line: 106, column: 1, scope: !5816)
!5907 = distinct !DISubprogram(name: "atomic_dec", scope: !5801, file: !5801, line: 590, type: !5908, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{null, !5804}
!5910 = !{!5911}
!5911 = !DILocalVariable(name: "v", arg: 1, scope: !5907, file: !5801, line: 590, type: !5804)
!5912 = !DILocation(line: 590, column: 22, scope: !5907)
!5913 = !DILocation(line: 592, column: 31, scope: !5907)
!5914 = !DILocation(line: 592, column: 2, scope: !5907)
!5915 = !DILocation(line: 593, column: 17, scope: !5907)
!5916 = !DILocation(line: 593, column: 2, scope: !5907)
!5917 = !DILocation(line: 594, column: 1, scope: !5907)
!5918 = !DISubprogram(name: "mutex_unlock", scope: !722, file: !722, line: 246, type: !5797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5919 = distinct !DISubprogram(name: "put_callchain_buffers", scope: !3, file: !3, line: 144, type: !2630, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5920 = !DILocation(line: 146, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 146, column: 6)
!5922 = !DILocation(line: 146, column: 6, scope: !5919)
!5923 = !DILocation(line: 147, column: 3, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 146, column: 73)
!5925 = !DILocation(line: 148, column: 3, scope: !5924)
!5926 = !DILocation(line: 149, column: 2, scope: !5924)
!5927 = !DILocation(line: 150, column: 1, scope: !5919)
!5928 = !DISubprogram(name: "atomic_dec_and_mutex_lock", scope: !722, file: !722, line: 248, type: !5929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!33, !5804, !5799}
!5931 = distinct !DISubprogram(name: "release_callchain_buffers", scope: !3, file: !3, line: 61, type: !2630, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "entries", scope: !5931, file: !3, line: 63, type: !272)
!5934 = !DILocation(line: 63, column: 2, scope: !5931)
!5935 = !DILocation(line: 63, column: 33, scope: !5931)
!5936 = !DILocation(line: 65, column: 12, scope: !5931)
!5937 = !DILocation(line: 65, column: 10, scope: !5931)
!5938 = !DILocation(line: 66, column: 2, scope: !5931)
!5939 = !DILocation(line: 66, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 66, column: 2)
!5941 = !DILocation(line: 66, column: 2, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 66, column: 2)
!5943 = !DILocation(line: 66, column: 2, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 66, column: 2)
!5945 = !DILocation(line: 66, column: 2, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 66, column: 2)
!5947 = !DILocation(line: 67, column: 12, scope: !5931)
!5948 = !DILocation(line: 67, column: 21, scope: !5931)
!5949 = !DILocation(line: 67, column: 2, scope: !5931)
!5950 = !DILocation(line: 68, column: 1, scope: !5931)
!5951 = distinct !DISubprogram(name: "get_callchain_entry", scope: !3, file: !3, line: 152, type: !5952, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5954)
!5952 = !DISubroutineType(types: !5953)
!5953 = !{!286, !271}
!5954 = !{!5955, !5956, !5957, !5958, !5961, !5963, !5965, !5970, !5972, !5975, !5977}
!5955 = !DILocalVariable(name: "rctx", arg: 1, scope: !5951, file: !3, line: 152, type: !271)
!5956 = !DILocalVariable(name: "cpu", scope: !5951, file: !3, line: 154, type: !33)
!5957 = !DILocalVariable(name: "entries", scope: !5951, file: !3, line: 155, type: !272)
!5958 = !DILocalVariable(name: "__vpp_verify", scope: !5959, file: !3, line: 157, type: !2122)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 157, column: 32)
!5960 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 157, column: 32)
!5961 = !DILocalVariable(name: "tcp_ptr__", scope: !5962, file: !3, line: 157, type: !13)
!5962 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 157, column: 32)
!5963 = !DILocalVariable(name: "__UNIQUE_ID_rcu323", scope: !5964, file: !3, line: 161, type: !272)
!5964 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 161, column: 12)
!5965 = !DILocalVariable(name: "__vpp_verify", scope: !5966, file: !3, line: 163, type: !2122)
!5966 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 163, column: 25)
!5967 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 163, column: 25)
!5968 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 162, column: 16)
!5969 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 162, column: 6)
!5970 = !DILocalVariable(name: "tcp_ptr__", scope: !5971, file: !3, line: 163, type: !13)
!5971 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 163, column: 25)
!5972 = !DILocalVariable(name: "pscr_ret__", scope: !5973, file: !3, line: 167, type: !33)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 167, column: 8)
!5974 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 167, column: 8)
!5975 = !DILocalVariable(name: "__vpp_verify", scope: !5976, file: !3, line: 167, type: !2122)
!5976 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 167, column: 8)
!5977 = !DILocalVariable(name: "pfo_val__", scope: !5978, file: !3, line: 167, type: !376)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 167, column: 8)
!5979 = !DILocation(line: 152, column: 55, scope: !5951)
!5980 = !DILocation(line: 154, column: 2, scope: !5951)
!5981 = !DILocation(line: 154, column: 6, scope: !5951)
!5982 = !DILocation(line: 155, column: 2, scope: !5951)
!5983 = !DILocation(line: 155, column: 33, scope: !5951)
!5984 = !DILocation(line: 157, column: 32, scope: !5960)
!5985 = !DILocation(line: 157, column: 32, scope: !5959)
!5986 = !DILocation(line: 157, column: 32, scope: !5962)
!5987 = !{i64 2155316415}
!5988 = !DILocation(line: 157, column: 10, scope: !5951)
!5989 = !DILocation(line: 157, column: 3, scope: !5951)
!5990 = !DILocation(line: 157, column: 8, scope: !5951)
!5991 = !DILocation(line: 158, column: 7, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 158, column: 6)
!5993 = !DILocation(line: 158, column: 6, scope: !5992)
!5994 = !DILocation(line: 158, column: 12, scope: !5992)
!5995 = !DILocation(line: 158, column: 6, scope: !5951)
!5996 = !DILocation(line: 159, column: 3, scope: !5992)
!5997 = !DILocation(line: 161, column: 12, scope: !5964)
!5998 = !DILocation(line: 161, column: 12, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5964, file: !3, line: 161, column: 12)
!6000 = !DILocation(line: 161, column: 12, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 161, column: 12)
!6002 = !DILocation(line: 161, column: 12, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5964, file: !3, line: 161, column: 12)
!6004 = !DILocation(line: 161, column: 12, scope: !5951)
!6005 = !DILocation(line: 161, column: 10, scope: !5951)
!6006 = !DILocation(line: 162, column: 7, scope: !5969)
!6007 = !DILocation(line: 162, column: 6, scope: !5951)
!6008 = !DILocation(line: 163, column: 25, scope: !5967)
!6009 = !DILocation(line: 163, column: 25, scope: !5966)
!6010 = !DILocation(line: 163, column: 25, scope: !5971)
!6011 = !{i64 2155321203}
!6012 = !DILocation(line: 163, column: 61, scope: !5968)
!6013 = !DILocation(line: 163, column: 60, scope: !5968)
!6014 = !DILocation(line: 163, column: 3, scope: !5968)
!6015 = !DILocation(line: 164, column: 3, scope: !5968)
!6016 = !DILocation(line: 167, column: 8, scope: !5974)
!6017 = !DILocation(line: 167, column: 8, scope: !5973)
!6018 = !DILocation(line: 167, column: 8, scope: !5976)
!6019 = !DILocation(line: 167, column: 8, scope: !5978)
!6020 = !{i64 2155328207}
!6021 = !DILocation(line: 167, column: 6, scope: !5951)
!6022 = !DILocation(line: 169, column: 19, scope: !5951)
!6023 = !DILocation(line: 169, column: 28, scope: !5951)
!6024 = !DILocation(line: 169, column: 40, scope: !5951)
!6025 = !DILocation(line: 170, column: 5, scope: !5951)
!6026 = !DILocation(line: 170, column: 4, scope: !5951)
!6027 = !DILocation(line: 170, column: 12, scope: !5951)
!6028 = !DILocation(line: 170, column: 10, scope: !5951)
!6029 = !DILocation(line: 169, column: 46, scope: !5951)
!6030 = !DILocation(line: 169, column: 2, scope: !5951)
!6031 = !DILocation(line: 171, column: 1, scope: !5951)
!6032 = distinct !DISubprogram(name: "get_recursion_context", scope: !5040, file: !5040, line: 212, type: !6033, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!33, !271}
!6035 = !{!6036, !6037}
!6036 = !DILocalVariable(name: "recursion", arg: 1, scope: !6032, file: !5040, line: 212, type: !271)
!6037 = !DILocalVariable(name: "rctx", scope: !6032, file: !5040, line: 214, type: !97)
!6038 = !DILocation(line: 212, column: 46, scope: !6032)
!6039 = !DILocation(line: 214, column: 2, scope: !6032)
!6040 = !DILocation(line: 214, column: 16, scope: !6032)
!6041 = !DILocation(line: 214, column: 23, scope: !6032)
!6042 = !DILocation(line: 216, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6032, file: !5040, line: 216, column: 6)
!6044 = !DILocation(line: 216, column: 16, scope: !6043)
!6045 = !DILocation(line: 216, column: 6, scope: !6032)
!6046 = !DILocation(line: 217, column: 3, scope: !6043)
!6047 = !DILocation(line: 219, column: 2, scope: !6032)
!6048 = !DILocation(line: 219, column: 12, scope: !6032)
!6049 = !DILocation(line: 219, column: 17, scope: !6032)
!6050 = !DILocation(line: 220, column: 2, scope: !6032)
!6051 = !{i64 2155298247}
!6052 = !DILocation(line: 222, column: 9, scope: !6032)
!6053 = !DILocation(line: 222, column: 2, scope: !6032)
!6054 = !DILocation(line: 223, column: 1, scope: !6032)
!6055 = distinct !DISubprogram(name: "put_recursion_context", scope: !5040, file: !5040, line: 225, type: !6056, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6058)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{null, !271, !33}
!6058 = !{!6059, !6060}
!6059 = !DILocalVariable(name: "recursion", arg: 1, scope: !6055, file: !5040, line: 225, type: !271)
!6060 = !DILocalVariable(name: "rctx", arg: 2, scope: !6055, file: !5040, line: 225, type: !33)
!6061 = !DILocation(line: 225, column: 47, scope: !6055)
!6062 = !DILocation(line: 225, column: 62, scope: !6055)
!6063 = !DILocation(line: 227, column: 2, scope: !6055)
!6064 = !{i64 2155298450}
!6065 = !DILocation(line: 228, column: 2, scope: !6055)
!6066 = !DILocation(line: 228, column: 12, scope: !6055)
!6067 = !DILocation(line: 228, column: 17, scope: !6055)
!6068 = !DILocation(line: 229, column: 1, scope: !6055)
!6069 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6070, file: !6070, line: 313, type: !6071, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6073)
!6070 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6071 = !DISubroutineType(types: !6072)
!6072 = !{null, !27}
!6073 = !{!6074}
!6074 = !DILocalVariable(name: "op", arg: 1, scope: !6069, file: !6070, line: 313, type: !27)
!6075 = !DILocation(line: 313, column: 66, scope: !6069)
!6076 = !DILocation(line: 313, column: 72, scope: !6069)
!6077 = distinct !DISubprogram(name: "perf_callchain_entry__sizeof", scope: !3, file: !3, line: 25, type: !6078, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!46}
!6080 = !DILocation(line: 28, column: 20, scope: !6077)
!6081 = !DILocation(line: 29, column: 6, scope: !6077)
!6082 = !DILocation(line: 28, column: 48, scope: !6077)
!6083 = !DILocation(line: 28, column: 19, scope: !6077)
!6084 = !DILocation(line: 28, column: 17, scope: !6077)
!6085 = !DILocation(line: 27, column: 46, scope: !6077)
!6086 = !DILocation(line: 27, column: 2, scope: !6077)
!6087 = distinct !DISubprogram(name: "put_callchain_entry", scope: !3, file: !3, line: 174, type: !4155, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6088)
!6088 = !{!6089, !6090, !6093}
!6089 = !DILocalVariable(name: "rctx", arg: 1, scope: !6087, file: !3, line: 174, type: !33)
!6090 = !DILocalVariable(name: "__vpp_verify", scope: !6091, file: !3, line: 176, type: !2122)
!6091 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 176, column: 24)
!6092 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 176, column: 24)
!6093 = !DILocalVariable(name: "tcp_ptr__", scope: !6094, file: !3, line: 176, type: !13)
!6094 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 176, column: 24)
!6095 = !DILocation(line: 174, column: 25, scope: !6087)
!6096 = !DILocation(line: 176, column: 24, scope: !6092)
!6097 = !DILocation(line: 176, column: 24, scope: !6091)
!6098 = !DILocation(line: 176, column: 24, scope: !6094)
!6099 = !{i64 2155329359}
!6100 = !DILocation(line: 176, column: 59, scope: !6087)
!6101 = !DILocation(line: 176, column: 2, scope: !6087)
!6102 = !DILocation(line: 177, column: 1, scope: !6087)
!6103 = distinct !DISubprogram(name: "get_perf_callchain", scope: !3, file: !3, line: 180, type: !6104, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!286, !299, !376, !877, !877, !376, !877, !877}
!6106 = !{!6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6124}
!6107 = !DILocalVariable(name: "regs", arg: 1, scope: !6103, file: !3, line: 180, type: !299)
!6108 = !DILocalVariable(name: "init_nr", arg: 2, scope: !6103, file: !3, line: 180, type: !376)
!6109 = !DILocalVariable(name: "kernel", arg: 3, scope: !6103, file: !3, line: 180, type: !877)
!6110 = !DILocalVariable(name: "user", arg: 4, scope: !6103, file: !3, line: 180, type: !877)
!6111 = !DILocalVariable(name: "max_stack", arg: 5, scope: !6103, file: !3, line: 181, type: !376)
!6112 = !DILocalVariable(name: "crosstask", arg: 6, scope: !6103, file: !3, line: 181, type: !877)
!6113 = !DILocalVariable(name: "add_mark", arg: 7, scope: !6103, file: !3, line: 181, type: !877)
!6114 = !DILocalVariable(name: "entry", scope: !6103, file: !3, line: 183, type: !286)
!6115 = !DILocalVariable(name: "ctx", scope: !6103, file: !3, line: 184, type: !5716)
!6116 = !DILocalVariable(name: "rctx", scope: !6103, file: !3, line: 185, type: !33)
!6117 = !DILocalVariable(name: "__ptr", scope: !6118, file: !3, line: 206, type: !13)
!6118 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 206, column: 12)
!6119 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 205, column: 9)
!6120 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 204, column: 25)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 204, column: 7)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 203, column: 12)
!6123 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 203, column: 6)
!6124 = !DILabel(scope: !6103, name: "exit_put", file: !3, line: 222)
!6125 = !DILocation(line: 180, column: 36, scope: !6103)
!6126 = !DILocation(line: 180, column: 46, scope: !6103)
!6127 = !DILocation(line: 180, column: 60, scope: !6103)
!6128 = !DILocation(line: 180, column: 73, scope: !6103)
!6129 = !DILocation(line: 181, column: 10, scope: !6103)
!6130 = !DILocation(line: 181, column: 26, scope: !6103)
!6131 = !DILocation(line: 181, column: 42, scope: !6103)
!6132 = !DILocation(line: 183, column: 2, scope: !6103)
!6133 = !DILocation(line: 183, column: 31, scope: !6103)
!6134 = !DILocation(line: 184, column: 2, scope: !6103)
!6135 = !DILocation(line: 184, column: 34, scope: !6103)
!6136 = !DILocation(line: 185, column: 2, scope: !6103)
!6137 = !DILocation(line: 185, column: 6, scope: !6103)
!6138 = !DILocation(line: 187, column: 10, scope: !6103)
!6139 = !DILocation(line: 187, column: 8, scope: !6103)
!6140 = !DILocation(line: 188, column: 7, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 188, column: 6)
!6142 = !DILocation(line: 188, column: 6, scope: !6103)
!6143 = !DILocation(line: 189, column: 3, scope: !6141)
!6144 = !DILocation(line: 191, column: 18, scope: !6103)
!6145 = !DILocation(line: 191, column: 6, scope: !6103)
!6146 = !DILocation(line: 191, column: 16, scope: !6103)
!6147 = !DILocation(line: 192, column: 18, scope: !6103)
!6148 = !DILocation(line: 192, column: 6, scope: !6103)
!6149 = !DILocation(line: 192, column: 16, scope: !6103)
!6150 = !DILocation(line: 193, column: 29, scope: !6103)
!6151 = !DILocation(line: 193, column: 17, scope: !6103)
!6152 = !DILocation(line: 193, column: 24, scope: !6103)
!6153 = !DILocation(line: 193, column: 27, scope: !6103)
!6154 = !DILocation(line: 193, column: 6, scope: !6103)
!6155 = !DILocation(line: 193, column: 15, scope: !6103)
!6156 = !DILocation(line: 194, column: 6, scope: !6103)
!6157 = !DILocation(line: 194, column: 21, scope: !6103)
!6158 = !DILocation(line: 195, column: 6, scope: !6103)
!6159 = !DILocation(line: 195, column: 21, scope: !6103)
!6160 = !DILocation(line: 197, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 197, column: 6)
!6162 = !{i8 0, i8 2}
!6163 = !DILocation(line: 197, column: 13, scope: !6161)
!6164 = !DILocation(line: 197, column: 27, scope: !6161)
!6165 = !DILocation(line: 197, column: 17, scope: !6161)
!6166 = !DILocation(line: 197, column: 6, scope: !6103)
!6167 = !DILocation(line: 198, column: 7, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 198, column: 7)
!6169 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 197, column: 34)
!6170 = !DILocation(line: 198, column: 7, scope: !6169)
!6171 = !DILocation(line: 199, column: 4, scope: !6168)
!6172 = !DILocation(line: 200, column: 31, scope: !6169)
!6173 = !DILocation(line: 200, column: 3, scope: !6169)
!6174 = !DILocation(line: 201, column: 2, scope: !6169)
!6175 = !DILocation(line: 203, column: 6, scope: !6123)
!6176 = !DILocation(line: 203, column: 6, scope: !6103)
!6177 = !DILocation(line: 204, column: 18, scope: !6121)
!6178 = !DILocation(line: 204, column: 8, scope: !6121)
!6179 = !DILocation(line: 204, column: 7, scope: !6122)
!6180 = !DILocation(line: 205, column: 9, scope: !6119)
!6181 = !DILocation(line: 205, column: 18, scope: !6119)
!6182 = !DILocation(line: 205, column: 9, scope: !6120)
!6183 = !DILocation(line: 206, column: 12, scope: !6118)
!6184 = !DILocation(line: 206, column: 12, scope: !6119)
!6185 = !DILocation(line: 206, column: 10, scope: !6119)
!6186 = !DILocation(line: 206, column: 5, scope: !6119)
!6187 = !DILocation(line: 208, column: 10, scope: !6119)
!6188 = !DILocation(line: 209, column: 3, scope: !6120)
!6189 = !DILocation(line: 211, column: 7, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 211, column: 7)
!6191 = !DILocation(line: 211, column: 7, scope: !6122)
!6192 = !DILocation(line: 212, column: 8, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 212, column: 8)
!6194 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 211, column: 13)
!6195 = !DILocation(line: 212, column: 8, scope: !6194)
!6196 = !DILocation(line: 213, column: 5, scope: !6193)
!6197 = !DILocation(line: 215, column: 8, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 215, column: 8)
!6199 = !DILocation(line: 215, column: 8, scope: !6194)
!6200 = !DILocation(line: 216, column: 5, scope: !6198)
!6201 = !DILocation(line: 218, column: 30, scope: !6194)
!6202 = !DILocation(line: 218, column: 4, scope: !6194)
!6203 = !DILocation(line: 219, column: 3, scope: !6194)
!6204 = !DILocation(line: 220, column: 2, scope: !6122)
!6205 = !DILocation(line: 222, column: 1, scope: !6103)
!6206 = !DILocation(line: 223, column: 22, scope: !6103)
!6207 = !DILocation(line: 223, column: 2, scope: !6103)
!6208 = !DILocation(line: 225, column: 9, scope: !6103)
!6209 = !DILocation(line: 225, column: 2, scope: !6103)
!6210 = !DILocation(line: 226, column: 1, scope: !6103)
!6211 = distinct !DISubprogram(name: "user_mode", scope: !301, file: !301, line: 209, type: !6212, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!33, !299}
!6214 = !{!6215}
!6215 = !DILocalVariable(name: "regs", arg: 1, scope: !6211, file: !301, line: 209, type: !299)
!6216 = !DILocation(line: 209, column: 54, scope: !6211)
!6217 = !DILocation(line: 214, column: 12, scope: !6211)
!6218 = !DILocation(line: 214, column: 18, scope: !6211)
!6219 = !DILocation(line: 214, column: 21, scope: !6211)
!6220 = !DILocation(line: 214, column: 10, scope: !6211)
!6221 = !DILocation(line: 214, column: 9, scope: !6211)
!6222 = !DILocation(line: 214, column: 2, scope: !6211)
!6223 = distinct !DISubprogram(name: "perf_callchain_store_context", scope: !262, file: !262, line: 1556, type: !6224, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6226)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!33, !5715, !325}
!6226 = !{!6227, !6228, !6229}
!6227 = !DILocalVariable(name: "ctx", arg: 1, scope: !6223, file: !262, line: 1556, type: !5715)
!6228 = !DILocalVariable(name: "ip", arg: 2, scope: !6223, file: !262, line: 1556, type: !325)
!6229 = !DILocalVariable(name: "entry", scope: !6230, file: !262, line: 1559, type: !286)
!6230 = distinct !DILexicalBlock(scope: !6231, file: !262, line: 1558, column: 64)
!6231 = distinct !DILexicalBlock(scope: !6223, file: !262, line: 1558, column: 6)
!6232 = !DILocation(line: 1556, column: 81, scope: !6223)
!6233 = !DILocation(line: 1556, column: 90, scope: !6223)
!6234 = !DILocation(line: 1558, column: 6, scope: !6231)
!6235 = !DILocation(line: 1558, column: 11, scope: !6231)
!6236 = !DILocation(line: 1558, column: 22, scope: !6231)
!6237 = !DILocation(line: 1558, column: 20, scope: !6231)
!6238 = !DILocation(line: 1558, column: 6, scope: !6223)
!6239 = !DILocation(line: 1559, column: 3, scope: !6230)
!6240 = !DILocation(line: 1559, column: 32, scope: !6230)
!6241 = !DILocation(line: 1559, column: 40, scope: !6230)
!6242 = !DILocation(line: 1559, column: 45, scope: !6230)
!6243 = !DILocation(line: 1560, column: 28, scope: !6230)
!6244 = !DILocation(line: 1560, column: 3, scope: !6230)
!6245 = !DILocation(line: 1560, column: 10, scope: !6230)
!6246 = !DILocation(line: 1560, column: 13, scope: !6230)
!6247 = !DILocation(line: 1560, column: 20, scope: !6230)
!6248 = !DILocation(line: 1560, column: 22, scope: !6230)
!6249 = !DILocation(line: 1560, column: 26, scope: !6230)
!6250 = !DILocation(line: 1561, column: 5, scope: !6230)
!6251 = !DILocation(line: 1561, column: 10, scope: !6230)
!6252 = !DILocation(line: 1561, column: 3, scope: !6230)
!6253 = !DILocation(line: 1562, column: 3, scope: !6230)
!6254 = !DILocation(line: 1563, column: 2, scope: !6231)
!6255 = !DILocation(line: 1564, column: 3, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6231, file: !262, line: 1563, column: 9)
!6257 = !DILocation(line: 1564, column: 8, scope: !6256)
!6258 = !DILocation(line: 1564, column: 23, scope: !6256)
!6259 = !DILocation(line: 1565, column: 3, scope: !6256)
!6260 = !DILocation(line: 1567, column: 1, scope: !6223)
!6261 = distinct !DISubprogram(name: "get_current", scope: !6262, file: !6262, line: 39, type: !6263, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6262 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6263 = !DISubroutineType(types: !6264)
!6264 = !{!365}
!6265 = !{!6266, !6268, !6270}
!6266 = !DILocalVariable(name: "pscr_ret__", scope: !6267, file: !6262, line: 41, type: !365)
!6267 = distinct !DILexicalBlock(scope: !6261, file: !6262, line: 41, column: 9)
!6268 = !DILocalVariable(name: "__vpp_verify", scope: !6269, file: !6262, line: 41, type: !2122)
!6269 = distinct !DILexicalBlock(scope: !6267, file: !6262, line: 41, column: 9)
!6270 = !DILocalVariable(name: "pfo_val__", scope: !6271, file: !6262, line: 41, type: !325)
!6271 = distinct !DILexicalBlock(scope: !6267, file: !6262, line: 41, column: 9)
!6272 = !DILocation(line: 41, column: 9, scope: !6267)
!6273 = !DILocation(line: 41, column: 9, scope: !6269)
!6274 = !DILocation(line: 41, column: 9, scope: !6271)
!6275 = !{i64 2148316129}
!6276 = !DILocation(line: 41, column: 9, scope: !6261)
!6277 = !DILocation(line: 41, column: 2, scope: !6261)
!6278 = distinct !DISubprogram(name: "task_stack_page", scope: !6279, file: !6279, line: 20, type: !6280, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6284)
!6279 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!6280 = !DISubroutineType(types: !6281)
!6281 = !{!31, !6282}
!6282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6283, size: 64)
!6283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!6284 = !{!6285}
!6285 = !DILocalVariable(name: "task", arg: 1, scope: !6278, file: !6279, line: 20, type: !6282)
!6286 = !DILocation(line: 20, column: 72, scope: !6278)
!6287 = !DILocation(line: 22, column: 9, scope: !6278)
!6288 = !DILocation(line: 22, column: 15, scope: !6278)
!6289 = !DILocation(line: 22, column: 2, scope: !6278)
!6290 = distinct !DISubprogram(name: "perf_event_max_stack_handler", scope: !3, file: !3, line: 232, type: !42, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6291)
!6291 = !{!6292, !6293, !6294, !6295, !6296, !6297, !6298, !6299, !6300}
!6292 = !DILocalVariable(name: "table", arg: 1, scope: !6290, file: !3, line: 232, type: !44)
!6293 = !DILocalVariable(name: "write", arg: 2, scope: !6290, file: !3, line: 232, type: !33)
!6294 = !DILocalVariable(name: "buffer", arg: 3, scope: !6290, file: !3, line: 233, type: !31)
!6295 = !DILocalVariable(name: "lenp", arg: 4, scope: !6290, file: !3, line: 233, type: !45)
!6296 = !DILocalVariable(name: "ppos", arg: 5, scope: !6290, file: !3, line: 233, type: !50)
!6297 = !DILocalVariable(name: "value", scope: !6290, file: !3, line: 235, type: !271)
!6298 = !DILocalVariable(name: "new_value", scope: !6290, file: !3, line: 236, type: !33)
!6299 = !DILocalVariable(name: "ret", scope: !6290, file: !3, line: 236, type: !33)
!6300 = !DILocalVariable(name: "new_table", scope: !6290, file: !3, line: 237, type: !24)
!6301 = !DILocation(line: 232, column: 52, scope: !6290)
!6302 = !DILocation(line: 232, column: 63, scope: !6290)
!6303 = !DILocation(line: 233, column: 12, scope: !6290)
!6304 = !DILocation(line: 233, column: 28, scope: !6290)
!6305 = !DILocation(line: 233, column: 42, scope: !6290)
!6306 = !DILocation(line: 235, column: 2, scope: !6290)
!6307 = !DILocation(line: 235, column: 7, scope: !6290)
!6308 = !DILocation(line: 235, column: 15, scope: !6290)
!6309 = !DILocation(line: 235, column: 22, scope: !6290)
!6310 = !DILocation(line: 236, column: 2, scope: !6290)
!6311 = !DILocation(line: 236, column: 6, scope: !6290)
!6312 = !DILocation(line: 236, column: 19, scope: !6290)
!6313 = !DILocation(line: 236, column: 18, scope: !6290)
!6314 = !DILocation(line: 236, column: 26, scope: !6290)
!6315 = !DILocation(line: 237, column: 2, scope: !6290)
!6316 = !DILocation(line: 237, column: 19, scope: !6290)
!6317 = !DILocation(line: 237, column: 32, scope: !6290)
!6318 = !DILocation(line: 237, column: 31, scope: !6290)
!6319 = !DILocation(line: 239, column: 12, scope: !6290)
!6320 = !DILocation(line: 239, column: 17, scope: !6290)
!6321 = !DILocation(line: 240, column: 41, scope: !6290)
!6322 = !DILocation(line: 240, column: 48, scope: !6290)
!6323 = !DILocation(line: 240, column: 56, scope: !6290)
!6324 = !DILocation(line: 240, column: 62, scope: !6290)
!6325 = !DILocation(line: 240, column: 8, scope: !6290)
!6326 = !DILocation(line: 240, column: 6, scope: !6290)
!6327 = !DILocation(line: 241, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 241, column: 6)
!6329 = !DILocation(line: 241, column: 10, scope: !6328)
!6330 = !DILocation(line: 241, column: 14, scope: !6328)
!6331 = !DILocation(line: 241, column: 6, scope: !6290)
!6332 = !DILocation(line: 242, column: 10, scope: !6328)
!6333 = !DILocation(line: 242, column: 3, scope: !6328)
!6334 = !DILocation(line: 244, column: 2, scope: !6290)
!6335 = !DILocation(line: 245, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 245, column: 6)
!6337 = !DILocation(line: 245, column: 6, scope: !6290)
!6338 = !DILocation(line: 246, column: 7, scope: !6336)
!6339 = !DILocation(line: 246, column: 3, scope: !6336)
!6340 = !DILocation(line: 248, column: 12, scope: !6336)
!6341 = !DILocation(line: 248, column: 4, scope: !6336)
!6342 = !DILocation(line: 248, column: 10, scope: !6336)
!6343 = !DILocation(line: 250, column: 2, scope: !6290)
!6344 = !DILocation(line: 252, column: 9, scope: !6290)
!6345 = !DILocation(line: 252, column: 2, scope: !6290)
!6346 = !DILocation(line: 253, column: 1, scope: !6290)
!6347 = !DISubprogram(name: "proc_dointvec_minmax", scope: !23, file: !23, line: 72, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6348 = distinct !DISubprogram(name: "atomic_read", scope: !5801, file: !5801, line: 30, type: !6349, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!33, !6351}
!6351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6352, size: 64)
!6352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!6353 = !{!6354}
!6354 = !DILocalVariable(name: "v", arg: 1, scope: !6348, file: !5801, line: 30, type: !6351)
!6355 = !DILocation(line: 30, column: 29, scope: !6348)
!6356 = !DILocation(line: 32, column: 25, scope: !6348)
!6357 = !DILocation(line: 32, column: 2, scope: !6348)
!6358 = !DILocation(line: 33, column: 25, scope: !6348)
!6359 = !DILocation(line: 33, column: 9, scope: !6348)
!6360 = !DILocation(line: 33, column: 2, scope: !6348)
!6361 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6362, file: !6362, line: 94, type: !6363, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6362 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6363 = !DISubroutineType(types: !6364)
!6364 = !{null, !6365, !46}
!6365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6366, size: 64)
!6366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6367)
!6367 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6368 = !{!6369, !6370}
!6369 = !DILocalVariable(name: "v", arg: 1, scope: !6361, file: !6362, line: 94, type: !6365)
!6370 = !DILocalVariable(name: "size", arg: 2, scope: !6361, file: !6362, line: 94, type: !46)
!6371 = !DILocation(line: 94, column: 79, scope: !6361)
!6372 = !DILocation(line: 94, column: 89, scope: !6361)
!6373 = !DILocation(line: 96, column: 20, scope: !6361)
!6374 = !DILocation(line: 96, column: 23, scope: !6361)
!6375 = !DILocation(line: 96, column: 2, scope: !6361)
!6376 = !DILocation(line: 97, column: 2, scope: !6361)
!6377 = !DILocation(line: 98, column: 1, scope: !6361)
!6378 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !6379, file: !6379, line: 996, type: !5802, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6379 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6380 = !{!6381}
!6381 = !DILocalVariable(name: "v", arg: 1, scope: !6378, file: !6379, line: 996, type: !5804)
!6382 = !DILocation(line: 996, column: 33, scope: !6378)
!6383 = !DILocation(line: 1007, column: 34, scope: !6378)
!6384 = !DILocation(line: 1007, column: 9, scope: !6378)
!6385 = !DILocation(line: 1007, column: 2, scope: !6378)
!6386 = distinct !DISubprogram(name: "kasan_check_write", scope: !6387, file: !6387, line: 44, type: !6388, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6387 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6388 = !DISubroutineType(types: !6389)
!6389 = !{!877, !6365, !7}
!6390 = !{!6391, !6392}
!6391 = !DILocalVariable(name: "p", arg: 1, scope: !6386, file: !6387, line: 44, type: !6365)
!6392 = !DILocalVariable(name: "size", arg: 2, scope: !6386, file: !6387, line: 44, type: !7)
!6393 = !DILocation(line: 44, column: 59, scope: !6386)
!6394 = !DILocation(line: 44, column: 75, scope: !6386)
!6395 = !DILocation(line: 46, column: 2, scope: !6386)
!6396 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6397, file: !6397, line: 229, type: !6398, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6400)
!6397 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !6365, !46, !33}
!6400 = !{!6401, !6402, !6403}
!6401 = !DILocalVariable(name: "ptr", arg: 1, scope: !6396, file: !6397, line: 229, type: !6365)
!6402 = !DILocalVariable(name: "size", arg: 2, scope: !6396, file: !6397, line: 229, type: !46)
!6403 = !DILocalVariable(name: "type", arg: 3, scope: !6396, file: !6397, line: 230, type: !33)
!6404 = !DILocation(line: 229, column: 60, scope: !6396)
!6405 = !DILocation(line: 229, column: 72, scope: !6396)
!6406 = !DILocation(line: 230, column: 15, scope: !6396)
!6407 = !DILocation(line: 230, column: 23, scope: !6396)
!6408 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !6379, file: !6379, line: 548, type: !6409, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!33, !33, !5804}
!6411 = !{!6412, !6413}
!6412 = !DILocalVariable(name: "i", arg: 1, scope: !6408, file: !6379, line: 548, type: !33)
!6413 = !DILocalVariable(name: "v", arg: 2, scope: !6408, file: !6379, line: 548, type: !5804)
!6414 = !DILocation(line: 548, column: 27, scope: !6408)
!6415 = !DILocation(line: 548, column: 40, scope: !6408)
!6416 = !DILocation(line: 551, column: 32, scope: !6408)
!6417 = !DILocation(line: 551, column: 35, scope: !6408)
!6418 = !DILocation(line: 551, column: 9, scope: !6408)
!6419 = !DILocation(line: 551, column: 2, scope: !6408)
!6420 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6421, file: !6421, line: 83, type: !6409, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6422)
!6421 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6422 = !{!6423, !6424, !6425}
!6423 = !DILocalVariable(name: "i", arg: 1, scope: !6420, file: !6421, line: 83, type: !33)
!6424 = !DILocalVariable(name: "v", arg: 2, scope: !6420, file: !6421, line: 83, type: !5804)
!6425 = !DILocalVariable(name: "__ret", scope: !6426, file: !6421, line: 85, type: !33)
!6426 = distinct !DILexicalBlock(scope: !6420, file: !6421, line: 85, column: 13)
!6427 = !DILocation(line: 83, column: 55, scope: !6420)
!6428 = !DILocation(line: 83, column: 68, scope: !6420)
!6429 = !DILocation(line: 85, column: 9, scope: !6420)
!6430 = !DILocation(line: 85, column: 13, scope: !6426)
!6431 = !{i64 2148531221, i64 2148531260, i64 2148531281, i64 2148531318, i64 2148531341, i64 2148531350}
!6432 = !DILocation(line: 85, column: 13, scope: !6420)
!6433 = !DILocation(line: 85, column: 11, scope: !6420)
!6434 = !DILocation(line: 85, column: 2, scope: !6420)
!6435 = distinct !DISubprogram(name: "kzalloc", scope: !118, file: !118, line: 719, type: !6436, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6438)
!6436 = !DISubroutineType(types: !6437)
!6437 = !{!31, !46, !352}
!6438 = !{!6439, !6440}
!6439 = !DILocalVariable(name: "size", arg: 1, scope: !6435, file: !118, line: 719, type: !46)
!6440 = !DILocalVariable(name: "flags", arg: 2, scope: !6435, file: !118, line: 719, type: !352)
!6441 = !DILocation(line: 719, column: 52, scope: !6435)
!6442 = !DILocation(line: 719, column: 64, scope: !6435)
!6443 = !DILocation(line: 721, column: 17, scope: !6435)
!6444 = !DILocation(line: 721, column: 23, scope: !6435)
!6445 = !DILocation(line: 721, column: 29, scope: !6435)
!6446 = !DILocation(line: 721, column: 9, scope: !6435)
!6447 = !DILocation(line: 721, column: 2, scope: !6435)
!6448 = distinct !DISubprogram(name: "find_next_bit", scope: !6449, file: !6449, line: 54, type: !6450, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6449 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6450 = !DISubroutineType(types: !6451)
!6451 = !{!13, !6452, !13, !13}
!6452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!6453 = !{!6454, !6455, !6456, !6457}
!6454 = !DILocalVariable(name: "addr", arg: 1, scope: !6448, file: !6449, line: 54, type: !6452)
!6455 = !DILocalVariable(name: "size", arg: 2, scope: !6448, file: !6449, line: 54, type: !13)
!6456 = !DILocalVariable(name: "offset", arg: 3, scope: !6448, file: !6449, line: 55, type: !13)
!6457 = !DILocalVariable(name: "val", scope: !6458, file: !6449, line: 58, type: !13)
!6458 = distinct !DILexicalBlock(scope: !6459, file: !6449, line: 57, column: 31)
!6459 = distinct !DILexicalBlock(scope: !6448, file: !6449, line: 57, column: 6)
!6460 = !DILocation(line: 54, column: 50, scope: !6448)
!6461 = !DILocation(line: 54, column: 70, scope: !6448)
!6462 = !DILocation(line: 55, column: 22, scope: !6448)
!6463 = !DILocation(line: 57, column: 6, scope: !6459)
!6464 = !DILocation(line: 57, column: 6, scope: !6448)
!6465 = !DILocation(line: 58, column: 3, scope: !6458)
!6466 = !DILocation(line: 58, column: 17, scope: !6458)
!6467 = !DILocation(line: 60, column: 7, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6458, file: !6449, line: 60, column: 7)
!6469 = !DILocation(line: 60, column: 7, scope: !6458)
!6470 = !DILocation(line: 61, column: 11, scope: !6468)
!6471 = !DILocation(line: 61, column: 4, scope: !6468)
!6472 = !DILocation(line: 63, column: 10, scope: !6458)
!6473 = !DILocation(line: 63, column: 9, scope: !6458)
!6474 = !DILocation(line: 63, column: 17, scope: !6458)
!6475 = !DILocation(line: 63, column: 15, scope: !6458)
!6476 = !DILocation(line: 63, column: 7, scope: !6458)
!6477 = !DILocation(line: 64, column: 10, scope: !6458)
!6478 = !DILocation(line: 64, column: 16, scope: !6458)
!6479 = !DILocation(line: 64, column: 29, scope: !6458)
!6480 = !DILocation(line: 64, column: 3, scope: !6458)
!6481 = !DILocation(line: 65, column: 2, scope: !6459)
!6482 = !DILocation(line: 67, column: 24, scope: !6448)
!6483 = !DILocation(line: 67, column: 30, scope: !6448)
!6484 = !DILocation(line: 67, column: 36, scope: !6448)
!6485 = !DILocation(line: 67, column: 9, scope: !6448)
!6486 = !DILocation(line: 67, column: 2, scope: !6448)
!6487 = !DILocation(line: 68, column: 1, scope: !6448)
!6488 = distinct !DISubprogram(name: "kmalloc_node", scope: !118, file: !118, line: 607, type: !6489, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6491)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{!31, !46, !352, !33}
!6491 = !{!6492, !6493, !6494, !6495}
!6492 = !DILocalVariable(name: "size", arg: 1, scope: !6488, file: !118, line: 607, type: !46)
!6493 = !DILocalVariable(name: "flags", arg: 2, scope: !6488, file: !118, line: 607, type: !352)
!6494 = !DILocalVariable(name: "node", arg: 3, scope: !6488, file: !118, line: 607, type: !33)
!6495 = !DILocalVariable(name: "index", scope: !6496, file: !118, line: 610, type: !7)
!6496 = distinct !DILexicalBlock(scope: !6497, file: !118, line: 609, column: 42)
!6497 = distinct !DILexicalBlock(scope: !6488, file: !118, line: 609, column: 6)
!6498 = !DILocation(line: 607, column: 66, scope: !6488)
!6499 = !DILocation(line: 607, column: 78, scope: !6488)
!6500 = !DILocation(line: 607, column: 89, scope: !6488)
!6501 = !DILocation(line: 609, column: 27, scope: !6497)
!6502 = !DILocation(line: 609, column: 6, scope: !6497)
!6503 = !DILocation(line: 609, column: 33, scope: !6497)
!6504 = !DILocation(line: 609, column: 36, scope: !6497)
!6505 = !DILocation(line: 609, column: 6, scope: !6488)
!6506 = !DILocation(line: 610, column: 3, scope: !6496)
!6507 = !DILocation(line: 610, column: 16, scope: !6496)
!6508 = !DILocation(line: 612, column: 7, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6496, file: !118, line: 612, column: 7)
!6510 = !DILocation(line: 612, column: 12, scope: !6509)
!6511 = !DILocation(line: 612, column: 7, scope: !6496)
!6512 = !DILocation(line: 613, column: 30, scope: !6509)
!6513 = !DILocation(line: 613, column: 36, scope: !6509)
!6514 = !DILocation(line: 613, column: 43, scope: !6509)
!6515 = !DILocation(line: 613, column: 11, scope: !6509)
!6516 = !DILocation(line: 613, column: 4, scope: !6509)
!6517 = !DILocation(line: 615, column: 11, scope: !6496)
!6518 = !DILocation(line: 615, column: 9, scope: !6496)
!6519 = !DILocation(line: 617, column: 33, scope: !6496)
!6520 = !DILocation(line: 617, column: 40, scope: !6496)
!6521 = !DILocation(line: 617, column: 20, scope: !6496)
!6522 = !DILocation(line: 617, column: 5, scope: !6496)
!6523 = !DILocation(line: 617, column: 51, scope: !6496)
!6524 = !DILocation(line: 618, column: 5, scope: !6496)
!6525 = !DILocation(line: 618, column: 12, scope: !6496)
!6526 = !DILocation(line: 618, column: 18, scope: !6496)
!6527 = !DILocation(line: 616, column: 10, scope: !6496)
!6528 = !DILocation(line: 616, column: 3, scope: !6496)
!6529 = !DILocation(line: 619, column: 2, scope: !6497)
!6530 = !DILocation(line: 620, column: 24, scope: !6488)
!6531 = !DILocation(line: 620, column: 30, scope: !6488)
!6532 = !DILocation(line: 620, column: 37, scope: !6488)
!6533 = !DILocation(line: 620, column: 9, scope: !6488)
!6534 = !DILocation(line: 620, column: 2, scope: !6488)
!6535 = !DILocation(line: 621, column: 1, scope: !6488)
!6536 = distinct !DISubprogram(name: "cpu_to_node", scope: !6537, file: !6537, line: 94, type: !3253, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6537 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6538 = !{!6539, !6540, !6543}
!6539 = !DILocalVariable(name: "cpu", arg: 1, scope: !6536, file: !6537, line: 94, type: !33)
!6540 = !DILocalVariable(name: "__vpp_verify", scope: !6541, file: !6537, line: 96, type: !2122)
!6541 = distinct !DILexicalBlock(scope: !6542, file: !6537, line: 96, column: 9)
!6542 = distinct !DILexicalBlock(scope: !6536, file: !6537, line: 96, column: 9)
!6543 = !DILocalVariable(name: "__ptr", scope: !6544, file: !6537, line: 96, type: !13)
!6544 = distinct !DILexicalBlock(scope: !6542, file: !6537, line: 96, column: 9)
!6545 = !DILocation(line: 94, column: 35, scope: !6536)
!6546 = !DILocation(line: 96, column: 9, scope: !6542)
!6547 = !DILocation(line: 96, column: 9, scope: !6541)
!6548 = !DILocation(line: 96, column: 9, scope: !6544)
!6549 = !DILocation(line: 96, column: 9, scope: !6536)
!6550 = !DILocation(line: 96, column: 2, scope: !6536)
!6551 = !DISubprogram(name: "kfree", scope: !118, file: !118, line: 227, type: !6552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6552 = !DISubroutineType(types: !6553)
!6553 = !{null, !2122}
!6554 = distinct !DISubprogram(name: "kmalloc", scope: !118, file: !118, line: 591, type: !6436, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6555)
!6555 = !{!6556, !6557, !6558}
!6556 = !DILocalVariable(name: "size", arg: 1, scope: !6554, file: !118, line: 591, type: !46)
!6557 = !DILocalVariable(name: "flags", arg: 2, scope: !6554, file: !118, line: 591, type: !352)
!6558 = !DILocalVariable(name: "index", scope: !6559, file: !118, line: 594, type: !7)
!6559 = distinct !DILexicalBlock(scope: !6560, file: !118, line: 593, column: 42)
!6560 = distinct !DILexicalBlock(scope: !6554, file: !118, line: 593, column: 6)
!6561 = !DILocation(line: 591, column: 61, scope: !6554)
!6562 = !DILocation(line: 591, column: 73, scope: !6554)
!6563 = !DILocation(line: 593, column: 27, scope: !6560)
!6564 = !DILocation(line: 593, column: 6, scope: !6560)
!6565 = !DILocation(line: 593, column: 33, scope: !6560)
!6566 = !DILocation(line: 593, column: 36, scope: !6560)
!6567 = !DILocation(line: 593, column: 6, scope: !6554)
!6568 = !DILocation(line: 594, column: 3, scope: !6559)
!6569 = !DILocation(line: 594, column: 16, scope: !6559)
!6570 = !DILocation(line: 596, column: 7, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6559, file: !118, line: 596, column: 7)
!6572 = !DILocation(line: 596, column: 12, scope: !6571)
!6573 = !DILocation(line: 596, column: 7, scope: !6559)
!6574 = !DILocation(line: 597, column: 25, scope: !6571)
!6575 = !DILocation(line: 597, column: 31, scope: !6571)
!6576 = !DILocation(line: 597, column: 11, scope: !6571)
!6577 = !DILocation(line: 597, column: 4, scope: !6571)
!6578 = !DILocation(line: 599, column: 11, scope: !6559)
!6579 = !DILocation(line: 599, column: 9, scope: !6559)
!6580 = !DILocation(line: 601, column: 33, scope: !6559)
!6581 = !DILocation(line: 601, column: 40, scope: !6559)
!6582 = !DILocation(line: 601, column: 20, scope: !6559)
!6583 = !DILocation(line: 601, column: 5, scope: !6559)
!6584 = !DILocation(line: 601, column: 51, scope: !6559)
!6585 = !DILocation(line: 602, column: 5, scope: !6559)
!6586 = !DILocation(line: 602, column: 12, scope: !6559)
!6587 = !DILocation(line: 600, column: 10, scope: !6559)
!6588 = !DILocation(line: 600, column: 3, scope: !6559)
!6589 = !DILocation(line: 603, column: 2, scope: !6560)
!6590 = !DILocation(line: 604, column: 19, scope: !6554)
!6591 = !DILocation(line: 604, column: 25, scope: !6554)
!6592 = !DILocation(line: 604, column: 9, scope: !6554)
!6593 = !DILocation(line: 604, column: 2, scope: !6554)
!6594 = !DILocation(line: 605, column: 1, scope: !6554)
!6595 = !DISubprogram(name: "kmalloc_large", scope: !118, file: !118, line: 531, type: !6436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6596 = distinct !DISubprogram(name: "__kmalloc_index", scope: !118, file: !118, line: 444, type: !6597, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6599)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!7, !46, !877}
!6599 = !{!6600, !6601}
!6600 = !DILocalVariable(name: "size", arg: 1, scope: !6596, file: !118, line: 444, type: !46)
!6601 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6596, file: !118, line: 445, type: !877)
!6602 = !DILocation(line: 444, column: 60, scope: !6596)
!6603 = !DILocation(line: 445, column: 16, scope: !6596)
!6604 = !DILocation(line: 447, column: 7, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 447, column: 6)
!6606 = !DILocation(line: 447, column: 6, scope: !6596)
!6607 = !DILocation(line: 448, column: 3, scope: !6605)
!6608 = !DILocation(line: 450, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 450, column: 6)
!6610 = !DILocation(line: 450, column: 11, scope: !6609)
!6611 = !DILocation(line: 450, column: 6, scope: !6596)
!6612 = !DILocation(line: 451, column: 3, scope: !6609)
!6613 = !DILocation(line: 453, column: 32, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 453, column: 6)
!6615 = !DILocation(line: 453, column: 37, scope: !6614)
!6616 = !DILocation(line: 453, column: 42, scope: !6614)
!6617 = !DILocation(line: 453, column: 45, scope: !6614)
!6618 = !DILocation(line: 453, column: 50, scope: !6614)
!6619 = !DILocation(line: 453, column: 6, scope: !6596)
!6620 = !DILocation(line: 454, column: 3, scope: !6614)
!6621 = !DILocation(line: 455, column: 32, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 455, column: 6)
!6623 = !DILocation(line: 455, column: 37, scope: !6622)
!6624 = !DILocation(line: 455, column: 43, scope: !6622)
!6625 = !DILocation(line: 455, column: 46, scope: !6622)
!6626 = !DILocation(line: 455, column: 51, scope: !6622)
!6627 = !DILocation(line: 455, column: 6, scope: !6596)
!6628 = !DILocation(line: 456, column: 3, scope: !6622)
!6629 = !DILocation(line: 457, column: 6, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 457, column: 6)
!6631 = !DILocation(line: 457, column: 11, scope: !6630)
!6632 = !DILocation(line: 457, column: 6, scope: !6596)
!6633 = !DILocation(line: 457, column: 26, scope: !6630)
!6634 = !DILocation(line: 458, column: 6, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 458, column: 6)
!6636 = !DILocation(line: 458, column: 11, scope: !6635)
!6637 = !DILocation(line: 458, column: 6, scope: !6596)
!6638 = !DILocation(line: 458, column: 26, scope: !6635)
!6639 = !DILocation(line: 459, column: 6, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 459, column: 6)
!6641 = !DILocation(line: 459, column: 11, scope: !6640)
!6642 = !DILocation(line: 459, column: 6, scope: !6596)
!6643 = !DILocation(line: 459, column: 26, scope: !6640)
!6644 = !DILocation(line: 460, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 460, column: 6)
!6646 = !DILocation(line: 460, column: 11, scope: !6645)
!6647 = !DILocation(line: 460, column: 6, scope: !6596)
!6648 = !DILocation(line: 460, column: 26, scope: !6645)
!6649 = !DILocation(line: 461, column: 6, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 461, column: 6)
!6651 = !DILocation(line: 461, column: 11, scope: !6650)
!6652 = !DILocation(line: 461, column: 6, scope: !6596)
!6653 = !DILocation(line: 461, column: 26, scope: !6650)
!6654 = !DILocation(line: 462, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 462, column: 6)
!6656 = !DILocation(line: 462, column: 11, scope: !6655)
!6657 = !DILocation(line: 462, column: 6, scope: !6596)
!6658 = !DILocation(line: 462, column: 26, scope: !6655)
!6659 = !DILocation(line: 463, column: 6, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 463, column: 6)
!6661 = !DILocation(line: 463, column: 11, scope: !6660)
!6662 = !DILocation(line: 463, column: 6, scope: !6596)
!6663 = !DILocation(line: 463, column: 26, scope: !6660)
!6664 = !DILocation(line: 464, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 464, column: 6)
!6666 = !DILocation(line: 464, column: 11, scope: !6665)
!6667 = !DILocation(line: 464, column: 6, scope: !6596)
!6668 = !DILocation(line: 464, column: 26, scope: !6665)
!6669 = !DILocation(line: 465, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 465, column: 6)
!6671 = !DILocation(line: 465, column: 11, scope: !6670)
!6672 = !DILocation(line: 465, column: 6, scope: !6596)
!6673 = !DILocation(line: 465, column: 26, scope: !6670)
!6674 = !DILocation(line: 466, column: 6, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 466, column: 6)
!6676 = !DILocation(line: 466, column: 11, scope: !6675)
!6677 = !DILocation(line: 466, column: 6, scope: !6596)
!6678 = !DILocation(line: 466, column: 26, scope: !6675)
!6679 = !DILocation(line: 467, column: 6, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 467, column: 6)
!6681 = !DILocation(line: 467, column: 11, scope: !6680)
!6682 = !DILocation(line: 467, column: 6, scope: !6596)
!6683 = !DILocation(line: 467, column: 26, scope: !6680)
!6684 = !DILocation(line: 468, column: 6, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 468, column: 6)
!6686 = !DILocation(line: 468, column: 11, scope: !6685)
!6687 = !DILocation(line: 468, column: 6, scope: !6596)
!6688 = !DILocation(line: 468, column: 26, scope: !6685)
!6689 = !DILocation(line: 469, column: 6, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 469, column: 6)
!6691 = !DILocation(line: 469, column: 11, scope: !6690)
!6692 = !DILocation(line: 469, column: 6, scope: !6596)
!6693 = !DILocation(line: 469, column: 26, scope: !6690)
!6694 = !DILocation(line: 470, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 470, column: 6)
!6696 = !DILocation(line: 470, column: 11, scope: !6695)
!6697 = !DILocation(line: 470, column: 6, scope: !6596)
!6698 = !DILocation(line: 470, column: 26, scope: !6695)
!6699 = !DILocation(line: 471, column: 6, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 471, column: 6)
!6701 = !DILocation(line: 471, column: 11, scope: !6700)
!6702 = !DILocation(line: 471, column: 6, scope: !6596)
!6703 = !DILocation(line: 471, column: 26, scope: !6700)
!6704 = !DILocation(line: 472, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 472, column: 6)
!6706 = !DILocation(line: 472, column: 11, scope: !6705)
!6707 = !DILocation(line: 472, column: 6, scope: !6596)
!6708 = !DILocation(line: 472, column: 26, scope: !6705)
!6709 = !DILocation(line: 473, column: 6, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 473, column: 6)
!6711 = !DILocation(line: 473, column: 11, scope: !6710)
!6712 = !DILocation(line: 473, column: 6, scope: !6596)
!6713 = !DILocation(line: 473, column: 26, scope: !6710)
!6714 = !DILocation(line: 474, column: 6, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 474, column: 6)
!6716 = !DILocation(line: 474, column: 11, scope: !6715)
!6717 = !DILocation(line: 474, column: 6, scope: !6596)
!6718 = !DILocation(line: 474, column: 27, scope: !6715)
!6719 = !DILocation(line: 475, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 475, column: 6)
!6721 = !DILocation(line: 475, column: 11, scope: !6720)
!6722 = !DILocation(line: 475, column: 6, scope: !6596)
!6723 = !DILocation(line: 475, column: 32, scope: !6720)
!6724 = !DILocation(line: 477, column: 50, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6596, file: !118, line: 477, column: 6)
!6726 = !DILocation(line: 477, column: 6, scope: !6596)
!6727 = !DILocation(line: 478, column: 3, scope: !6725)
!6728 = !DILocation(line: 478, column: 3, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6730, file: !118, line: 478, column: 3)
!6730 = distinct !DILexicalBlock(scope: !6725, file: !118, line: 478, column: 3)
!6731 = !{i32 -2141843372}
!6732 = !DILocation(line: 478, column: 3, scope: !6730)
!6733 = !DILocation(line: 480, column: 3, scope: !6725)
!6734 = !DILocation(line: 480, column: 3, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6725, file: !118, line: 480, column: 3)
!6736 = !DILocation(line: 480, column: 3, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6735, file: !118, line: 480, column: 3)
!6738 = !DILocation(line: 480, column: 3, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6735, file: !118, line: 480, column: 3)
!6740 = !{i64 2153124127, i64 2153124156, i64 2153124202, i64 2153124260, i64 2153124314, i64 2153124368, i64 2153124423, i64 2153124454}
!6741 = !DILocation(line: 483, column: 2, scope: !6596)
!6742 = !DILocation(line: 484, column: 1, scope: !6596)
!6743 = !DISubprogram(name: "kmalloc_trace", scope: !118, file: !118, line: 525, type: !6744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!31, !810, !352, !46}
!6746 = distinct !DISubprogram(name: "kmalloc_type", scope: !118, file: !118, line: 401, type: !6747, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6749)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{!117, !352, !13}
!6749 = !{!6750, !6751}
!6750 = !DILocalVariable(name: "flags", arg: 1, scope: !6746, file: !118, line: 401, type: !352)
!6751 = !DILocalVariable(name: "caller", arg: 2, scope: !6746, file: !118, line: 401, type: !13)
!6752 = !DILocation(line: 401, column: 67, scope: !6746)
!6753 = !DILocation(line: 401, column: 88, scope: !6746)
!6754 = !DILocation(line: 407, column: 6, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6746, file: !118, line: 407, column: 6)
!6756 = !DILocation(line: 407, column: 6, scope: !6746)
!6757 = !DILocation(line: 413, column: 3, scope: !6755)
!6758 = !DILocation(line: 423, column: 38, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6746, file: !118, line: 423, column: 6)
!6760 = !DILocation(line: 423, column: 44, scope: !6759)
!6761 = !DILocation(line: 423, column: 6, scope: !6746)
!6762 = !DILocation(line: 424, column: 3, scope: !6759)
!6763 = !DILocation(line: 426, column: 3, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6746, file: !118, line: 425, column: 6)
!6765 = !DILocation(line: 429, column: 1, scope: !6746)
!6766 = !DISubprogram(name: "__kmalloc", scope: !118, file: !118, line: 488, type: !6436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6767 = !DISubprogram(name: "__compiletime_assert_227", scope: !118, file: !118, line: 478, type: !2630, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6768 = distinct !DISubprogram(name: "variable__ffs", scope: !6769, file: !6769, line: 250, type: !6770, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6772)
!6769 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6770 = !DISubroutineType(types: !6771)
!6771 = !{!13, !13}
!6772 = !{!6773}
!6773 = !DILocalVariable(name: "word", arg: 1, scope: !6768, file: !6769, line: 250, type: !13)
!6774 = !DILocation(line: 250, column: 66, scope: !6768)
!6775 = !DILocation(line: 254, column: 11, scope: !6768)
!6776 = !DILocation(line: 252, column: 2, scope: !6768)
!6777 = !{i64 549265}
!6778 = !DILocation(line: 255, column: 9, scope: !6768)
!6779 = !DILocation(line: 255, column: 2, scope: !6768)
!6780 = !DISubprogram(name: "_find_next_bit", scope: !6449, file: !6449, line: 11, type: !6450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6781 = !DISubprogram(name: "kmalloc_large_node", scope: !118, file: !118, line: 534, type: !6489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6782 = !DISubprogram(name: "kmalloc_node_trace", scope: !118, file: !118, line: 528, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!31, !810, !352, !33, !46}
!6785 = !DISubprogram(name: "__kmalloc_node", scope: !118, file: !118, line: 520, type: !6489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6786 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6379, file: !6379, line: 1194, type: !5908, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6787)
!6787 = !{!6788}
!6788 = !DILocalVariable(name: "v", arg: 1, scope: !6786, file: !6379, line: 1194, type: !5804)
!6789 = !DILocation(line: 1194, column: 26, scope: !6786)
!6790 = !DILocation(line: 1197, column: 18, scope: !6786)
!6791 = !DILocation(line: 1197, column: 2, scope: !6786)
!6792 = !DILocation(line: 1201, column: 1, scope: !6786)
!6793 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6421, file: !6421, line: 58, type: !5908, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6794)
!6794 = !{!6795}
!6795 = !DILocalVariable(name: "v", arg: 1, scope: !6793, file: !6421, line: 58, type: !5804)
!6796 = !DILocation(line: 58, column: 55, scope: !6793)
!6797 = !DILocation(line: 61, column: 16, scope: !6793)
!6798 = !DILocation(line: 61, column: 19, scope: !6793)
!6799 = !DILocation(line: 60, column: 2, scope: !6793)
!6800 = !{i64 2148523508, i64 2148523547, i64 2148523568, i64 2148523605, i64 2148523628, i64 2148523498}
!6801 = !DILocation(line: 62, column: 1, scope: !6793)
!6802 = !DISubprogram(name: "call_rcu", scope: !6803, file: !6803, line: 42, type: !6804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6803 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6804 = !DISubroutineType(types: !6805)
!6805 = !{null, !279, !6806}
!6806 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !36, line: 238, baseType: !281)
!6807 = distinct !DISubprogram(name: "release_callchain_buffers_rcu", scope: !3, file: !3, line: 48, type: !282, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6808)
!6808 = !{!6809, !6810, !6811, !6812}
!6809 = !DILocalVariable(name: "head", arg: 1, scope: !6807, file: !3, line: 48, type: !279)
!6810 = !DILocalVariable(name: "entries", scope: !6807, file: !3, line: 50, type: !272)
!6811 = !DILocalVariable(name: "cpu", scope: !6807, file: !3, line: 51, type: !33)
!6812 = !DILocalVariable(name: "__mptr", scope: !6813, file: !3, line: 53, type: !31)
!6813 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 53, column: 12)
!6814 = !DILocation(line: 48, column: 60, scope: !6807)
!6815 = !DILocation(line: 50, column: 2, scope: !6807)
!6816 = !DILocation(line: 50, column: 33, scope: !6807)
!6817 = !DILocation(line: 51, column: 2, scope: !6807)
!6818 = !DILocation(line: 51, column: 6, scope: !6807)
!6819 = !DILocation(line: 53, column: 12, scope: !6813)
!6820 = !DILocation(line: 53, column: 12, scope: !6807)
!6821 = !DILocation(line: 53, column: 10, scope: !6807)
!6822 = !DILocation(line: 55, column: 2, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 55, column: 2)
!6824 = !DILocation(line: 55, column: 2, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 55, column: 2)
!6826 = !DILocation(line: 56, column: 9, scope: !6825)
!6827 = !DILocation(line: 56, column: 18, scope: !6825)
!6828 = !DILocation(line: 56, column: 30, scope: !6825)
!6829 = !DILocation(line: 56, column: 3, scope: !6825)
!6830 = distinct !{!6830, !6822, !6831, !5864, !5865}
!6831 = !DILocation(line: 56, column: 34, scope: !6823)
!6832 = !DILocation(line: 58, column: 8, scope: !6807)
!6833 = !DILocation(line: 58, column: 2, scope: !6807)
!6834 = !DILocation(line: 59, column: 1, scope: !6807)
!6835 = distinct !DISubprogram(name: "interrupt_context_level", scope: !6836, file: !6836, line: 90, type: !6837, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6839)
!6836 = !DIFile(filename: "./include/linux/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0033247f2e1e62facd4401477e3cb79")
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!97}
!6839 = !{!6840, !6841}
!6840 = !DILocalVariable(name: "pc", scope: !6835, file: !6836, line: 92, type: !13)
!6841 = !DILocalVariable(name: "level", scope: !6835, file: !6836, line: 93, type: !97)
!6842 = !DILocation(line: 92, column: 2, scope: !6835)
!6843 = !DILocation(line: 92, column: 16, scope: !6835)
!6844 = !DILocation(line: 92, column: 21, scope: !6835)
!6845 = !DILocation(line: 93, column: 2, scope: !6835)
!6846 = !DILocation(line: 93, column: 16, scope: !6835)
!6847 = !DILocation(line: 95, column: 14, scope: !6835)
!6848 = !DILocation(line: 95, column: 17, scope: !6835)
!6849 = !DILocation(line: 95, column: 12, scope: !6835)
!6850 = !DILocation(line: 95, column: 11, scope: !6835)
!6851 = !DILocation(line: 95, column: 8, scope: !6835)
!6852 = !DILocation(line: 96, column: 14, scope: !6835)
!6853 = !DILocation(line: 96, column: 17, scope: !6835)
!6854 = !DILocation(line: 96, column: 12, scope: !6835)
!6855 = !DILocation(line: 96, column: 11, scope: !6835)
!6856 = !DILocation(line: 96, column: 8, scope: !6835)
!6857 = !DILocation(line: 97, column: 14, scope: !6835)
!6858 = !DILocation(line: 97, column: 17, scope: !6835)
!6859 = !DILocation(line: 97, column: 12, scope: !6835)
!6860 = !DILocation(line: 97, column: 11, scope: !6835)
!6861 = !DILocation(line: 97, column: 8, scope: !6835)
!6862 = !DILocation(line: 99, column: 9, scope: !6835)
!6863 = !DILocation(line: 100, column: 1, scope: !6835)
!6864 = !DILocation(line: 99, column: 2, scope: !6835)
!6865 = distinct !DISubprogram(name: "preempt_count", scope: !6866, file: !6866, line: 25, type: !2397, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6866 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6867 = !{!6868}
!6868 = !DILocalVariable(name: "pfo_val__", scope: !6869, file: !6866, line: 27, type: !376)
!6869 = distinct !DILexicalBlock(scope: !6865, file: !6866, line: 27, column: 9)
!6870 = !DILocation(line: 27, column: 9, scope: !6869)
!6871 = !{i64 2149698846}
!6872 = !DILocation(line: 27, column: 9, scope: !6865)
!6873 = !DILocation(line: 27, column: 48, scope: !6865)
!6874 = !DILocation(line: 27, column: 2, scope: !6865)
!6875 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6362, file: !6362, line: 66, type: !6363, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6876)
!6876 = !{!6877, !6878}
!6877 = !DILocalVariable(name: "v", arg: 1, scope: !6875, file: !6362, line: 66, type: !6365)
!6878 = !DILocalVariable(name: "size", arg: 2, scope: !6875, file: !6362, line: 66, type: !46)
!6879 = !DILocation(line: 66, column: 73, scope: !6875)
!6880 = !DILocation(line: 66, column: 83, scope: !6875)
!6881 = !DILocation(line: 68, column: 19, scope: !6875)
!6882 = !DILocation(line: 68, column: 22, scope: !6875)
!6883 = !DILocation(line: 68, column: 2, scope: !6875)
!6884 = !DILocation(line: 69, column: 2, scope: !6875)
!6885 = !DILocation(line: 70, column: 1, scope: !6875)
!6886 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6379, file: !6379, line: 442, type: !6349, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6887)
!6887 = !{!6888}
!6888 = !DILocalVariable(name: "v", arg: 1, scope: !6886, file: !6379, line: 442, type: !6351)
!6889 = !DILocation(line: 442, column: 33, scope: !6886)
!6890 = !DILocation(line: 444, column: 26, scope: !6886)
!6891 = !DILocation(line: 444, column: 9, scope: !6886)
!6892 = !DILocation(line: 444, column: 2, scope: !6886)
!6893 = distinct !DISubprogram(name: "kasan_check_read", scope: !6387, file: !6387, line: 40, type: !6388, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6894 = !{!6895, !6896}
!6895 = !DILocalVariable(name: "p", arg: 1, scope: !6893, file: !6387, line: 40, type: !6365)
!6896 = !DILocalVariable(name: "size", arg: 2, scope: !6893, file: !6387, line: 40, type: !7)
!6897 = !DILocation(line: 40, column: 58, scope: !6893)
!6898 = !DILocation(line: 40, column: 74, scope: !6893)
!6899 = !DILocation(line: 42, column: 2, scope: !6893)
!6900 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6421, file: !6421, line: 17, type: !6349, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6901)
!6901 = !{!6902}
!6902 = !DILocalVariable(name: "v", arg: 1, scope: !6900, file: !6421, line: 17, type: !6351)
!6903 = !DILocation(line: 17, column: 61, scope: !6900)
!6904 = !DILocation(line: 23, column: 9, scope: !6900)
!6905 = !DILocation(line: 23, column: 2, scope: !6900)
