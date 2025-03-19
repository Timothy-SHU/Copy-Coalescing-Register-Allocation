; ModuleID = 'drivers/tty/tty_ldsem.c'
source_filename = "drivers/tty/tty_ldsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.lockdep_map = type {}
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.ldsem_waiter = type { %struct.list_head, ptr }
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
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !0
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !5006
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__init_ldsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) #0 align 16 !dbg !5023 {
entry:
  %sem.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5029, metadata !DIExpression()), !dbg !5032
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5030, metadata !DIExpression()), !dbg !5033
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5031, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5035
  %count = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5036
  call void @atomic_long_set(ptr noundef %count, i64 noundef 0) #9, !dbg !5037
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5038
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %1, i32 0, i32 2, !dbg !5039
  store i32 0, ptr %wait_readers, align 4, !dbg !5040
  br label %do.body, !dbg !5041

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5042
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %2, i32 0, i32 1, !dbg !5042
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5042
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5042
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5042
  store i32 0, ptr %counter, align 4, !dbg !5042
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %wait_lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5042
  br label %do.end, !dbg !5042

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !5044
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %4, i32 0, i32 3, !dbg !5045
  call void @INIT_LIST_HEAD(ptr noundef %read_wait) #9, !dbg !5046
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5047
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %5, i32 0, i32 4, !dbg !5048
  call void @INIT_LIST_HEAD(ptr noundef %write_wait) #9, !dbg !5049
  ret void, !dbg !5050
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !5051 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5056, metadata !DIExpression()), !dbg !5058
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5057, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5060
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #9, !dbg !5061
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5062
  %2 = load i64, ptr %i.addr, align 8, !dbg !5063
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #9, !dbg !5064
  ret void, !dbg !5065
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5066 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  br label %do.body, !dbg !5073

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5074

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5076

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5074

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5078
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5078
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5078
  store volatile ptr %0, ptr %next, align 8, !dbg !5078
  br label %do.end3, !dbg !5078

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5074

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5080

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5081

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5083

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5081

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5085
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5085
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5085
  store volatile ptr %2, ptr %prev, align 8, !dbg !5085
  br label %do.end9, !dbg !5085

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5081

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ldsem_down_read(ptr noundef %sem, i64 noundef %timeout) #0 section ".sched.text" align 16 !dbg !5088 {
entry:
  %sem.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5092, metadata !DIExpression()), !dbg !5094
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5093, metadata !DIExpression()), !dbg !5095
  br label %do.body, !dbg !5096

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !5097
  br label %do.end, !dbg !5097

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5099
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !5100
  %call = call i32 @__ldsem_down_read_nested(ptr noundef %0, i32 noundef 0, i64 noundef %1) #9, !dbg !5101
  ret i32 %call, !dbg !5102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #2 align 16 !dbg !2 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5103
  %0 = load ptr, ptr %tmp, align 8, !dbg !5103
  %call = call i32 %0() #9, !dbg !5105
  ret void, !dbg !5106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ldsem_down_read_nested(ptr noundef %sem, i32 noundef %subclass, i64 noundef %timeout) #0 align 16 !dbg !5107 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5111, metadata !DIExpression()), !dbg !5115
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !5112, metadata !DIExpression()), !dbg !5116
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5113, metadata !DIExpression()), !dbg !5117
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5114, metadata !DIExpression()), !dbg !5119
  br label %do.body, !dbg !5120

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5121

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5121

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5123
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5124
  %call = call i64 @atomic_long_add_return(i64 noundef 1, ptr noundef %count1) #9, !dbg !5125
  store i64 %call, ptr %count, align 8, !dbg !5126
  %1 = load i64, ptr %count, align 8, !dbg !5127
  %cmp = icmp sle i64 %1, 0, !dbg !5129
  br i1 %cmp, label %if.then, label %if.end10, !dbg !5130

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !5131

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !5133

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5133

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5135
  %3 = load i64, ptr %count, align 8, !dbg !5137
  %4 = load i64, ptr %timeout.addr, align 8, !dbg !5138
  %call5 = call ptr @down_read_failed(ptr noundef %2, i64 noundef %3, i64 noundef %4) #9, !dbg !5139
  %tobool = icmp ne ptr %call5, null, !dbg !5139
  br i1 %tobool, label %if.end, label %if.then6, !dbg !5140

if.then6:                                         ; preds = %do.end4
  br label %do.body7, !dbg !5141

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !5143

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5143

do.end9:                                          ; preds = %do.cond8
  store i32 0, ptr %retval, align 4, !dbg !5145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5145

if.end:                                           ; preds = %do.end4
  br label %if.end10, !dbg !5146

if.end10:                                         ; preds = %if.end, %do.end
  br label %do.body11, !dbg !5147

do.body11:                                        ; preds = %if.end10
  br label %do.cond12, !dbg !5148

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5148

do.end13:                                         ; preds = %do.cond12
  store i32 1, ptr %retval, align 4, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

cleanup:                                          ; preds = %do.end13, %do.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5151
  %5 = load i32, ptr %retval, align 4, !dbg !5151
  ret i32 %5, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ldsem_down_read_trylock(ptr noundef %sem) #0 align 16 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5156, metadata !DIExpression()), !dbg !5158
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5157, metadata !DIExpression()), !dbg !5160
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5161
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5162
  %call = call i64 @atomic_long_read(ptr noundef %count1) #9, !dbg !5163
  store i64 %call, ptr %count, align 8, !dbg !5160
  br label %while.cond, !dbg !5164

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %count, align 8, !dbg !5165
  %cmp = icmp sge i64 %1, 0, !dbg !5166
  br i1 %cmp, label %while.body, label %while.end, !dbg !5164

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5167
  %count2 = getelementptr inbounds %struct.ld_semaphore, ptr %2, i32 0, i32 0, !dbg !5170
  %3 = load i64, ptr %count, align 8, !dbg !5171
  %add = add i64 %3, 1, !dbg !5172
  %call3 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count2, ptr noundef %count, i64 noundef %add) #9, !dbg !5173
  br i1 %call3, label %if.then, label %if.end, !dbg !5174

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !5175

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5177

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5177

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5179

do.body4:                                         ; preds = %do.end
  br label %do.cond5, !dbg !5180

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5180

do.end6:                                          ; preds = %do.cond5
  store i32 1, ptr %retval, align 4, !dbg !5182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5182

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5164, !llvm.loop !5183

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5187

cleanup:                                          ; preds = %while.end, %do.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5188
  %4 = load i32, ptr %retval, align 4, !dbg !5188
  ret i32 %4, !dbg !5188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #2 align 16 !dbg !5189 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5197
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #9, !dbg !5198
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5199
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #9, !dbg !5200
  ret i64 %call, !dbg !5201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !5202 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5207, metadata !DIExpression()), !dbg !5210
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5208, metadata !DIExpression()), !dbg !5211
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5209, metadata !DIExpression()), !dbg !5212
  br label %do.body, !dbg !5213

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5214

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5216
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #9, !dbg !5217
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5218
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #9, !dbg !5219
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5220
  %3 = load ptr, ptr %old.addr, align 8, !dbg !5221
  %4 = load i64, ptr %new.addr, align 8, !dbg !5222
  %call = call zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %2, ptr noundef %3, i64 noundef %4) #9, !dbg !5223
  ret i1 %call, !dbg !5224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ldsem_down_write(ptr noundef %sem, i64 noundef %timeout) #0 section ".sched.text" align 16 !dbg !5225 {
entry:
  %sem.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5227, metadata !DIExpression()), !dbg !5229
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5228, metadata !DIExpression()), !dbg !5230
  br label %do.body, !dbg !5231

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !5232
  br label %do.end, !dbg !5232

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5234
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !5235
  %call = call i32 @__ldsem_down_write_nested(ptr noundef %0, i32 noundef 0, i64 noundef %1) #9, !dbg !5236
  ret i32 %call, !dbg !5237
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ldsem_down_write_nested(ptr noundef %sem, i32 noundef %subclass, i64 noundef %timeout) #0 align 16 !dbg !5238 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5240, metadata !DIExpression()), !dbg !5244
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !5241, metadata !DIExpression()), !dbg !5245
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5242, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5243, metadata !DIExpression()), !dbg !5248
  br label %do.body, !dbg !5249

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5250

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5250

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5252
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5253
  %call = call i64 @atomic_long_add_return(i64 noundef -4294967295, ptr noundef %count1) #9, !dbg !5254
  store i64 %call, ptr %count, align 8, !dbg !5255
  %1 = load i64, ptr %count, align 8, !dbg !5256
  %and = and i64 %1, 4294967295, !dbg !5258
  %cmp = icmp ne i64 %and, 1, !dbg !5259
  br i1 %cmp, label %if.then, label %if.end10, !dbg !5260

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !5261

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !5263

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5263

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5265
  %3 = load i64, ptr %count, align 8, !dbg !5267
  %4 = load i64, ptr %timeout.addr, align 8, !dbg !5268
  %call5 = call ptr @down_write_failed(ptr noundef %2, i64 noundef %3, i64 noundef %4) #9, !dbg !5269
  %tobool = icmp ne ptr %call5, null, !dbg !5269
  br i1 %tobool, label %if.end, label %if.then6, !dbg !5270

if.then6:                                         ; preds = %do.end4
  br label %do.body7, !dbg !5271

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !5273

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5273

do.end9:                                          ; preds = %do.cond8
  store i32 0, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

if.end:                                           ; preds = %do.end4
  br label %if.end10, !dbg !5276

if.end10:                                         ; preds = %if.end, %do.end
  br label %do.body11, !dbg !5277

do.body11:                                        ; preds = %if.end10
  br label %do.cond12, !dbg !5278

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5278

do.end13:                                         ; preds = %do.cond12
  store i32 1, ptr %retval, align 4, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

cleanup:                                          ; preds = %do.end13, %do.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5281
  %5 = load i32, ptr %retval, align 4, !dbg !5281
  ret i32 %5, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ldsem_down_write_trylock(ptr noundef %sem) #0 align 16 !dbg !5282 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5284, metadata !DIExpression()), !dbg !5286
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5285, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5289
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5290
  %call = call i64 @atomic_long_read(ptr noundef %count1) #9, !dbg !5291
  store i64 %call, ptr %count, align 8, !dbg !5288
  br label %while.cond, !dbg !5292

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %count, align 8, !dbg !5293
  %and = and i64 %1, 4294967295, !dbg !5294
  %cmp = icmp eq i64 %and, 0, !dbg !5295
  br i1 %cmp, label %while.body, label %while.end, !dbg !5292

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5296
  %count2 = getelementptr inbounds %struct.ld_semaphore, ptr %2, i32 0, i32 0, !dbg !5299
  %3 = load i64, ptr %count, align 8, !dbg !5300
  %add = add i64 %3, -4294967295, !dbg !5301
  %call3 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count2, ptr noundef %count, i64 noundef %add) #9, !dbg !5302
  br i1 %call3, label %if.then, label %if.end, !dbg !5303

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !5304

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5306

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5306

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5308

do.body4:                                         ; preds = %do.end
  br label %do.cond5, !dbg !5309

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5309

do.end6:                                          ; preds = %do.cond5
  store i32 1, ptr %retval, align 4, !dbg !5311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5311

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5292, !llvm.loop !5312

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

cleanup:                                          ; preds = %while.end, %do.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5315
  %4 = load i32, ptr %retval, align 4, !dbg !5315
  ret i32 %4, !dbg !5315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ldsem_up_read(ptr noundef %sem) #0 align 16 !dbg !5316 {
entry:
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5321, metadata !DIExpression()), !dbg !5324
  br label %do.body, !dbg !5325

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5326

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5328
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5329
  %call = call i64 @atomic_long_add_return(i64 noundef -1, ptr noundef %count1) #9, !dbg !5330
  store i64 %call, ptr %count, align 8, !dbg !5331
  %1 = load i64, ptr %count, align 8, !dbg !5332
  %cmp = icmp slt i64 %1, 0, !dbg !5334
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5335

land.lhs.true:                                    ; preds = %do.end
  %2 = load i64, ptr %count, align 8, !dbg !5336
  %and = and i64 %2, 4294967295, !dbg !5337
  %cmp2 = icmp eq i64 %and, 0, !dbg !5338
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5339

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !5340
  call void @ldsem_wake(ptr noundef %3) #9, !dbg !5341
  br label %if.end, !dbg !5341

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5342
  ret void, !dbg !5342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5343 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5347, metadata !DIExpression()), !dbg !5349
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5348, metadata !DIExpression()), !dbg !5350
  br label %do.body, !dbg !5351

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5352

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5354
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #9, !dbg !5355
  %1 = load i64, ptr %i.addr, align 8, !dbg !5356
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5357
  %call = call i64 @raw_atomic_long_add_return(i64 noundef %1, ptr noundef %2) #9, !dbg !5358
  ret i64 %call, !dbg !5359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ldsem_wake(ptr noundef %sem) #0 align 16 !dbg !5360 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5362, metadata !DIExpression()), !dbg !5372
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5373
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5363, metadata !DIExpression()), !dbg !5374
  br label %do.body, !dbg !5375

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5364, metadata !DIExpression()), !dbg !5376
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5367, metadata !DIExpression()), !dbg !5376
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5376
  %conv = zext i1 %cmp to i32, !dbg !5376
  store i32 1, ptr %tmp, align 4, !dbg !5376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5377
  %0 = load i32, ptr %tmp, align 4, !dbg !5376
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5377
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %1, i32 0, i32 1, !dbg !5377
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #9, !dbg !5377
  store i64 %call, ptr %flags, align 8, !dbg !5377
  br label %do.cond, !dbg !5377

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5377

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5378
  call void @__ldsem_wake(ptr noundef %2) #9, !dbg !5379
  br label %do.body1, !dbg !5380

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #10, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !5368, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #10, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !5371, metadata !DIExpression()), !dbg !5381
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !5381
  %conv6 = zext i1 %cmp5 to i32, !dbg !5381
  store i32 1, ptr %tmp7, align 4, !dbg !5381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #10, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #10, !dbg !5382
  %3 = load i32, ptr %tmp7, align 4, !dbg !5381
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !5382
  %wait_lock8 = getelementptr inbounds %struct.ld_semaphore, ptr %4, i32 0, i32 1, !dbg !5382
  %5 = load i64, ptr %flags, align 8, !dbg !5382
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock8, i64 noundef %5) #9, !dbg !5382
  br label %do.cond9, !dbg !5382

do.cond9:                                         ; preds = %do.body1
  br label %do.end10, !dbg !5382

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5383
  ret void, !dbg !5383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ldsem_up_write(ptr noundef %sem) #0 align 16 !dbg !5384 {
entry:
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5386, metadata !DIExpression()), !dbg !5388
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5387, metadata !DIExpression()), !dbg !5390
  br label %do.body, !dbg !5391

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5392

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5392

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5394
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !5395
  %call = call i64 @atomic_long_add_return(i64 noundef 4294967295, ptr noundef %count1) #9, !dbg !5396
  store i64 %call, ptr %count, align 8, !dbg !5397
  %1 = load i64, ptr %count, align 8, !dbg !5398
  %cmp = icmp slt i64 %1, 0, !dbg !5400
  br i1 %cmp, label %if.then, label %if.end, !dbg !5401

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5402
  call void @ldsem_wake(ptr noundef %2) #9, !dbg !5403
  br label %if.end, !dbg !5403

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5404
  ret void, !dbg !5404
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5405 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5413, metadata !DIExpression()), !dbg !5415
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5414, metadata !DIExpression()), !dbg !5416
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5417
  %1 = load i64, ptr %size.addr, align 8, !dbg !5418
  %conv = trunc i64 %1 to i32, !dbg !5418
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5419
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5420
  %3 = load i64, ptr %size.addr, align 8, !dbg !5420
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !5420
  ret void, !dbg !5421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !5422 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5425, metadata !DIExpression()), !dbg !5427
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5428
  %1 = load i64, ptr %i.addr, align 8, !dbg !5429
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #9, !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5432 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5437, metadata !DIExpression()), !dbg !5439
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5438, metadata !DIExpression()), !dbg !5440
  ret i1 true, !dbg !5441
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5442 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5447, metadata !DIExpression()), !dbg !5450
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5449, metadata !DIExpression()), !dbg !5452
  ret void, !dbg !5453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !5454 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5460, metadata !DIExpression()), !dbg !5462
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5461, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5464
  %1 = load i64, ptr %i.addr, align 8, !dbg !5465
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #9, !dbg !5466
  ret void, !dbg !5467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !5468 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5471, metadata !DIExpression()), !dbg !5473
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5472, metadata !DIExpression()), !dbg !5474
  br label %do.body, !dbg !5475

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !5476
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5476
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5476
  store volatile i64 %0, ptr %counter, align 8, !dbg !5476
  br label %do.end, !dbg !5476

do.end:                                           ; preds = %do.body
  ret void, !dbg !5478
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @down_read_failed(ptr noundef %sem, i64 noundef %count, i64 noundef %timeout) #0 section ".sched.text" align 16 !dbg !5479 {
entry:
  %retval = alloca ptr, align 8
  %sem.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %waiter = alloca %struct.ldsem_waiter, align 8
  %adjust = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp36 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5483, metadata !DIExpression()), !dbg !5501
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5484, metadata !DIExpression()), !dbg !5502
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5485, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 24, ptr %waiter) #10, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !5486, metadata !DIExpression()), !dbg !5505
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjust) #10, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %adjust, metadata !5487, metadata !DIExpression()), !dbg !5507
  store i64 -4294967297, ptr %adjust, align 8, !dbg !5507
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5508
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1, !dbg !5508
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9, !dbg !5508
  br label %do.body, !dbg !5509

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5510
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %1, i32 0, i32 0, !dbg !5513
  %2 = load i64, ptr %count.addr, align 8, !dbg !5514
  %3 = load i64, ptr %adjust, align 8, !dbg !5515
  %add = add i64 %2, %3, !dbg !5516
  %call = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count1, ptr noundef %count.addr, i64 noundef %add) #9, !dbg !5517
  br i1 %call, label %if.then, label %if.end, !dbg !5518

if.then:                                          ; preds = %do.body
  %4 = load i64, ptr %adjust, align 8, !dbg !5519
  %5 = load i64, ptr %count.addr, align 8, !dbg !5521
  %add2 = add i64 %5, %4, !dbg !5521
  store i64 %add2, ptr %count.addr, align 8, !dbg !5521
  br label %do.end, !dbg !5522

if.end:                                           ; preds = %do.body
  %6 = load i64, ptr %count.addr, align 8, !dbg !5523
  %cmp = icmp sgt i64 %6, 0, !dbg !5525
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5526

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !5527
  %wait_lock4 = getelementptr inbounds %struct.ld_semaphore, ptr %7, i32 0, i32 1, !dbg !5527
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock4) #9, !dbg !5527
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !5529
  store ptr %8, ptr %retval, align 8, !dbg !5530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5530

if.end5:                                          ; preds = %if.end
  br label %do.cond, !dbg !5531

do.cond:                                          ; preds = %if.end5
  br i1 true, label %do.body, label %do.end, !dbg !5531, !llvm.loop !5532

do.end:                                           ; preds = %do.cond, %if.then
  %list = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 0, !dbg !5534
  %9 = load ptr, ptr %sem.addr, align 8, !dbg !5535
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %9, i32 0, i32 3, !dbg !5536
  call void @list_add_tail(ptr noundef %list, ptr noundef %read_wait) #9, !dbg !5537
  %10 = load ptr, ptr %sem.addr, align 8, !dbg !5538
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %10, i32 0, i32 2, !dbg !5539
  %11 = load i32, ptr %wait_readers, align 4, !dbg !5540
  %inc = add i32 %11, 1, !dbg !5540
  store i32 %inc, ptr %wait_readers, align 4, !dbg !5540
  %call6 = call ptr @get_current() #9, !dbg !5541
  %task = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !5542
  store ptr %call6, ptr %task, align 8, !dbg !5543
  %call7 = call ptr @get_current() #9, !dbg !5544
  %call8 = call ptr @get_task_struct(ptr noundef %call7) #9, !dbg !5545
  %12 = load i64, ptr %count.addr, align 8, !dbg !5546
  %and = and i64 %12, 4294967295, !dbg !5548
  %cmp9 = icmp eq i64 %and, 0, !dbg !5549
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5550

if.then10:                                        ; preds = %do.end
  %13 = load ptr, ptr %sem.addr, align 8, !dbg !5551
  call void @__ldsem_wake(ptr noundef %13) #9, !dbg !5552
  br label %if.end11, !dbg !5552

if.end11:                                         ; preds = %if.then10, %do.end
  %14 = load ptr, ptr %sem.addr, align 8, !dbg !5553
  %wait_lock12 = getelementptr inbounds %struct.ld_semaphore, ptr %14, i32 0, i32 1, !dbg !5553
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock12) #9, !dbg !5553
  br label %for.cond, !dbg !5554

for.cond:                                         ; preds = %if.end46, %if.end11
  br label %do.body13, !dbg !5555

do.body13:                                        ; preds = %for.cond
  br label %do.body14, !dbg !5556

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !5557

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5557

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5556

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !5559

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !5560

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5560

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5559

do.body21:                                        ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #10, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5488, metadata !DIExpression()), !dbg !5562
  %call22 = call ptr @get_current() #9, !dbg !5562
  %__state = getelementptr inbounds %struct.task_struct, ptr %call22, i32 0, i32 1, !dbg !5562
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5562
  br label %do.body23, !dbg !5562

do.body23:                                        ; preds = %do.body21
  br label %do.cond24, !dbg !5563

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5563

do.end25:                                         ; preds = %do.cond24
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !5562
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 4) #9, !dbg !5562
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5496, metadata !DIExpression()), !dbg !5565
  store i32 2, ptr %__ret, align 4, !dbg !5565
  %16 = load i32, ptr %__ret, align 4, !dbg !5565
  %17 = load ptr, ptr %__ai_ptr, align 8, !dbg !5565
  %18 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %17, i32 %16, ptr elementtype(i32) %17) #10, !dbg !5565, !srcloc !5566
  store i32 %18, ptr %__ret, align 4, !dbg !5565
  %19 = load i32, ptr %__ret, align 4, !dbg !5565
  store i32 %19, ptr %tmp26, align 4, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !5562
  %20 = load i32, ptr %tmp26, align 4, !dbg !5565
  store i32 %20, ptr %tmp, align 4, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #10, !dbg !5567
  %21 = load i32, ptr %tmp, align 4, !dbg !5562
  br label %do.cond27, !dbg !5567

do.cond27:                                        ; preds = %do.end25
  br label %do.end28, !dbg !5567

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !5559

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5559

do.end30:                                         ; preds = %do.cond29
  br label %do.cond31, !dbg !5556

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !5556

do.end32:                                         ; preds = %do.cond31
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #10, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5498, metadata !DIExpression()), !dbg !5568
  br label %do.body33, !dbg !5569

do.body33:                                        ; preds = %do.end32
  br label %do.cond34, !dbg !5571

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5571

do.end35:                                         ; preds = %do.cond34
  %task37 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !5569
  %22 = load volatile ptr, ptr %task37, align 8, !dbg !5569
  store ptr %22, ptr %tmp36, align 8, !dbg !5571
  %23 = load ptr, ptr %tmp36, align 8, !dbg !5569
  store ptr %23, ptr %___p1, align 8, !dbg !5568
  br label %do.body38, !dbg !5568

do.body38:                                        ; preds = %do.end35
  br label %do.cond39, !dbg !5573

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5573

do.end40:                                         ; preds = %do.cond39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5568, !srcloc !5575
  %24 = load ptr, ptr %___p1, align 8, !dbg !5568
  store ptr %24, ptr %tmp41, align 8, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #10, !dbg !5576
  %25 = load ptr, ptr %tmp41, align 8, !dbg !5568
  %tobool = icmp ne ptr %25, null, !dbg !5576
  br i1 %tobool, label %if.end43, label %if.then42, !dbg !5577

if.then42:                                        ; preds = %do.end40
  br label %for.end, !dbg !5578

if.end43:                                         ; preds = %do.end40
  %26 = load i64, ptr %timeout.addr, align 8, !dbg !5579
  %tobool44 = icmp ne i64 %26, 0, !dbg !5579
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !5581

if.then45:                                        ; preds = %if.end43
  br label %for.end, !dbg !5582

if.end46:                                         ; preds = %if.end43
  %27 = load i64, ptr %timeout.addr, align 8, !dbg !5583
  %call47 = call i64 @schedule_timeout(i64 noundef %27) #9, !dbg !5584
  store i64 %call47, ptr %timeout.addr, align 8, !dbg !5585
  br label %for.cond, !dbg !5586, !llvm.loop !5587

for.end:                                          ; preds = %if.then45, %if.then42
  br label %do.body48, !dbg !5590

do.body48:                                        ; preds = %for.end
  br label %do.body49, !dbg !5591

do.body49:                                        ; preds = %do.body48
  br label %do.cond50, !dbg !5593

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5593

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !5591

do.body52:                                        ; preds = %do.end51
  br label %do.body53, !dbg !5595

do.body53:                                        ; preds = %do.body52
  br label %do.cond54, !dbg !5597

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5597

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !5595

do.body56:                                        ; preds = %do.end55
  %call57 = call ptr @get_current() #9, !dbg !5599
  %__state58 = getelementptr inbounds %struct.task_struct, ptr %call57, i32 0, i32 1, !dbg !5599
  store volatile i32 0, ptr %__state58, align 8, !dbg !5599
  br label %do.cond59, !dbg !5599

do.cond59:                                        ; preds = %do.body56
  br label %do.end60, !dbg !5599

do.end60:                                         ; preds = %do.cond59
  br label %do.cond61, !dbg !5595

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !5595

do.end62:                                         ; preds = %do.cond61
  br label %do.cond63, !dbg !5591

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !5591

do.end64:                                         ; preds = %do.cond63
  %28 = load i64, ptr %timeout.addr, align 8, !dbg !5601
  %tobool65 = icmp ne i64 %28, 0, !dbg !5601
  br i1 %tobool65, label %if.end79, label %if.then66, !dbg !5603

if.then66:                                        ; preds = %do.end64
  %29 = load ptr, ptr %sem.addr, align 8, !dbg !5604
  %wait_lock67 = getelementptr inbounds %struct.ld_semaphore, ptr %29, i32 0, i32 1, !dbg !5604
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock67) #9, !dbg !5604
  %task68 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !5606
  %30 = load ptr, ptr %task68, align 8, !dbg !5606
  %tobool69 = icmp ne ptr %30, null, !dbg !5608
  br i1 %tobool69, label %if.then70, label %if.end77, !dbg !5609

if.then70:                                        ; preds = %if.then66
  %31 = load ptr, ptr %sem.addr, align 8, !dbg !5610
  %count71 = getelementptr inbounds %struct.ld_semaphore, ptr %31, i32 0, i32 0, !dbg !5612
  %call72 = call i64 @atomic_long_add_return(i64 noundef 4294967296, ptr noundef %count71) #9, !dbg !5613
  %32 = load ptr, ptr %sem.addr, align 8, !dbg !5614
  %wait_readers73 = getelementptr inbounds %struct.ld_semaphore, ptr %32, i32 0, i32 2, !dbg !5615
  %33 = load i32, ptr %wait_readers73, align 4, !dbg !5616
  %dec = add i32 %33, -1, !dbg !5616
  store i32 %dec, ptr %wait_readers73, align 4, !dbg !5616
  %list74 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 0, !dbg !5617
  call void @list_del(ptr noundef %list74) #9, !dbg !5618
  %34 = load ptr, ptr %sem.addr, align 8, !dbg !5619
  %wait_lock75 = getelementptr inbounds %struct.ld_semaphore, ptr %34, i32 0, i32 1, !dbg !5619
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock75) #9, !dbg !5619
  %task76 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !5620
  %35 = load ptr, ptr %task76, align 8, !dbg !5620
  call void @put_task_struct(ptr noundef %35) #9, !dbg !5621
  store ptr null, ptr %retval, align 8, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

if.end77:                                         ; preds = %if.then66
  %36 = load ptr, ptr %sem.addr, align 8, !dbg !5623
  %wait_lock78 = getelementptr inbounds %struct.ld_semaphore, ptr %36, i32 0, i32 1, !dbg !5623
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock78) #9, !dbg !5623
  br label %if.end79, !dbg !5624

if.end79:                                         ; preds = %if.end77, %do.end64
  %37 = load ptr, ptr %sem.addr, align 8, !dbg !5625
  store ptr %37, ptr %retval, align 8, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5626

cleanup:                                          ; preds = %if.end79, %if.then70, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjust) #10, !dbg !5627
  call void @llvm.lifetime.end.p0(i64 24, ptr %waiter) #10, !dbg !5627
  %38 = load ptr, ptr %retval, align 8, !dbg !5627
  ret ptr %38, !dbg !5627
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5628 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5633 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5634 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5638, metadata !DIExpression()), !dbg !5640
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5639, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5642
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5643
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5644
  %2 = load ptr, ptr %prev, align 8, !dbg !5644
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5645
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !5646
  ret void, !dbg !5647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !5648 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5653, metadata !DIExpression()), !dbg !5659
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5655, metadata !DIExpression()), !dbg !5660
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5660
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5659
  br label %do.cond, !dbg !5660

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5660

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5657, metadata !DIExpression()), !dbg !5661
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !5661, !srcloc !5662
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5661
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5661
  %3 = inttoptr i64 %2 to ptr, !dbg !5661
  store ptr %3, ptr %tmp, align 8, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !5659
  %4 = load ptr, ptr %tmp, align 8, !dbg !5661
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5659
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5659
  store ptr %5, ptr %tmp1, align 8, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5663
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5659
  ret ptr %6, !dbg !5664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #4 align 16 !dbg !5665 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5671
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !5672
  call void @refcount_inc(ptr noundef %usage) #9, !dbg !5673
  %1 = load ptr, ptr %t.addr, align 8, !dbg !5674
  ret ptr %1, !dbg !5675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ldsem_wake(ptr noundef %sem) #0 align 16 !dbg !5676 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5680
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4, !dbg !5682
  %call = call i32 @list_empty(ptr noundef %write_wait) #9, !dbg !5683
  %tobool = icmp ne i32 %call, 0, !dbg !5683
  br i1 %tobool, label %if.else, label %if.then, !dbg !5684

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5685
  call void @__ldsem_wake_writer(ptr noundef %1) #9, !dbg !5686
  br label %if.end4, !dbg !5686

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5687
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %2, i32 0, i32 3, !dbg !5689
  %call1 = call i32 @list_empty(ptr noundef %read_wait) #9, !dbg !5690
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5690
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5691

if.then3:                                         ; preds = %if.else
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !5692
  call void @__ldsem_wake_readers(ptr noundef %3) #9, !dbg !5693
  br label %if.end, !dbg !5693

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !5694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5695 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5697, metadata !DIExpression()), !dbg !5699
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5698, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5701
  %1 = load i64, ptr %size.addr, align 8, !dbg !5702
  %conv = trunc i64 %1 to i32, !dbg !5702
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5703
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5704
  %3 = load i64, ptr %size.addr, align 8, !dbg !5704
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !5704
  ret void, !dbg !5705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5706 dso_local i64 @schedule_timeout(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5709 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5713
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5714
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5715
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5716
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5717
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5718
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5719
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5720
  ret void, !dbg !5721
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #4 align 16 !dbg !5008 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5013, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5723
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !5725
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #9, !dbg !5726
  br i1 %call, label %if.end, label %if.then, !dbg !5727

if.then:                                          ; preds = %entry
  br label %return, !dbg !5728

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5729

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5732

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !5734
  call void @__put_task_struct(ptr noundef %1) #9, !dbg !5735
  br label %do.body1, !dbg !5736

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5737

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !5739

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5741 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5745, metadata !DIExpression()), !dbg !5748
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5746, metadata !DIExpression()), !dbg !5749
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5747, metadata !DIExpression()), !dbg !5750
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5751
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5753
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5754
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !5755
  br i1 %call, label %if.end, label %if.then, !dbg !5756

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5757

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5758
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5759
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5760
  store ptr %3, ptr %prev1, align 8, !dbg !5761
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5762
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5763
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5764
  store ptr %5, ptr %next2, align 8, !dbg !5765
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5766
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5767
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5768
  store ptr %7, ptr %prev3, align 8, !dbg !5769
  br label %do.body, !dbg !5770

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5771

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5773

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5771

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5775
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5775
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5775
  store volatile ptr %9, ptr %next6, align 8, !dbg !5775
  br label %do.end7, !dbg !5775

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5771

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5778 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5782, metadata !DIExpression()), !dbg !5785
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5783, metadata !DIExpression()), !dbg !5786
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5784, metadata !DIExpression()), !dbg !5787
  ret i1 true, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !5789 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5796
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #9, !dbg !5797
  ret void, !dbg !5798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5799 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5803, metadata !DIExpression()), !dbg !5805
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5804, metadata !DIExpression()), !dbg !5806
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5807
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5808
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !5809
  ret void, !dbg !5810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5811 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5815, metadata !DIExpression()), !dbg !5819
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5816, metadata !DIExpression()), !dbg !5820
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5817, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5818, metadata !DIExpression()), !dbg !5823
  %0 = load i32, ptr %i.addr, align 4, !dbg !5824
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5825
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5826
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #9, !dbg !5827
  store i32 %call, ptr %old, align 4, !dbg !5823
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5828
  %tobool = icmp ne ptr %2, null, !dbg !5828
  br i1 %tobool, label %if.then, label %if.end, !dbg !5830

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5831
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5832
  store i32 %3, ptr %4, align 4, !dbg !5833
  br label %if.end, !dbg !5834

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5835
  %tobool1 = icmp ne i32 %5, 0, !dbg !5835
  %lnot = xor i1 %tobool1, true, !dbg !5835
  %lnot2 = xor i1 %lnot, true, !dbg !5835
  %lnot3 = xor i1 %lnot2, true, !dbg !5835
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5835
  %conv = sext i32 %lnot.ext to i64, !dbg !5835
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5835
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5835
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5837

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5838
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #9, !dbg !5839
  br label %if.end18, !dbg !5839

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5840
  %cmp = icmp slt i32 %7, 0, !dbg !5840
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5840

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5840
  %9 = load i32, ptr %i.addr, align 4, !dbg !5840
  %add = add i32 %8, %9, !dbg !5840
  %cmp7 = icmp slt i32 %add, 0, !dbg !5840
  br label %lor.end, !dbg !5840

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5840
  %lnot11 = xor i1 %lnot9, true, !dbg !5840
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5840
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5840
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5840
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5840
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5842

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5843
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #9, !dbg !5844
  br label %if.end17, !dbg !5844

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !5845
  ret void, !dbg !5845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5846 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5851, metadata !DIExpression()), !dbg !5853
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5852, metadata !DIExpression()), !dbg !5854
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5855
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5856
  %1 = load i32, ptr %i.addr, align 4, !dbg !5857
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5858
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #9, !dbg !5859
  ret i32 %call, !dbg !5860
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5861 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5864 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5866, metadata !DIExpression()), !dbg !5868
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5867, metadata !DIExpression()), !dbg !5869
  %0 = load i32, ptr %i.addr, align 4, !dbg !5870
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5871
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #9, !dbg !5872
  ret i32 %call, !dbg !5873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5874 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5877, metadata !DIExpression()), !dbg !5881
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5878, metadata !DIExpression()), !dbg !5882
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5879, metadata !DIExpression()), !dbg !5883
  %0 = load i32, ptr %i.addr, align 4, !dbg !5883
  store i32 %0, ptr %__ret, align 4, !dbg !5883
  %1 = load i32, ptr %__ret, align 4, !dbg !5883
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5883
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5883
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !5883, !srcloc !5884
  store i32 %3, ptr %__ret, align 4, !dbg !5883
  %4 = load i32, ptr %__ret, align 4, !dbg !5883
  store i32 %4, ptr %tmp, align 4, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !5885
  %5 = load i32, ptr %tmp, align 4, !dbg !5883
  ret i32 %5, !dbg !5886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !5887 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  br label %do.body, !dbg !5895

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5897

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5895
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5895
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5895
  store ptr %1, ptr %tmp, align 8, !dbg !5897
  %2 = load ptr, ptr %tmp, align 8, !dbg !5895
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5899
  %cmp = icmp eq ptr %2, %3, !dbg !5900
  %conv = zext i1 %cmp to i32, !dbg !5900
  ret i32 %conv, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ldsem_wake_writer(ptr noundef %sem) #0 align 16 !dbg !5902 {
entry:
  %sem.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5904, metadata !DIExpression()), !dbg !5908
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #10, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !5905, metadata !DIExpression()), !dbg !5910
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5911
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5906, metadata !DIExpression()), !dbg !5911
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5911
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4, !dbg !5911
  %next = getelementptr inbounds %struct.list_head, ptr %write_wait, i32 0, i32 0, !dbg !5911
  %1 = load ptr, ptr %next, align 8, !dbg !5911
  store ptr %1, ptr %__mptr, align 8, !dbg !5911
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5911
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5911
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5912
  %3 = load ptr, ptr %tmp, align 8, !dbg !5911
  store ptr %3, ptr %waiter, align 8, !dbg !5913
  %4 = load ptr, ptr %waiter, align 8, !dbg !5914
  %task = getelementptr inbounds %struct.ldsem_waiter, ptr %4, i32 0, i32 1, !dbg !5915
  %5 = load ptr, ptr %task, align 8, !dbg !5915
  %call = call i32 @wake_up_process(ptr noundef %5) #9, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #10, !dbg !5917
  ret void, !dbg !5917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ldsem_wake_readers(ptr noundef %sem) #0 align 16 !dbg !5918 {
entry:
  %sem.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %next = alloca ptr, align 8
  %tsk = alloca ptr, align 8
  %adjust = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5920, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #10, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !5921, metadata !DIExpression()), !dbg !5936
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5922, metadata !DIExpression()), !dbg !5937
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #10, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !5923, metadata !DIExpression()), !dbg !5939
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjust) #10, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %adjust, metadata !5924, metadata !DIExpression()), !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5925, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5943
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 2, !dbg !5944
  %1 = load i32, ptr %wait_readers, align 4, !dbg !5944
  %conv = zext i32 %1 to i64, !dbg !5943
  %mul = mul i64 %conv, 4294967297, !dbg !5945
  store i64 %mul, ptr %adjust, align 8, !dbg !5946
  %2 = load i64, ptr %adjust, align 8, !dbg !5947
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !5948
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %3, i32 0, i32 0, !dbg !5949
  %call = call i64 @atomic_long_add_return(i64 noundef %2, ptr noundef %count1) #9, !dbg !5950
  store i64 %call, ptr %count, align 8, !dbg !5951
  br label %do.body, !dbg !5952

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i64, ptr %count, align 8, !dbg !5953
  %cmp = icmp sgt i64 %4, 0, !dbg !5956
  br i1 %cmp, label %if.then, label %if.end, !dbg !5957

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5958

if.end:                                           ; preds = %do.body
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5959
  %count3 = getelementptr inbounds %struct.ld_semaphore, ptr %5, i32 0, i32 0, !dbg !5961
  %6 = load i64, ptr %count, align 8, !dbg !5962
  %7 = load i64, ptr %adjust, align 8, !dbg !5963
  %sub = sub i64 %6, %7, !dbg !5964
  %call4 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count3, ptr noundef %count, i64 noundef %sub) #9, !dbg !5965
  br i1 %call4, label %if.then5, label %if.end6, !dbg !5966

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end6:                                          ; preds = %if.end
  br label %do.cond, !dbg !5968

do.cond:                                          ; preds = %if.end6
  br i1 true, label %do.body, label %do.end, !dbg !5968, !llvm.loop !5969

do.end:                                           ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5926, metadata !DIExpression()), !dbg !5971
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !5971
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %8, i32 0, i32 3, !dbg !5971
  %next7 = getelementptr inbounds %struct.list_head, ptr %read_wait, i32 0, i32 0, !dbg !5971
  %9 = load ptr, ptr %next7, align 8, !dbg !5971
  store ptr %9, ptr %__mptr, align 8, !dbg !5971
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5971
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !5971
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5972
  %11 = load ptr, ptr %tmp, align 8, !dbg !5971
  store ptr %11, ptr %waiter, align 8, !dbg !5972
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #10, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5929, metadata !DIExpression()), !dbg !5973
  %12 = load ptr, ptr %waiter, align 8, !dbg !5973
  %list = getelementptr inbounds %struct.ldsem_waiter, ptr %12, i32 0, i32 0, !dbg !5973
  %next9 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5973
  %13 = load ptr, ptr %next9, align 8, !dbg !5973
  store ptr %13, ptr %__mptr8, align 8, !dbg !5973
  %14 = load ptr, ptr %__mptr8, align 8, !dbg !5973
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !5973
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5973
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #10, !dbg !5972
  %15 = load ptr, ptr %tmp10, align 8, !dbg !5973
  store ptr %15, ptr %next, align 8, !dbg !5972
  br label %for.cond, !dbg !5972

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load ptr, ptr %waiter, align 8, !dbg !5974
  %list12 = getelementptr inbounds %struct.ldsem_waiter, ptr %16, i32 0, i32 0, !dbg !5974
  %17 = load ptr, ptr %sem.addr, align 8, !dbg !5974
  %read_wait13 = getelementptr inbounds %struct.ld_semaphore, ptr %17, i32 0, i32 3, !dbg !5974
  %cmp14 = icmp eq ptr %list12, %read_wait13, !dbg !5974
  %lnot = xor i1 %cmp14, true, !dbg !5974
  br i1 %lnot, label %for.body, label %for.end, !dbg !5972

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %waiter, align 8, !dbg !5975
  %task = getelementptr inbounds %struct.ldsem_waiter, ptr %18, i32 0, i32 1, !dbg !5977
  %19 = load ptr, ptr %task, align 8, !dbg !5977
  store ptr %19, ptr %tsk, align 8, !dbg !5978
  br label %do.body16, !dbg !5979

do.body16:                                        ; preds = %for.body
  br label %do.body17, !dbg !5980

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !5982

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5982

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5980

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !5984

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !5986

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5986

do.end23:                                         ; preds = %do.cond22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5984, !srcloc !5988
  br label %do.body24, !dbg !5984

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !5989

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !5991

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5991

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5989

do.body28:                                        ; preds = %do.end27
  %20 = load ptr, ptr %waiter, align 8, !dbg !5993
  %task29 = getelementptr inbounds %struct.ldsem_waiter, ptr %20, i32 0, i32 1, !dbg !5993
  store volatile ptr null, ptr %task29, align 8, !dbg !5993
  br label %do.cond30, !dbg !5993

do.cond30:                                        ; preds = %do.body28
  br label %do.end31, !dbg !5993

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5989

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5989

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !5984

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5984

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !5980

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !5980

do.end37:                                         ; preds = %do.cond36
  %21 = load ptr, ptr %tsk, align 8, !dbg !5995
  %call38 = call i32 @wake_up_process(ptr noundef %21) #9, !dbg !5996
  %22 = load ptr, ptr %tsk, align 8, !dbg !5997
  call void @put_task_struct(ptr noundef %22) #9, !dbg !5998
  br label %for.inc, !dbg !5999

for.inc:                                          ; preds = %do.end37
  %23 = load ptr, ptr %next, align 8, !dbg !5974
  store ptr %23, ptr %waiter, align 8, !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr39) #10, !dbg !6000
  call void @llvm.dbg.declare(metadata ptr %__mptr39, metadata !5931, metadata !DIExpression()), !dbg !6000
  %24 = load ptr, ptr %next, align 8, !dbg !6000
  %list40 = getelementptr inbounds %struct.ldsem_waiter, ptr %24, i32 0, i32 0, !dbg !6000
  %next41 = getelementptr inbounds %struct.list_head, ptr %list40, i32 0, i32 0, !dbg !6000
  %25 = load ptr, ptr %next41, align 8, !dbg !6000
  store ptr %25, ptr %__mptr39, align 8, !dbg !6000
  %26 = load ptr, ptr %__mptr39, align 8, !dbg !6000
  %add.ptr43 = getelementptr i8, ptr %26, i64 0, !dbg !6000
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !6000
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr39) #10, !dbg !5974
  %27 = load ptr, ptr %tmp42, align 8, !dbg !6000
  store ptr %27, ptr %next, align 8, !dbg !5974
  br label %for.cond, !dbg !5974, !llvm.loop !6001

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %sem.addr, align 8, !dbg !6003
  %read_wait44 = getelementptr inbounds %struct.ld_semaphore, ptr %28, i32 0, i32 3, !dbg !6004
  call void @INIT_LIST_HEAD(ptr noundef %read_wait44) #9, !dbg !6005
  %29 = load ptr, ptr %sem.addr, align 8, !dbg !6006
  %wait_readers45 = getelementptr inbounds %struct.ld_semaphore, ptr %29, i32 0, i32 2, !dbg !6007
  store i32 0, ptr %wait_readers45, align 4, !dbg !6008
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6009
  br label %cleanup, !dbg !6009

cleanup:                                          ; preds = %for.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjust) #10, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #10, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #10, !dbg !6009
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6009

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6010 dso_local i32 @wake_up_process(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6013 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6017
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !6019
  br i1 %call, label %if.end, label %if.then, !dbg !6020

if.then:                                          ; preds = %entry
  br label %return, !dbg !6021

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6022
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6023
  %2 = load ptr, ptr %prev, align 8, !dbg !6023
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6024
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6025
  %4 = load ptr, ptr %next, align 8, !dbg !6025
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !6026
  br label %return, !dbg !6027

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6028 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  ret i1 true, !dbg !6034
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6035 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6037, metadata !DIExpression()), !dbg !6039
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6038, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6041
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6042
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6043
  store ptr %0, ptr %prev1, align 8, !dbg !6044
  br label %do.body, !dbg !6045

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6046

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6048

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6046

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6050
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6050
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6050
  store volatile ptr %2, ptr %next4, align 8, !dbg !6050
  br label %do.end5, !dbg !6050

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6046

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !6053 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6059
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #9, !dbg !6060
  ret i1 %call, !dbg !6061
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local void @__put_task_struct(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6063 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6068, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6071
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6072
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !6073
  ret i1 %call, !dbg !6074
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6075 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6079, metadata !DIExpression()), !dbg !6083
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6080, metadata !DIExpression()), !dbg !6084
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6081, metadata !DIExpression()), !dbg !6085
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6082, metadata !DIExpression()), !dbg !6087
  %0 = load i32, ptr %i.addr, align 4, !dbg !6088
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6089
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6090
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #9, !dbg !6091
  store i32 %call, ptr %old, align 4, !dbg !6087
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6092
  %tobool = icmp ne ptr %2, null, !dbg !6092
  br i1 %tobool, label %if.then, label %if.end, !dbg !6094

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6095
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6096
  store i32 %3, ptr %4, align 4, !dbg !6097
  br label %if.end, !dbg !6098

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6099
  %6 = load i32, ptr %i.addr, align 4, !dbg !6101
  %cmp = icmp eq i32 %5, %6, !dbg !6102
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6103

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6104

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6106

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6108

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6108

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6106

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6110

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6112

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6112

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6110, !srcloc !6114
  br label %do.cond7, !dbg !6110

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6110

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6106

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6106

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6115

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6116
  %cmp12 = icmp slt i32 %7, 0, !dbg !6116
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6116

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6116
  %9 = load i32, ptr %i.addr, align 4, !dbg !6116
  %sub = sub i32 %8, %9, !dbg !6116
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6116
  br label %lor.end, !dbg !6116

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6116
  %lnot14 = xor i1 %lnot, true, !dbg !6116
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6116
  %conv = sext i32 %lnot.ext to i64, !dbg !6116
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6116
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6116
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6118

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6119
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #9, !dbg !6120
  br label %if.end17, !dbg !6120

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6121

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !6122
  %12 = load i1, ptr %retval, align 1, !dbg !6122
  ret i1 %12, !dbg !6122
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6123 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6125, metadata !DIExpression()), !dbg !6127
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6126, metadata !DIExpression()), !dbg !6128
  br label %do.body, !dbg !6129

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6130

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6132
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6133
  %1 = load i32, ptr %i.addr, align 4, !dbg !6134
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6135
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #9, !dbg !6136
  ret i32 %call, !dbg !6137
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6138 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  %0 = load i32, ptr %i.addr, align 4, !dbg !6144
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6145
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !6146
  ret i32 %call, !dbg !6147
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6148 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6150, metadata !DIExpression()), !dbg !6154
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6151, metadata !DIExpression()), !dbg !6155
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6156
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6152, metadata !DIExpression()), !dbg !6156
  %0 = load i32, ptr %i.addr, align 4, !dbg !6156
  %sub = sub i32 0, %0, !dbg !6156
  store i32 %sub, ptr %__ret, align 4, !dbg !6156
  %1 = load i32, ptr %__ret, align 4, !dbg !6156
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6156
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6156
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !6156, !srcloc !6157
  store i32 %3, ptr %__ret, align 4, !dbg !6156
  %4 = load i32, ptr %__ret, align 4, !dbg !6156
  store i32 %4, ptr %tmp, align 4, !dbg !6156
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6158
  %5 = load i32, ptr %tmp, align 4, !dbg !6156
  ret i32 %5, !dbg !6159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6160 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6162, metadata !DIExpression()), !dbg !6164
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6166
  %1 = load i64, ptr %size.addr, align 8, !dbg !6167
  %conv = trunc i64 %1 to i32, !dbg !6167
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !6168
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6169
  %3 = load i64, ptr %size.addr, align 8, !dbg !6169
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !6169
  ret void, !dbg !6170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #2 align 16 !dbg !6171 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6175
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #9, !dbg !6176
  ret i64 %call, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6178 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6180, metadata !DIExpression()), !dbg !6182
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6181, metadata !DIExpression()), !dbg !6183
  ret i1 true, !dbg !6184
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #2 align 16 !dbg !6185 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6193
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #9, !dbg !6194
  ret i64 %call, !dbg !6195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #2 align 16 !dbg !6196 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6200
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6200
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6200
  ret i64 %1, !dbg !6201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !6202 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6204, metadata !DIExpression()), !dbg !6207
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6205, metadata !DIExpression()), !dbg !6208
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6206, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6210
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6211
  %2 = load i64, ptr %new.addr, align 8, !dbg !6212
  %call = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9, !dbg !6213
  ret i1 %call, !dbg !6214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !6215 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6219, metadata !DIExpression()), !dbg !6222
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6220, metadata !DIExpression()), !dbg !6223
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6221, metadata !DIExpression()), !dbg !6224
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6225
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6226
  %2 = load i64, ptr %new.addr, align 8, !dbg !6227
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9, !dbg !6228
  ret i1 %call, !dbg !6229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !6230 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6232, metadata !DIExpression()), !dbg !6241
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6233, metadata !DIExpression()), !dbg !6242
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6234, metadata !DIExpression()), !dbg !6243
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6235, metadata !DIExpression()), !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6237, metadata !DIExpression()), !dbg !6244
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6244
  store ptr %0, ptr %_old, align 8, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6238, metadata !DIExpression()), !dbg !6244
  %1 = load ptr, ptr %_old, align 8, !dbg !6244
  %2 = load i64, ptr %1, align 8, !dbg !6244
  store i64 %2, ptr %__old, align 8, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6239, metadata !DIExpression()), !dbg !6244
  %3 = load i64, ptr %new.addr, align 8, !dbg !6244
  store i64 %3, ptr %__new, align 8, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6240, metadata !DIExpression()), !dbg !6244
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6244
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !6244
  store ptr %counter, ptr %__ptr, align 8, !dbg !6244
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6244
  %6 = load i64, ptr %__old, align 8, !dbg !6244
  %7 = load i64, ptr %__new, align 8, !dbg !6244
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #10, !dbg !6244, !srcloc !6245
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !6244
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !6244
  %9 = icmp ult i8 %asmresult, 2, !dbg !6244
  call void @llvm.assume(i1 %9), !dbg !6244
  store i8 %asmresult, ptr %success, align 1, !dbg !6244
  store i64 %asmresult1, ptr %__old, align 8, !dbg !6244
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !6244
  %10 = load i8, ptr %success, align 1, !dbg !6246, !range !6248, !noundef !556
  %tobool = trunc i8 %10 to i1, !dbg !6246
  %lnot = xor i1 %tobool, true, !dbg !6246
  %lnot2 = xor i1 %lnot, true, !dbg !6246
  %lnot3 = xor i1 %lnot2, true, !dbg !6246
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6246
  %conv = sext i32 %lnot.ext to i64, !dbg !6246
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6246
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6246
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6244

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !6246
  %12 = load ptr, ptr %_old, align 8, !dbg !6246
  store i64 %11, ptr %12, align 8, !dbg !6246
  br label %if.end, !dbg !6246

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6244, !range !6248, !noundef !556
  %tobool5 = trunc i8 %13 to i1, !dbg !6244
  %lnot6 = xor i1 %tobool5, true, !dbg !6244
  %lnot8 = xor i1 %lnot6, true, !dbg !6244
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6244
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6244
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6244
  store i64 %expval11, ptr %tmp, align 8, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #10, !dbg !6249
  %14 = load i64, ptr %tmp, align 8, !dbg !6244
  %tobool12 = icmp ne i64 %14, 0, !dbg !6249
  ret i1 %tobool12, !dbg !6250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @down_write_failed(ptr noundef %sem, i64 noundef %count, i64 noundef %timeout) #0 section ".sched.text" align 16 !dbg !6251 {
entry:
  %retval = alloca ptr, align 8
  %sem.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %waiter = alloca %struct.ldsem_waiter, align 8
  %adjust = alloca i64, align 8
  %locked = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__ai_ptr40 = alloca ptr, align 8
  %tmp46 = alloca i32, align 4
  %__ret47 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !6253, metadata !DIExpression()), !dbg !6276
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6254, metadata !DIExpression()), !dbg !6277
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6255, metadata !DIExpression()), !dbg !6278
  call void @llvm.lifetime.start.p0(i64 24, ptr %waiter) #10, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !6256, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjust) #10, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %adjust, metadata !6257, metadata !DIExpression()), !dbg !6282
  store i64 -1, ptr %adjust, align 8, !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %locked) #10, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !6258, metadata !DIExpression()), !dbg !6284
  store i32 0, ptr %locked, align 4, !dbg !6284
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !6285
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1, !dbg !6285
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9, !dbg !6285
  br label %do.body, !dbg !6286

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !6287
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %1, i32 0, i32 0, !dbg !6290
  %2 = load i64, ptr %count.addr, align 8, !dbg !6291
  %3 = load i64, ptr %adjust, align 8, !dbg !6292
  %add = add i64 %2, %3, !dbg !6293
  %call = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count1, ptr noundef %count.addr, i64 noundef %add) #9, !dbg !6294
  br i1 %call, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6296

if.end:                                           ; preds = %do.body
  %4 = load i64, ptr %count.addr, align 8, !dbg !6297
  %and = and i64 %4, 4294967295, !dbg !6299
  %cmp = icmp eq i64 %and, 1, !dbg !6300
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !6301

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !6302
  %wait_lock3 = getelementptr inbounds %struct.ld_semaphore, ptr %5, i32 0, i32 1, !dbg !6302
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock3) #9, !dbg !6302
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !6304
  store ptr %6, ptr %retval, align 8, !dbg !6305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6305

if.end4:                                          ; preds = %if.end
  br label %do.cond, !dbg !6306

do.cond:                                          ; preds = %if.end4
  br i1 true, label %do.body, label %do.end, !dbg !6306, !llvm.loop !6307

do.end:                                           ; preds = %do.cond, %if.then
  %list = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 0, !dbg !6309
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !6310
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %7, i32 0, i32 4, !dbg !6311
  call void @list_add_tail(ptr noundef %list, ptr noundef %write_wait) #9, !dbg !6312
  %call5 = call ptr @get_current() #9, !dbg !6313
  %task = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !6314
  store ptr %call5, ptr %task, align 8, !dbg !6315
  br label %do.body6, !dbg !6316

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !6317

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !6318

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6318

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !6317

do.body10:                                        ; preds = %do.end9
  br label %do.body11, !dbg !6320

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6321

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6321

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6320

do.body14:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6323
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6259, metadata !DIExpression()), !dbg !6323
  %call15 = call ptr @get_current() #9, !dbg !6323
  %__state = getelementptr inbounds %struct.task_struct, ptr %call15, i32 0, i32 1, !dbg !6323
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !6323
  br label %do.body16, !dbg !6323

do.body16:                                        ; preds = %do.body14
  br label %do.cond17, !dbg !6324

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6324

do.end18:                                         ; preds = %do.cond17
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !6323
  call void @instrument_atomic_read_write(ptr noundef %8, i64 noundef 4) #9, !dbg !6323
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6264, metadata !DIExpression()), !dbg !6326
  store i32 2, ptr %__ret, align 4, !dbg !6326
  %9 = load i32, ptr %__ret, align 4, !dbg !6326
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !6326
  %11 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %10, i32 %9, ptr elementtype(i32) %10) #10, !dbg !6326, !srcloc !6327
  store i32 %11, ptr %__ret, align 4, !dbg !6326
  %12 = load i32, ptr %__ret, align 4, !dbg !6326
  store i32 %12, ptr %tmp19, align 4, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6323
  %13 = load i32, ptr %tmp19, align 4, !dbg !6326
  store i32 %13, ptr %tmp, align 4, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6328
  %14 = load i32, ptr %tmp, align 4, !dbg !6323
  br label %do.cond20, !dbg !6328

do.cond20:                                        ; preds = %do.end18
  br label %do.end21, !dbg !6328

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !6320

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6320

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !6317

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !6317

do.end25:                                         ; preds = %do.cond24
  br label %for.cond, !dbg !6329

for.cond:                                         ; preds = %if.end58, %do.end25
  %15 = load i64, ptr %timeout.addr, align 8, !dbg !6330
  %tobool = icmp ne i64 %15, 0, !dbg !6330
  br i1 %tobool, label %if.end27, label %if.then26, !dbg !6332

if.then26:                                        ; preds = %for.cond
  br label %for.end, !dbg !6333

if.end27:                                         ; preds = %for.cond
  %16 = load ptr, ptr %sem.addr, align 8, !dbg !6334
  %wait_lock28 = getelementptr inbounds %struct.ld_semaphore, ptr %16, i32 0, i32 1, !dbg !6334
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock28) #9, !dbg !6334
  %17 = load i64, ptr %timeout.addr, align 8, !dbg !6335
  %call29 = call i64 @schedule_timeout(i64 noundef %17) #9, !dbg !6336
  store i64 %call29, ptr %timeout.addr, align 8, !dbg !6337
  %18 = load ptr, ptr %sem.addr, align 8, !dbg !6338
  %wait_lock30 = getelementptr inbounds %struct.ld_semaphore, ptr %18, i32 0, i32 1, !dbg !6338
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock30) #9, !dbg !6338
  br label %do.body31, !dbg !6339

do.body31:                                        ; preds = %if.end27
  br label %do.body32, !dbg !6340

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !6341

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6341

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !6340

do.body35:                                        ; preds = %do.end34
  br label %do.body36, !dbg !6343

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !6344

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !6344

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !6343

do.body39:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr40) #10, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr40, metadata !6266, metadata !DIExpression()), !dbg !6346
  %call41 = call ptr @get_current() #9, !dbg !6346
  %__state42 = getelementptr inbounds %struct.task_struct, ptr %call41, i32 0, i32 1, !dbg !6346
  store ptr %__state42, ptr %__ai_ptr40, align 8, !dbg !6346
  br label %do.body43, !dbg !6346

do.body43:                                        ; preds = %do.body39
  br label %do.cond44, !dbg !6347

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6347

do.end45:                                         ; preds = %do.cond44
  %19 = load ptr, ptr %__ai_ptr40, align 8, !dbg !6346
  call void @instrument_atomic_read_write(ptr noundef %19, i64 noundef 4) #9, !dbg !6346
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret47) #10, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %__ret47, metadata !6274, metadata !DIExpression()), !dbg !6349
  store i32 2, ptr %__ret47, align 4, !dbg !6349
  %20 = load i32, ptr %__ret47, align 4, !dbg !6349
  %21 = load ptr, ptr %__ai_ptr40, align 8, !dbg !6349
  %22 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %21, i32 %20, ptr elementtype(i32) %21) #10, !dbg !6349, !srcloc !6350
  store i32 %22, ptr %__ret47, align 4, !dbg !6349
  %23 = load i32, ptr %__ret47, align 4, !dbg !6349
  store i32 %23, ptr %tmp48, align 4, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret47) #10, !dbg !6346
  %24 = load i32, ptr %tmp48, align 4, !dbg !6349
  store i32 %24, ptr %tmp46, align 4, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr40) #10, !dbg !6351
  %25 = load i32, ptr %tmp46, align 4, !dbg !6346
  br label %do.cond49, !dbg !6351

do.cond49:                                        ; preds = %do.end45
  br label %do.end50, !dbg !6351

do.end50:                                         ; preds = %do.cond49
  br label %do.cond51, !dbg !6343

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !6343

do.end52:                                         ; preds = %do.cond51
  br label %do.cond53, !dbg !6340

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !6340

do.end54:                                         ; preds = %do.cond53
  %26 = load ptr, ptr %sem.addr, align 8, !dbg !6352
  %call55 = call i32 @writer_trylock(ptr noundef %26) #9, !dbg !6353
  store i32 %call55, ptr %locked, align 4, !dbg !6354
  %27 = load i32, ptr %locked, align 4, !dbg !6355
  %tobool56 = icmp ne i32 %27, 0, !dbg !6355
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !6357

if.then57:                                        ; preds = %do.end54
  br label %for.end, !dbg !6358

if.end58:                                         ; preds = %do.end54
  br label %for.cond, !dbg !6359, !llvm.loop !6360

for.end:                                          ; preds = %if.then57, %if.then26
  %28 = load i32, ptr %locked, align 4, !dbg !6363
  %tobool59 = icmp ne i32 %28, 0, !dbg !6363
  br i1 %tobool59, label %if.end63, label %if.then60, !dbg !6365

if.then60:                                        ; preds = %for.end
  %29 = load ptr, ptr %sem.addr, align 8, !dbg !6366
  %count61 = getelementptr inbounds %struct.ld_semaphore, ptr %29, i32 0, i32 0, !dbg !6367
  %call62 = call i64 @atomic_long_add_return(i64 noundef 4294967296, ptr noundef %count61) #9, !dbg !6368
  br label %if.end63, !dbg !6368

if.end63:                                         ; preds = %if.then60, %for.end
  %list64 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 0, !dbg !6369
  call void @list_del(ptr noundef %list64) #9, !dbg !6370
  %30 = load i32, ptr %locked, align 4, !dbg !6371
  %tobool65 = icmp ne i32 %30, 0, !dbg !6371
  br i1 %tobool65, label %if.end70, label %land.lhs.true, !dbg !6373

land.lhs.true:                                    ; preds = %if.end63
  %31 = load ptr, ptr %sem.addr, align 8, !dbg !6374
  %write_wait66 = getelementptr inbounds %struct.ld_semaphore, ptr %31, i32 0, i32 4, !dbg !6375
  %call67 = call i32 @list_empty(ptr noundef %write_wait66) #9, !dbg !6376
  %tobool68 = icmp ne i32 %call67, 0, !dbg !6376
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !6377

if.then69:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %sem.addr, align 8, !dbg !6378
  call void @__ldsem_wake_readers(ptr noundef %32) #9, !dbg !6379
  br label %if.end70, !dbg !6379

if.end70:                                         ; preds = %if.then69, %land.lhs.true, %if.end63
  %33 = load ptr, ptr %sem.addr, align 8, !dbg !6380
  %wait_lock71 = getelementptr inbounds %struct.ld_semaphore, ptr %33, i32 0, i32 1, !dbg !6380
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock71) #9, !dbg !6380
  br label %do.body72, !dbg !6381

do.body72:                                        ; preds = %if.end70
  br label %do.body73, !dbg !6382

do.body73:                                        ; preds = %do.body72
  br label %do.cond74, !dbg !6384

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !6384

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !6382

do.body76:                                        ; preds = %do.end75
  br label %do.body77, !dbg !6386

do.body77:                                        ; preds = %do.body76
  br label %do.cond78, !dbg !6388

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !6388

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !6386

do.body80:                                        ; preds = %do.end79
  %call81 = call ptr @get_current() #9, !dbg !6390
  %__state82 = getelementptr inbounds %struct.task_struct, ptr %call81, i32 0, i32 1, !dbg !6390
  store volatile i32 0, ptr %__state82, align 8, !dbg !6390
  br label %do.cond83, !dbg !6390

do.cond83:                                        ; preds = %do.body80
  br label %do.end84, !dbg !6390

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !6386

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !6386

do.end86:                                         ; preds = %do.cond85
  br label %do.cond87, !dbg !6382

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !6382

do.end88:                                         ; preds = %do.cond87
  %34 = load i32, ptr %locked, align 4, !dbg !6392
  %tobool89 = icmp ne i32 %34, 0, !dbg !6392
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !6394

if.then90:                                        ; preds = %do.end88
  store ptr null, ptr %retval, align 8, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

if.end91:                                         ; preds = %do.end88
  %35 = load ptr, ptr %sem.addr, align 8, !dbg !6396
  store ptr %35, ptr %retval, align 8, !dbg !6397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6397

cleanup:                                          ; preds = %if.end91, %if.then90, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %locked) #10, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjust) #10, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 24, ptr %waiter) #10, !dbg !6398
  %36 = load ptr, ptr %retval, align 8, !dbg !6398
  ret ptr %36, !dbg !6398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @writer_trylock(ptr noundef %sem) #4 align 16 !dbg !6399 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6402, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !6406
  %count1 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 0, !dbg !6407
  %call = call i64 @atomic_long_add_return(i64 noundef 1, ptr noundef %count1) #9, !dbg !6408
  store i64 %call, ptr %count, align 8, !dbg !6405
  br label %do.body, !dbg !6409

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, ptr %count, align 8, !dbg !6410
  %and = and i64 %1, 4294967295, !dbg !6413
  %cmp = icmp eq i64 %and, 1, !dbg !6414
  br i1 %cmp, label %if.then, label %if.end, !dbg !6415

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

if.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !6417
  %count2 = getelementptr inbounds %struct.ld_semaphore, ptr %2, i32 0, i32 0, !dbg !6419
  %3 = load i64, ptr %count, align 8, !dbg !6420
  %sub = sub i64 %3, 1, !dbg !6421
  %call3 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %count2, ptr noundef %count, i64 noundef %sub) #9, !dbg !6422
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6423

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6424

if.end5:                                          ; preds = %if.end
  br label %do.cond, !dbg !6425

do.cond:                                          ; preds = %if.end5
  br i1 true, label %do.body, label %do.end, !dbg !6425, !llvm.loop !6426

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6428
  br label %cleanup, !dbg !6428

cleanup:                                          ; preds = %do.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !6428
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %4 = load i32, ptr %retval, align 4, !dbg !6428
  ret i32 %4, !dbg !6428

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6429 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6431, metadata !DIExpression()), !dbg !6433
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6432, metadata !DIExpression()), !dbg !6434
  %0 = load i64, ptr %i.addr, align 8, !dbg !6435
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6436
  %call = call i64 @raw_atomic64_add_return(i64 noundef %0, ptr noundef %1) #9, !dbg !6437
  ret i64 %call, !dbg !6438
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6439 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6443, metadata !DIExpression()), !dbg !6445
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6444, metadata !DIExpression()), !dbg !6446
  %0 = load i64, ptr %i.addr, align 8, !dbg !6447
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6448
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #9, !dbg !6449
  ret i64 %call, !dbg !6450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6451 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6453, metadata !DIExpression()), !dbg !6457
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6454, metadata !DIExpression()), !dbg !6458
  %0 = load i64, ptr %i.addr, align 8, !dbg !6459
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #10, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6455, metadata !DIExpression()), !dbg !6460
  %1 = load i64, ptr %i.addr, align 8, !dbg !6460
  store i64 %1, ptr %__ret, align 8, !dbg !6460
  %2 = load i64, ptr %__ret, align 8, !dbg !6460
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6460
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !6460
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #10, !dbg !6460, !srcloc !6461
  store i64 %4, ptr %__ret, align 8, !dbg !6460
  %5 = load i64, ptr %__ret, align 8, !dbg !6460
  store i64 %5, ptr %tmp, align 8, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #10, !dbg !6462
  %6 = load i64, ptr %tmp, align 8, !dbg !6460
  %add = add i64 %0, %6, !dbg !6463
  ret i64 %add, !dbg !6464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6468 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021}
!llvm.ident = !{!5022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !2, file: !3, line: 112, type: !174, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "might_resched", scope: !3, file: !3, line: 110, type: !4, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!3 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !7, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_ldsem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_ldsem\22 -D KBUILD_BASENAME=\22tty_ldsem\22 -D KBUILD_MODNAME=\22tty_ldsem\22 -D __KBUILD_MODNAME=kmod_tty_ldsem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_ldsem.ll drivers/tty/tty_ldsem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !158, globals: !5005, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "drivers/tty/tty_ldsem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5b5b3cc2354f3ca63875926ca828a45")
!8 = !{!9, !15, !20, !28, !35, !43, !59, !66, !72, !77, !83, !89, !95, !102, !110, !118, !127, !132, !137, !143, !150}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !16, line: 65, baseType: !11, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!19 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !21, line: 9, baseType: !11, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!24 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!25 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!26 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!27 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !29, line: 312, baseType: !11, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!32 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!33 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!34 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !11, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !11, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !60, line: 15, baseType: !11, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!63 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!64 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!65 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !67, line: 26, baseType: !11, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!71 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !73, line: 2052, baseType: !11, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!76 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !78, line: 54, baseType: !11, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "USRQUOTA", value: 0)
!81 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!82 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !84, line: 16, baseType: !11, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "TT_NONE", value: 0)
!87 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!88 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !90, line: 45, baseType: !11, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!93 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!94 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !96, line: 487, baseType: !11, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!99 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!100 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!101 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !103, line: 620, baseType: !11, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!106 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!107 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!108 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!109 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !103, line: 597, baseType: !111, size: 32, elements: !112)
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!114 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!115 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!116 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!117 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !96, line: 547, baseType: !11, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!121 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!122 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!123 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!124 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!126 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !96, line: 564, baseType: !11, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!130 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!131 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !96, line: 577, baseType: !11, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!135 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!136 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !96, line: 503, baseType: !11, size: 32, elements: !138)
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!141 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!142 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !144, line: 51, baseType: !11, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!147 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!148 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!149 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !151, line: 119, baseType: !11, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!154 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!155 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!156 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!157 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!158 = !{!159, !166, !174, !175, !4988, !4990, !178, !187, !4991, !4993, !4998, !4999, !5002, !5003}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !162, line: 22, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !165)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!165 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !170, line: 190, size: 128, elements: !171)
!170 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 191, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !170, line: 191, baseType: !168, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !180, line: 746, size: 58368, elements: !181)
!180 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!181 = !{!182, !193, !194, !195, !204, !205, !206, !207, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !291, !302, !429, !433, !436, !467, !468, !469, !470, !481, !483, !484, !485, !486, !487, !488, !499, !500, !503, !504, !505, !506, !507, !508, !509, !510, !517, !518, !525, !526, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3318, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3366, !3372, !3373, !3374, !3375, !3376, !3378, !3381, !3388, !3393, !3396, !3399, !3402, !3405, !4394, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4432, !4433, !4434, !4443, !4451, !4452, !4453, !4454, !4455, !4460, !4461, !4462, !4465, !4466, !4469, !4472, !4475, !4483, !4486, !4487, !4573, !4574, !4575, !4576, !4577, !4583, !4584, !4585, !4586, !4589, !4590, !4593, !4596, !4597, !4600, !4601, !4602, !4605, !4606, !4607, !4608, !4609, !4610, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4642, !4643, !4649, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4661, !4733, !4735, !4736, !4737, !4738, !4739, !4740, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !179, file: !180, line: 752, baseType: !183, size: 192)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !184, line: 56, size: 192, elements: !185)
!184 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!185 = !{!186, !188, !189, !192}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 57, baseType: !187, size: 64)
!187 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !183, file: !184, line: 58, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !183, file: !184, line: 59, baseType: !190, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !162, line: 21, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !11)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !183, file: !184, line: 61, baseType: !190, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !179, file: !180, line: 754, baseType: !11, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !179, file: !180, line: 767, baseType: !174, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !179, file: !180, line: 768, baseType: !196, size: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !151, line: 113, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !151, line: 111, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !197, file: !151, line: 112, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !170, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !170, line: 173, baseType: !111, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !180, line: 770, baseType: !11, size: 32, offset: 352)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !179, file: !180, line: 771, baseType: !11, size: 32, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !179, file: !180, line: 774, baseType: !111, size: 32, offset: 416)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !179, file: !180, line: 775, baseType: !208, size: 128, offset: 448)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !209, line: 58, size: 128, elements: !210)
!209 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!210 = !{!211, !217, !222, !226}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !208, file: !209, line: 59, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !213, line: 60, size: 64, elements: !214)
!213 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !213, line: 61, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !209, line: 60, baseType: !218, size: 32, offset: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !209, line: 60, size: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !218, file: !209, line: 61, baseType: !11, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !218, file: !209, line: 62, baseType: !200, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !208, file: !209, line: 65, baseType: !223, size: 16, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !162, line: 19, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !225)
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !208, file: !209, line: 65, baseType: !223, size: 16, offset: 112)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !179, file: !180, line: 776, baseType: !11, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !179, file: !180, line: 777, baseType: !187, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !179, file: !180, line: 778, baseType: !178, size: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !179, file: !180, line: 787, baseType: !111, size: 32, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !179, file: !180, line: 788, baseType: !111, size: 32, offset: 800)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !179, file: !180, line: 790, baseType: !111, size: 32, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !179, file: !180, line: 792, baseType: !111, size: 32, offset: 864)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !179, file: !180, line: 793, baseType: !111, size: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !179, file: !180, line: 794, baseType: !111, size: 32, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !179, file: !180, line: 795, baseType: !11, size: 32, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !179, file: !180, line: 797, baseType: !238, size: 2048, offset: 1024)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !180, line: 551, size: 2048, elements: !239)
!239 = !{!240, !245, !253, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !270, !273, !274, !275}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !238, file: !180, line: 553, baseType: !241, size: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !180, line: 411, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !241, file: !180, line: 412, baseType: !187, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !241, file: !180, line: 413, baseType: !190, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !238, file: !180, line: 554, baseType: !246, size: 192, align: 64, offset: 128)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !247, line: 5, size: 192, align: 64, elements: !248)
!247 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!248 = !{!249, !250, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !246, file: !247, line: 6, baseType: !187, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !246, file: !247, line: 7, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !246, file: !247, line: 8, baseType: !251, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !238, file: !180, line: 555, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !162, line: 23, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !256)
!256 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !238, file: !180, line: 556, baseType: !254, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !238, file: !180, line: 558, baseType: !169, size: 128, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !238, file: !180, line: 559, baseType: !11, size: 32, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !238, file: !180, line: 561, baseType: !254, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !238, file: !180, line: 562, baseType: !254, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !238, file: !180, line: 563, baseType: !254, size: 64, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !238, file: !180, line: 564, baseType: !254, size: 64, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !238, file: !180, line: 565, baseType: !161, size: 64, offset: 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !238, file: !180, line: 566, baseType: !254, size: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !238, file: !180, line: 568, baseType: !254, size: 64, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !238, file: !180, line: 571, baseType: !111, size: 32, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !180, line: 572, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !238, file: !180, line: 574, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !180, line: 49, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !238, file: !180, line: 576, baseType: !271, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !238, file: !180, line: 578, baseType: !187, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !238, file: !180, line: 588, baseType: !276, size: 512, align: 512, offset: 1536)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !180, line: 497, size: 512, align: 512, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !276, file: !180, line: 498, baseType: !254, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !276, file: !180, line: 499, baseType: !254, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !276, file: !180, line: 500, baseType: !254, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !276, file: !180, line: 501, baseType: !190, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !276, file: !180, line: 502, baseType: !190, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !276, file: !180, line: 503, baseType: !187, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !276, file: !180, line: 504, baseType: !187, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !276, file: !180, line: 505, baseType: !187, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !276, file: !180, line: 506, baseType: !287, size: 64, align: 64, offset: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !180, line: 445, size: 64, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !287, file: !180, line: 446, baseType: !11, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !287, file: !180, line: 447, baseType: !11, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !179, file: !180, line: 798, baseType: !292, size: 384, offset: 3072)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !180, line: 592, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !292, file: !180, line: 593, baseType: !169, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !292, file: !180, line: 594, baseType: !187, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !292, file: !180, line: 595, baseType: !187, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !292, file: !180, line: 596, baseType: !11, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !292, file: !180, line: 597, baseType: !225, size: 16, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !292, file: !180, line: 598, baseType: !225, size: 16, offset: 304)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !292, file: !180, line: 600, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !179, file: !180, line: 799, baseType: !303, size: 1792, offset: 3456)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !180, line: 610, size: 1792, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !426, !427}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !303, file: !180, line: 611, baseType: !246, size: 192, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !303, file: !180, line: 618, baseType: !254, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !303, file: !180, line: 619, baseType: !254, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !303, file: !180, line: 620, baseType: !254, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !303, file: !180, line: 621, baseType: !254, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !303, file: !180, line: 622, baseType: !254, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !303, file: !180, line: 629, baseType: !161, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !303, file: !180, line: 630, baseType: !254, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !180, line: 631, baseType: !11, size: 32, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !303, file: !180, line: 653, baseType: !11, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !303, file: !180, line: 654, baseType: !11, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !303, file: !180, line: 655, baseType: !11, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !303, file: !180, line: 656, baseType: !11, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !303, file: !180, line: 662, baseType: !319, size: 512, offset: 704)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !16, line: 118, size: 512, elements: !320)
!320 = !{!321, !329, !330, !335, !422, !423, !424, !425}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !16, line: 119, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !323, line: 9, size: 256, elements: !324)
!323 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !322, file: !323, line: 10, baseType: !246, size: 192, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !322, file: !323, line: 11, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !328, line: 29, baseType: !161)
!328 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !319, file: !16, line: 120, baseType: !327, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !319, file: !16, line: 121, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!15, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !319, file: !16, line: 122, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !16, line: 159, size: 512, align: 512, elements: !338)
!338 = !{!339, !390, !391, !395, !405, !406, !417, !421}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !337, file: !16, line: 160, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !16, line: 215, size: 4608, align: 512, elements: !342)
!342 = !{!343, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !16, line: 216, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !345, line: 14, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !346, file: !345, line: 15, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !350, line: 44, baseType: !351)
!350 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !350, line: 14, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !350, line: 15, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 15, size: 32, elements: !355)
!355 = !{!356, !357, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !350, line: 16, baseType: !200, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 24, baseType: !358, size: 16)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 24, size: 16, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !358, file: !350, line: 25, baseType: !361, size: 8)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !162, line: 17, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !363)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !358, file: !350, line: 26, baseType: !361, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 28, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 28, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !366, file: !350, line: 29, baseType: !223, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !350, line: 30, baseType: !223, size: 16, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !341, file: !16, line: 217, baseType: !11, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !341, file: !16, line: 218, baseType: !11, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !341, file: !16, line: 219, baseType: !11, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !341, file: !16, line: 220, baseType: !11, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !341, file: !16, line: 221, baseType: !11, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !341, file: !16, line: 222, baseType: !11, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !341, file: !16, line: 223, baseType: !11, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !341, file: !16, line: 224, baseType: !11, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !341, file: !16, line: 226, baseType: !11, size: 32, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !341, file: !16, line: 227, baseType: !225, size: 16, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !341, file: !16, line: 228, baseType: !225, size: 16, offset: 208)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !341, file: !16, line: 229, baseType: !11, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !341, file: !16, line: 235, baseType: !327, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !341, file: !16, line: 236, baseType: !334, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !341, file: !16, line: 237, baseType: !327, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !341, file: !16, line: 238, baseType: !334, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !341, file: !16, line: 239, baseType: !387, size: 4096, align: 512, offset: 512)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, align: 512, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !337, file: !16, line: 161, baseType: !11, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !337, file: !16, line: 162, baseType: !392, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !170, line: 32, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !394, line: 96, baseType: !111)
!394 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !337, file: !16, line: 163, baseType: !396, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !397, line: 274, baseType: !398)
!397 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !397, line: 274, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !398, file: !397, line: 274, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !397, line: 69, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !397, line: 64, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !402, file: !397, line: 65, baseType: !11, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !337, file: !16, line: 164, baseType: !334, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !337, file: !16, line: 165, baseType: !407, size: 128, offset: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !323, line: 14, size: 128, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !407, file: !323, line: 15, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !247, line: 26, size: 128, elements: !411)
!411 = !{!412, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !410, file: !247, line: 27, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !247, line: 12, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !413, file: !247, line: 13, baseType: !251, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !410, file: !247, line: 28, baseType: !251, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !337, file: !16, line: 166, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!327}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !337, file: !16, line: 167, baseType: !327, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !16, line: 123, baseType: !361, size: 8, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !319, file: !16, line: 124, baseType: !361, size: 8, offset: 456)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !319, file: !16, line: 125, baseType: !361, size: 8, offset: 464)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !319, file: !16, line: 126, baseType: !361, size: 8, offset: 472)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !303, file: !180, line: 671, baseType: !319, size: 512, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !303, file: !180, line: 679, baseType: !428, size: 64, offset: 1728)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !179, file: !180, line: 800, baseType: !430, size: 64, offset: 5248)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !180, line: 800, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !179, file: !180, line: 809, baseType: !434, size: 64, offset: 5312)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !180, line: 70, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !179, file: !180, line: 825, baseType: !437, size: 2048, align: 512, offset: 5632)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !180, line: 509, size: 2048, align: 512, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !437, file: !180, line: 511, baseType: !254, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !437, file: !180, line: 512, baseType: !254, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !437, file: !180, line: 513, baseType: !254, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !437, file: !180, line: 514, baseType: !254, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !437, file: !180, line: 515, baseType: !254, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !437, file: !180, line: 516, baseType: !254, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !437, file: !180, line: 518, baseType: !254, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !437, file: !180, line: 519, baseType: !254, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !437, file: !180, line: 520, baseType: !161, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !437, file: !180, line: 522, baseType: !254, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !437, file: !180, line: 523, baseType: !254, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !437, file: !180, line: 524, baseType: !161, size: 64, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !437, file: !180, line: 526, baseType: !161, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !437, file: !180, line: 527, baseType: !254, size: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !437, file: !180, line: 529, baseType: !254, size: 64, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !437, file: !180, line: 530, baseType: !254, size: 64, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !437, file: !180, line: 531, baseType: !254, size: 64, offset: 1024)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !437, file: !180, line: 532, baseType: !254, size: 64, offset: 1088)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !437, file: !180, line: 533, baseType: !254, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !437, file: !180, line: 535, baseType: !254, size: 64, offset: 1216)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !437, file: !180, line: 536, baseType: !254, size: 64, offset: 1280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !437, file: !180, line: 537, baseType: !254, size: 64, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !437, file: !180, line: 538, baseType: !254, size: 64, offset: 1408)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !437, file: !180, line: 539, baseType: !254, size: 64, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !437, file: !180, line: 540, baseType: !254, size: 64, offset: 1536)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !437, file: !180, line: 541, baseType: !254, size: 64, offset: 1600)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !437, file: !180, line: 542, baseType: !254, size: 64, offset: 1664)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !437, file: !180, line: 543, baseType: !254, size: 64, offset: 1728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !179, file: !180, line: 833, baseType: !11, size: 32, offset: 7680)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !179, file: !180, line: 836, baseType: !11, size: 32, offset: 7712)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !179, file: !180, line: 837, baseType: !111, size: 32, offset: 7744)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !179, file: !180, line: 838, baseType: !471, size: 64, offset: 7808)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !474, line: 19, baseType: !475)
!474 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !474, line: 19, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !475, file: !474, line: 19, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 1)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !179, file: !180, line: 839, baseType: !482, size: 64, offset: 7872)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !179, file: !180, line: 840, baseType: !473, size: 64, offset: 7936)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !179, file: !180, line: 841, baseType: !174, size: 64, offset: 8000)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !179, file: !180, line: 843, baseType: !225, size: 16, offset: 8064)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !179, file: !180, line: 845, baseType: !225, size: 16, offset: 8080)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !179, file: !180, line: 848, baseType: !111, size: 32, offset: 8096)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !179, file: !180, line: 849, baseType: !489, size: 32, offset: 8128)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !180, line: 718, size: 32, elements: !490)
!490 = !{!491, !498}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !489, file: !180, line: 724, baseType: !492, size: 32)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !180, line: 719, size: 32, elements: !493)
!493 = !{!494, !495, !496, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !492, file: !180, line: 720, baseType: !361, size: 8)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !492, file: !180, line: 721, baseType: !361, size: 8, offset: 8)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !492, file: !180, line: 722, baseType: !361, size: 8, offset: 16)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !492, file: !180, line: 723, baseType: !361, size: 8, offset: 24)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !489, file: !180, line: 725, baseType: !190, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !179, file: !180, line: 850, baseType: !169, size: 128, offset: 8192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !179, file: !180, line: 851, baseType: !501, size: 64, offset: 8320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !180, line: 60, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !179, file: !180, line: 855, baseType: !187, size: 64, offset: 8384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !179, file: !180, line: 856, baseType: !361, size: 8, offset: 8448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !179, file: !180, line: 857, baseType: !361, size: 8, offset: 8456)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !179, file: !180, line: 858, baseType: !111, size: 32, offset: 8480)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !179, file: !180, line: 859, baseType: !169, size: 128, offset: 8512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !179, file: !180, line: 860, baseType: !111, size: 32, offset: 8640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !179, file: !180, line: 861, baseType: !169, size: 128, offset: 8704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !179, file: !180, line: 873, baseType: !511, size: 256, offset: 8832)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !180, line: 376, size: 256, elements: !512)
!512 = !{!513, !514, !515, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !511, file: !180, line: 381, baseType: !187, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !511, file: !180, line: 384, baseType: !256, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !511, file: !180, line: 389, baseType: !256, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !511, file: !180, line: 392, baseType: !256, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !179, file: !180, line: 875, baseType: !169, size: 128, offset: 9088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !179, file: !180, line: 877, baseType: !519, size: 320, offset: 9216)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !520, line: 86, size: 320, elements: !521)
!520 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!521 = !{!522, !523, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !519, file: !520, line: 87, baseType: !111, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !519, file: !520, line: 88, baseType: !169, size: 128, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !519, file: !520, line: 89, baseType: !169, size: 128, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !179, file: !180, line: 878, baseType: !246, size: 192, align: 64, offset: 9536)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !179, file: !180, line: 881, baseType: !527, size: 64, offset: 9728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !529)
!529 = !{!530, !3237}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !44, line: 734, baseType: !531, size: 10240)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !44, line: 734, size: 10240, elements: !532)
!532 = !{!533, !537, !559, !3116, !3117, !3118, !3119, !3120, !3121, !3128, !3129, !3130, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3169, !3171, !3174, !3217, !3218, !3219, !3222, !3223, !3224, !3227, !3228, !3229, !3235, !3236}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !44, line: 739, baseType: !534, size: 512, align: 512)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !44, line: 739, size: 512, align: 512, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !534, file: !44, line: 747, baseType: !200, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !531, file: !44, line: 750, baseType: !538, size: 128, offset: 512)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !539, line: 218, size: 128, elements: !540)
!539 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!540 = !{!541, !557, !558}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !539, line: 219, baseType: !542, size: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 219, size: 32, elements: !543)
!543 = !{!544, !553}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !542, file: !539, line: 220, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !546, line: 29, baseType: !547)
!546 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !546, line: 17, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !546, line: 18, baseType: !550, size: 32)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !546, line: 18, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !550, file: !546, line: 19, baseType: !346, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !542, file: !539, line: 221, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !539, line: 197, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 197, elements: !556)
!556 = !{}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !538, file: !539, line: 223, baseType: !11, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !538, file: !539, line: 224, baseType: !174, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !531, file: !44, line: 752, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!187, !563, !187, !187, !187, !187}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !73, line: 994, size: 1856, align: 64, elements: !565)
!565 = !{!566, !580, !581, !583, !590, !602, !605, !606, !682, !897, !906, !3106, !3107, !3108, !3109, !3110, !3111, !3113, !3114, !3115}
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !73, line: 995, baseType: !567, size: 128)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !73, line: 995, size: 128, elements: !568)
!568 = !{!569, !570, !579}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !567, file: !73, line: 996, baseType: !212, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !567, file: !73, line: 997, baseType: !571, size: 128, align: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !170, line: 232, size: 128, align: 64, elements: !572)
!572 = !{!573, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !170, line: 233, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !571, file: !170, line: 234, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !574}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !567, file: !73, line: 998, baseType: !11, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !564, file: !73, line: 1005, baseType: !545, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !564, file: !73, line: 1006, baseType: !582, size: 32, offset: 160)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !170, line: 156, baseType: !11)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !564, file: !73, line: 1007, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !585, line: 13, baseType: !586)
!585 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !170, line: 181, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 179, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !587, file: !170, line: 180, baseType: !161, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !564, file: !73, line: 1008, baseType: !591, size: 256, offset: 256)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !592, line: 66, size: 256, elements: !593)
!592 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!593 = !{!594, !595, !596, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !591, file: !592, line: 67, baseType: !584, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !591, file: !592, line: 68, baseType: !344, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !591, file: !592, line: 70, baseType: !597, size: 32, offset: 96)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !598, line: 15, size: 32, elements: !599)
!598 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !597, file: !598, line: 20, baseType: !200, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !591, file: !592, line: 72, baseType: !169, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !564, file: !73, line: 1009, baseType: !603, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !170, line: 52, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !394, line: 88, baseType: !165)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !564, file: !73, line: 1010, baseType: !11, size: 32, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !564, file: !73, line: 1011, baseType: !607, size: 256, offset: 640)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !73, line: 948, size: 256, elements: !608)
!608 = !{!609, !632, !671, !672, !680, !681}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !73, line: 949, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !611, line: 34, baseType: !612)
!611 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 25, size: 64, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !612, file: !611, line: 26, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !616, line: 27, baseType: !617)
!616 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !616, line: 13, size: 64, elements: !618)
!618 = !{!619, !631}
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !616, line: 14, baseType: !620, size: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !616, line: 14, size: 32, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !620, file: !616, line: 15, baseType: !200, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !616, line: 16, baseType: !624, size: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !616, line: 16, size: 32, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !624, file: !616, line: 18, baseType: !361, size: 8)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !624, file: !616, line: 19, baseType: !628, size: 24, offset: 8)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 24, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 3)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !617, file: !616, line: 26, baseType: !349, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !607, file: !73, line: 950, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !21, line: 59, size: 768, elements: !635)
!635 = !{!636, !637, !638, !639, !652, !653, !660, !661}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !634, file: !21, line: 61, baseType: !196, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !634, file: !21, line: 62, baseType: !11, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !21, line: 63, baseType: !545, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !634, file: !21, line: 65, baseType: !640, size: 256, offset: 128)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 256, elements: !650)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !170, line: 194, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !641, file: !170, line: 195, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !170, line: 198, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !170, line: 199, baseType: !644, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !645, file: !170, line: 199, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!650 = !{!651}
!651 = !DISubrange(count: 4)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !634, file: !21, line: 66, baseType: !641, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !634, file: !21, line: 68, baseType: !654, size: 192, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !655, line: 41, baseType: !656)
!655 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !655, line: 37, size: 192, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !655, line: 38, baseType: !545, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !656, file: !655, line: 39, baseType: !169, size: 128, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !634, file: !21, line: 69, baseType: !571, size: 128, align: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !634, file: !21, line: 70, baseType: !662, offset: 768)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, elements: !669)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !21, line: 54, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !663, file: !21, line: 55, baseType: !111, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !663, file: !21, line: 56, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !21, line: 56, flags: DIFlagFwdDecl)
!669 = !{!670}
!670 = !DISubrange(count: -1)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !607, file: !73, line: 951, baseType: !20, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !607, file: !73, line: 952, baseType: !673, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !674, line: 23, baseType: !675)
!674 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 21, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !674, line: 22, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !170, line: 37, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !394, line: 49, baseType: !11)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !607, file: !73, line: 952, baseType: !673, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !607, file: !73, line: 953, baseType: !111, size: 32, offset: 224)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !564, file: !73, line: 1012, baseType: !683, size: 64, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !686, line: 110, size: 1472, elements: !687)
!686 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!687 = !{!688, !689, !690, !697, !698, !699, !700, !701, !702, !703, !704, !710, !711, !712, !713, !714, !715, !842, !843, !844, !845, !846, !877, !880, !884, !892}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !685, file: !686, line: 111, baseType: !584, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !685, file: !686, line: 112, baseType: !673, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !685, file: !686, line: 113, baseType: !691, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !674, line: 28, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 26, size: 32, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !692, file: !674, line: 27, baseType: !695, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !170, line: 38, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !394, line: 50, baseType: !11)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !685, file: !686, line: 114, baseType: !673, size: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !685, file: !686, line: 115, baseType: !691, size: 32, offset: 160)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !685, file: !686, line: 116, baseType: !673, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !685, file: !686, line: 117, baseType: !691, size: 32, offset: 224)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !685, file: !686, line: 118, baseType: !673, size: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !685, file: !686, line: 119, baseType: !691, size: 32, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !685, file: !686, line: 120, baseType: !11, size: 32, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !685, file: !686, line: 121, baseType: !705, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !706, line: 24, baseType: !707)
!706 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 24, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !706, line: 24, baseType: !254, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !685, file: !686, line: 122, baseType: !705, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !685, file: !686, line: 123, baseType: !705, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !685, file: !686, line: 124, baseType: !705, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !685, file: !686, line: 125, baseType: !705, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !685, file: !686, line: 127, baseType: !363, size: 8, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !685, file: !686, line: 129, baseType: !716, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !718, line: 195, size: 1728, elements: !719)
!718 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!719 = !{!720, !721, !726, !731, !740, !743, !744, !751, !752, !753, !754, !757, !758, !759, !761, !762, !806, !827}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !717, file: !718, line: 196, baseType: !196, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !717, file: !718, line: 197, baseType: !722, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !718, line: 28, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !170, line: 104, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !162, line: 20, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !111)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 198, baseType: !727, size: 192, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 198, size: 192, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !727, file: !718, line: 199, baseType: !169, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !727, file: !718, line: 200, baseType: !246, size: 192, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !717, file: !718, line: 205, baseType: !732, size: 320, offset: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !733, line: 48, size: 320, elements: !734)
!733 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!734 = !{!735, !736, !737, !738, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 49, baseType: !584, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !732, file: !733, line: 55, baseType: !584, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !732, file: !733, line: 57, baseType: !597, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !732, file: !733, line: 59, baseType: !344, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !732, file: !733, line: 60, baseType: !169, size: 128, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !717, file: !718, line: 206, baseType: !741, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !718, line: 206, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !717, file: !718, line: 207, baseType: !174, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 208, baseType: !745, size: 64, offset: 704)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 208, size: 64, elements: !746)
!746 = !{!747, !750}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !745, file: !718, line: 209, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !749, line: 8, baseType: !163)
!749 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!750 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !745, file: !718, line: 210, baseType: !748, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !717, file: !718, line: 212, baseType: !748, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !718, line: 213, baseType: !673, size: 32, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !717, file: !718, line: 214, baseType: !691, size: 32, offset: 864)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !717, file: !718, line: 215, baseType: !755, size: 32, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !718, line: 31, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 110, baseType: !190)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !717, file: !718, line: 216, baseType: !225, size: 16, offset: 928)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !717, file: !718, line: 217, baseType: !225, size: 16, offset: 944)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !717, file: !718, line: 221, baseType: !760, size: 16, offset: 960)
!760 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !718, line: 228, baseType: !187, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 245, baseType: !763, size: 320, offset: 1088)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 245, size: 320, elements: !764)
!764 = !{!765, !797}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !763, file: !718, line: 246, baseType: !766, size: 320)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !718, line: 114, size: 320, elements: !767)
!767 = !{!768, !769, !782, !785, !794}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !766, file: !718, line: 116, baseType: !187, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !718, line: 117, baseType: !770, size: 64, offset: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !718, line: 117, size: 64, elements: !771)
!771 = !{!772, !781}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !718, line: 118, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !718, line: 118, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !773, file: !718, line: 120, baseType: !223, size: 16)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !773, file: !718, line: 121, baseType: !777, size: 48, offset: 16)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 48, elements: !779)
!778 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!779 = !{!780}
!780 = !DISubrange(count: 6)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !770, file: !718, line: 127, baseType: !187, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !718, line: 129, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !718, line: 102, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !766, file: !718, line: 130, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !718, line: 108, size: 192, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !787, file: !718, line: 109, baseType: !571, size: 128, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !787, file: !718, line: 110, baseType: !196, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !787, file: !718, line: 111, baseType: !792, size: 8, offset: 160)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !170, line: 35, baseType: !793)
!793 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !766, file: !718, line: 131, baseType: !795, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !718, line: 247, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !718, line: 247, size: 320, elements: !799)
!799 = !{!800, !801, !802, !803, !804}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !798, file: !718, line: 248, baseType: !187, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !798, file: !718, line: 249, baseType: !187, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !718, line: 250, baseType: !783, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !798, file: !718, line: 251, baseType: !786, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !798, file: !718, line: 252, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 260, baseType: !807, size: 256, offset: 1408)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 260, size: 256, elements: !808)
!808 = !{!809, !815}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !807, file: !718, line: 261, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !718, line: 134, size: 256, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !810, file: !718, line: 135, baseType: !174, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !810, file: !718, line: 136, baseType: !814, size: 256)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !650)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !718, line: 262, baseType: !816, size: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !718, line: 262, size: 256, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !816, file: !718, line: 264, baseType: !169, size: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !816, file: !718, line: 265, baseType: !820, size: 128, offset: 128)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !821, line: 22, size: 128, elements: !822)
!821 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!822 = !{!823, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !820, file: !821, line: 23, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !821, line: 23, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !820, file: !821, line: 24, baseType: !187, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !717, file: !718, line: 280, baseType: !828, size: 64, offset: 1664)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !718, line: 176, size: 192, elements: !830)
!830 = !{!831, !840, !841}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !829, file: !718, line: 177, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !718, line: 171, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!111, !716, !836, !838, !716}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !829, file: !718, line: 178, baseType: !716, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !829, file: !718, line: 179, baseType: !783, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !685, file: !686, line: 130, baseType: !716, size: 64, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !685, file: !686, line: 131, baseType: !716, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !685, file: !686, line: 132, baseType: !716, size: 64, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !685, file: !686, line: 135, baseType: !174, size: 64, offset: 1024)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !685, file: !686, line: 137, baseType: !847, size: 64, offset: 1088)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !849, line: 14, size: 1088, elements: !850)
!849 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!850 = !{!851, !852, !861, !862, !863, !864, !865, !866}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !848, file: !849, line: 15, baseType: !196, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !848, file: !849, line: 17, baseType: !853, size: 320, offset: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !854, line: 22, size: 320, elements: !855)
!854 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!855 = !{!856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !853, file: !854, line: 23, baseType: !344, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !853, file: !854, line: 24, baseType: !161, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !853, file: !854, line: 26, baseType: !169, size: 128, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !853, file: !854, line: 28, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !848, file: !849, line: 19, baseType: !187, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !848, file: !849, line: 20, baseType: !584, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !848, file: !849, line: 23, baseType: !645, size: 128, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !848, file: !849, line: 24, baseType: !673, size: 32, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !848, file: !849, line: 29, baseType: !584, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !848, file: !849, line: 36, baseType: !867, size: 320, offset: 768)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !868, line: 15, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!869 = !{!870, !871, !872, !873, !874, !875, !876}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !868, line: 16, baseType: !344, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !867, file: !868, line: 18, baseType: !111, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !867, file: !868, line: 19, baseType: !111, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !867, file: !868, line: 20, baseType: !111, size: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !867, file: !868, line: 21, baseType: !111, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !867, file: !868, line: 22, baseType: !187, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 23, baseType: !187, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !685, file: !686, line: 138, baseType: !878, size: 64, offset: 1152)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !674, line: 18, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !685, file: !686, line: 139, baseType: !881, size: 64, offset: 1216)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !883, line: 16, flags: DIFlagFwdDecl)
!883 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !685, file: !686, line: 140, baseType: !885, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !686, line: 25, size: 64, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !886, file: !686, line: 26, baseType: !200, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !886, file: !686, line: 27, baseType: !111, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !886, file: !686, line: 28, baseType: !891, offset: 64)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, elements: !669)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !686, line: 142, baseType: !893, size: 128, offset: 1344)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !686, line: 142, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !893, file: !686, line: 143, baseType: !111, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !893, file: !686, line: 144, baseType: !571, size: 128, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !564, file: !73, line: 1013, baseType: !898, size: 256, offset: 960)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !73, line: 970, size: 256, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !898, file: !73, line: 971, baseType: !187, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !898, file: !73, line: 972, baseType: !11, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !898, file: !73, line: 973, baseType: !11, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !898, file: !73, line: 974, baseType: !11, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !898, file: !73, line: 975, baseType: !11, size: 32, offset: 160)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !898, file: !73, line: 976, baseType: !603, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !564, file: !73, line: 1014, baseType: !907, size: 128, offset: 1216)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !908, line: 8, size: 128, elements: !909)
!908 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!909 = !{!910, !3105}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !907, file: !908, line: 9, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !913, line: 70, size: 256, elements: !914)
!913 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!914 = !{!915, !3102, !3103, !3104}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !912, file: !913, line: 71, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !918, line: 82, size: 1536, elements: !919)
!918 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!919 = !{!920, !921, !926, !934, !935, !950, !3069, !3071, !3084, !3085, !3086, !3087, !3088, !3094, !3095, !3096}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !917, file: !918, line: 84, baseType: !11, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !917, file: !918, line: 85, baseType: !922, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !397, line: 275, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !397, line: 275, size: 32, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !923, file: !397, line: 275, baseType: !401, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !917, file: !918, line: 86, baseType: !927, size: 128, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !928, line: 38, size: 128, elements: !929)
!928 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!929 = !{!930, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !927, file: !928, line: 39, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !927, file: !928, line: 39, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !917, file: !918, line: 87, baseType: !916, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !917, file: !918, line: 88, baseType: !936, size: 128, offset: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !918, line: 49, size: 128, elements: !937)
!937 = !{!938, !947}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !918, line: 50, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !918, line: 50, size: 64, elements: !940)
!940 = !{!941, !946}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !918, line: 51, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !918, line: 51, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !942, file: !918, line: 52, baseType: !190, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !942, file: !918, line: 52, baseType: !190, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !939, file: !918, line: 54, baseType: !254, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !936, file: !918, line: 56, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !917, file: !918, line: 89, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !73, line: 641, size: 4800, elements: !953)
!953 = !{!954, !956, !957, !958, !959, !960, !961, !964, !965, !1163, !2875, !2876, !2877, !2878, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !3043, !3046, !3047, !3048, !3065, !3066, !3067, !3068}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !952, file: !73, line: 642, baseType: !955, size: 16)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !170, line: 24, baseType: !225)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !952, file: !73, line: 643, baseType: !225, size: 16, offset: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !952, file: !73, line: 644, baseType: !673, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !952, file: !73, line: 645, baseType: !169, size: 128, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !952, file: !73, line: 646, baseType: !691, size: 32, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !952, file: !73, line: 647, baseType: !11, size: 32, offset: 224)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !952, file: !73, line: 650, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !73, line: 607, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !952, file: !73, line: 651, baseType: !962, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !952, file: !73, line: 654, baseType: !966, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !73, line: 1966, size: 2048, align: 512, elements: !969)
!969 = !{!970, !974, !987, !993, !997, !1001, !1005, !1009, !1013, !1017, !1021, !1022, !1028, !1032, !1070, !1101, !1111, !1117, !1121, !1125, !1129, !1133, !1137, !1143, !1147}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !968, file: !73, line: 1967, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!916, !951, !916, !11}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !968, file: !73, line: 1968, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!795, !916, !951, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !980, line: 10, size: 128, elements: !981)
!980 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!981 = !{!982, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !979, file: !980, line: 11, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !174}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !979, file: !980, line: 12, baseType: !174, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !968, file: !73, line: 1969, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!111, !991, !951, !111}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !706, line: 42, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !968, file: !73, line: 1970, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!962, !951, !111, !792}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !968, file: !73, line: 1972, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!111, !916, !805, !111}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !968, file: !73, line: 1974, baseType: !1002, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!111, !991, !951, !916, !955, !792}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !968, file: !73, line: 1976, baseType: !1006, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!111, !916, !951, !916}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !968, file: !73, line: 1977, baseType: !1010, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!111, !951, !916}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !968, file: !73, line: 1978, baseType: !1014, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!111, !991, !951, !916, !795}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !968, file: !73, line: 1980, baseType: !1018, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!111, !991, !951, !916, !955}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !968, file: !73, line: 1982, baseType: !1010, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !968, file: !73, line: 1983, baseType: !1023, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!111, !991, !951, !916, !955, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !170, line: 21, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !170, line: 18, baseType: !190)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !968, file: !73, line: 1985, baseType: !1029, size: 64, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!111, !991, !951, !916, !951, !916, !11}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !968, file: !73, line: 1987, baseType: !1033, size: 64, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!111, !991, !916, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !73, line: 226, size: 640, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1051, !1060, !1061, !1067, !1068, !1069}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1037, file: !73, line: 227, baseType: !11, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1037, file: !73, line: 228, baseType: !955, size: 16, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !73, line: 241, baseType: !1042, size: 32, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !73, line: 241, size: 32, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1042, file: !73, line: 242, baseType: !673, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1042, file: !73, line: 243, baseType: !1046, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1047, line: 16, baseType: !1048)
!1047 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1047, line: 14, size: 32, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1048, file: !1047, line: 15, baseType: !678, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !73, line: 245, baseType: !1052, size: 32, offset: 96)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !73, line: 245, size: 32, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1052, file: !73, line: 246, baseType: !691, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1052, file: !73, line: 247, baseType: !1056, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1047, line: 20, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1047, line: 18, size: 32, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1057, file: !1047, line: 19, baseType: !695, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1037, file: !73, line: 249, baseType: !603, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1037, file: !73, line: 250, baseType: !1062, size: 128, offset: 192)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !749, line: 13, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1062, file: !749, line: 14, baseType: !748, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1062, file: !749, line: 15, baseType: !1066, size: 64, offset: 64)
!1066 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1037, file: !73, line: 251, baseType: !1062, size: 128, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1037, file: !73, line: 252, baseType: !1062, size: 128, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1037, file: !73, line: 259, baseType: !563, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !968, file: !73, line: 1988, baseType: !1071, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!111, !991, !1074, !1076, !190, !11}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1078, line: 22, size: 1280, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1077, file: !1078, line: 23, baseType: !190, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1077, file: !1078, line: 24, baseType: !955, size: 16, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1077, file: !1078, line: 25, baseType: !11, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1077, file: !1078, line: 26, baseType: !756, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1077, file: !1078, line: 27, baseType: !254, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1077, file: !1078, line: 28, baseType: !254, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1077, file: !1078, line: 41, baseType: !254, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1077, file: !1078, line: 42, baseType: !1026, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1077, file: !1078, line: 43, baseType: !1026, size: 32, offset: 352)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1077, file: !1078, line: 44, baseType: !673, size: 32, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1077, file: !1078, line: 45, baseType: !691, size: 32, offset: 416)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1077, file: !1078, line: 46, baseType: !603, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1077, file: !1078, line: 47, baseType: !1062, size: 128, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1077, file: !1078, line: 48, baseType: !1062, size: 128, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1077, file: !1078, line: 49, baseType: !1062, size: 128, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1077, file: !1078, line: 50, baseType: !1062, size: 128, offset: 896)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1077, file: !1078, line: 51, baseType: !254, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1077, file: !1078, line: 52, baseType: !254, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1077, file: !1078, line: 53, baseType: !190, size: 32, offset: 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1077, file: !1078, line: 54, baseType: !190, size: 32, offset: 1184)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1077, file: !1078, line: 55, baseType: !254, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !968, file: !73, line: 1990, baseType: !1102, size: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !916, !805, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !170, line: 66, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !394, line: 73, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !394, line: 15, baseType: !1066)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 61, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !394, line: 72, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !394, line: 16, baseType: !187)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !968, file: !73, line: 1991, baseType: !1112, size: 64, offset: 1024)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!111, !951, !1115, !254, !254}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !73, line: 55, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !968, file: !73, line: 1993, baseType: !1118, size: 64, offset: 1088)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!111, !951, !111}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !968, file: !73, line: 1994, baseType: !1122, size: 64, offset: 1152)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!111, !951, !916, !563, !11, !955}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !968, file: !73, line: 1997, baseType: !1126, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!111, !991, !951, !563, !955}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !968, file: !73, line: 1999, baseType: !1130, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!962, !991, !916, !111}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !968, file: !73, line: 2001, baseType: !1134, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!111, !991, !916, !962, !111}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !968, file: !73, line: 2003, baseType: !1138, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!111, !991, !916, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !73, line: 76, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !968, file: !73, line: 2005, baseType: !1144, size: 64, offset: 1472)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!111, !916, !1141}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !968, file: !73, line: 2006, baseType: !1148, size: 64, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !951}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !73, line: 3192, size: 192, elements: !1153)
!1153 = !{!1154, !1162}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1152, file: !73, line: 3193, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1156, line: 296, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1157 = !{!1158, !1159, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1155, file: !1156, line: 297, baseType: !545, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1155, file: !1156, line: 299, baseType: !1160, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !170, line: 154, baseType: !11)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1155, file: !1156, line: 300, baseType: !174, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1152, file: !73, line: 3194, baseType: !190, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !952, file: !73, line: 655, baseType: !1164, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !73, line: 1190, size: 10752, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !2388, !2520, !2560, !2643, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2660, !2664, !2665, !2668, !2671, !2674, !2677, !2678, !2679, !2720, !2746, !2747, !2748, !2749, !2750, !2751, !2754, !2758, !2767, !2768, !2769, !2770, !2829, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1165, file: !73, line: 1191, baseType: !169, size: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1165, file: !73, line: 1192, baseType: !1026, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1165, file: !73, line: 1193, baseType: !363, size: 8, offset: 160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1165, file: !73, line: 1194, baseType: !187, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1165, file: !73, line: 1195, baseType: !603, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1165, file: !73, line: 1196, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !73, line: 2366, size: 576, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1184, !1188, !1192, !1196, !2376, !2377, !2378, !2380, !2381, !2382, !2384, !2385, !2386, !2387}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1174, file: !73, line: 2367, baseType: !795, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1174, file: !73, line: 2368, baseType: !111, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1174, file: !73, line: 2376, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!111, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !913, line: 21, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1174, file: !73, line: 2377, baseType: !1185, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !73, line: 75, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1174, file: !73, line: 2378, baseType: !1189, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!916, !1173, !111, !795, !174}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1174, file: !73, line: 2380, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1164}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !73, line: 2381, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !29, line: 402, size: 9216, align: 512, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1206, !2021, !2047, !2048, !2049, !2050, !2054, !2057, !2058, !2059, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2127, !2131, !2151, !2171, !2172, !2173, !2174, !2183, !2206, !2207, !2210, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2224, !2225, !2336, !2344, !2345, !2346, !2348, !2352, !2353, !2357, !2358, !2359, !2360, !2362, !2363, !2364, !2371, !2372, !2373, !2375}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1198, file: !29, line: 403, baseType: !28, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1198, file: !29, line: 406, baseType: !169, size: 128, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1198, file: !29, line: 409, baseType: !1203, size: 448, offset: 192)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 448, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 56)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1198, file: !29, line: 417, baseType: !1207, size: 768, offset: 640)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !29, line: 45, size: 768, elements: !1208)
!1208 = !{!1209, !2014, !2015, !2016, !2019}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1207, file: !29, line: 46, baseType: !1210, size: 512)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1211, line: 64, size: 512, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1212 = !{!1213, !1214, !1215, !1217, !1261, !1869, !2004, !2009, !2010, !2011, !2012, !2013}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1210, file: !1211, line: 65, baseType: !795, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1210, file: !1211, line: 66, baseType: !169, size: 128, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1210, file: !1211, line: 67, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1210, file: !1211, line: 68, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1211, line: 168, size: 768, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1219, file: !1211, line: 169, baseType: !169, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1219, file: !1211, line: 170, baseType: !545, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1219, file: !1211, line: 171, baseType: !1210, size: 512, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1219, file: !1211, line: 172, baseType: !1225, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1211, line: 133, size: 192, elements: !1228)
!1228 = !{!1229, !1236, !1241}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1227, file: !1211, line: 134, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!111, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1227, file: !1211, line: 135, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!795, !1234}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1227, file: !1211, line: 136, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!111, !1234, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1211, line: 125, size: 20736, elements: !1248)
!1248 = !{!1249, !1251, !1255, !1256, !1260}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1247, file: !1211, line: 126, baseType: !1250, size: 192)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 192, elements: !629)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1247, file: !1211, line: 127, baseType: !1252, size: 4096, offset: 192)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 4096, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1247, file: !1211, line: 128, baseType: !111, size: 32, offset: 4288)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1247, file: !1211, line: 129, baseType: !1257, size: 16384, offset: 4320)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 16384, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 2048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1247, file: !1211, line: 130, baseType: !111, size: 32, offset: 20704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1210, file: !1211, line: 69, baseType: !1262, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1211, line: 116, size: 384, elements: !1265)
!1265 = !{!1266, !1270, !1289, !1829, !1859, !1863}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1264, file: !1211, line: 117, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1216}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1264, file: !1211, line: 118, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1274, line: 254, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1275 = !{!1276, !1285}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1273, file: !1274, line: 255, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1105, !1216, !1280, !805}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1274, line: 30, size: 128, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1281, file: !1274, line: 31, baseType: !795, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1281, file: !1274, line: 32, baseType: !955, size: 16, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1273, file: !1274, line: 256, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1105, !1216, !1280, !795, !1108}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1264, file: !1211, line: 119, baseType: !1290, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1274, line: 84, size: 320, elements: !1294)
!1294 = !{!1295, !1296, !1300, !1825, !1827}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1293, file: !1274, line: 85, baseType: !795, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1293, file: !1274, line: 86, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!955, !1216, !1280, !111}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1293, file: !1274, line: 88, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!955, !1216, !1304, !111}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1274, line: 175, size: 512, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1816, !1820, !1821}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1305, file: !1274, line: 176, baseType: !1281, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1305, file: !1274, line: 177, baseType: !1108, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1305, file: !1274, line: 178, baseType: !174, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1305, file: !1274, line: 179, baseType: !1311, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !73, line: 472, size: 1536, align: 64, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1808, !1809, !1810, !1813, !1814, !1815}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1315, file: !73, line: 473, baseType: !951, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1315, file: !73, line: 474, baseType: !1155, size: 128, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1315, file: !73, line: 475, baseType: !732, size: 320, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1315, file: !73, line: 476, baseType: !1160, size: 32, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1315, file: !73, line: 477, baseType: !200, size: 32, offset: 544)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1315, file: !73, line: 482, baseType: !410, size: 128, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1315, file: !73, line: 483, baseType: !187, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1315, file: !73, line: 484, baseType: !187, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1315, file: !73, line: 485, baseType: !1326, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !73, line: 404, size: 1280, elements: !1329)
!1329 = !{!1330, !1633, !1703, !1707, !1711, !1717, !1723, !1727, !1732, !1736, !1740, !1744, !1772, !1776, !1780, !1784, !1789, !1793, !1800, !1804}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1328, file: !73, line: 405, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!111, !1334, !1631}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !1336)
!1336 = !{!1337, !1338, !1625, !1630}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1335, file: !44, line: 75, baseType: !187, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !44, line: 83, baseType: !1339, size: 320, offset: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !44, line: 83, size: 320, elements: !1340)
!1340 = !{!1341, !1362, !1376, !1380, !1624}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !44, line: 84, baseType: !1342, size: 320)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !44, line: 84, size: 320, elements: !1343)
!1343 = !{!1344, !1355, !1356, !1361}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !44, line: 90, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !44, line: 90, size: 128, elements: !1346)
!1346 = !{!1347, !1348, !1353, !1354}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1345, file: !44, line: 91, baseType: !169, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !44, line: 94, baseType: !1349, size: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !44, line: 94, size: 128, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1349, file: !44, line: 96, baseType: !174, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1349, file: !44, line: 98, baseType: !11, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1345, file: !44, line: 102, baseType: !169, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1345, file: !44, line: 103, baseType: !169, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1342, file: !44, line: 106, baseType: !1314, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !44, line: 107, baseType: !1357, size: 64, offset: 192)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !44, line: 107, size: 64, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1357, file: !44, line: 108, baseType: !187, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1357, file: !44, line: 109, baseType: !187, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1342, file: !44, line: 117, baseType: !187, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !44, line: 119, baseType: !1363, size: 320)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !44, line: 119, size: 320, elements: !1364)
!1364 = !{!1365, !1366, !1369, !1370, !1371}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1363, file: !44, line: 124, baseType: !187, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1363, file: !44, line: 125, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1363, file: !44, line: 126, baseType: !187, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1363, file: !44, line: 127, baseType: !187, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !44, line: 128, baseType: !1372, size: 64, offset: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !44, line: 128, size: 64, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1372, file: !44, line: 133, baseType: !187, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1372, file: !44, line: 138, baseType: !584, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !44, line: 141, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !44, line: 141, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1377, file: !44, line: 142, baseType: !187, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !44, line: 144, baseType: !1381, size: 128)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !44, line: 144, size: 128, elements: !1382)
!1382 = !{!1383, !1623}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1381, file: !44, line: 146, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !1386)
!1386 = !{!1387, !1397, !1418, !1429, !1430, !1431, !1432, !1605, !1606, !1607}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1385, file: !36, line: 127, baseType: !1388, size: 384)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !1389)
!1389 = !{!1390, !1391, !1393, !1394, !1395, !1396}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1388, file: !36, line: 22, baseType: !187, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1388, file: !36, line: 23, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1388, file: !36, line: 24, baseType: !1392, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1388, file: !36, line: 25, baseType: !187, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1388, file: !36, line: 26, baseType: !187, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1388, file: !36, line: 27, baseType: !187, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1385, file: !36, line: 128, baseType: !1398, size: 128, offset: 384)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1399, line: 105, size: 128, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1398, file: !1399, line: 110, baseType: !187, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1398, file: !1399, line: 118, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1399, line: 95, size: 448, elements: !1405)
!1405 = !{!1406, !1407, !1413, !1414, !1415, !1416, !1417}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1404, file: !1399, line: 96, baseType: !584, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1404, file: !1399, line: 97, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1399, line: 60, baseType: !1410)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1404, file: !1399, line: 98, baseType: !1408, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1404, file: !1399, line: 99, baseType: !792, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1404, file: !1399, line: 100, baseType: !792, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1404, file: !1399, line: 101, baseType: !571, size: 128, align: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1404, file: !1399, line: 102, baseType: !1412, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1385, file: !36, line: 129, baseType: !1419, size: 256, offset: 512)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1420, line: 26, size: 256, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1419, file: !1420, line: 27, baseType: !11, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1419, file: !1420, line: 28, baseType: !1424, size: 192, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1425, line: 43, size: 192, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !1425, line: 44, baseType: !344, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1424, file: !1425, line: 45, baseType: !169, size: 128, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1385, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !36, line: 131, baseType: !11, size: 32, offset: 800)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1385, file: !36, line: 132, baseType: !187, size: 64, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1385, file: !36, line: 133, baseType: !1433, size: 64, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !1436)
!1436 = !{!1437, !1441, !1601}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1435, file: !36, line: 83, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1334}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1435, file: !36, line: 89, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !11)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1448, line: 512, size: 896, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1449 = !{!1450, !1568, !1569, !1576, !1583, !1593, !1594, !1595, !1597, !1599}
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1448, line: 513, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !1448, line: 513, size: 320, elements: !1452)
!1452 = !{!1453, !1564, !1565, !1566, !1567}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1451, file: !1448, line: 514, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !1456)
!1456 = !{!1457, !1466, !1467, !1475, !1482, !1483, !1488, !1489, !1494, !1495, !1498, !1557, !1558, !1559, !1560, !1561, !1562}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !44, line: 628, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !44, line: 628, size: 128, elements: !1459)
!1459 = !{!1460, !1465}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !44, line: 629, baseType: !1461, size: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !44, line: 629, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1461, file: !44, line: 631, baseType: !187, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1461, file: !44, line: 632, baseType: !187, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1458, file: !44, line: 635, baseType: !571, size: 128, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1455, file: !44, line: 639, baseType: !527, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1455, file: !44, line: 640, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1469, line: 297, baseType: !1470)
!1469 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1469, line: 297, size: 64, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1470, file: !1469, line: 297, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1474, line: 19, baseType: !187)
!1474 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !44, line: 646, baseType: !1476, size: 64, offset: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !44, line: 646, size: 64, elements: !1477)
!1477 = !{!1478, !1481}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1476, file: !44, line: 647, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !187)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1476, file: !44, line: 648, baseType: !1480, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1455, file: !44, line: 666, baseType: !111, size: 32, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1455, file: !44, line: 667, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !44, line: 580, baseType: !732, size: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1455, file: !44, line: 670, baseType: !792, size: 8, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1455, file: !44, line: 681, baseType: !1490, size: 256, offset: 512)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !44, line: 678, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1490, file: !44, line: 679, baseType: !246, size: 192, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1490, file: !44, line: 680, baseType: !187, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1455, file: !44, line: 689, baseType: !169, size: 128, offset: 768)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1455, file: !44, line: 691, baseType: !1496, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1455, file: !44, line: 694, baseType: !1499, size: 64, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1448, line: 563, size: 1024, elements: !1502)
!1502 = !{!1503, !1507, !1508, !1512, !1516, !1520, !1521, !1525, !1529, !1533, !1534, !1535, !1539, !1543, !1549, !1553}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1501, file: !1448, line: 564, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1454}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1501, file: !1448, line: 569, baseType: !1504, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1501, file: !1448, line: 571, baseType: !1509, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!111, !1454, !187}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1501, file: !1448, line: 572, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!111, !1454}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1501, file: !1448, line: 578, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!111, !1454, !187, !187, !187}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1501, file: !1448, line: 580, baseType: !1442, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1501, file: !1448, line: 581, baseType: !1522, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1445, !1446, !11}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1501, file: !1448, line: 582, baseType: !1526, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!1445, !1446, !187, !187}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1501, file: !1448, line: 584, baseType: !1530, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!187, !1454}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1501, file: !1448, line: 588, baseType: !1442, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1501, file: !1448, line: 591, baseType: !1442, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1501, file: !1448, line: 597, baseType: !1536, size: 64, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!111, !1454, !187, !174, !111, !111}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1501, file: !1448, line: 603, baseType: !1540, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!795, !1454}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1501, file: !1448, line: 613, baseType: !1544, size: 64, offset: 832)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!111, !1454, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1501, file: !1448, line: 625, baseType: !1550, size: 64, offset: 896)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1547, !1454, !187}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1501, file: !1448, line: 633, baseType: !1554, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1334, !1454, !187}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1455, file: !44, line: 697, baseType: !187, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1455, file: !44, line: 699, baseType: !563, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1455, file: !44, line: 700, baseType: !174, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1455, file: !44, line: 711, baseType: !584, size: 64, offset: 1216)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1455, file: !44, line: 717, baseType: !1547, size: 64, offset: 1280)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1455, file: !44, line: 722, baseType: !1563, offset: 1344)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !556)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1451, file: !1448, line: 515, baseType: !1160, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1451, file: !1448, line: 516, baseType: !187, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1451, file: !1448, line: 517, baseType: !187, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1451, file: !1448, line: 518, baseType: !187, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !1448, line: 520, baseType: !43, size: 32, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1447, file: !1448, line: 522, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1474, line: 22, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1474, line: 22, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1572, file: !1474, line: 22, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1474, line: 15, baseType: !187)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1447, file: !1448, line: 524, baseType: !1577, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1469, line: 372, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1469, line: 372, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1579, file: !1469, line: 372, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1474, line: 16, baseType: !187)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1448, line: 527, baseType: !1584, size: 64, offset: 512)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !1448, line: 527, size: 64, elements: !1585)
!1585 = !{!1586, !1592}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1584, file: !1448, line: 528, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1474, line: 21, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1474, line: 21, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1588, file: !1474, line: 21, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1474, line: 14, baseType: !187)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1584, file: !1448, line: 529, baseType: !1571, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1447, file: !1448, line: 534, baseType: !1334, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1447, file: !1448, line: 535, baseType: !1334, size: 64, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1447, file: !1448, line: 541, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1447, file: !1448, line: 545, baseType: !1598, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1447, file: !1448, line: 549, baseType: !1600, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1469, line: 520, baseType: !1334)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1435, file: !36, line: 100, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!111, !1384, !187, !187, !111}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1385, file: !36, line: 134, baseType: !174, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1385, file: !36, line: 135, baseType: !111, size: 32, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !36, line: 136, baseType: !1608, size: 128, offset: 1088)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !36, line: 136, size: 128, elements: !1609)
!1609 = !{!1610, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1608, file: !36, line: 137, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1612, line: 6, size: 128, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1611, file: !1612, line: 7, baseType: !254, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1611, file: !1612, line: 8, baseType: !254, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !36, line: 138, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !36, line: 138, elements: !1618)
!1618 = !{!1619, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1617, file: !36, line: 138, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !36, line: 138, elements: !556)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1617, file: !36, line: 138, baseType: !1622)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1611, elements: !669)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1381, file: !44, line: 147, baseType: !174, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1339, file: !44, line: 161, baseType: !571, size: 128, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !44, line: 164, baseType: !1626, size: 32, offset: 384)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !44, line: 164, size: 32, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1626, file: !44, line: 169, baseType: !200, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1626, file: !44, line: 177, baseType: !11, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1335, file: !44, line: 181, baseType: !200, size: 32, offset: 416)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !73, line: 309, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1328, file: !73, line: 406, baseType: !1634, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!111, !563, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !1639)
!1639 = !{!1640, !1670, !1684}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !44, line: 295, baseType: !1641, size: 512)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !44, line: 295, size: 512, elements: !1642)
!1642 = !{!1643, !1669}
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !44, line: 296, baseType: !1644, size: 448)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !44, line: 296, size: 448, elements: !1645)
!1645 = !{!1646, !1647, !1656, !1657, !1658, !1667, !1668}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !44, line: 298, baseType: !187, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !44, line: 299, baseType: !1648, size: 128, offset: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !44, line: 299, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1648, file: !44, line: 300, baseType: !169, size: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !44, line: 302, baseType: !1652, size: 128)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !44, line: 302, size: 128, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1652, file: !44, line: 303, baseType: !174, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1652, file: !44, line: 305, baseType: !11, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1644, file: !44, line: 310, baseType: !1314, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1644, file: !44, line: 311, baseType: !187, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !44, line: 312, baseType: !1659, size: 64, offset: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !44, line: 312, size: 64, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1659, file: !44, line: 313, baseType: !174, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1659, file: !44, line: 314, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1664, file: !44, line: 256, baseType: !187, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1644, file: !44, line: 316, baseType: !200, size: 32, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1644, file: !44, line: 317, baseType: !200, size: 32, offset: 416)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1641, file: !44, line: 323, baseType: !1335, size: 512, align: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !44, line: 325, baseType: !1671, size: 512, offset: 512)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !44, line: 325, size: 512, elements: !1672)
!1672 = !{!1673, !1683}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !44, line: 326, baseType: !1674, size: 320)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !44, line: 326, size: 320, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1674, file: !44, line: 327, baseType: !187, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1674, file: !44, line: 328, baseType: !187, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1674, file: !44, line: 329, baseType: !187, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1674, file: !44, line: 331, baseType: !200, size: 32, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1674, file: !44, line: 332, baseType: !200, size: 32, offset: 224)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1674, file: !44, line: 333, baseType: !200, size: 32, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1674, file: !44, line: 335, baseType: !11, size: 32, offset: 288)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1671, file: !44, line: 339, baseType: !1335, size: 512, align: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !44, line: 341, baseType: !1685, size: 512, offset: 1024)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !44, line: 341, size: 512, elements: !1686)
!1686 = !{!1687, !1696, !1702}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !44, line: 342, baseType: !1688, size: 384)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !44, line: 342, size: 384, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1688, file: !44, line: 343, baseType: !187, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1688, file: !44, line: 344, baseType: !187, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1688, file: !44, line: 346, baseType: !174, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1688, file: !44, line: 347, baseType: !174, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1688, file: !44, line: 348, baseType: !174, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1688, file: !44, line: 349, baseType: !174, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !44, line: 352, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !44, line: 352, size: 256, elements: !1698)
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1697, file: !44, line: 353, baseType: !187, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1697, file: !44, line: 354, baseType: !187, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1697, file: !44, line: 356, baseType: !169, size: 128, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1685, file: !44, line: 359, baseType: !1335, size: 512, align: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1328, file: !73, line: 409, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!111, !1314, !1631}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1328, file: !73, line: 412, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!792, !1314, !1637}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1328, file: !73, line: 414, baseType: !1712, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !73, line: 310, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1328, file: !73, line: 416, baseType: !1718, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!111, !563, !1314, !603, !11, !1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1328, file: !73, line: 419, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!111, !563, !1314, !603, !11, !11, !1334, !174}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1328, file: !73, line: 424, baseType: !1728, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1731, !1314, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !170, line: 131, baseType: !254)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1328, file: !73, line: 425, baseType: !1733, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1637, !1108, !1108}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1328, file: !73, line: 426, baseType: !1737, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!792, !1637, !1160}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1328, file: !73, line: 427, baseType: !1741, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1637}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1328, file: !73, line: 428, baseType: !1745, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1105, !1748, !1770}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !73, line: 373, size: 384, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1757, !1758, !1759, !1760}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1749, file: !73, line: 374, baseType: !563, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1749, file: !73, line: 375, baseType: !603, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1749, file: !73, line: 376, baseType: !1754, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1748, !1066}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1749, file: !73, line: 377, baseType: !174, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1749, file: !73, line: 378, baseType: !111, size: 32, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1749, file: !73, line: 379, baseType: !223, size: 16, offset: 288)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !73, line: 380, baseType: !1761, size: 64, offset: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !73, line: 380, size: 64, elements: !1762)
!1762 = !{!1763, !1766}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1761, file: !73, line: 386, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !73, line: 386, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1761, file: !73, line: 395, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1105, !174}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !73, line: 69, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1328, file: !73, line: 433, baseType: !1773, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!111, !1314, !1637, !1637, !59}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1328, file: !73, line: 435, baseType: !1777, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!111, !1637}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1328, file: !73, line: 436, baseType: !1781, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!792, !1637, !1108, !1108}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1328, file: !73, line: 438, baseType: !1785, size: 64, offset: 960)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1637, !1788, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1328, file: !73, line: 439, baseType: !1790, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!111, !1314, !1334}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1328, file: !73, line: 442, baseType: !1794, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!111, !1797, !563, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !73, line: 66, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1328, file: !73, line: 444, baseType: !1801, size: 64, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !563}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1328, file: !73, line: 445, baseType: !1805, size: 64, offset: 1216)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!111, !1748, !1770}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !73, line: 486, baseType: !187, size: 64, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1315, file: !73, line: 487, baseType: !732, size: 320, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1315, file: !73, line: 488, baseType: !1811, size: 32, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1812, line: 8, baseType: !190)
!1812 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1315, file: !73, line: 489, baseType: !545, size: 32, offset: 1312)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1315, file: !73, line: 490, baseType: !169, size: 128, offset: 1344)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1315, file: !73, line: 491, baseType: !174, size: 64, offset: 1472)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1305, file: !1274, line: 180, baseType: !1817, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1105, !563, !1216, !1304, !805, !603, !1108}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1305, file: !1274, line: 182, baseType: !1817, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1305, file: !1274, line: 184, baseType: !1822, size: 64, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!111, !563, !1216, !1304, !1454}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1293, file: !1274, line: 90, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1293, file: !1274, line: 91, baseType: !1828, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1264, file: !1211, line: 120, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1833, !1234}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !67, line: 39, size: 384, elements: !1836)
!1836 = !{!1837, !1838, !1842, !1846, !1854, !1858}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !67, line: 40, baseType: !66, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1835, file: !67, line: 41, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!792}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1835, file: !67, line: 42, baseType: !1843, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!174}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1835, file: !67, line: 43, baseType: !1847, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1850, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !67, line: 19, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1835, file: !67, line: 44, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1850}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1835, file: !67, line: 45, baseType: !983, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1264, file: !1211, line: 121, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1850, !1234}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1264, file: !1211, line: 122, baseType: !1864, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1234, !1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1210, file: !1211, line: 70, baseType: !1870, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1872, line: 190, size: 1152, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1996, !1997, !1998, !1999, !2000, !2003}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1871, file: !1872, line: 191, baseType: !200, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1871, file: !1872, line: 192, baseType: !200, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1871, file: !1872, line: 202, baseType: !1870, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1871, file: !1872, line: 203, baseType: !795, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1871, file: !1872, line: 205, baseType: !246, size: 192, align: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1871, file: !1872, line: 207, baseType: !1850, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1871, file: !1872, line: 208, baseType: !11, size: 32, offset: 448)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 209, baseType: !1882, size: 256, offset: 512)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 209, size: 256, elements: !1883)
!1883 = !{!1884, !1893, !1897}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1882, file: !1872, line: 210, baseType: !1885, size: 256)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1872, line: 153, size: 256, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1892}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1885, file: !1872, line: 154, baseType: !187, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1885, file: !1872, line: 156, baseType: !413, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1885, file: !1872, line: 162, baseType: !1890, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1872, line: 162, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1885, file: !1872, line: 167, baseType: !187, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1882, file: !1872, line: 211, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1872, line: 170, size: 64, elements: !1895)
!1895 = !{!1896}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1894, file: !1872, line: 171, baseType: !1870, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1882, file: !1872, line: 212, baseType: !1898, size: 256)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1872, line: 174, size: 256, elements: !1899)
!1899 = !{!1900, !1991, !1994, !1995}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1898, file: !1872, line: 175, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1872, line: 271, size: 768, elements: !1904)
!1904 = !{!1905, !1964, !1968, !1969, !1970, !1971, !1972, !1976, !1977, !1978, !1979, !1987}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1903, file: !1872, line: 276, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!111, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1872, line: 251, size: 1216, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1910, file: !1872, line: 253, baseType: !1870, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1910, file: !1872, line: 254, baseType: !563, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1910, file: !1872, line: 255, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1917, line: 17, size: 960, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1949, !1950, !1953}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1916, file: !1917, line: 18, baseType: !805, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1916, file: !1917, line: 19, baseType: !1108, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1916, file: !1917, line: 20, baseType: !1108, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1916, file: !1917, line: 21, baseType: !1108, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1916, file: !1917, line: 22, baseType: !1108, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1916, file: !1917, line: 23, baseType: !603, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1916, file: !1917, line: 24, baseType: !603, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !1917, line: 25, baseType: !591, size: 256, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1916, file: !1917, line: 26, baseType: !1928, size: 64, offset: 704)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1917, line: 32, size: 256, elements: !1931)
!1931 = !{!1932, !1937, !1941, !1945}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1930, file: !1917, line: 33, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!174, !1915, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1930, file: !1917, line: 34, baseType: !1938, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1915, !174}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1930, file: !1917, line: 35, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!174, !1915, !174, !1936}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1930, file: !1917, line: 36, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!111, !1915, !174}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1916, file: !1917, line: 27, baseType: !111, size: 32, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1916, file: !1917, line: 28, baseType: !1951, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1916, file: !1917, line: 29, baseType: !174, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1910, file: !1872, line: 256, baseType: !174, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1910, file: !1872, line: 259, baseType: !591, size: 256, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1910, file: !1872, line: 260, baseType: !591, size: 256, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1910, file: !1872, line: 261, baseType: !111, size: 32, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1910, file: !1872, line: 262, baseType: !169, size: 128, offset: 832)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1910, file: !1872, line: 263, baseType: !805, size: 64, offset: 960)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1910, file: !1872, line: 265, baseType: !1108, size: 64, offset: 1024)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1910, file: !1872, line: 266, baseType: !792, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1910, file: !1872, line: 267, baseType: !792, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1910, file: !1872, line: 268, baseType: !1499, size: 64, offset: 1152)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1903, file: !1872, line: 277, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !1909}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1903, file: !1872, line: 290, baseType: !1946, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1903, file: !1872, line: 292, baseType: !1933, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1903, file: !1872, line: 293, baseType: !1942, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1903, file: !1872, line: 294, baseType: !1938, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1903, file: !1872, line: 296, baseType: !1973, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1105, !1909, !805, !1108, !603}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1903, file: !1872, line: 306, baseType: !1108, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1903, file: !1872, line: 313, baseType: !792, size: 8, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1903, file: !1872, line: 314, baseType: !1973, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1903, file: !1872, line: 317, baseType: !1980, size: 64, offset: 640)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1983, !1909, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1984, line: 59, baseType: !11)
!1984 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !73, line: 61, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1903, file: !1872, line: 320, baseType: !1988, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!111, !1909, !1454}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1898, file: !1872, line: 176, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1872, line: 35, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1898, file: !1872, line: 177, baseType: !603, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1898, file: !1872, line: 178, baseType: !1870, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1871, file: !1872, line: 215, baseType: !174, size: 64, offset: 768)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1871, file: !1872, line: 221, baseType: !254, size: 64, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1871, file: !1872, line: 223, baseType: !225, size: 16, offset: 896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1871, file: !1872, line: 224, baseType: !955, size: 16, offset: 912)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1871, file: !1872, line: 225, baseType: !2001, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1872, line: 36, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1871, file: !1872, line: 227, baseType: !571, size: 128, align: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1210, file: !1211, line: 71, baseType: !2005, size: 32, offset: 448)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2006, line: 19, size: 32, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2007 = !{!2008}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2005, file: !2006, line: 20, baseType: !196, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1210, file: !1211, line: 73, baseType: !11, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1210, file: !1211, line: 74, baseType: !11, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1210, file: !1211, line: 75, baseType: !11, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1210, file: !1211, line: 76, baseType: !11, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1210, file: !1211, line: 77, baseType: !11, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1207, file: !29, line: 47, baseType: !1197, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1207, file: !29, line: 48, baseType: !1216, size: 64, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1207, file: !29, line: 49, baseType: !2017, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !29, line: 49, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1207, file: !29, line: 50, baseType: !2020, size: 64, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1198, file: !29, line: 418, baseType: !2022, size: 64, offset: 1408)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !29, line: 53, size: 448, elements: !2024)
!2024 = !{!2025, !2026, !2031, !2035, !2039, !2043}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2023, file: !29, line: 54, baseType: !1281, size: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2023, file: !29, line: 55, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1105, !2022, !2030, !805}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2023, file: !29, line: 57, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!1105, !2022, !2030, !795, !1108}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2023, file: !29, line: 59, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !1197, !795}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2023, file: !29, line: 60, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!111, !1197}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2023, file: !29, line: 61, baseType: !2044, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1197}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1198, file: !29, line: 419, baseType: !795, size: 64, offset: 1472)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1198, file: !29, line: 420, baseType: !795, size: 64, offset: 1536)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1198, file: !29, line: 421, baseType: !1216, size: 64, offset: 1600)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1198, file: !29, line: 424, baseType: !2051, size: 64, offset: 1664)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2053)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !29, line: 424, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1198, file: !29, line: 425, baseType: !2055, size: 64, offset: 1728)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1198, file: !29, line: 426, baseType: !11, size: 32, offset: 1792)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1198, file: !29, line: 435, baseType: !591, size: 256, offset: 1856)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1198, file: !29, line: 437, baseType: !2060, size: 64, offset: 2112)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2062, line: 69, size: 320, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2063 = !{!2064, !2065, !2066, !2083, !2085, !2089, !2090}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2061, file: !2062, line: 70, baseType: !795, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2061, file: !2062, line: 71, baseType: !1197, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2061, file: !2062, line: 72, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2062, line: 47, size: 256, elements: !2070)
!2070 = !{!2071, !2072, !2078, !2082}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2069, file: !2062, line: 49, baseType: !11, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2069, file: !2062, line: 51, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!111, !795, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2061)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2069, file: !2062, line: 53, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!111, !805, !2076}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2069, file: !2062, line: 55, baseType: !983, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2061, file: !2062, line: 73, baseType: !2084, size: 16, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2061, file: !2062, line: 74, baseType: !2086, size: 8, offset: 208)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !162, line: 16, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !164, line: 20, baseType: !2088)
!2088 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !2062, line: 75, baseType: !361, size: 8, offset: 216)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2062, line: 76, baseType: !2091, size: 64, offset: 256)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2062, line: 76, size: 64, elements: !2092)
!2092 = !{!2093, !2094, !2101}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2091, file: !2062, line: 77, baseType: !174, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2091, file: !2062, line: 78, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2062, line: 86, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2097, file: !2062, line: 87, baseType: !11, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2097, file: !2062, line: 88, baseType: !805, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2091, file: !2062, line: 79, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2062, line: 92, size: 256, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2110, !2111}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2104, file: !2062, line: 94, baseType: !11, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2104, file: !2062, line: 95, baseType: !11, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2104, file: !2062, line: 96, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2104, file: !2062, line: 97, baseType: !2067, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2104, file: !2062, line: 98, baseType: !174, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1198, file: !29, line: 438, baseType: !11, size: 32, offset: 2176)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1198, file: !29, line: 441, baseType: !11, size: 32, offset: 2208)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1198, file: !29, line: 442, baseType: !2051, size: 64, offset: 2240)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1198, file: !29, line: 443, baseType: !2055, size: 64, offset: 2304)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1198, file: !29, line: 444, baseType: !792, size: 8, offset: 2368)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1198, file: !29, line: 451, baseType: !792, size: 8, offset: 2376)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1198, file: !29, line: 454, baseType: !11, size: 32, offset: 2400)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1198, file: !29, line: 455, baseType: !2120, size: 64, offset: 2432)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2122, line: 23, size: 96, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2121, file: !2122, line: 24, baseType: !111, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2121, file: !2122, line: 24, baseType: !111, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2121, file: !2122, line: 24, baseType: !111, size: 32, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1198, file: !29, line: 458, baseType: !2128, size: 64, offset: 2496)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!111}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1198, file: !29, line: 460, baseType: !2132, size: 4032, align: 512, offset: 2560)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, size: 4032, elements: !2149)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !29, line: 362, size: 576, elements: !2134)
!2134 = !{!2135, !2136, !2137}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2133, file: !29, line: 363, baseType: !174, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !29, line: 364, baseType: !11, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2133, file: !29, line: 367, baseType: !2138, size: 448, offset: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !29, line: 319, size: 448, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2138, file: !29, line: 320, baseType: !1197, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2138, file: !29, line: 321, baseType: !2142, size: 384, offset: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2143, line: 40, size: 384, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2142, file: !2143, line: 41, baseType: !2146, size: 384, align: 64)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, align: 64, elements: !2147)
!2147 = !{!2148}
!2148 = !DISubrange(count: 2)
!2149 = !{!2150}
!2150 = !DISubrange(count: 7)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1198, file: !29, line: 463, baseType: !2152, size: 192, offset: 6592)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2153, line: 8, size: 192, elements: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2154 = !{!2155, !2156, !2158}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2152, file: !2153, line: 10, baseType: !11, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2152, file: !2153, line: 11, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2152, file: !2153, line: 12, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2161, line: 59, size: 48, elements: !2162)
!2161 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2162 = !{!2163, !2166, !2167, !2168, !2169, !2170}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2160, file: !2161, line: 60, baseType: !2164, size: 16)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !162, line: 18, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !760)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2160, file: !2161, line: 61, baseType: !2164, size: 16, offset: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2160, file: !2161, line: 63, baseType: !11, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2160, file: !2161, line: 64, baseType: !11, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2160, file: !2161, line: 65, baseType: !11, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2160, file: !2161, line: 66, baseType: !11, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1198, file: !29, line: 465, baseType: !187, size: 64, offset: 6784)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1198, file: !29, line: 469, baseType: !11, size: 32, offset: 6848)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1198, file: !29, line: 470, baseType: !169, size: 128, offset: 6912)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1198, file: !29, line: 471, baseType: !2175, size: 64, offset: 7040)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2177, line: 33, size: 96, elements: !2178)
!2177 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2178 = !{!2179, !2180, !2181, !2182}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2176, file: !2177, line: 37, baseType: !111, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2176, file: !2177, line: 43, baseType: !111, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2176, file: !2177, line: 45, baseType: !225, size: 16, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2176, file: !2177, line: 47, baseType: !225, size: 16, offset: 80)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1198, file: !29, line: 476, baseType: !2184, size: 64, offset: 7104)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !29, line: 378, size: 256, elements: !2186)
!2186 = !{!2187, !2203, !2204, !2205}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2185, file: !29, line: 379, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2190, line: 204, baseType: !2191)
!2190 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2190, line: 197, size: 192, elements: !2192)
!2192 = !{!2193, !2195, !2196, !2197, !2199, !2201}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2191, file: !2190, line: 198, baseType: !2194, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2190, line: 21, baseType: !191)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2191, file: !2190, line: 199, baseType: !363, size: 8, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2191, file: !2190, line: 200, baseType: !363, size: 8, offset: 40)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2191, file: !2190, line: 201, baseType: !2198, size: 16, offset: 48)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2190, line: 17, baseType: !224)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2191, file: !2190, line: 202, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2190, line: 16, baseType: !255)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2191, file: !2190, line: 203, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2190, line: 22, baseType: !255)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2185, file: !29, line: 380, baseType: !11, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2185, file: !29, line: 381, baseType: !805, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2185, file: !29, line: 382, baseType: !805, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1198, file: !29, line: 477, baseType: !2185, size: 256, offset: 7168)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1198, file: !29, line: 480, baseType: !2208, size: 64, offset: 7424)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !29, line: 480, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1198, file: !29, line: 483, baseType: !2211, size: 64, offset: 7488)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !29, line: 483, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1198, file: !29, line: 488, baseType: !805, size: 64, offset: 7552)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1198, file: !29, line: 492, baseType: !174, size: 64, offset: 7616)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1198, file: !29, line: 493, baseType: !11, size: 32, offset: 7680)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1198, file: !29, line: 495, baseType: !174, size: 64, offset: 7744)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1198, file: !29, line: 496, baseType: !11, size: 32, offset: 7808)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1198, file: !29, line: 499, baseType: !11, size: 32, offset: 7840)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1198, file: !29, line: 500, baseType: !2220, size: 64, offset: 7872)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2222, line: 45, baseType: !2223)
!2222 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1198, file: !29, line: 503, baseType: !11, size: 32, offset: 7936)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1198, file: !29, line: 504, baseType: !2226, size: 64, offset: 8000)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2229, line: 96, size: 192, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2230 = !{!2231, !2232, !2297, !2300}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2228, file: !2229, line: 97, baseType: !11, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2228, file: !2229, line: 98, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2229, line: 24, size: 3072, elements: !2235)
!2235 = !{!2236, !2238, !2239, !2240, !2241, !2255, !2256, !2257, !2258, !2270, !2282, !2283, !2294, !2295, !2296}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2234, file: !2229, line: 26, baseType: !2237, size: 128)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 128, elements: !2147)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2234, file: !2229, line: 27, baseType: !2237, size: 128, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2234, file: !2229, line: 28, baseType: !111, size: 32, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2234, file: !2229, line: 31, baseType: !545, size: 32, align: 512, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2234, file: !2229, line: 32, baseType: !2242, size: 960, offset: 576)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2243, line: 206, size: 960, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2244 = !{!2245, !2246, !2249, !2251, !2252, !2254}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2242, file: !2243, line: 207, baseType: !574, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2242, file: !2243, line: 208, baseType: !2247, size: 256, offset: 64)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2248, size: 256, elements: !650)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2242, file: !2243, line: 209, baseType: !2250, size: 256, offset: 320)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !650)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2242, file: !2243, line: 213, baseType: !1066, size: 64, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2242, file: !2243, line: 215, baseType: !2253, size: 256, offset: 640)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 256, elements: !650)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2242, file: !2243, line: 216, baseType: !361, size: 8, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2234, file: !2229, line: 33, baseType: !187, size: 64, offset: 1536)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2234, file: !2229, line: 34, baseType: !187, size: 64, offset: 1600)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2234, file: !2229, line: 35, baseType: !792, size: 8, offset: 1664)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2234, file: !2229, line: 36, baseType: !2259, size: 320, offset: 1728)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2260, line: 11, size: 320, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2261 = !{!2262, !2263, !2264, !2269}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2259, file: !2260, line: 16, baseType: !645, size: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2259, file: !2260, line: 17, baseType: !187, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2259, file: !2260, line: 18, baseType: !2265, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2259, file: !2260, line: 19, baseType: !190, size: 32, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2234, file: !2229, line: 37, baseType: !2271, size: 256, offset: 2048)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2272, line: 98, size: 256, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2271, file: !2272, line: 99, baseType: !584, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2271, file: !2272, line: 100, baseType: !169, size: 128, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2271, file: !2272, line: 101, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2272, line: 21, baseType: !2278)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2234, file: !2229, line: 38, baseType: !571, size: 128, align: 64, offset: 2304)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2234, file: !2229, line: 39, baseType: !2284, size: 64, offset: 2432)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2229, line: 49, size: 768, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2285, file: !2229, line: 50, baseType: !545, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2285, file: !2229, line: 51, baseType: !2250, size: 256, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2285, file: !2229, line: 53, baseType: !2250, size: 256, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2285, file: !2229, line: 54, baseType: !187, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2285, file: !2229, line: 55, baseType: !2284, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2285, file: !2229, line: 56, baseType: !111, size: 32, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2285, file: !2229, line: 57, baseType: !111, size: 32, offset: 736)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2234, file: !2229, line: 40, baseType: !187, size: 64, offset: 2496)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2234, file: !2229, line: 42, baseType: !111, size: 32, offset: 2560)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2234, file: !2229, line: 43, baseType: !2227, size: 64, offset: 2624)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2228, file: !2229, line: 99, baseType: !2298, offset: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2299, line: 211, elements: !556)
!2299 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2228, file: !2229, line: 100, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2229, line: 63, size: 3008, elements: !2303)
!2303 = !{!2304, !2305, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2335}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2302, file: !2229, line: 64, baseType: !2284, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2302, file: !2229, line: 65, baseType: !2306, size: 192, offset: 64)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2284, size: 192, elements: !629)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2302, file: !2229, line: 67, baseType: !111, size: 32, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2302, file: !2229, line: 68, baseType: !591, size: 256, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !2229, line: 69, baseType: !545, size: 32, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2302, file: !2229, line: 70, baseType: !591, size: 256, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2302, file: !2229, line: 71, baseType: !187, size: 64, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2302, file: !2229, line: 72, baseType: !187, size: 64, offset: 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2302, file: !2229, line: 73, baseType: !187, size: 64, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2302, file: !2229, line: 74, baseType: !187, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2302, file: !2229, line: 75, baseType: !187, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2302, file: !2229, line: 76, baseType: !187, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2302, file: !2229, line: 77, baseType: !187, size: 64, offset: 1280)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2302, file: !2229, line: 78, baseType: !187, size: 64, offset: 1344)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2302, file: !2229, line: 79, baseType: !792, size: 8, offset: 1408)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2302, file: !2229, line: 80, baseType: !187, size: 64, offset: 1472)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2302, file: !2229, line: 81, baseType: !591, size: 256, offset: 1536)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2302, file: !2229, line: 82, baseType: !1419, size: 256, offset: 1792)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2302, file: !2229, line: 84, baseType: !200, size: 32, offset: 2048)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2302, file: !2229, line: 87, baseType: !187, size: 64, offset: 2112)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2302, file: !2229, line: 88, baseType: !187, size: 64, offset: 2176)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2302, file: !2229, line: 89, baseType: !2327, size: 704, offset: 2240)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2272, line: 111, size: 704, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2334}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2327, file: !2272, line: 112, baseType: !2271, size: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2327, file: !2272, line: 113, baseType: !2259, size: 320, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2327, file: !2272, line: 116, baseType: !2332, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2272, line: 18, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2327, file: !2272, line: 117, baseType: !111, size: 32, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2302, file: !2229, line: 90, baseType: !2227, size: 64, offset: 2944)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1198, file: !29, line: 515, baseType: !2337, size: 64, offset: 8064)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2339, line: 117, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2338, file: !2339, line: 118, baseType: !724, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2338, file: !2339, line: 119, baseType: !724, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2338, file: !2339, line: 120, baseType: !1066, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1198, file: !29, line: 516, baseType: !11, size: 32, offset: 8128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1198, file: !29, line: 519, baseType: !11, size: 32, offset: 8160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1198, file: !29, line: 520, baseType: !2347, size: 64, offset: 8192)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1198, file: !29, line: 523, baseType: !2349, size: 64, offset: 8256)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !29, line: 523, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1198, file: !29, line: 524, baseType: !11, size: 32, offset: 8320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1198, file: !29, line: 525, baseType: !2354, size: 64, offset: 8384)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !29, line: 525, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1198, file: !29, line: 526, baseType: !11, size: 32, offset: 8448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1198, file: !29, line: 533, baseType: !174, size: 64, offset: 8512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1198, file: !29, line: 534, baseType: !11, size: 32, offset: 8576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1198, file: !29, line: 535, baseType: !2361, size: 64, offset: 8640)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1198, file: !29, line: 536, baseType: !11, size: 32, offset: 8704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1198, file: !29, line: 539, baseType: !111, size: 32, offset: 8736)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1198, file: !29, line: 540, baseType: !2365, size: 64, offset: 8768)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2367, line: 32, size: 64, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2366, file: !2367, line: 33, baseType: !724, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2366, file: !2367, line: 34, baseType: !724, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1198, file: !29, line: 563, baseType: !169, size: 128, offset: 8832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1198, file: !29, line: 565, baseType: !169, size: 128, offset: 8960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1198, file: !29, line: 568, baseType: !2374, size: 64, offset: 9088)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1198, file: !29, line: 570, baseType: !200, size: 32, offset: 9152)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !73, line: 2382, baseType: !1173, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1174, file: !73, line: 2383, baseType: !641, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1174, file: !73, line: 2385, baseType: !2379, offset: 576)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2299, line: 206, elements: !556)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1174, file: !73, line: 2386, baseType: !2379, offset: 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1174, file: !73, line: 2387, baseType: !2379, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1174, file: !73, line: 2388, baseType: !2383, offset: 576)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, elements: !629)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1174, file: !73, line: 2390, baseType: !2379, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1174, file: !73, line: 2391, baseType: !2379, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1174, file: !73, line: 2392, baseType: !2379, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1174, file: !73, line: 2393, baseType: !2379, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1165, file: !73, line: 1197, baseType: !2389, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !73, line: 2057, size: 1664, elements: !2392)
!2392 = !{!2393, !2397, !2401, !2402, !2406, !2410, !2414, !2415, !2416, !2420, !2424, !2428, !2429, !2430, !2436, !2440, !2441, !2445, !2446, !2447, !2448, !2452, !2456, !2503, !2518, !2519}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2391, file: !73, line: 2058, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!951, !1164}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2391, file: !73, line: 2059, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !951}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2391, file: !73, line: 2060, baseType: !2398, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2391, file: !73, line: 2062, baseType: !2403, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !951, !111}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2391, file: !73, line: 2063, baseType: !2407, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!111, !951, !1631}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2391, file: !73, line: 2064, baseType: !2411, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!111, !951}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2391, file: !73, line: 2065, baseType: !2398, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2391, file: !73, line: 2066, baseType: !1193, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2391, file: !73, line: 2067, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!111, !1164, !111}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2391, file: !73, line: 2068, baseType: !2421, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!111, !1164, !72}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2391, file: !73, line: 2069, baseType: !2425, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!111, !1164}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2391, file: !73, line: 2070, baseType: !2421, size: 64, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2391, file: !73, line: 2071, baseType: !2425, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2391, file: !73, line: 2072, baseType: !2431, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!111, !916, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !73, line: 62, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2391, file: !73, line: 2073, baseType: !2437, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!111, !1164, !2157, !805}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2391, file: !73, line: 2074, baseType: !1193, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2391, file: !73, line: 2076, baseType: !2442, size: 64, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!111, !1915, !916}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2391, file: !73, line: 2077, baseType: !2442, size: 64, offset: 1088)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2391, file: !73, line: 2078, baseType: !2442, size: 64, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2391, file: !73, line: 2079, baseType: !2442, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2391, file: !73, line: 2081, baseType: !2449, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!1105, !1164, !111, !805, !1108, !603}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2391, file: !73, line: 2082, baseType: !2453, size: 64, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!1105, !1164, !111, !795, !1108, !603}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2391, file: !73, line: 2083, baseType: !2457, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2460, !951}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !78, line: 296, size: 1664, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2488, !2489, !2490}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2462, file: !78, line: 297, baseType: !645, size: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2462, file: !78, line: 298, baseType: !169, size: 128, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2462, file: !78, line: 299, baseType: !169, size: 128, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2462, file: !78, line: 300, baseType: !169, size: 128, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2462, file: !78, line: 301, baseType: !591, size: 256, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2462, file: !78, line: 302, baseType: !545, size: 32, offset: 768)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2462, file: !78, line: 303, baseType: !200, size: 32, offset: 800)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2462, file: !78, line: 304, baseType: !1164, size: 64, offset: 832)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2462, file: !78, line: 305, baseType: !2473, size: 64, offset: 896)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !78, line: 68, size: 64, elements: !2474)
!2474 = !{!2475, !2487}
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !78, line: 69, baseType: !2476, size: 32)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !78, line: 69, size: 32, elements: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2476, file: !78, line: 70, baseType: !673, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2476, file: !78, line: 71, baseType: !691, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2476, file: !78, line: 72, baseType: !2481, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2482, line: 24, baseType: !2483)
!2482 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2482, line: 22, size: 32, elements: !2484)
!2484 = !{!2485}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2483, file: !2482, line: 23, baseType: !2486, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2482, line: 20, baseType: !679)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2473, file: !78, line: 74, baseType: !77, size: 32, offset: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2462, file: !78, line: 306, baseType: !603, size: 64, offset: 960)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2462, file: !78, line: 307, baseType: !187, size: 64, offset: 1024)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2462, file: !78, line: 308, baseType: !2491, size: 576, offset: 1088)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !78, line: 205, size: 576, elements: !2492)
!2492 = !{!2493, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2491, file: !78, line: 206, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !78, line: 66, baseType: !165)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2491, file: !78, line: 207, baseType: !2494, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2491, file: !78, line: 208, baseType: !2494, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2491, file: !78, line: 209, baseType: !2494, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2491, file: !78, line: 210, baseType: !2494, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2491, file: !78, line: 211, baseType: !2494, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2491, file: !78, line: 212, baseType: !2494, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2491, file: !78, line: 213, baseType: !748, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2491, file: !78, line: 214, baseType: !748, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2391, file: !73, line: 2085, baseType: !2504, size: 64, offset: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!1066, !1164, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2509, line: 15, size: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2510 = !{!2511, !2512, !2513, !2514, !2515}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2508, file: !2509, line: 16, baseType: !1160, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2508, file: !2509, line: 19, baseType: !111, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2508, file: !2509, line: 26, baseType: !187, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2508, file: !2509, line: 33, baseType: !187, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2508, file: !2509, line: 36, baseType: !2516, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2509, line: 36, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2391, file: !73, line: 2087, baseType: !2504, size: 64, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2391, file: !73, line: 2089, baseType: !1193, size: 64, offset: 1600)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1165, file: !73, line: 1198, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !78, line: 324, size: 704, elements: !2524)
!2524 = !{!2525, !2529, !2533, !2537, !2538, !2539, !2540, !2541, !2546, !2551, !2555}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2523, file: !78, line: 325, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!111, !2461}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2523, file: !78, line: 326, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2461, !1164, !111}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2523, file: !78, line: 327, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2461}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2523, file: !78, line: 328, baseType: !2526, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2523, file: !78, line: 329, baseType: !2526, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2523, file: !78, line: 330, baseType: !2526, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2523, file: !78, line: 331, baseType: !2417, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2523, file: !78, line: 334, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!2545, !951}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2523, file: !78, line: 335, baseType: !2547, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!111, !951, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2523, file: !78, line: 337, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!111, !951, !2545}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2523, file: !78, line: 339, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!111, !1164, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1165, file: !73, line: 1199, baseType: !2561, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !78, line: 430, size: 704, elements: !2564)
!2564 = !{!2565, !2569, !2570, !2574, !2575, !2576, !2591, !2614, !2618, !2619, !2642}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2563, file: !78, line: 431, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!111, !1164, !111, !111, !1074}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2563, file: !78, line: 432, baseType: !2417, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2563, file: !78, line: 433, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!111, !1164, !11}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2563, file: !78, line: 434, baseType: !2571, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2563, file: !78, line: 435, baseType: !2417, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2563, file: !78, line: 436, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!111, !1164, !111, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !78, line: 417, size: 256, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2581, file: !78, line: 418, baseType: !111, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2581, file: !78, line: 419, baseType: !11, size: 32, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2581, file: !78, line: 420, baseType: !11, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2581, file: !78, line: 422, baseType: !11, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2581, file: !78, line: 423, baseType: !11, size: 32, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2581, file: !78, line: 424, baseType: !11, size: 32, offset: 160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2581, file: !78, line: 425, baseType: !11, size: 32, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2581, file: !78, line: 426, baseType: !11, size: 32, offset: 224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2563, file: !78, line: 437, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!111, !1164, !2473, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !78, line: 345, size: 960, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2596, file: !78, line: 346, baseType: !111, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2596, file: !78, line: 347, baseType: !254, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2596, file: !78, line: 348, baseType: !254, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2596, file: !78, line: 349, baseType: !254, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2596, file: !78, line: 350, baseType: !254, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2596, file: !78, line: 351, baseType: !254, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2596, file: !78, line: 352, baseType: !254, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2596, file: !78, line: 353, baseType: !161, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2596, file: !78, line: 355, baseType: !161, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2596, file: !78, line: 356, baseType: !111, size: 32, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2596, file: !78, line: 357, baseType: !111, size: 32, offset: 608)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2596, file: !78, line: 358, baseType: !254, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2596, file: !78, line: 359, baseType: !254, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2596, file: !78, line: 360, baseType: !254, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2596, file: !78, line: 361, baseType: !161, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2596, file: !78, line: 362, baseType: !111, size: 32, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2563, file: !78, line: 438, baseType: !2615, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!111, !1164, !2559, !2595}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2563, file: !78, line: 440, baseType: !2592, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2563, file: !78, line: 441, baseType: !2620, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!111, !1164, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !78, line: 411, size: 1408, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2624, file: !78, line: 412, baseType: !11, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2624, file: !78, line: 413, baseType: !2628, size: 1344, offset: 64)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 1344, elements: !629)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !78, line: 397, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2641}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !78, line: 398, baseType: !11, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2629, file: !78, line: 399, baseType: !11, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2629, file: !78, line: 401, baseType: !11, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2629, file: !78, line: 402, baseType: !11, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2629, file: !78, line: 403, baseType: !11, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2629, file: !78, line: 404, baseType: !11, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2629, file: !78, line: 405, baseType: !11, size: 32, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2629, file: !78, line: 406, baseType: !256, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2629, file: !78, line: 407, baseType: !2640, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !170, line: 132, baseType: !254)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2629, file: !78, line: 408, baseType: !2640, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2563, file: !78, line: 442, baseType: !2571, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1165, file: !73, line: 1200, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !73, line: 54, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1165, file: !73, line: 1201, baseType: !187, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1165, file: !73, line: 1202, baseType: !187, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1165, file: !73, line: 1203, baseType: !187, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1165, file: !73, line: 1204, baseType: !916, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1165, file: !73, line: 1205, baseType: !732, size: 320, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1165, file: !73, line: 1206, baseType: !111, size: 32, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1165, file: !73, line: 1207, baseType: !200, size: 32, offset: 1248)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1165, file: !73, line: 1209, baseType: !174, size: 64, offset: 1280)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1165, file: !73, line: 1211, baseType: !2656, size: 64, offset: 1344)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !73, line: 1211, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1165, file: !73, line: 1223, baseType: !2661, size: 64, offset: 1408)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !928, line: 34, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2661, file: !928, line: 35, baseType: !931, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1165, file: !73, line: 1224, baseType: !169, size: 128, offset: 1472)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1165, file: !73, line: 1225, baseType: !2666, size: 64, offset: 1600)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !73, line: 1225, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1165, file: !73, line: 1226, baseType: !2669, size: 64, offset: 1664)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !73, line: 1226, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1165, file: !73, line: 1227, baseType: !2672, size: 64, offset: 1728)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !73, line: 50, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1165, file: !73, line: 1228, baseType: !2675, size: 64, offset: 1792)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !73, line: 1228, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1165, file: !73, line: 1229, baseType: !645, size: 128, offset: 1856)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1165, file: !73, line: 1230, baseType: !11, size: 32, offset: 1984)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1165, file: !73, line: 1231, baseType: !2680, size: 2496, offset: 2048)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !78, line: 521, size: 2496, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2686, !2718}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2680, file: !78, line: 522, baseType: !11, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2680, file: !78, line: 523, baseType: !732, size: 320, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2680, file: !78, line: 524, baseType: !2685, size: 192, offset: 384)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 192, elements: !629)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2680, file: !78, line: 525, baseType: !2687, size: 1728, offset: 576)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 1728, elements: !629)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !78, line: 222, size: 576, elements: !2689)
!2689 = !{!2690, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2688, file: !78, line: 223, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !78, line: 445, size: 256, elements: !2693)
!2693 = !{!2694, !2695, !2708, !2709}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2692, file: !78, line: 446, baseType: !111, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2692, file: !78, line: 447, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !78, line: 312, size: 512, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2698, file: !78, line: 313, baseType: !2417, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2698, file: !78, line: 314, baseType: !2417, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2698, file: !78, line: 315, baseType: !2417, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2698, file: !78, line: 316, baseType: !2417, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2698, file: !78, line: 317, baseType: !2526, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2698, file: !78, line: 318, baseType: !2526, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2698, file: !78, line: 319, baseType: !2526, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2698, file: !78, line: 320, baseType: !2556, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2692, file: !78, line: 448, baseType: !1197, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2692, file: !78, line: 449, baseType: !2691, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2688, file: !78, line: 224, baseType: !111, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2688, file: !78, line: 226, baseType: !169, size: 128, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2688, file: !78, line: 227, baseType: !187, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2688, file: !78, line: 228, baseType: !11, size: 32, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2688, file: !78, line: 229, baseType: !11, size: 32, offset: 352)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2688, file: !78, line: 230, baseType: !2494, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2688, file: !78, line: 231, baseType: !2494, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2688, file: !78, line: 232, baseType: !174, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2680, file: !78, line: 526, baseType: !2719, size: 192, offset: 2304)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 192, elements: !629)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1165, file: !73, line: 1233, baseType: !2721, size: 2368, offset: 4544)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !73, line: 1184, size: 2368, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2721, file: !73, line: 1185, baseType: !225, size: 16)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2721, file: !73, line: 1186, baseType: !225, size: 16, offset: 16)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2721, file: !73, line: 1187, baseType: !2726, size: 2304, offset: 64)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2727, size: 2304, elements: !629)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2728, line: 12, size: 768, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2729 = !{!2730, !2738, !2739, !2744, !2745}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2727, file: !2728, line: 13, baseType: !2731, size: 384)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2732, line: 17, size: 384, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2731, file: !2732, line: 18, baseType: !111, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2731, file: !2732, line: 19, baseType: !111, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2731, file: !2732, line: 20, baseType: !654, size: 192, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2731, file: !2732, line: 22, baseType: !571, size: 128, align: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2727, file: !2728, line: 14, baseType: !2109, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2727, file: !2728, line: 15, baseType: !2740, size: 64, offset: 448)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2741, line: 16, size: 64, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2740, file: !2741, line: 17, baseType: !178, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2727, file: !2728, line: 16, baseType: !654, size: 192, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2727, file: !2728, line: 17, baseType: !200, size: 32, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1165, file: !73, line: 1240, baseType: !174, size: 64, offset: 6912)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1165, file: !73, line: 1243, baseType: !190, size: 32, offset: 6976)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1165, file: !73, line: 1245, baseType: !748, size: 64, offset: 7040)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1165, file: !73, line: 1246, baseType: !748, size: 64, offset: 7104)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1165, file: !73, line: 1248, baseType: !191, size: 32, offset: 7168)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1165, file: !73, line: 1249, baseType: !2752, size: 64, offset: 7232)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !73, line: 634, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1165, file: !73, line: 1252, baseType: !2755, size: 256, offset: 7296)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !2756)
!2756 = !{!2757}
!2757 = !DISubrange(count: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1165, file: !73, line: 1253, baseType: !2759, size: 128, offset: 7552)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2760, line: 21, baseType: !2761)
!2760 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 19, size: 128, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2761, file: !2760, line: 20, baseType: !2764, size: 128)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 16)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1165, file: !73, line: 1255, baseType: !11, size: 32, offset: 7680)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1165, file: !73, line: 1261, baseType: !591, size: 256, offset: 7744)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1165, file: !73, line: 1267, baseType: !795, size: 64, offset: 8000)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1165, file: !73, line: 1269, baseType: !2771, size: 64, offset: 8064)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !918, line: 128, size: 1024, align: 512, elements: !2774)
!2774 = !{!2775, !2779, !2780, !2787, !2793, !2797, !2801, !2805, !2806, !2810, !2814, !2819, !2823}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2773, file: !918, line: 129, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!111, !916, !11}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2773, file: !918, line: 130, baseType: !2776, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2773, file: !918, line: 131, baseType: !2781, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!111, !2784, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2773, file: !918, line: 132, baseType: !2788, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!111, !2784, !11, !795, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2773, file: !918, line: 134, baseType: !2794, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!111, !2784}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2773, file: !918, line: 135, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!111, !916}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2773, file: !918, line: 136, baseType: !2802, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !916}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2773, file: !918, line: 137, baseType: !2802, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2773, file: !918, line: 138, baseType: !2807, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !916, !951}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2773, file: !918, line: 139, baseType: !2811, size: 64, offset: 576)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!805, !916, !805, !111}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2773, file: !918, line: 140, baseType: !2815, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!911, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2773, file: !918, line: 141, baseType: !2820, size: 64, offset: 704)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!111, !1074, !792}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2773, file: !918, line: 142, baseType: !2824, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!916, !916, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1165, file: !73, line: 1271, baseType: !2830, size: 448, offset: 8128)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2509, line: 63, size: 448, elements: !2831)
!2831 = !{!2832, !2837, !2838, !2839, !2840, !2841, !2842}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2830, file: !2509, line: 64, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!187, !2836, !2507}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2830, file: !2509, line: 66, baseType: !2833, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2830, file: !2509, line: 69, baseType: !1066, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2830, file: !2509, line: 70, baseType: !111, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !2509, line: 71, baseType: !11, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2830, file: !2509, line: 74, baseType: !169, size: 128, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2830, file: !2509, line: 85, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1165, file: !73, line: 1274, baseType: !584, size: 64, offset: 8576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1165, file: !73, line: 1280, baseType: !584, size: 64, offset: 8640)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1165, file: !73, line: 1283, baseType: !111, size: 32, offset: 8704)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1165, file: !73, line: 1286, baseType: !1811, size: 32, offset: 8736)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1165, file: !73, line: 1289, baseType: !2332, size: 64, offset: 8768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1165, file: !73, line: 1290, baseType: !641, size: 64, offset: 8832)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1165, file: !73, line: 1297, baseType: !878, size: 64, offset: 8896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1165, file: !73, line: 1304, baseType: !2852, size: 64, offset: 8960)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2853, line: 49, size: 64, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2852, file: !2853, line: 50, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2853, line: 41, size: 512, align: 512, elements: !2858)
!2858 = !{!2859, !2860, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2857, file: !2853, line: 43, baseType: !545, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2857, file: !2853, line: 45, baseType: !2861, size: 192, offset: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2853, line: 29, size: 192, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2861, file: !2853, line: 30, baseType: !169, size: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2861, file: !2853, line: 32, baseType: !1066, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2857, file: !2853, line: 46, baseType: !1066, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1165, file: !73, line: 1305, baseType: !2852, size: 64, offset: 9024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1165, file: !73, line: 1306, baseType: !571, size: 128, align: 64, offset: 9088)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1165, file: !73, line: 1307, baseType: !2271, size: 256, offset: 9216)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1165, file: !73, line: 1309, baseType: !591, size: 256, offset: 9472)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1165, file: !73, line: 1314, baseType: !111, size: 32, offset: 9728)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1165, file: !73, line: 1317, baseType: !545, size: 32, align: 512, offset: 10240)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1165, file: !73, line: 1318, baseType: !169, size: 128, offset: 10304)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1165, file: !73, line: 1320, baseType: !545, size: 32, offset: 10432)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1165, file: !73, line: 1321, baseType: !169, size: 128, offset: 10496)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !952, file: !73, line: 656, baseType: !1314, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !952, file: !73, line: 659, baseType: !174, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !952, file: !73, line: 663, baseType: !187, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !73, line: 671, baseType: !2879, size: 32, offset: 704)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !73, line: 671, size: 32, elements: !2880)
!2880 = !{!2881, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2879, file: !73, line: 672, baseType: !2882, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2879, file: !73, line: 673, baseType: !11, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !952, file: !73, line: 675, baseType: !1026, size: 32, offset: 736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !952, file: !73, line: 676, baseType: !603, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !952, file: !73, line: 677, baseType: !1062, size: 128, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !952, file: !73, line: 678, baseType: !1062, size: 128, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !952, file: !73, line: 679, baseType: !1062, size: 128, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !952, file: !73, line: 680, baseType: !545, size: 32, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !952, file: !73, line: 681, baseType: !225, size: 16, offset: 1248)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !952, file: !73, line: 682, baseType: !361, size: 8, offset: 1264)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !952, file: !73, line: 683, baseType: !361, size: 8, offset: 1272)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !952, file: !73, line: 684, baseType: !2640, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !952, file: !73, line: 691, baseType: !187, size: 64, offset: 1344)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !952, file: !73, line: 692, baseType: !732, size: 320, offset: 1408)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !952, file: !73, line: 694, baseType: !187, size: 64, offset: 1728)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !952, file: !73, line: 695, baseType: !187, size: 64, offset: 1792)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !952, file: !73, line: 697, baseType: !645, size: 128, offset: 1856)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !952, file: !73, line: 698, baseType: !169, size: 128, offset: 1984)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !952, file: !73, line: 707, baseType: !169, size: 128, offset: 2112)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !952, file: !73, line: 708, baseType: !169, size: 128, offset: 2240)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !73, line: 709, baseType: !2903, size: 128, offset: 2368)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !73, line: 709, size: 128, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2903, file: !73, line: 710, baseType: !641, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2903, file: !73, line: 711, baseType: !571, size: 128, align: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !952, file: !73, line: 713, baseType: !586, size: 64, offset: 2496)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !952, file: !73, line: 714, baseType: !586, size: 64, offset: 2560)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !952, file: !73, line: 715, baseType: !200, size: 32, offset: 2624)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !952, file: !73, line: 716, baseType: !200, size: 32, offset: 2656)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !952, file: !73, line: 717, baseType: !200, size: 32, offset: 2688)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !952, file: !73, line: 719, baseType: !200, size: 32, offset: 2720)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !73, line: 721, baseType: !2914, size: 64, offset: 2752)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !73, line: 721, size: 64, elements: !2915)
!2915 = !{!2916, !3042}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2914, file: !73, line: 722, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !73, line: 1914, size: 2112, elements: !2920)
!2920 = !{!2921, !2922, !2926, !2930, !2934, !2935, !2936, !2942, !2955, !2959, !2963, !2964, !2968, !2969, !2973, !2978, !2979, !2983, !2987, !2993, !2994, !2998, !2999, !3005, !3009, !3010, !3015, !3019, !3023, !3027, !3031, !3032, !3038}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2919, file: !73, line: 1915, baseType: !1197, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2919, file: !73, line: 1916, baseType: !2923, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!603, !563, !603, !111}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2919, file: !73, line: 1917, baseType: !2927, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!1105, !563, !805, !1108, !1936}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2919, file: !73, line: 1918, baseType: !2931, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1105, !563, !795, !1108, !1936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2919, file: !73, line: 1919, baseType: !1745, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2919, file: !73, line: 1920, baseType: !1745, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2919, file: !73, line: 1921, baseType: !2937, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!111, !1748, !2940, !11}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !73, line: 53, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2919, file: !73, line: 1923, baseType: !2943, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!111, !563, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !73, line: 1858, size: 128, elements: !2948)
!2948 = !{!2949, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2947, file: !73, line: 1859, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !73, line: 1855, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!792, !2946, !795, !111, !603, !254, !11}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2947, file: !73, line: 1860, baseType: !603, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2919, file: !73, line: 1924, baseType: !2956, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!1983, !563, !1985}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2919, file: !73, line: 1925, baseType: !2960, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!1066, !563, !11, !187}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2919, file: !73, line: 1926, baseType: !2960, size: 64, offset: 640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2919, file: !73, line: 1927, baseType: !2965, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!111, !563, !1454}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2919, file: !73, line: 1928, baseType: !187, size: 64, offset: 768)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2919, file: !73, line: 1929, baseType: !2970, size: 64, offset: 832)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!111, !951, !563}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2919, file: !73, line: 1930, baseType: !2974, size: 64, offset: 896)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!111, !563, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !73, line: 1061, baseType: !174)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2919, file: !73, line: 1931, baseType: !2970, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2919, file: !73, line: 1932, baseType: !2980, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!111, !563, !603, !603, !111}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2919, file: !73, line: 1933, baseType: !2984, size: 64, offset: 1088)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!111, !111, !563, !111}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !73, line: 1934, baseType: !2988, size: 64, offset: 1152)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!111, !563, !111, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !73, line: 1063, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2919, file: !73, line: 1935, baseType: !560, size: 64, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2919, file: !73, line: 1936, baseType: !2995, size: 64, offset: 1280)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!111, !111}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2919, file: !73, line: 1937, baseType: !2988, size: 64, offset: 1344)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2919, file: !73, line: 1938, baseType: !3000, size: 64, offset: 1408)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!1105, !3003, !563, !1936, !1108, !11}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !180, line: 59, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2919, file: !73, line: 1939, baseType: !3006, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!1105, !563, !1936, !3003, !1108, !11}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2919, file: !73, line: 1940, baseType: !1801, size: 64, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2919, file: !73, line: 1941, baseType: !3011, size: 64, offset: 1600)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!111, !563, !111, !3014, !1722}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2919, file: !73, line: 1942, baseType: !3016, size: 64, offset: 1664)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1066, !563, !111, !603, !603}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2919, file: !73, line: 1944, baseType: !3020, size: 64, offset: 1728)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !1915, !563}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2919, file: !73, line: 1948, baseType: !3024, size: 64, offset: 1792)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!1105, !563, !603, !563, !603, !1108, !11}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2919, file: !73, line: 1950, baseType: !3028, size: 64, offset: 1856)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!603, !563, !603, !563, !603, !603, !11}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2919, file: !73, line: 1953, baseType: !2980, size: 64, offset: 1920)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2919, file: !73, line: 1954, baseType: !3033, size: 64, offset: 1984)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!111, !3036, !11}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !73, line: 1911, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2919, file: !73, line: 1955, baseType: !3039, size: 64, offset: 2048)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!111, !3036, !2940, !11}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2914, file: !73, line: 723, baseType: !2398, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !952, file: !73, line: 725, baseType: !3044, size: 64, offset: 2816)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !73, line: 725, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !952, file: !73, line: 726, baseType: !1315, size: 1536, align: 64, offset: 2880)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !952, file: !73, line: 727, baseType: !169, size: 128, offset: 4416)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !73, line: 728, baseType: !3049, size: 64, offset: 4544)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !73, line: 728, size: 64, elements: !3050)
!3050 = !{!3051, !3052, !3063, !3064}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3049, file: !73, line: 729, baseType: !3003, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3049, file: !73, line: 730, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3055, line: 14, size: 832, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3054, file: !3055, line: 15, baseType: !1210, size: 512)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3054, file: !3055, line: 16, baseType: !1197, size: 64, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3054, file: !3055, line: 17, baseType: !2917, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3054, file: !3055, line: 18, baseType: !169, size: 128, offset: 640)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3054, file: !3055, line: 19, baseType: !1026, size: 32, offset: 768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3054, file: !3055, line: 20, baseType: !11, size: 32, offset: 800)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3049, file: !73, line: 731, baseType: !805, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3049, file: !73, line: 732, baseType: !11, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !952, file: !73, line: 735, baseType: !191, size: 32, offset: 4608)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !952, file: !73, line: 738, baseType: !191, size: 32, offset: 4640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !952, file: !73, line: 739, baseType: !2752, size: 64, offset: 4672)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !952, file: !73, line: 750, baseType: !174, size: 64, offset: 4736)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !917, file: !918, line: 91, baseType: !3070, size: 256, offset: 448)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !2756)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !917, file: !918, line: 94, baseType: !3072, size: 64, offset: 704)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3073, line: 25, size: 64, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !3073, line: 26, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !3073, line: 26, size: 64, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3076, file: !3073, line: 28, baseType: !255, size: 64, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3073, line: 30, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !3073, line: 30, size: 64, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3080, file: !3073, line: 31, baseType: !545, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3080, file: !3073, line: 32, baseType: !111, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !917, file: !918, line: 95, baseType: !2771, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !917, file: !918, line: 96, baseType: !1164, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !917, file: !918, line: 97, baseType: !187, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !917, file: !918, line: 98, baseType: !174, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !918, line: 100, baseType: !3089, size: 128, offset: 1024)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 100, size: 128, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3089, file: !918, line: 101, baseType: !169, size: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3089, file: !918, line: 102, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !917, file: !918, line: 104, baseType: !169, size: 128, offset: 1152)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !917, file: !918, line: 105, baseType: !169, size: 128, offset: 1280)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !917, file: !918, line: 113, baseType: !3097, size: 128, offset: 1408)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 109, size: 128, elements: !3098)
!3098 = !{!3099, !3100, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3097, file: !918, line: 110, baseType: !645, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3097, file: !918, line: 111, baseType: !927, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3097, file: !918, line: 112, baseType: !571, size: 128, align: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !912, file: !913, line: 72, baseType: !1164, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !912, file: !913, line: 73, baseType: !111, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !912, file: !913, line: 74, baseType: !991, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !907, file: !908, line: 10, baseType: !916, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !564, file: !73, line: 1015, baseType: !951, size: 64, offset: 1344)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !564, file: !73, line: 1016, baseType: !2917, size: 64, offset: 1408)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !564, file: !73, line: 1018, baseType: !254, size: 64, offset: 1472)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !564, file: !73, line: 1020, baseType: !174, size: 64, offset: 1536)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !564, file: !73, line: 1023, baseType: !174, size: 64, offset: 1600)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !564, file: !73, line: 1027, baseType: !3112, size: 64, offset: 1664)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !564, file: !73, line: 1029, baseType: !1314, size: 64, offset: 1728)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !564, file: !73, line: 1030, baseType: !1811, size: 32, offset: 1792)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !564, file: !73, line: 1031, baseType: !1811, size: 32, offset: 1824)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !531, file: !44, line: 756, baseType: !187, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !531, file: !44, line: 757, baseType: !187, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !531, file: !44, line: 760, baseType: !187, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !531, file: !44, line: 761, baseType: !187, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !531, file: !44, line: 763, baseType: !187, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !531, file: !44, line: 764, baseType: !3122, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1469, line: 299, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1469, line: 299, size: 64, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3124, file: !1469, line: 299, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1474, line: 18, baseType: !187)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !531, file: !44, line: 773, baseType: !200, size: 32, offset: 1088)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !531, file: !44, line: 785, baseType: !200, size: 32, offset: 1120)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !531, file: !44, line: 795, baseType: !3131, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3132, file: !44, line: 727, baseType: !254, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3132, file: !44, line: 728, baseType: !111, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !531, file: !44, line: 801, baseType: !187, size: 64, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !531, file: !44, line: 804, baseType: !584, size: 64, offset: 1280)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !531, file: !44, line: 806, baseType: !111, size: 32, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !531, file: !44, line: 808, baseType: !545, size: 32, offset: 1376)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !531, file: !44, line: 823, baseType: !732, size: 320, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !531, file: !44, line: 825, baseType: !169, size: 128, offset: 1728)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !531, file: !44, line: 845, baseType: !111, size: 32, offset: 1856)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !531, file: !44, line: 849, baseType: !187, size: 64, offset: 1920)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !531, file: !44, line: 850, baseType: !187, size: 64, offset: 1984)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !531, file: !44, line: 852, baseType: !187, size: 64, offset: 2048)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !531, file: !44, line: 853, baseType: !187, size: 64, offset: 2112)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !531, file: !44, line: 854, baseType: !586, size: 64, offset: 2176)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !531, file: !44, line: 855, baseType: !187, size: 64, offset: 2240)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !531, file: !44, line: 856, baseType: !187, size: 64, offset: 2304)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !531, file: !44, line: 857, baseType: !187, size: 64, offset: 2368)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !531, file: !44, line: 858, baseType: !187, size: 64, offset: 2432)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !531, file: !44, line: 865, baseType: !401, size: 32, offset: 2496)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !531, file: !44, line: 867, baseType: !545, size: 32, offset: 2528)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !531, file: !44, line: 869, baseType: !187, size: 64, offset: 2560)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !531, file: !44, line: 869, baseType: !187, size: 64, offset: 2624)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !531, file: !44, line: 869, baseType: !187, size: 64, offset: 2688)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !531, file: !44, line: 869, baseType: !187, size: 64, offset: 2752)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !531, file: !44, line: 870, baseType: !187, size: 64, offset: 2816)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !531, file: !44, line: 870, baseType: !187, size: 64, offset: 2880)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !531, file: !44, line: 870, baseType: !187, size: 64, offset: 2944)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !531, file: !44, line: 871, baseType: !187, size: 64, offset: 3008)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !531, file: !44, line: 871, baseType: !187, size: 64, offset: 3072)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !531, file: !44, line: 871, baseType: !187, size: 64, offset: 3136)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !531, file: !44, line: 871, baseType: !187, size: 64, offset: 3200)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !531, file: !44, line: 873, baseType: !3166, size: 3328, offset: 3264)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 3328, elements: !3167)
!3167 = !{!3168}
!3168 = !DISubrange(count: 52)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !531, file: !44, line: 875, baseType: !3170, size: 1280, offset: 6592)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 1280, elements: !650)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !531, file: !44, line: 877, baseType: !3172, size: 64, offset: 7872)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !44, line: 880, baseType: !3175, size: 1088, offset: 7936)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3176, line: 72, baseType: !3177)
!3176 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3176, line: 23, size: 1088, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3186, !3187, !3188, !3189, !3214, !3215, !3216}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3177, file: !3176, line: 28, baseType: !254, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3177, file: !3176, line: 38, baseType: !586, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3177, file: !3176, line: 40, baseType: !187, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3177, file: !3176, line: 43, baseType: !732, size: 320, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3177, file: !3176, line: 44, baseType: !3184, size: 64, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3176, line: 44, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3177, file: !3176, line: 48, baseType: !187, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3177, file: !3176, line: 59, baseType: !591, size: 256, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3177, file: !3176, line: 60, baseType: !174, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3177, file: !3176, line: 61, baseType: !3190, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3193, line: 13, size: 1216, elements: !3194)
!3193 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3192, file: !3193, line: 14, baseType: !174, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3192, file: !3193, line: 15, baseType: !187, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3192, file: !3193, line: 17, baseType: !187, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3192, file: !3193, line: 17, baseType: !187, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3192, file: !3193, line: 18, baseType: !187, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3192, file: !3193, line: 18, baseType: !187, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3192, file: !3193, line: 19, baseType: !1850, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3192, file: !3193, line: 21, baseType: !1066, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3192, file: !3193, line: 23, baseType: !1066, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3192, file: !3193, line: 24, baseType: !1066, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3192, file: !3193, line: 25, baseType: !1066, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3192, file: !3193, line: 26, baseType: !1066, size: 64, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3192, file: !3193, line: 27, baseType: !1066, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3192, file: !3193, line: 28, baseType: !1066, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3192, file: !3193, line: 29, baseType: !1066, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3192, file: !3193, line: 30, baseType: !1066, size: 64, offset: 960)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3192, file: !3193, line: 31, baseType: !1066, size: 64, offset: 1024)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3192, file: !3193, line: 32, baseType: !1066, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3192, file: !3193, line: 33, baseType: !1066, size: 64, offset: 1152)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3177, file: !3176, line: 63, baseType: !200, size: 32, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3177, file: !3176, line: 69, baseType: !223, size: 16, offset: 1056)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3177, file: !3176, line: 70, baseType: !2164, size: 16, offset: 1072)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !44, line: 882, baseType: !187, size: 64, offset: 9024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !531, file: !44, line: 885, baseType: !545, size: 32, offset: 9088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !531, file: !44, line: 886, baseType: !3220, size: 64, offset: 9152)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !531, file: !44, line: 901, baseType: !878, size: 64, offset: 9216)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !531, file: !44, line: 904, baseType: !563, size: 64, offset: 9280)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !531, file: !44, line: 906, baseType: !3225, size: 64, offset: 9344)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !531, file: !44, line: 930, baseType: !200, size: 32, offset: 9408)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !531, file: !44, line: 933, baseType: !200, size: 32, offset: 9440)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !531, file: !44, line: 935, baseType: !3230, size: 64, offset: 9472)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !144, line: 103, size: 64, elements: !3231)
!3231 = !{!3232}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3230, file: !144, line: 104, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !144, line: 101, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !531, file: !44, line: 940, baseType: !584, size: 64, offset: 9536)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !531, file: !44, line: 942, baseType: !2271, size: 256, offset: 9600)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !528, file: !44, line: 986, baseType: !3238, offset: 10240)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !669)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !179, file: !180, line: 882, baseType: !527, size: 64, offset: 9792)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !179, file: !180, line: 884, baseType: !111, size: 32, offset: 9856)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !179, file: !180, line: 885, baseType: !111, size: 32, offset: 9888)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !179, file: !180, line: 886, baseType: !111, size: 32, offset: 9920)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !179, file: !180, line: 888, baseType: !111, size: 32, offset: 9952)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !179, file: !180, line: 890, baseType: !187, size: 64, offset: 9984)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !179, file: !180, line: 893, baseType: !11, size: 32, offset: 10048)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !179, file: !180, line: 896, baseType: !11, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !179, file: !180, line: 897, baseType: !11, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !179, file: !180, line: 898, baseType: !11, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !179, file: !180, line: 899, baseType: !11, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !179, file: !180, line: 919, baseType: !11, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !179, file: !180, line: 922, baseType: !11, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !179, file: !180, line: 923, baseType: !11, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !179, file: !180, line: 925, baseType: !11, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !179, file: !180, line: 939, baseType: !11, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !179, file: !180, line: 941, baseType: !11, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !179, file: !180, line: 944, baseType: !11, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !179, file: !180, line: 956, baseType: !11, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !179, file: !180, line: 962, baseType: !11, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !179, file: !180, line: 966, baseType: !11, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !179, file: !180, line: 969, baseType: !187, size: 64, offset: 10176)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !179, file: !180, line: 971, baseType: !3262, size: 448, offset: 10240)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !84, line: 25, size: 448, elements: !3263)
!3263 = !{!3264, !3265, !3270}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3262, file: !84, line: 26, baseType: !187, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3262, file: !84, line: 27, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!1066, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !84, line: 28, baseType: !3271, size: 320, offset: 128)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !84, line: 28, size: 320, elements: !3272)
!3272 = !{!3273, !3283, !3308}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3271, file: !84, line: 37, baseType: !3274, size: 320)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !84, line: 30, size: 320, elements: !3275)
!3275 = !{!3276, !3278, !3279, !3280, !3281, !3282}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3274, file: !84, line: 31, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3274, file: !84, line: 32, baseType: !190, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !84, line: 33, baseType: !190, size: 32, offset: 96)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3274, file: !84, line: 34, baseType: !190, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3274, file: !84, line: 35, baseType: !254, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3274, file: !84, line: 36, baseType: !3277, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3271, file: !84, line: 47, baseType: !3284, size: 192)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !84, line: 39, size: 192, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3307}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3284, file: !84, line: 40, baseType: !392, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3284, file: !84, line: 41, baseType: !83, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !84, line: 42, baseType: !3289, size: 64, offset: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !84, line: 42, size: 64, elements: !3290)
!3290 = !{!3291, !3299}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3289, file: !84, line: 43, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3294, line: 7, size: 128, elements: !3295)
!3294 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3295 = !{!3296, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3293, file: !3294, line: 8, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !394, line: 93, baseType: !165)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3293, file: !3294, line: 9, baseType: !165, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3289, file: !84, line: 44, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3302, line: 7, size: 64, elements: !3303)
!3302 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3303 = !{!3304, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3301, file: !3302, line: 8, baseType: !3305, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3302, line: 5, baseType: !724)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3301, file: !3302, line: 9, baseType: !724, size: 32, offset: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3284, file: !84, line: 46, baseType: !254, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3271, file: !84, line: 55, baseType: !3309, size: 256)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !84, line: 49, size: 256, elements: !3310)
!3310 = !{!3311, !3314, !3315, !3316, !3317}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3309, file: !84, line: 50, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !84, line: 14, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3309, file: !84, line: 51, baseType: !111, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3309, file: !84, line: 52, baseType: !111, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3309, file: !84, line: 53, baseType: !187, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3309, file: !84, line: 54, baseType: !187, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !179, file: !180, line: 973, baseType: !3319, size: 32, offset: 10688)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !170, line: 27, baseType: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !394, line: 28, baseType: !111)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !179, file: !180, line: 974, baseType: !3319, size: 32, offset: 10720)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !179, file: !180, line: 978, baseType: !187, size: 64, offset: 10752)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !179, file: !180, line: 987, baseType: !178, size: 64, offset: 10816)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !180, line: 990, baseType: !178, size: 64, offset: 10880)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !179, file: !180, line: 995, baseType: !169, size: 128, offset: 10944)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !179, file: !180, line: 996, baseType: !169, size: 128, offset: 11072)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !179, file: !180, line: 997, baseType: !178, size: 64, offset: 11200)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !179, file: !180, line: 1005, baseType: !169, size: 128, offset: 11264)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !179, file: !180, line: 1006, baseType: !169, size: 128, offset: 11392)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !179, file: !180, line: 1009, baseType: !633, size: 64, offset: 11520)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !179, file: !180, line: 1010, baseType: !3332, size: 512, offset: 11584)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 512, elements: !650)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !179, file: !180, line: 1011, baseType: !169, size: 128, offset: 12096)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !179, file: !180, line: 1012, baseType: !169, size: 128, offset: 12224)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !179, file: !180, line: 1014, baseType: !2020, size: 64, offset: 12352)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !179, file: !180, line: 1017, baseType: !2157, size: 64, offset: 12416)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !179, file: !180, line: 1020, baseType: !2157, size: 64, offset: 12480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !179, file: !180, line: 1023, baseType: !174, size: 64, offset: 12544)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !179, file: !180, line: 1025, baseType: !254, size: 64, offset: 12608)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !179, file: !180, line: 1026, baseType: !254, size: 64, offset: 12672)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !179, file: !180, line: 1031, baseType: !254, size: 64, offset: 12736)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !179, file: !180, line: 1032, baseType: !3343, size: 192, offset: 12800)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !180, line: 324, size: 192, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3343, file: !180, line: 326, baseType: !254, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3343, file: !180, line: 327, baseType: !254, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3343, file: !180, line: 328, baseType: !344, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !179, file: !180, line: 1041, baseType: !187, size: 64, offset: 12992)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !179, file: !180, line: 1042, baseType: !187, size: 64, offset: 13056)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !179, file: !180, line: 1045, baseType: !254, size: 64, offset: 13120)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !179, file: !180, line: 1048, baseType: !254, size: 64, offset: 13184)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !179, file: !180, line: 1051, baseType: !187, size: 64, offset: 13248)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !179, file: !180, line: 1052, baseType: !187, size: 64, offset: 13312)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !179, file: !180, line: 1055, baseType: !3355, size: 640, offset: 13376)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3356, line: 132, size: 640, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3357 = !{!3358, !3364, !3365}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3355, file: !3356, line: 133, baseType: !3359, size: 576)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3360, size: 576, elements: !629)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3356, line: 117, size: 192, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3360, file: !3356, line: 118, baseType: !254, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3360, file: !3356, line: 119, baseType: !407, size: 128, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3355, file: !3356, line: 134, baseType: !11, size: 32, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3355, file: !3356, line: 135, baseType: !11, size: 32, offset: 608)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !179, file: !180, line: 1058, baseType: !3367, size: 448, offset: 14016)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3356, line: 144, size: 448, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3367, file: !3356, line: 145, baseType: !571, size: 128, align: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3367, file: !3356, line: 146, baseType: !591, size: 256, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3367, file: !3356, line: 147, baseType: !11, size: 32, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !179, file: !180, line: 1064, baseType: !683, size: 64, offset: 14464)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !179, file: !180, line: 1067, baseType: !683, size: 64, offset: 14528)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !179, file: !180, line: 1070, baseType: !683, size: 64, offset: 14592)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !179, file: !180, line: 1074, baseType: !716, size: 64, offset: 14656)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !179, file: !180, line: 1084, baseType: !3377, size: 128, offset: 14720)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 128, elements: !2765)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !179, file: !180, line: 1086, baseType: !3379, size: 64, offset: 14848)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !180, line: 55, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !179, file: !180, line: 1089, baseType: !3382, size: 64, offset: 14912)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3383, line: 12, size: 64, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3382, file: !3383, line: 13, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3383, line: 8, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !179, file: !180, line: 1090, baseType: !3389, size: 128, offset: 14976)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3390, line: 13, size: 128, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3389, file: !3390, line: 14, baseType: !169, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !179, file: !180, line: 1097, baseType: !3394, size: 64, offset: 15104)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !180, line: 50, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !179, file: !180, line: 1100, baseType: !3397, size: 64, offset: 15168)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !180, line: 1100, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !179, file: !180, line: 1103, baseType: !3400, size: 64, offset: 15232)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !180, line: 53, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !179, file: !180, line: 1107, baseType: !3403, size: 64, offset: 15296)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !180, line: 56, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !179, file: !180, line: 1110, baseType: !3406, size: 64, offset: 15360)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3408, line: 93, size: 8768, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3457, !3466, !3467, !3469, !3470, !3471, !4325, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4363, !4364, !4371, !4381, !4384, !4385, !4388, !4389, !4390, !4391, !4392, !4393}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3407, file: !3408, line: 94, baseType: !196, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3407, file: !3408, line: 95, baseType: !200, size: 32, offset: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3407, file: !3408, line: 96, baseType: !111, size: 32, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3407, file: !3408, line: 97, baseType: !111, size: 32, offset: 96)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3407, file: !3408, line: 98, baseType: !169, size: 128, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3407, file: !3408, line: 100, baseType: !654, size: 192, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3407, file: !3408, line: 103, baseType: !178, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3407, file: !3408, line: 106, baseType: !3418, size: 192, offset: 512)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !883, line: 32, size: 192, elements: !3419)
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3418, file: !883, line: 33, baseType: !169, size: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3418, file: !883, line: 34, baseType: !3422, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3423, line: 25, baseType: !3424)
!3423 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3423, line: 23, size: 64, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3424, file: !3423, line: 24, baseType: !478, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3407, file: !3408, line: 109, baseType: !641, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3407, file: !3408, line: 112, baseType: !111, size: 32, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3407, file: !3408, line: 114, baseType: !111, size: 32, offset: 800)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3407, file: !3408, line: 115, baseType: !178, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3407, file: !3408, line: 118, baseType: !111, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3407, file: !3408, line: 119, baseType: !11, size: 32, offset: 928)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3407, file: !3408, line: 121, baseType: !3434, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3408, line: 80, size: 448, elements: !3436)
!3436 = !{!3437, !3438, !3444}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3435, file: !3408, line: 81, baseType: !200, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3435, file: !3408, line: 82, baseType: !3439, size: 128, offset: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3408, line: 75, size: 128, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3439, file: !3408, line: 76, baseType: !178, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3439, file: !3408, line: 77, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3435, file: !3408, line: 83, baseType: !1419, size: 256, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3407, file: !3408, line: 132, baseType: !11, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3407, file: !3408, line: 133, baseType: !11, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3407, file: !3408, line: 138, baseType: !11, size: 32, offset: 1056)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3407, file: !3408, line: 139, baseType: !169, size: 128, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3407, file: !3408, line: 142, baseType: !319, size: 512, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3407, file: !3408, line: 143, baseType: !327, size: 64, offset: 1728)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3407, file: !3408, line: 150, baseType: !3452, size: 256, offset: 1792)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3453, size: 256, elements: !2147)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3408, line: 38, size: 128, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3453, file: !3408, line: 39, baseType: !254, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3453, file: !3408, line: 40, baseType: !254, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3407, file: !3408, line: 156, baseType: !3458, size: 192, offset: 2048)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3408, line: 66, size: 192, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3458, file: !3408, line: 67, baseType: !3461, size: 192)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3408, line: 47, size: 192, elements: !3462)
!3462 = !{!3463, !3464, !3465}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3461, file: !3408, line: 48, baseType: !586, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3461, file: !3408, line: 49, baseType: !586, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3461, file: !3408, line: 50, baseType: !586, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3407, file: !3408, line: 160, baseType: !3355, size: 640, offset: 2240)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3407, file: !3408, line: 163, baseType: !3468, size: 256, offset: 2880)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 256, elements: !650)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3407, file: !3408, line: 169, baseType: !633, size: 64, offset: 3136)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3407, file: !3408, line: 172, baseType: !111, size: 32, offset: 3200)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3407, file: !3408, line: 174, baseType: !3472, size: 64, offset: 3264)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3474, line: 193, size: 5248, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3475 = !{!3476, !3477, !3478, !3929, !4214, !4215, !4216, !4263, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4280, !4281, !4282, !4283, !4284, !4292, !4301, !4302, !4303, !4304, !4305, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3473, file: !3474, line: 194, baseType: !2005, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3473, file: !3474, line: 195, baseType: !111, size: 32, offset: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 196, baseType: !3479, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !96, line: 705, size: 5824, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3487, !3488, !3541, !3611, !3612, !3613, !3614, !3615, !3622, !3714, !3727, !3737, !3741, !3743, !3744, !3745, !3749, !3756, !3757, !3760, !3763, !3767, !3871, !3872, !3873, !3874, !3875, !3876, !3906, !3907, !3908, !3911, !3914, !3923, !3924, !3925, !3926, !3927, !3928}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3480, file: !96, line: 706, baseType: !1210, size: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3480, file: !96, line: 707, baseType: !3479, size: 64, offset: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3480, file: !96, line: 709, baseType: !3485, size: 64, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !96, line: 37, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3480, file: !96, line: 711, baseType: !795, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3480, file: !96, line: 712, baseType: !3489, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !96, line: 89, size: 384, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3501, !3506, !3510}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !96, line: 90, baseType: !795, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3491, file: !96, line: 91, baseType: !1290, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3491, file: !96, line: 92, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!111, !3499, !1246}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3491, file: !96, line: 93, baseType: !3502, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!805, !3499, !3505, !1867, !1868}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3491, file: !96, line: 95, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3479}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3491, file: !96, line: 97, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !103, line: 286, size: 1472, elements: !3514)
!3514 = !{!3515, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3513, file: !103, line: 287, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!111, !3479}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3513, file: !103, line: 288, baseType: !3507, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3513, file: !103, line: 289, baseType: !3516, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3513, file: !103, line: 290, baseType: !3516, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3513, file: !103, line: 291, baseType: !3516, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3513, file: !103, line: 292, baseType: !3516, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3513, file: !103, line: 293, baseType: !3516, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3513, file: !103, line: 294, baseType: !3516, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3513, file: !103, line: 295, baseType: !3516, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3513, file: !103, line: 296, baseType: !3516, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3513, file: !103, line: 297, baseType: !3516, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3513, file: !103, line: 298, baseType: !3516, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3513, file: !103, line: 299, baseType: !3516, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3513, file: !103, line: 300, baseType: !3516, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3513, file: !103, line: 301, baseType: !3516, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3513, file: !103, line: 302, baseType: !3516, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3513, file: !103, line: 303, baseType: !3516, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3513, file: !103, line: 304, baseType: !3516, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3513, file: !103, line: 305, baseType: !3516, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3513, file: !103, line: 306, baseType: !3516, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3513, file: !103, line: 307, baseType: !3516, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3513, file: !103, line: 308, baseType: !3516, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3513, file: !103, line: 309, baseType: !3516, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3480, file: !96, line: 714, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3544)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3545, line: 80, size: 1344, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3610}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3544, file: !3545, line: 81, baseType: !795, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3544, file: !3545, line: 82, baseType: !795, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3544, file: !3545, line: 83, baseType: !1290, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3544, file: !3545, line: 84, baseType: !1290, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3544, file: !3545, line: 85, baseType: !1290, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3544, file: !3545, line: 87, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!111, !3479, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !90, line: 96, size: 1152, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3569, !3573, !3574, !3575, !3576, !3577, !3585, !3586, !3587, !3588, !3589, !3590}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !90, line: 97, baseType: !795, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3557, file: !90, line: 98, baseType: !3542, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3557, file: !90, line: 100, baseType: !1197, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3557, file: !90, line: 101, baseType: !795, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3557, file: !90, line: 103, baseType: !792, size: 8, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3557, file: !90, line: 104, baseType: !89, size: 32, offset: 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3557, file: !90, line: 106, baseType: !3566, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !90, line: 106, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3557, file: !90, line: 107, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !90, line: 107, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3557, file: !90, line: 109, baseType: !3516, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3557, file: !90, line: 110, baseType: !3507, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3557, file: !90, line: 111, baseType: !3516, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3557, file: !90, line: 112, baseType: !3507, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3557, file: !90, line: 113, baseType: !3578, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!111, !3479, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !103, line: 60, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !103, line: 58, size: 32, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3582, file: !103, line: 59, baseType: !111, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3557, file: !90, line: 114, baseType: !3516, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3557, file: !90, line: 115, baseType: !1290, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3557, file: !90, line: 116, baseType: !1290, size: 64, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3557, file: !90, line: 118, baseType: !3511, size: 64, offset: 960)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3557, file: !90, line: 119, baseType: !3507, size: 64, offset: 1024)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3557, file: !90, line: 121, baseType: !3591, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !90, line: 121, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3544, file: !3545, line: 88, baseType: !3496, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3544, file: !3545, line: 89, baseType: !3516, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3544, file: !3545, line: 90, baseType: !3507, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3544, file: !3545, line: 91, baseType: !3507, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3544, file: !3545, line: 92, baseType: !3507, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3544, file: !3545, line: 94, baseType: !3516, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3544, file: !3545, line: 95, baseType: !3516, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3544, file: !3545, line: 97, baseType: !3578, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3544, file: !3545, line: 98, baseType: !3516, size: 64, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3544, file: !3545, line: 100, baseType: !3516, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3544, file: !3545, line: 102, baseType: !3516, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3544, file: !3545, line: 103, baseType: !3507, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3544, file: !3545, line: 105, baseType: !3511, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3544, file: !3545, line: 107, baseType: !3607, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3545, line: 107, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3544, file: !3545, line: 109, baseType: !792, size: 8, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3480, file: !96, line: 715, baseType: !3556, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3480, file: !96, line: 717, baseType: !174, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3480, file: !96, line: 719, baseType: !174, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3480, file: !96, line: 721, baseType: !591, size: 256, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3480, file: !96, line: 725, baseType: !3616, size: 448, offset: 1280)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !96, line: 517, size: 448, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3616, file: !96, line: 518, baseType: !169, size: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3616, file: !96, line: 519, baseType: !169, size: 128, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3616, file: !96, line: 520, baseType: !169, size: 128, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3616, file: !96, line: 521, baseType: !95, size: 32, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3480, file: !96, line: 726, baseType: !3623, size: 2496, offset: 1728)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !103, line: 663, size: 2496, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3707, !3711}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3623, file: !103, line: 664, baseType: !3581, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3623, file: !103, line: 665, baseType: !11, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3623, file: !103, line: 666, baseType: !11, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3623, file: !103, line: 667, baseType: !792, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3623, file: !103, line: 668, baseType: !792, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3623, file: !103, line: 669, baseType: !792, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3623, file: !103, line: 670, baseType: !792, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3623, file: !103, line: 671, baseType: !792, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3623, file: !103, line: 672, baseType: !792, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3623, file: !103, line: 673, baseType: !792, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3623, file: !103, line: 674, baseType: !792, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3623, file: !103, line: 675, baseType: !190, size: 32, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3623, file: !103, line: 676, baseType: !545, size: 32, offset: 96)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3623, file: !103, line: 678, baseType: !169, size: 128, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3623, file: !103, line: 679, baseType: !1419, size: 256, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3623, file: !103, line: 680, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3643, line: 43, size: 1536, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3642, file: !3643, line: 44, baseType: !795, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3642, file: !3643, line: 45, baseType: !111, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3642, file: !3643, line: 46, baseType: !169, size: 128, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !3643, line: 47, baseType: !545, size: 32, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3642, file: !3643, line: 48, baseType: !3650, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !103, line: 629, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3642, file: !3643, line: 49, baseType: !2259, size: 320, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3642, file: !3643, line: 50, baseType: !187, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3642, file: !3643, line: 51, baseType: !327, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3642, file: !3643, line: 52, baseType: !327, size: 64, offset: 832)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3642, file: !3643, line: 53, baseType: !327, size: 64, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3642, file: !3643, line: 54, baseType: !327, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3642, file: !3643, line: 55, baseType: !327, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3642, file: !3643, line: 56, baseType: !187, size: 64, offset: 1088)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3642, file: !3643, line: 57, baseType: !187, size: 64, offset: 1152)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3642, file: !3643, line: 58, baseType: !187, size: 64, offset: 1216)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3642, file: !3643, line: 59, baseType: !187, size: 64, offset: 1280)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3642, file: !3643, line: 60, baseType: !187, size: 64, offset: 1344)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3642, file: !3643, line: 61, baseType: !3479, size: 64, offset: 1408)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3642, file: !3643, line: 62, baseType: !792, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3642, file: !3643, line: 63, baseType: !792, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3623, file: !103, line: 681, baseType: !792, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3623, file: !103, line: 682, baseType: !792, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3623, file: !103, line: 683, baseType: !792, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3623, file: !103, line: 684, baseType: !11, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3623, file: !103, line: 685, baseType: !11, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3623, file: !103, line: 690, baseType: !319, size: 512, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3623, file: !103, line: 691, baseType: !254, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3623, file: !103, line: 692, baseType: !2271, size: 256, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3623, file: !103, line: 693, baseType: !654, size: 192, offset: 1472)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3623, file: !103, line: 694, baseType: !3650, size: 64, offset: 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3623, file: !103, line: 695, baseType: !200, size: 32, offset: 1728)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3623, file: !103, line: 696, baseType: !200, size: 32, offset: 1760)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3623, file: !103, line: 697, baseType: !11, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3623, file: !103, line: 698, baseType: !11, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3623, file: !103, line: 699, baseType: !11, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3623, file: !103, line: 700, baseType: !11, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3623, file: !103, line: 701, baseType: !11, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3623, file: !103, line: 702, baseType: !11, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3623, file: !103, line: 703, baseType: !792, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3623, file: !103, line: 704, baseType: !11, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3623, file: !103, line: 705, baseType: !11, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3623, file: !103, line: 706, baseType: !11, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3623, file: !103, line: 707, baseType: !11, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3623, file: !103, line: 708, baseType: !11, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3623, file: !103, line: 709, baseType: !11, size: 32, offset: 1824)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3623, file: !103, line: 710, baseType: !102, size: 32, offset: 1856)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3623, file: !103, line: 711, baseType: !110, size: 32, offset: 1888)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3623, file: !103, line: 712, baseType: !110, size: 32, offset: 1920)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3623, file: !103, line: 713, baseType: !111, size: 32, offset: 1952)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3623, file: !103, line: 714, baseType: !111, size: 32, offset: 1984)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3623, file: !103, line: 715, baseType: !254, size: 64, offset: 2048)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3623, file: !103, line: 716, baseType: !254, size: 64, offset: 2112)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3623, file: !103, line: 717, baseType: !254, size: 64, offset: 2176)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3623, file: !103, line: 718, baseType: !254, size: 64, offset: 2240)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3623, file: !103, line: 720, baseType: !3702, size: 64, offset: 2304)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !103, line: 632, size: 64, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !103, line: 633, baseType: !545, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3703, file: !103, line: 634, baseType: !11, size: 32, offset: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3623, file: !103, line: 721, baseType: !3708, size: 64, offset: 2368)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{null, !3479, !724}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3623, file: !103, line: 722, baseType: !3712, size: 64, offset: 2432)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !103, line: 722, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3480, file: !96, line: 727, baseType: !3715, size: 64, offset: 4224)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !103, line: 742, size: 1792, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3724, !3725, !3726}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3716, file: !103, line: 743, baseType: !3513, size: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3716, file: !103, line: 744, baseType: !3516, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3716, file: !103, line: 745, baseType: !3721, size: 64, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3479, !792}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3716, file: !103, line: 746, baseType: !3516, size: 64, offset: 1600)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3716, file: !103, line: 747, baseType: !3507, size: 64, offset: 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3716, file: !103, line: 748, baseType: !3507, size: 64, offset: 1728)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3480, file: !96, line: 736, baseType: !3728, size: 128, offset: 4288)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !96, line: 529, size: 128, elements: !3729)
!3729 = !{!3730, !3734}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3728, file: !96, line: 531, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3733, line: 13, flags: DIFlagFwdDecl)
!3733 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3728, file: !96, line: 532, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !96, line: 49, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3480, file: !96, line: 738, baseType: !3738, size: 64, offset: 4416)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !96, line: 738, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3480, file: !96, line: 740, baseType: !3742, size: 64, offset: 4480)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3480, file: !96, line: 741, baseType: !254, size: 64, offset: 4544)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3480, file: !96, line: 746, baseType: !254, size: 64, offset: 4608)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3480, file: !96, line: 747, baseType: !3746, size: 64, offset: 4672)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !96, line: 747, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3480, file: !96, line: 749, baseType: !3750, size: 64, offset: 4736)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !96, line: 428, size: 128, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3751, file: !96, line: 433, baseType: !11, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3751, file: !96, line: 434, baseType: !11, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3751, file: !96, line: 435, baseType: !187, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3480, file: !96, line: 751, baseType: !169, size: 128, offset: 4800)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3480, file: !96, line: 762, baseType: !3758, size: 64, offset: 4928)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !96, line: 762, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3480, file: !96, line: 770, baseType: !3761, offset: 4992)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3762, line: 5, elements: !556)
!3762 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3480, file: !96, line: 772, baseType: !3764, size: 64, offset: 4992)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3766, line: 18, flags: DIFlagFwdDecl)
!3766 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3480, file: !96, line: 773, baseType: !3768, size: 64, offset: 5056)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3770, line: 41, size: 512, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3771 = !{!3772, !3773, !3867, !3868, !3869, !3870}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3769, file: !3770, line: 42, baseType: !3768, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3769, file: !3770, line: 43, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3776)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3770, line: 125, size: 1408, elements: !3777)
!3777 = !{!3778, !3782, !3786, !3792, !3796, !3797, !3802, !3806, !3810, !3814, !3818, !3819, !3823, !3827, !3831, !3842, !3843, !3844, !3845, !3855, !3859, !3863}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3776, file: !3770, line: 126, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3768, !3768}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3776, file: !3770, line: 127, baseType: !3783, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3768}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3776, file: !3770, line: 128, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!792, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3769)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3776, file: !3770, line: 129, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!1850, !3790, !3499}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3776, file: !3770, line: 131, baseType: !3787, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3776, file: !3770, line: 133, baseType: !3798, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3801, !3790}
!3801 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3770, line: 132, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3776, file: !3770, line: 134, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!792, !3790, !795}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3776, file: !3770, line: 136, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!111, !3790, !795, !11, !174, !1108}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3776, file: !3770, line: 141, baseType: !3811, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!111, !3790, !795, !2347, !1108}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3776, file: !3770, line: 144, baseType: !3815, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!795, !3790}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3776, file: !3770, line: 145, baseType: !3815, size: 64, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3776, file: !3770, line: 146, baseType: !3820, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3768, !3790}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3776, file: !3770, line: 148, baseType: !3824, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3768, !3790, !3768}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3776, file: !3770, line: 151, baseType: !3828, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3768, !3790, !795}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3776, file: !3770, line: 153, baseType: !3832, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!111, !3790, !795, !795, !11, !11, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3770, line: 94, size: 640, elements: !3837)
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3770, line: 95, baseType: !3768, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3836, file: !3770, line: 96, baseType: !11, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3836, file: !3770, line: 97, baseType: !3841, size: 512, offset: 128)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 512, elements: !388)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3776, file: !3770, line: 158, baseType: !3824, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3776, file: !3770, line: 161, baseType: !3820, size: 64, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3776, file: !3770, line: 163, baseType: !3779, size: 64, offset: 1088)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3776, file: !3770, line: 164, baseType: !3846, size: 64, offset: 1152)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!111, !3790, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3770, line: 73, size: 128, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3850, file: !3770, line: 74, baseType: !11, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3770, line: 75, baseType: !11, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3850, file: !3770, line: 76, baseType: !3790, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3776, file: !3770, line: 166, baseType: !3856, size: 64, offset: 1216)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!174, !3768, !111}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3776, file: !3770, line: 167, baseType: !3860, size: 64, offset: 1280)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!111, !3790, !11}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3776, file: !3770, line: 168, baseType: !3864, size: 64, offset: 1344)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!111, !3768}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3769, file: !3770, line: 44, baseType: !3479, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3769, file: !3770, line: 45, baseType: !169, size: 128, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3769, file: !3770, line: 46, baseType: !169, size: 128, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !3770, line: 47, baseType: !361, size: 8, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3480, file: !96, line: 776, baseType: !111, size: 32, offset: 5120)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3480, file: !96, line: 778, baseType: !1026, size: 32, offset: 5152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3480, file: !96, line: 779, baseType: !190, size: 32, offset: 5184)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3480, file: !96, line: 781, baseType: !545, size: 32, offset: 5216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3480, file: !96, line: 782, baseType: !169, size: 128, offset: 5248)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3480, file: !96, line: 784, baseType: !3877, size: 64, offset: 5376)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3880, line: 52, size: 768, elements: !3881)
!3880 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3890, !3894, !3895, !3896, !3897, !3901, !3905}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3879, file: !3880, line: 53, baseType: !795, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3879, file: !3880, line: 55, baseType: !1290, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3879, file: !3880, line: 56, baseType: !1290, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3879, file: !3880, line: 58, baseType: !3496, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3879, file: !3880, line: 59, baseType: !3887, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!805, !3499, !3505}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3879, file: !3880, line: 61, baseType: !3891, size: 64, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3877}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3879, file: !3880, line: 62, baseType: !3507, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3879, file: !3880, line: 64, baseType: !3516, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3879, file: !3880, line: 66, baseType: !1833, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3879, file: !3880, line: 67, baseType: !3898, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!1850, !3499}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3879, file: !3880, line: 69, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3499, !1867, !1868}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3879, file: !3880, line: 71, baseType: !3511, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3480, file: !96, line: 785, baseType: !1290, size: 64, offset: 5440)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3480, file: !96, line: 787, baseType: !3507, size: 64, offset: 5504)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3480, file: !96, line: 788, baseType: !3909, size: 64, offset: 5568)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !96, line: 46, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3480, file: !96, line: 789, baseType: !3912, size: 64, offset: 5632)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !96, line: 48, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3480, file: !96, line: 791, baseType: !3915, size: 64, offset: 5696)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !96, line: 597, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3916, file: !96, line: 598, baseType: !118, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3916, file: !96, line: 599, baseType: !127, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3916, file: !96, line: 600, baseType: !132, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3916, file: !96, line: 601, baseType: !792, size: 8, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3916, file: !96, line: 602, baseType: !792, size: 8, offset: 104)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3480, file: !96, line: 793, baseType: !137, size: 32, offset: 5760)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3480, file: !96, line: 795, baseType: !792, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3480, file: !96, line: 796, baseType: !792, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3480, file: !96, line: 797, baseType: !792, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3480, file: !96, line: 798, baseType: !792, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3480, file: !96, line: 799, baseType: !792, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3473, file: !3474, line: 197, baseType: !3930, size: 64, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3932, line: 441, size: 1472, elements: !3933)
!3932 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3933 = !{!3934, !3935, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3965, !3966, !3969, !3970, !3972, !4093, !4096, !4097, !4213}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3931, file: !3932, line: 442, baseType: !2005, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3931, file: !3932, line: 443, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3931, file: !3932, line: 444, baseType: !1197, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3931, file: !3932, line: 445, baseType: !795, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3931, file: !3932, line: 446, baseType: !795, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3931, file: !3932, line: 447, baseType: !111, size: 32, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3931, file: !3932, line: 448, baseType: !111, size: 32, offset: 352)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3931, file: !3932, line: 449, baseType: !111, size: 32, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3931, file: !3932, line: 450, baseType: !11, size: 32, offset: 416)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3931, file: !3932, line: 451, baseType: !760, size: 16, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3931, file: !3932, line: 452, baseType: !760, size: 16, offset: 464)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3931, file: !3932, line: 453, baseType: !3947, size: 352, offset: 480)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3948, line: 30, size: 352, elements: !3949)
!3948 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3949 = !{!3950, !3952, !3953, !3954, !3955, !3958, !3962, !3964}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3947, file: !3948, line: 31, baseType: !3951, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3948, line: 7, baseType: !11)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3947, file: !3948, line: 32, baseType: !3951, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3947, file: !3948, line: 33, baseType: !3951, size: 32, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3947, file: !3948, line: 34, baseType: !3951, size: 32, offset: 96)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3947, file: !3948, line: 35, baseType: !3956, size: 8, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3957, line: 5, baseType: !363)
!3957 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3947, file: !3948, line: 36, baseType: !3959, size: 152, offset: 136)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3956, size: 152, elements: !3960)
!3960 = !{!3961}
!3961 = !DISubrange(count: 19)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3947, file: !3948, line: 37, baseType: !3963, size: 32, offset: 288)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3957, line: 6, baseType: !11)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3947, file: !3948, line: 38, baseType: !3963, size: 32, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3931, file: !3932, line: 454, baseType: !187, size: 64, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3931, file: !3932, line: 455, baseType: !3967, size: 64, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3932, line: 455, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3931, file: !3932, line: 456, baseType: !3930, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3931, file: !3932, line: 461, baseType: !3971, size: 64, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3931, file: !3932, line: 462, baseType: !3973, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3976, line: 101, size: 3008, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3977 = !{!3978, !4010, !4011, !4012, !4034, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4062, !4088, !4089, !4090, !4091, !4092}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3975, file: !3976, line: 102, baseType: !3979, size: 1088)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3980, line: 35, size: 1088, elements: !3981)
!3980 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3981 = !{!3982, !3999, !4000, !4001, !4002, !4003, !4007, !4008, !4009}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3979, file: !3980, line: 36, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3980, line: 10, size: 256, elements: !3985)
!3985 = !{!3986, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3986 = !DIDerivedType(tag: DW_TAG_member, scope: !3984, file: !3980, line: 11, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3984, file: !3980, line: 11, size: 64, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3987, file: !3980, line: 12, baseType: !3983, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3987, file: !3980, line: 13, baseType: !212, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3984, file: !3980, line: 15, baseType: !11, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3984, file: !3980, line: 16, baseType: !11, size: 32, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3984, file: !3980, line: 17, baseType: !11, size: 32, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3984, file: !3980, line: 18, baseType: !11, size: 32, offset: 160)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3984, file: !3980, line: 19, baseType: !11, size: 32, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3984, file: !3980, line: 20, baseType: !792, size: 8, offset: 224)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3984, file: !3980, line: 22, baseType: !3998, align: 64, offset: 256)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !669)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3979, file: !3980, line: 37, baseType: !2271, size: 256, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3979, file: !3980, line: 38, baseType: !591, size: 256, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3979, file: !3980, line: 39, baseType: !200, size: 32, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3979, file: !3980, line: 40, baseType: !3984, size: 256, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3979, file: !3980, line: 41, baseType: !4004, size: 64, offset: 896)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !213, line: 56, size: 64, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4004, file: !213, line: 57, baseType: !216, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3979, file: !3980, line: 42, baseType: !200, size: 32, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3979, file: !3980, line: 43, baseType: !111, size: 32, offset: 992)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3979, file: !3980, line: 44, baseType: !3983, size: 64, offset: 1024)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3975, file: !3976, line: 103, baseType: !3472, size: 64, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3975, file: !3976, line: 104, baseType: !3472, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3975, file: !3976, line: 105, baseType: !4013, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3976, line: 33, size: 320, elements: !4016)
!4016 = !{!4017, !4021, !4025, !4029, !4033}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4015, file: !3976, line: 34, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!792, !3974}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4015, file: !3976, line: 35, baseType: !4022, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3974, !792}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4015, file: !3976, line: 36, baseType: !4026, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3974}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4015, file: !3976, line: 37, baseType: !4030, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!111, !3974, !3472}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4015, file: !3976, line: 38, baseType: !4026, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3975, file: !3976, line: 106, baseType: !4035, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3976, line: 41, size: 192, elements: !4038)
!4038 = !{!4039, !4045, !4049}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4037, file: !3976, line: 42, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!1108, !3974, !4043, !4043, !1108}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4037, file: !3976, line: 44, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !3974, !4043, !4043, !1108}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4037, file: !3976, line: 46, baseType: !4026, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3975, file: !3976, line: 107, baseType: !545, size: 32, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3975, file: !3976, line: 108, baseType: !111, size: 32, offset: 1376)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3975, file: !3976, line: 109, baseType: !111, size: 32, offset: 1408)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3975, file: !3976, line: 110, baseType: !654, size: 192, offset: 1472)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3975, file: !3976, line: 111, baseType: !654, size: 192, offset: 1664)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3975, file: !3976, line: 112, baseType: !187, size: 64, offset: 1856)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3975, file: !3976, line: 113, baseType: !187, size: 64, offset: 1920)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3975, file: !3976, line: 114, baseType: !363, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3975, file: !3976, line: 115, baseType: !591, size: 256, offset: 2048)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3975, file: !3976, line: 116, baseType: !591, size: 256, offset: 2304)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3975, file: !3976, line: 117, baseType: !4061, size: 64, offset: 2560)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3975, file: !3976, line: 118, baseType: !4063, size: 192, offset: 2624)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3975, file: !3976, line: 118, size: 192, elements: !4064)
!4064 = !{!4065, !4086}
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !3976, line: 118, baseType: !4066, size: 192)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !3976, line: 118, size: 192, elements: !4067)
!4067 = !{!4068, !4077, !4078, !4079, !4084, !4085}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4066, file: !3976, line: 118, baseType: !4069, size: 192)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4070, line: 44, size: 192, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4071 = !{!4072, !4073, !4074, !4075, !4076}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4069, file: !4070, line: 45, baseType: !11, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4069, file: !4070, line: 46, baseType: !11, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4069, file: !4070, line: 47, baseType: !11, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4069, file: !4070, line: 48, baseType: !11, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4069, file: !4070, line: 49, baseType: !174, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4066, file: !3976, line: 118, baseType: !4061, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4066, file: !3976, line: 118, baseType: !948, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4066, file: !3976, line: 118, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, elements: !4082)
!4082 = !{!4083}
!4083 = !DISubrange(count: 0)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4066, file: !3976, line: 118, baseType: !4061, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4066, file: !3976, line: 118, baseType: !948, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4063, file: !3976, line: 118, baseType: !4087, offset: 192)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !4082)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3975, file: !3976, line: 119, baseType: !11, size: 32, offset: 2816)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3975, file: !3976, line: 120, baseType: !11, size: 32, offset: 2848)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3975, file: !3976, line: 121, baseType: !111, size: 32, offset: 2880)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3975, file: !3976, line: 122, baseType: !2005, size: 32, offset: 2912)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3975, file: !3976, line: 123, baseType: !174, size: 64, offset: 2944)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3931, file: !3932, line: 463, baseType: !4094, size: 64, offset: 1152)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3931, file: !3932, line: 464, baseType: !174, size: 64, offset: 1216)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3931, file: !3932, line: 470, baseType: !4098, size: 64, offset: 1280)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3932, line: 357, size: 2176, elements: !4101)
!4101 = !{!4102, !4106, !4110, !4114, !4118, !4122, !4126, !4127, !4131, !4135, !4136, !4140, !4141, !4145, !4149, !4155, !4156, !4157, !4158, !4159, !4160, !4164, !4165, !4166, !4167, !4171, !4175, !4179, !4183, !4195, !4201, !4207, !4208, !4212}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4100, file: !3932, line: 358, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!3472, !3930, !563, !111}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4100, file: !3932, line: 360, baseType: !4107, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!111, !3930, !3472}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4100, file: !3932, line: 361, baseType: !4111, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !3930, !3472}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4100, file: !3932, line: 362, baseType: !4115, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!111, !3472, !563}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4100, file: !3932, line: 363, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !3472, !563}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4100, file: !3932, line: 364, baseType: !4123, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !3472}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4100, file: !3932, line: 365, baseType: !4123, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4100, file: !3932, line: 366, baseType: !4128, size: 64, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!1105, !3472, !4043, !1108}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4100, file: !3932, line: 367, baseType: !4132, size: 64, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!111, !3472, !361}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4100, file: !3932, line: 368, baseType: !4123, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4100, file: !3932, line: 369, baseType: !4137, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!11, !3472}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4100, file: !3932, line: 370, baseType: !4137, size: 64, offset: 704)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4100, file: !3932, line: 371, baseType: !4142, size: 64, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!111, !3472, !11, !187}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4100, file: !3932, line: 373, baseType: !4146, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!1066, !3472, !11, !187}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4100, file: !3932, line: 375, baseType: !4150, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !3472, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3947)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4100, file: !3932, line: 376, baseType: !4123, size: 64, offset: 960)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4100, file: !3932, line: 377, baseType: !4123, size: 64, offset: 1024)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4100, file: !3932, line: 378, baseType: !4123, size: 64, offset: 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4100, file: !3932, line: 379, baseType: !4123, size: 64, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4100, file: !3932, line: 380, baseType: !4123, size: 64, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4100, file: !3932, line: 381, baseType: !4161, size: 64, offset: 1280)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!111, !3472, !111}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4100, file: !3932, line: 382, baseType: !4123, size: 64, offset: 1344)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4100, file: !3932, line: 383, baseType: !4161, size: 64, offset: 1408)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4100, file: !3932, line: 384, baseType: !4123, size: 64, offset: 1472)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4100, file: !3932, line: 385, baseType: !4168, size: 64, offset: 1536)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !3472, !111}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4100, file: !3932, line: 386, baseType: !4172, size: 64, offset: 1600)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !3472, !778}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4100, file: !3932, line: 387, baseType: !4176, size: 64, offset: 1664)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!111, !3472}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4100, file: !3932, line: 388, baseType: !4180, size: 64, offset: 1728)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!111, !3472, !11, !11}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4100, file: !3932, line: 390, baseType: !4184, size: 64, offset: 1792)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!111, !3472, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4189, line: 15, size: 64, elements: !4190)
!4189 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4190 = !{!4191, !4192, !4193, !4194}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4188, file: !4189, line: 16, baseType: !225, size: 16)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4188, file: !4189, line: 17, baseType: !225, size: 16, offset: 16)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4188, file: !4189, line: 18, baseType: !225, size: 16, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4188, file: !4189, line: 19, baseType: !225, size: 16, offset: 48)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4100, file: !3932, line: 391, baseType: !4196, size: 64, offset: 1856)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!111, !3472, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3932, line: 16, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4100, file: !3932, line: 393, baseType: !4202, size: 64, offset: 1920)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!111, !3472, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3932, line: 17, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4100, file: !3932, line: 394, baseType: !4202, size: 64, offset: 1984)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4100, file: !3932, line: 395, baseType: !4209, size: 64, offset: 2048)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !3472, !1915}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4100, file: !3932, line: 401, baseType: !1946, size: 64, offset: 2112)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3931, file: !3932, line: 471, baseType: !169, size: 128, offset: 1344)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3473, file: !3474, line: 198, baseType: !3974, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3473, file: !3474, line: 199, baseType: !4098, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3473, file: !3474, line: 201, baseType: !4217, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4219, line: 269, size: 128, elements: !4220)
!4219 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4220 = !{!4221, !4262}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4218, file: !4219, line: 270, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4219, line: 231, size: 1152, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4235, !4239, !4240, !4241, !4242, !4246, !4247, !4251, !4252, !4256, !4260, !4261}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4223, file: !4219, line: 232, baseType: !805, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4223, file: !4219, line: 233, baseType: !111, size: 32, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4223, file: !4219, line: 238, baseType: !4176, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4223, file: !4219, line: 239, baseType: !4123, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4223, file: !4219, line: 240, baseType: !4123, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4223, file: !4219, line: 241, baseType: !4231, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!1105, !3472, !563, !4234, !1108, !1722, !187}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4223, file: !4219, line: 243, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!1105, !3472, !563, !4043, !1108}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4223, file: !4219, line: 245, baseType: !4142, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4223, file: !4219, line: 247, baseType: !4142, size: 64, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4223, file: !4219, line: 249, baseType: !4150, size: 64, offset: 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4223, file: !4219, line: 250, baseType: !4243, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!1983, !3472, !563, !1985}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4223, file: !4219, line: 252, baseType: !4123, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4223, file: !4219, line: 257, baseType: !4248, size: 64, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !3472, !4043, !4043, !1108}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4223, file: !4219, line: 259, baseType: !4123, size: 64, offset: 832)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4223, file: !4219, line: 260, baseType: !4253, size: 64, offset: 896)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !3472, !792}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4223, file: !4219, line: 261, baseType: !4257, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!1108, !3472, !4043, !4043, !1108}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4223, file: !4219, line: 263, baseType: !4248, size: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4223, file: !4219, line: 266, baseType: !1197, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4218, file: !4219, line: 271, baseType: !3472, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3473, file: !3474, line: 202, baseType: !4264, size: 384, offset: 384)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4219, line: 17, size: 384, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269, !4270}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4264, file: !4219, line: 18, baseType: !584, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4264, file: !4219, line: 19, baseType: !344, size: 32, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4264, file: !4219, line: 20, baseType: !11, size: 32, offset: 96)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4264, file: !4219, line: 21, baseType: !169, size: 128, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4264, file: !4219, line: 22, baseType: !169, size: 128, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3473, file: !3474, line: 204, baseType: !591, size: 256, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3473, file: !3474, line: 205, baseType: !591, size: 256, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3473, file: !3474, line: 206, baseType: !591, size: 256, offset: 1280)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3473, file: !3474, line: 207, baseType: !732, size: 320, offset: 1536)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3473, file: !3474, line: 208, baseType: !591, size: 256, offset: 1856)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3473, file: !3474, line: 209, baseType: !3947, size: 352, offset: 2112)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3473, file: !3474, line: 209, baseType: !3947, size: 352, offset: 2464)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 210, baseType: !4279, size: 512, offset: 2816)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 512, elements: !1253)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !3474, line: 211, baseType: !187, size: 64, offset: 3328)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3473, file: !3474, line: 212, baseType: !111, size: 32, offset: 3392)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3473, file: !3474, line: 213, baseType: !11, size: 32, offset: 3424)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3473, file: !3474, line: 214, baseType: !4188, size: 64, offset: 3456)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3473, file: !3474, line: 221, baseType: !4285, size: 64, align: 64, offset: 3520)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !3474, line: 216, size: 64, align: 64, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4285, file: !3474, line: 217, baseType: !545, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4285, file: !3474, line: 218, baseType: !792, size: 8, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4285, file: !3474, line: 219, baseType: !792, size: 8, offset: 40)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4285, file: !3474, line: 220, baseType: !4291, offset: 64)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !4082)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3473, file: !3474, line: 230, baseType: !4293, size: 192, align: 64, offset: 3584)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !3474, line: 223, size: 192, align: 64, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4293, file: !3474, line: 224, baseType: !633, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4293, file: !3474, line: 225, baseType: !633, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4293, file: !3474, line: 226, baseType: !545, size: 32, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4293, file: !3474, line: 227, baseType: !363, size: 8, offset: 160)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4293, file: !3474, line: 228, baseType: !792, size: 8, offset: 168)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4293, file: !3474, line: 229, baseType: !4291, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3473, file: !3474, line: 232, baseType: !792, size: 8, offset: 3776)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3473, file: !3474, line: 233, baseType: !792, size: 8, offset: 3784)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3473, file: !3474, line: 234, baseType: !111, size: 32, offset: 3808)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3473, file: !3474, line: 236, baseType: !3472, size: 64, offset: 3840)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3473, file: !3474, line: 237, baseType: !4306, size: 64, offset: 3904)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !73, line: 1083, size: 384, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4307, file: !73, line: 1084, baseType: !610, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4307, file: !73, line: 1085, baseType: !111, size: 32, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4307, file: !73, line: 1086, baseType: !111, size: 32, offset: 96)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4307, file: !73, line: 1087, baseType: !4306, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4307, file: !73, line: 1088, baseType: !563, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4307, file: !73, line: 1089, baseType: !571, size: 128, align: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3473, file: !3474, line: 238, baseType: !654, size: 192, offset: 3968)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3473, file: !3474, line: 239, baseType: !654, size: 192, offset: 4160)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3473, file: !3474, line: 240, baseType: !2271, size: 256, offset: 4352)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3473, file: !3474, line: 241, baseType: !174, size: 64, offset: 4608)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3473, file: !3474, line: 242, baseType: !174, size: 64, offset: 4672)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3473, file: !3474, line: 243, baseType: !545, size: 32, offset: 4736)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3473, file: !3474, line: 244, baseType: !111, size: 32, offset: 4768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3473, file: !3474, line: 245, baseType: !4061, size: 64, offset: 4800)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3473, file: !3474, line: 247, baseType: !169, size: 128, offset: 4864)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3473, file: !3474, line: 250, baseType: !2271, size: 256, offset: 4992)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3407, file: !3408, line: 185, baseType: !4326, size: 64, offset: 3328)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !397, line: 860, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 853, size: 64, elements: !4328)
!4328 = !{!4329, !4330}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4327, file: !397, line: 858, baseType: !922, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !397, line: 859, baseType: !545, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3407, file: !3408, line: 186, baseType: !254, size: 64, offset: 3392)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3407, file: !3408, line: 186, baseType: !254, size: 64, offset: 3456)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3407, file: !3408, line: 186, baseType: !254, size: 64, offset: 3520)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3407, file: !3408, line: 186, baseType: !254, size: 64, offset: 3584)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3407, file: !3408, line: 187, baseType: !254, size: 64, offset: 3648)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3407, file: !3408, line: 188, baseType: !254, size: 64, offset: 3712)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3407, file: !3408, line: 189, baseType: !3343, size: 192, offset: 3776)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3407, file: !3408, line: 190, baseType: !187, size: 64, offset: 3968)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3407, file: !3408, line: 190, baseType: !187, size: 64, offset: 4032)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3407, file: !3408, line: 190, baseType: !187, size: 64, offset: 4096)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3407, file: !3408, line: 190, baseType: !187, size: 64, offset: 4160)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3407, file: !3408, line: 191, baseType: !187, size: 64, offset: 4224)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3407, file: !3408, line: 191, baseType: !187, size: 64, offset: 4288)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3407, file: !3408, line: 191, baseType: !187, size: 64, offset: 4352)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3407, file: !3408, line: 191, baseType: !187, size: 64, offset: 4416)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3407, file: !3408, line: 192, baseType: !187, size: 64, offset: 4480)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3407, file: !3408, line: 192, baseType: !187, size: 64, offset: 4544)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3407, file: !3408, line: 192, baseType: !187, size: 64, offset: 4608)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3407, file: !3408, line: 192, baseType: !187, size: 64, offset: 4672)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3407, file: !3408, line: 193, baseType: !187, size: 64, offset: 4736)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3407, file: !3408, line: 193, baseType: !187, size: 64, offset: 4800)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3407, file: !3408, line: 194, baseType: !4353, size: 448, offset: 4864)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4354, line: 12, size: 448, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4353, file: !4354, line: 15, baseType: !254, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4353, file: !4354, line: 17, baseType: !254, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4353, file: !4354, line: 19, baseType: !254, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4353, file: !4354, line: 21, baseType: !254, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4353, file: !4354, line: 29, baseType: !254, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4353, file: !4354, line: 35, baseType: !254, size: 64, offset: 320)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4353, file: !4354, line: 44, baseType: !254, size: 64, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3407, file: !3408, line: 202, baseType: !256, size: 64, offset: 5312)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3407, file: !3408, line: 213, baseType: !4365, size: 2048, offset: 5376)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4366, size: 2048, elements: !2765)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4367, line: 43, size: 128, elements: !4368)
!4367 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4366, file: !4367, line: 44, baseType: !1110, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4366, file: !4367, line: 45, baseType: !1110, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3407, file: !3408, line: 216, baseType: !4372, size: 448, offset: 7424)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3408, line: 30, size: 448, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4380}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4372, file: !3408, line: 31, baseType: !111, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4372, file: !3408, line: 32, baseType: !1066, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4372, file: !3408, line: 33, baseType: !187, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4372, file: !3408, line: 34, baseType: !254, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4372, file: !3408, line: 34, baseType: !254, size: 64, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4372, file: !3408, line: 35, baseType: !187, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4372, file: !3408, line: 35, baseType: !187, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3407, file: !3408, line: 219, baseType: !4382, size: 64, offset: 7872)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3408, line: 219, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3407, file: !3408, line: 222, baseType: !11, size: 32, offset: 7936)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3407, file: !3408, line: 223, baseType: !4386, size: 64, offset: 8000)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3408, line: 223, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3407, file: !3408, line: 230, baseType: !792, size: 8, offset: 8064)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3407, file: !3408, line: 231, baseType: !760, size: 16, offset: 8080)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3407, file: !3408, line: 232, baseType: !760, size: 16, offset: 8096)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3407, file: !3408, line: 234, baseType: !527, size: 64, offset: 8128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3407, file: !3408, line: 237, baseType: !591, size: 256, offset: 8192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3407, file: !3408, line: 243, baseType: !732, size: 320, offset: 8448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !179, file: !180, line: 1111, baseType: !4395, size: 64, offset: 15424)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3408, line: 20, size: 16640, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4396, file: !3408, line: 21, baseType: !545, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4396, file: !3408, line: 22, baseType: !196, size: 32, offset: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4396, file: !3408, line: 23, baseType: !654, size: 192, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4396, file: !3408, line: 24, baseType: !4402, size: 16384, offset: 256)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 16384, elements: !1253)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !883, line: 51, size: 256, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4403, file: !883, line: 52, baseType: !4406, size: 256)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !883, line: 37, size: 256, elements: !4407)
!4407 = !{!4408, !4415, !4416, !4420}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4406, file: !883, line: 39, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4410, line: 83, baseType: !4411)
!4410 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4410, line: 82, baseType: !4413)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !111}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4406, file: !883, line: 40, baseType: !187, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4406, file: !883, line: 46, baseType: !4417, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4410, line: 86, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4410, line: 85, baseType: !4)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4406, file: !883, line: 48, baseType: !3422, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !179, file: !180, line: 1112, baseType: !3422, size: 64, offset: 15488)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !179, file: !180, line: 1113, baseType: !3422, size: 64, offset: 15552)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !179, file: !180, line: 1115, baseType: !3422, size: 64, offset: 15616)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !179, file: !180, line: 1116, baseType: !3418, size: 192, offset: 15680)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !179, file: !180, line: 1117, baseType: !187, size: 64, offset: 15872)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !179, file: !180, line: 1118, baseType: !1108, size: 64, offset: 15936)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !179, file: !180, line: 1119, baseType: !11, size: 32, offset: 16000)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !179, file: !180, line: 1121, baseType: !574, size: 64, offset: 16064)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !179, file: !180, line: 1125, baseType: !4430, size: 64, offset: 16128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !180, line: 43, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !179, file: !180, line: 1127, baseType: !673, size: 32, offset: 16192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !179, file: !180, line: 1128, baseType: !11, size: 32, offset: 16224)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !179, file: !180, line: 1130, baseType: !4435, size: 128, offset: 16256)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4436, line: 37, size: 128, elements: !4437)
!4436 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4437 = !{!4438, !4439, !4440}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4435, file: !4436, line: 38, baseType: !111, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4435, file: !4436, line: 39, baseType: !200, size: 32, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4435, file: !4436, line: 40, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4436, line: 24, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !179, file: !180, line: 1131, baseType: !4444, size: 256, offset: 16384)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4445, line: 12, size: 256, elements: !4446)
!4445 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4444, file: !4445, line: 13, baseType: !805, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4444, file: !4445, line: 14, baseType: !187, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4444, file: !4445, line: 15, baseType: !187, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4444, file: !4445, line: 16, baseType: !792, size: 8, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !179, file: !180, line: 1134, baseType: !254, size: 64, offset: 16640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !179, file: !180, line: 1135, baseType: !254, size: 64, offset: 16704)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !179, file: !180, line: 1138, baseType: !545, size: 32, offset: 16768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !179, file: !180, line: 1141, baseType: !344, size: 32, offset: 16800)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !179, file: !180, line: 1143, baseType: !4456, size: 64, offset: 16832)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !180, line: 735, size: 64, elements: !4457)
!4457 = !{!4458}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4456, file: !180, line: 736, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !179, file: !180, line: 1147, baseType: !410, size: 128, offset: 16896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !179, file: !180, line: 1149, baseType: !178, size: 64, offset: 17024)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !179, file: !180, line: 1151, baseType: !4463, size: 64, offset: 17088)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !180, line: 1151, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !179, file: !180, line: 1188, baseType: !174, size: 64, offset: 17152)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !179, file: !180, line: 1191, baseType: !4467, size: 64, offset: 17216)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !180, line: 44, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !179, file: !180, line: 1194, baseType: !4470, size: 64, offset: 17280)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !180, line: 45, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !179, file: !180, line: 1197, baseType: !4473, size: 64, offset: 17344)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !180, line: 61, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !179, file: !180, line: 1199, baseType: !4476, size: 64, offset: 17408)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4478, line: 99, size: 128, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4477, file: !4478, line: 100, baseType: !584, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4477, file: !4478, line: 101, baseType: !200, size: 32, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4477, file: !4478, line: 103, baseType: !225, size: 16, offset: 96)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !179, file: !180, line: 1202, baseType: !4484, size: 64, offset: 17472)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !180, line: 48, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !179, file: !180, line: 1205, baseType: !187, size: 64, offset: 17536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !179, file: !180, line: 1206, baseType: !4488, size: 64, offset: 17600)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !883, line: 14, baseType: !4490)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !883, line: 12, size: 384, elements: !4491)
!4491 = !{!4492}
!4492 = !DIDerivedType(tag: DW_TAG_member, scope: !4490, file: !883, line: 13, baseType: !4493, size: 384)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4490, file: !883, line: 13, size: 384, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4498}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4493, file: !883, line: 13, baseType: !111, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4493, file: !883, line: 13, baseType: !111, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4493, file: !883, line: 13, baseType: !111, size: 32, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4493, file: !883, line: 13, baseType: !4499, size: 256, offset: 128)
!4499 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4500, line: 37, size: 256, elements: !4501)
!4500 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4501 = !{!4502, !4507, !4520, !4526, !4535, !4562, !4567}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4499, file: !4500, line: 42, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 39, size: 64, elements: !4504)
!4504 = !{!4505, !4506}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4503, file: !4500, line: 40, baseType: !3320, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4503, file: !4500, line: 41, baseType: !679, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4499, file: !4500, line: 50, baseType: !4508, size: 192)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 45, size: 192, elements: !4509)
!4509 = !{!4510, !4512, !4513, !4519}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4508, file: !4500, line: 46, baseType: !4511, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !394, line: 95, baseType: !111)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4508, file: !4500, line: 47, baseType: !111, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4508, file: !4500, line: 48, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4500, line: 11, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4500, line: 8, size: 64, elements: !4516)
!4516 = !{!4517, !4518}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4515, file: !4500, line: 9, baseType: !111, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4515, file: !4500, line: 10, baseType: !174, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4508, file: !4500, line: 49, baseType: !111, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4499, file: !4500, line: 57, baseType: !4521, size: 128)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 53, size: 128, elements: !4522)
!4522 = !{!4523, !4524, !4525}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4521, file: !4500, line: 54, baseType: !3320, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4521, file: !4500, line: 55, baseType: !679, size: 32, offset: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4521, file: !4500, line: 56, baseType: !4514, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4499, file: !4500, line: 66, baseType: !4527, size: 256)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 60, size: 256, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4534}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4527, file: !4500, line: 61, baseType: !3320, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4527, file: !4500, line: 62, baseType: !679, size: 32, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4527, file: !4500, line: 63, baseType: !111, size: 32, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4527, file: !4500, line: 64, baseType: !4533, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !394, line: 94, baseType: !1107)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4527, file: !4500, line: 65, baseType: !4533, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4499, file: !4500, line: 105, baseType: !4536, size: 256)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 69, size: 256, elements: !4537)
!4537 = !{!4538, !4539}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4536, file: !4500, line: 70, baseType: !174, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !4536, file: !4500, line: 79, baseType: !4540, size: 192, offset: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4536, file: !4500, line: 79, size: 192, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4551, !4556}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4540, file: !4500, line: 81, baseType: !111, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4540, file: !4500, line: 86, baseType: !760, size: 16)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4540, file: !4500, line: 92, baseType: !4545, size: 192)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 88, size: 192, elements: !4546)
!4546 = !{!4547, !4549, !4550}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4545, file: !4500, line: 89, baseType: !4548, size: 64)
!4548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 64, elements: !388)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4545, file: !4500, line: 90, baseType: !174, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4545, file: !4500, line: 91, baseType: !174, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4540, file: !4500, line: 97, baseType: !4552, size: 96)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 94, size: 96, elements: !4553)
!4553 = !{!4554, !4555}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4552, file: !4500, line: 95, baseType: !4548, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4552, file: !4500, line: 96, baseType: !191, size: 32, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4540, file: !4500, line: 103, baseType: !4557, size: 128)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 99, size: 128, elements: !4558)
!4558 = !{!4559, !4560, !4561}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4557, file: !4500, line: 100, baseType: !187, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4557, file: !4500, line: 101, baseType: !191, size: 32, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4557, file: !4500, line: 102, baseType: !191, size: 32, offset: 96)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4499, file: !4500, line: 111, baseType: !4563, size: 128)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 108, size: 128, elements: !4564)
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4563, file: !4500, line: 109, baseType: !1066, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4563, file: !4500, line: 110, baseType: !111, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4499, file: !4500, line: 118, baseType: !4568, size: 128)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 114, size: 128, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4568, file: !4500, line: 115, baseType: !174, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4568, file: !4500, line: 116, baseType: !111, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4568, file: !4500, line: 117, baseType: !11, size: 32, offset: 96)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !179, file: !180, line: 1208, baseType: !4353, size: 448, offset: 17664)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !179, file: !180, line: 1215, baseType: !254, size: 64, offset: 18112)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !179, file: !180, line: 1217, baseType: !254, size: 64, offset: 18176)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !179, file: !180, line: 1219, baseType: !254, size: 64, offset: 18240)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !179, file: !180, line: 1223, baseType: !4578, size: 64, offset: 18304)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4579, line: 99, baseType: !4580)
!4579 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4579, line: 99, size: 64, elements: !4581)
!4581 = !{!4582}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4580, file: !4579, line: 99, baseType: !478, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !179, file: !180, line: 1225, baseType: !922, size: 32, offset: 18368)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !179, file: !180, line: 1226, baseType: !111, size: 32, offset: 18400)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !179, file: !180, line: 1227, baseType: !111, size: 32, offset: 18432)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !179, file: !180, line: 1231, baseType: !4587, size: 64, offset: 18496)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !180, line: 1231, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !179, file: !180, line: 1233, baseType: !169, size: 128, offset: 18560)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !179, file: !180, line: 1240, baseType: !4591, size: 64, offset: 18688)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !180, line: 62, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !179, file: !180, line: 1242, baseType: !4594, size: 64, offset: 18752)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !180, line: 1242, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !179, file: !180, line: 1244, baseType: !169, size: 128, offset: 18816)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !179, file: !180, line: 1245, baseType: !4598, size: 64, offset: 18944)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !180, line: 51, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !179, file: !180, line: 1246, baseType: !591, size: 256, offset: 19008)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !179, file: !180, line: 1247, baseType: !11, size: 32, offset: 19264)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !179, file: !180, line: 1250, baseType: !4603, size: 64, offset: 19328)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !180, line: 57, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !179, file: !180, line: 1251, baseType: !591, size: 256, offset: 19392)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !179, file: !180, line: 1252, baseType: !169, size: 128, offset: 19648)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !179, file: !180, line: 1259, baseType: !1547, size: 64, offset: 19776)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !179, file: !180, line: 1260, baseType: !760, size: 16, offset: 19840)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !179, file: !180, line: 1261, baseType: !760, size: 16, offset: 19856)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !179, file: !180, line: 1314, baseType: !4611, size: 64, offset: 19904)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4613, line: 62, size: 256, align: 256, elements: !4614)
!4613 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620, !4621}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4612, file: !4613, line: 75, baseType: !191, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4612, file: !4613, line: 90, baseType: !191, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4612, file: !4613, line: 112, baseType: !255, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4612, file: !4613, line: 132, baseType: !191, size: 32, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4612, file: !4613, line: 140, baseType: !191, size: 32, offset: 160)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4612, file: !4613, line: 149, baseType: !191, size: 32, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4612, file: !4613, line: 154, baseType: !4622, offset: 224)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, elements: !669)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !179, file: !180, line: 1315, baseType: !190, size: 32, offset: 19968)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !179, file: !180, line: 1316, baseType: !190, size: 32, offset: 20000)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !179, file: !180, line: 1321, baseType: !187, size: 64, offset: 20032)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !179, file: !180, line: 1325, baseType: !111, size: 32, offset: 20096)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !179, file: !180, line: 1326, baseType: !111, size: 32, offset: 20128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !179, file: !180, line: 1327, baseType: !111, size: 32, offset: 20160)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !179, file: !180, line: 1328, baseType: !111, size: 32, offset: 20192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !179, file: !180, line: 1329, baseType: !571, size: 128, align: 64, offset: 20224)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !179, file: !180, line: 1332, baseType: !4632, size: 128, offset: 20352)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4633, line: 51, size: 128, elements: !4634)
!4633 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4634 = !{!4635, !4640, !4641}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4632, file: !4633, line: 60, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4637, line: 7, size: 64, elements: !4638)
!4637 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4638 = !{!4639}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4636, file: !4637, line: 12, baseType: !475, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4632, file: !4633, line: 63, baseType: !792, size: 8, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4632, file: !4633, line: 70, baseType: !792, size: 8, offset: 72)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !179, file: !180, line: 1335, baseType: !3003, size: 64, offset: 20480)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !179, file: !180, line: 1337, baseType: !4644, size: 128, offset: 20544)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4633, line: 39, size: 128, elements: !4645)
!4645 = !{!4646, !4647, !4648}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4644, file: !4633, line: 40, baseType: !1334, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4644, file: !4633, line: 42, baseType: !191, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4644, file: !4633, line: 43, baseType: !191, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !179, file: !180, line: 1340, baseType: !4650, size: 64, offset: 20672)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !180, line: 69, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !179, file: !180, line: 1351, baseType: !111, size: 32, offset: 20736)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !179, file: !180, line: 1352, baseType: !111, size: 32, offset: 20768)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !179, file: !180, line: 1354, baseType: !187, size: 64, offset: 20800)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !179, file: !180, line: 1364, baseType: !254, size: 64, offset: 20864)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !179, file: !180, line: 1365, baseType: !254, size: 64, offset: 20928)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !179, file: !180, line: 1412, baseType: !187, size: 64, offset: 20992)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !179, file: !180, line: 1453, baseType: !4659, size: 64, offset: 21056)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !180, line: 1453, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !179, file: !180, line: 1457, baseType: !4662, size: 64, offset: 21120)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !144, line: 61, size: 576, elements: !4664)
!4664 = !{!4665, !4666, !4685, !4688, !4689, !4722, !4732}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4663, file: !144, line: 62, baseType: !143, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !144, line: 64, baseType: !4667, size: 192, offset: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !144, line: 64, size: 192, elements: !4668)
!4668 = !{!4669, !4680}
!4669 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !144, line: 65, baseType: !4670, size: 192)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4667, file: !144, line: 65, size: 192, elements: !4671)
!4671 = !{!4672, !4679}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4670, file: !144, line: 66, baseType: !4673, size: 128)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4674, line: 50, size: 128, elements: !4675)
!4674 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4675 = !{!4676, !4677, !4678}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4673, file: !4674, line: 52, baseType: !187, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4673, file: !4674, line: 54, baseType: !11, size: 32, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4673, file: !4674, line: 55, baseType: !11, size: 32, offset: 96)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4670, file: !144, line: 67, baseType: !187, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !144, line: 70, baseType: !4681, size: 192)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4667, file: !144, line: 70, size: 192, elements: !4682)
!4682 = !{!4683, !4684}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4681, file: !144, line: 71, baseType: !571, size: 128, align: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4681, file: !144, line: 72, baseType: !187, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4663, file: !144, line: 76, baseType: !4686, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !144, line: 76, flags: DIFlagFwdDecl)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4663, file: !144, line: 77, baseType: !187, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4663, file: !144, line: 79, baseType: !4690, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4674, line: 25, size: 256, elements: !4692)
!4692 = !{!4693, !4699, !4703}
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4691, file: !4674, line: 26, baseType: !4694, size: 128)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4691, file: !4674, line: 26, size: 128, elements: !4695)
!4695 = !{!4696, !4698}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4694, file: !4674, line: 27, baseType: !4697, size: 128)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 128, elements: !2765)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4694, file: !4674, line: 28, baseType: !4697, size: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4691, file: !4674, line: 31, baseType: !4700, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4674, line: 23, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, scope: !4691, file: !4674, line: 33, baseType: !4704, size: 64, offset: 192)
!4704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4691, file: !4674, line: 33, size: 64, elements: !4705)
!4705 = !{!4706, !4712, !4717}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4704, file: !4674, line: 38, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 34, size: 64, elements: !4708)
!4708 = !{!4709, !4710, !4711}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4707, file: !4674, line: 35, baseType: !724, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4707, file: !4674, line: 36, baseType: !361, size: 8, offset: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4707, file: !4674, line: 37, baseType: !361, size: 8, offset: 40)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4704, file: !4674, line: 42, baseType: !4713, size: 16)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 39, size: 16, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4713, file: !4674, line: 40, baseType: !361, size: 8)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4713, file: !4674, line: 41, baseType: !361, size: 8, offset: 8)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4704, file: !4674, line: 46, baseType: !4718, size: 16)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 43, size: 16, elements: !4719)
!4719 = !{!4720, !4721}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4718, file: !4674, line: 44, baseType: !361, size: 8)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4718, file: !4674, line: 45, baseType: !361, size: 8, offset: 8)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4663, file: !144, line: 81, baseType: !4723, size: 64, offset: 448)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !144, line: 85, size: 384, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730, !4731}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4724, file: !144, line: 86, baseType: !4686, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4724, file: !144, line: 87, baseType: !187, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4724, file: !144, line: 88, baseType: !187, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4724, file: !144, line: 89, baseType: !187, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4724, file: !144, line: 90, baseType: !792, size: 8, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4724, file: !144, line: 92, baseType: !4723, size: 64, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4663, file: !144, line: 82, baseType: !11, size: 32, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !179, file: !180, line: 1463, baseType: !4734, offset: 21184)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !180, line: 739, elements: !556)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !179, file: !180, line: 1470, baseType: !571, size: 128, align: 64, offset: 21184)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !179, file: !180, line: 1471, baseType: !196, size: 32, offset: 21312)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !179, file: !180, line: 1472, baseType: !111, size: 32, offset: 21344)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !179, file: !180, line: 1474, baseType: !178, size: 64, offset: 21376)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !179, file: !180, line: 1475, baseType: !2259, size: 320, offset: 21440)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !179, file: !180, line: 1478, baseType: !4741, size: 64, offset: 21760)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4743, line: 49, size: 512, elements: !4744)
!4743 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4754}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4742, file: !4743, line: 50, baseType: !4741, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4742, file: !4743, line: 51, baseType: !174, size: 64, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4742, file: !4743, line: 52, baseType: !187, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4742, file: !4743, line: 53, baseType: !187, size: 64, offset: 192)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4742, file: !4743, line: 54, baseType: !1721, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4742, file: !4743, line: 56, baseType: !11, size: 32, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4742, file: !4743, line: 58, baseType: !11, size: 32, offset: 352)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4742, file: !4743, line: 59, baseType: !4753, size: 64, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !170, line: 159, baseType: !254)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4742, file: !4743, line: 60, baseType: !1850, size: 64, offset: 448)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !179, file: !180, line: 1482, baseType: !196, size: 32, offset: 21824)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !179, file: !180, line: 1489, baseType: !174, size: 64, offset: 21888)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !179, file: !180, line: 1504, baseType: !174, size: 64, offset: 21952)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !179, file: !180, line: 1505, baseType: !255, size: 64, offset: 22016)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !179, file: !180, line: 1506, baseType: !254, size: 64, offset: 22080)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !179, file: !180, line: 1507, baseType: !255, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !179, file: !180, line: 1508, baseType: !255, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !179, file: !180, line: 1509, baseType: !255, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !179, file: !180, line: 1510, baseType: !571, size: 128, align: 64, offset: 22208)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !179, file: !180, line: 1511, baseType: !111, size: 32, offset: 22336)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !179, file: !180, line: 1515, baseType: !4004, size: 64, offset: 22400)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !179, file: !180, line: 1518, baseType: !4004, size: 64, offset: 22464)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !179, file: !180, line: 1528, baseType: !571, size: 128, align: 64, offset: 22528)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !179, file: !180, line: 1552, baseType: !4769, size: 35328, offset: 23040)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4770, line: 430, size: 35328, elements: !4771)
!4770 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4771 = !{!4772, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4801, !4802, !4803, !4804, !4805, !4806, !4809, !4810, !4811, !4812}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4769, file: !4770, line: 432, baseType: !4773, size: 192)
!4773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4774, size: 192, elements: !629)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4775, line: 16, size: 64, elements: !4776)
!4775 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4774, file: !4775, line: 17, baseType: !223, size: 16)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4774, file: !4775, line: 18, baseType: !223, size: 16, offset: 16)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4774, file: !4775, line: 19, baseType: !223, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4774, file: !4775, line: 19, baseType: !223, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4774, file: !4775, line: 19, baseType: !223, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4774, file: !4775, line: 19, baseType: !223, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4774, file: !4775, line: 19, baseType: !223, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4774, file: !4775, line: 20, baseType: !223, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4774, file: !4775, line: 20, baseType: !223, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4774, file: !4775, line: 20, baseType: !223, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4774, file: !4775, line: 20, baseType: !223, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4774, file: !4775, line: 20, baseType: !223, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4774, file: !4775, line: 20, baseType: !223, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4769, file: !4770, line: 436, baseType: !187, size: 64, offset: 192)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4769, file: !4770, line: 440, baseType: !225, size: 16, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4769, file: !4770, line: 441, baseType: !225, size: 16, offset: 272)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4769, file: !4770, line: 442, baseType: !225, size: 16, offset: 288)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4769, file: !4770, line: 443, baseType: !225, size: 16, offset: 304)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4769, file: !4770, line: 447, baseType: !187, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4769, file: !4770, line: 448, baseType: !187, size: 64, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4769, file: !4770, line: 459, baseType: !4798, size: 256, offset: 448)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4799, size: 256, elements: !650)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4770, line: 428, flags: DIFlagFwdDecl)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4769, file: !4770, line: 461, baseType: !187, size: 64, offset: 704)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4769, file: !4770, line: 463, baseType: !187, size: 64, offset: 768)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4769, file: !4770, line: 465, baseType: !187, size: 64, offset: 832)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4769, file: !4770, line: 466, baseType: !187, size: 64, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4769, file: !4770, line: 467, baseType: !187, size: 64, offset: 960)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4769, file: !4770, line: 473, baseType: !4807, size: 64, offset: 1024)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4770, line: 10, flags: DIFlagFwdDecl)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4769, file: !4770, line: 480, baseType: !187, size: 64, offset: 1088)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4769, file: !4770, line: 482, baseType: !11, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4769, file: !4770, line: 491, baseType: !190, size: 32, offset: 1184)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4769, file: !4770, line: 501, baseType: !4813, size: 33792, offset: 1536)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4814, line: 448, size: 33792, elements: !4815)
!4814 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4815 = !{!4816, !4817, !4818, !4979, !4980, !4986, !4987}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4813, file: !4814, line: 461, baseType: !11, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4813, file: !4814, line: 468, baseType: !187, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4813, file: !4814, line: 476, baseType: !4819, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4814, line: 356, size: 33280, align: 512, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4820, file: !4814, line: 358, baseType: !11, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4820, file: !4814, line: 361, baseType: !11, size: 32, offset: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4820, file: !4814, line: 364, baseType: !254, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4820, file: !4814, line: 367, baseType: !254, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4820, file: !4814, line: 370, baseType: !254, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4820, file: !4814, line: 373, baseType: !11, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4820, file: !4814, line: 376, baseType: !11, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4820, file: !4814, line: 391, baseType: !11, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4820, file: !4814, line: 394, baseType: !11, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4820, file: !4814, line: 397, baseType: !4832, size: 32768, offset: 512)
!4832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4814, line: 348, size: 32768, elements: !4833)
!4833 = !{!4834, !4849, !4886, !4963, !4975}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4832, file: !4814, line: 349, baseType: !4835, size: 896)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4814, line: 12, size: 896, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4848}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4835, file: !4814, line: 13, baseType: !190, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4835, file: !4814, line: 14, baseType: !190, size: 32, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4835, file: !4814, line: 15, baseType: !190, size: 32, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4835, file: !4814, line: 16, baseType: !190, size: 32, offset: 96)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4835, file: !4814, line: 17, baseType: !190, size: 32, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4835, file: !4814, line: 18, baseType: !190, size: 32, offset: 160)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4835, file: !4814, line: 19, baseType: !190, size: 32, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4835, file: !4814, line: 22, baseType: !4845, size: 640, offset: 224)
!4845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 640, elements: !4846)
!4846 = !{!4847}
!4847 = !DISubrange(count: 20)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4835, file: !4814, line: 25, baseType: !190, size: 32, offset: 864)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4832, file: !4814, line: 350, baseType: !4850, size: 4096, align: 128)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4814, line: 34, size: 4096, align: 128, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856, !4871, !4872, !4873, !4875, !4877, !4881}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4850, file: !4814, line: 35, baseType: !223, size: 16)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4850, file: !4814, line: 36, baseType: !223, size: 16, offset: 16)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4850, file: !4814, line: 37, baseType: !223, size: 16, offset: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4850, file: !4814, line: 38, baseType: !223, size: 16, offset: 48)
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !4814, line: 39, baseType: !4857, size: 128, offset: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !4814, line: 39, size: 128, elements: !4858)
!4858 = !{!4859, !4864}
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !4814, line: 40, baseType: !4860, size: 128)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !4814, line: 40, size: 128, elements: !4861)
!4861 = !{!4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4860, file: !4814, line: 41, baseType: !254, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4860, file: !4814, line: 42, baseType: !254, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !4814, line: 44, baseType: !4865, size: 128)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !4814, line: 44, size: 128, elements: !4866)
!4866 = !{!4867, !4868, !4869, !4870}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4865, file: !4814, line: 45, baseType: !190, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4865, file: !4814, line: 46, baseType: !190, size: 32, offset: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4865, file: !4814, line: 47, baseType: !190, size: 32, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4865, file: !4814, line: 48, baseType: !190, size: 32, offset: 96)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4850, file: !4814, line: 51, baseType: !190, size: 32, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4850, file: !4814, line: 52, baseType: !190, size: 32, offset: 224)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4850, file: !4814, line: 55, baseType: !4874, size: 1024, offset: 256)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1024, elements: !2756)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4850, file: !4814, line: 58, baseType: !4876, size: 2048, offset: 1280)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !1253)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4850, file: !4814, line: 60, baseType: !4878, size: 384, offset: 3328)
!4878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 384, elements: !4879)
!4879 = !{!4880}
!4880 = !DISubrange(count: 12)
!4881 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !4814, line: 62, baseType: !4882, size: 384, offset: 3712)
!4882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !4814, line: 62, size: 384, elements: !4883)
!4883 = !{!4884, !4885}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4882, file: !4814, line: 63, baseType: !4878, size: 384)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4882, file: !4814, line: 64, baseType: !4878, size: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4832, file: !4814, line: 351, baseType: !4887, size: 1088)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4814, line: 79, size: 1088, elements: !4888)
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4962}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4887, file: !4814, line: 80, baseType: !190, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4887, file: !4814, line: 81, baseType: !190, size: 32, offset: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4887, file: !4814, line: 82, baseType: !190, size: 32, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4887, file: !4814, line: 83, baseType: !190, size: 32, offset: 96)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4887, file: !4814, line: 84, baseType: !190, size: 32, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4887, file: !4814, line: 85, baseType: !190, size: 32, offset: 160)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4887, file: !4814, line: 86, baseType: !190, size: 32, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4887, file: !4814, line: 88, baseType: !4845, size: 640, offset: 224)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4887, file: !4814, line: 89, baseType: !361, size: 8, offset: 864)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4887, file: !4814, line: 90, baseType: !361, size: 8, offset: 872)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4887, file: !4814, line: 91, baseType: !361, size: 8, offset: 880)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4887, file: !4814, line: 92, baseType: !361, size: 8, offset: 888)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4887, file: !4814, line: 93, baseType: !361, size: 8, offset: 896)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4887, file: !4814, line: 94, baseType: !361, size: 8, offset: 904)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4887, file: !4814, line: 95, baseType: !4904, size: 64, offset: 960)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4906, line: 11, size: 128, elements: !4907)
!4906 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4907 = !{!4908, !4909}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4905, file: !4906, line: 12, baseType: !1066, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4905, file: !4906, line: 13, baseType: !4910, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4912, line: 103, size: 1344, elements: !4913)
!4912 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4942, !4943, !4944}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4911, file: !4912, line: 109, baseType: !187, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4911, file: !4912, line: 110, baseType: !187, size: 64, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4911, file: !4912, line: 111, baseType: !187, size: 64, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4911, file: !4912, line: 112, baseType: !187, size: 64, offset: 192)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4911, file: !4912, line: 113, baseType: !187, size: 64, offset: 256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4911, file: !4912, line: 114, baseType: !187, size: 64, offset: 320)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4911, file: !4912, line: 117, baseType: !187, size: 64, offset: 384)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4911, file: !4912, line: 118, baseType: !187, size: 64, offset: 448)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4911, file: !4912, line: 119, baseType: !187, size: 64, offset: 512)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4911, file: !4912, line: 120, baseType: !187, size: 64, offset: 576)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4911, file: !4912, line: 121, baseType: !187, size: 64, offset: 640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4911, file: !4912, line: 122, baseType: !187, size: 64, offset: 704)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4911, file: !4912, line: 123, baseType: !187, size: 64, offset: 768)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4911, file: !4912, line: 124, baseType: !187, size: 64, offset: 832)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4911, file: !4912, line: 125, baseType: !187, size: 64, offset: 896)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4911, file: !4912, line: 139, baseType: !187, size: 64, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4911, file: !4912, line: 142, baseType: !187, size: 64, offset: 1024)
!4931 = !DIDerivedType(tag: DW_TAG_member, scope: !4911, file: !4912, line: 144, baseType: !4932, size: 64, offset: 1088)
!4932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4911, file: !4912, line: 144, size: 64, elements: !4933)
!4933 = !{!4934, !4935, !4936}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4932, file: !4912, line: 146, baseType: !223, size: 16)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4932, file: !4912, line: 148, baseType: !254, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4932, file: !4912, line: 150, baseType: !4937, size: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4912, line: 59, size: 64, elements: !4938)
!4938 = !{!4939, !4940, !4941}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4937, file: !4912, line: 61, baseType: !254, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4937, file: !4912, line: 63, baseType: !254, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4937, file: !4912, line: 65, baseType: !254, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4911, file: !4912, line: 153, baseType: !187, size: 64, offset: 1152)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4911, file: !4912, line: 154, baseType: !187, size: 64, offset: 1216)
!4944 = !DIDerivedType(tag: DW_TAG_member, scope: !4911, file: !4912, line: 156, baseType: !4945, size: 64, offset: 1280)
!4945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4911, file: !4912, line: 156, size: 64, elements: !4946)
!4946 = !{!4947, !4948, !4949}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4945, file: !4912, line: 158, baseType: !223, size: 16)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4945, file: !4912, line: 160, baseType: !254, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4945, file: !4912, line: 162, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4912, line: 69, size: 64, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4950, file: !4912, line: 71, baseType: !254, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4950, file: !4912, line: 73, baseType: !254, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4950, file: !4912, line: 75, baseType: !254, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4950, file: !4912, line: 77, baseType: !254, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4950, file: !4912, line: 80, baseType: !254, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4950, file: !4912, line: 83, baseType: !254, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4950, file: !4912, line: 86, baseType: !254, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4950, file: !4912, line: 88, baseType: !254, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4950, file: !4912, line: 93, baseType: !254, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4950, file: !4912, line: 100, baseType: !254, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4887, file: !4814, line: 96, baseType: !190, size: 32, offset: 1024)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4832, file: !4814, line: 352, baseType: !4964, size: 4608, align: 512)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4814, line: 333, size: 4608, align: 512, elements: !4965)
!4965 = !{!4966, !4967, !4974}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4964, file: !4814, line: 334, baseType: !4850, size: 4096, align: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4964, file: !4814, line: 335, baseType: !4968, size: 512, offset: 4096)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4814, line: 312, size: 512, elements: !4969)
!4969 = !{!4970, !4971, !4972}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4968, file: !4814, line: 313, baseType: !254, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4968, file: !4814, line: 314, baseType: !254, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4968, file: !4814, line: 315, baseType: !4973, size: 384, offset: 128)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 384, elements: !779)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4964, file: !4814, line: 336, baseType: !3998, offset: 4608)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4832, file: !4814, line: 353, baseType: !4976, size: 32768)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32768, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 4096)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4813, file: !4814, line: 484, baseType: !4819, size: 64, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4813, file: !4814, line: 491, baseType: !4981, size: 128, offset: 256)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4814, line: 404, size: 128, elements: !4982)
!4982 = !{!4983, !4984, !4985}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4981, file: !4814, line: 424, baseType: !254, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4981, file: !4814, line: 432, baseType: !11, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4981, file: !4814, line: 440, baseType: !11, size: 32, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4813, file: !4814, line: 498, baseType: !4981, size: 128, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4813, file: !4814, line: 508, baseType: !4820, size: 33280, align: 512, offset: 512)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldsem_waiter", file: !7, line: 49, size: 192, elements: !4995)
!4995 = !{!4996, !4997}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4994, file: !7, line: 50, baseType: !169, size: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4994, file: !7, line: 51, baseType: !178, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5001)
!5001 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !165)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!5005 = !{!0, !5006}
!5006 = !DIGlobalVariableExpression(var: !5007, expr: !DIExpression())
!5007 = distinct !DIGlobalVariable(name: "put_task_map", scope: !5008, file: !5009, line: 134, type: !2298, isLocal: true, isDefinition: true)
!5008 = distinct !DISubprogram(name: "put_task_struct", scope: !5009, file: !5009, line: 124, type: !5010, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5012)
!5009 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !178}
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "t", arg: 1, scope: !5008, file: !5009, line: 124, type: !178)
!5014 = !{i32 7, !"Dwarf Version", i32 5}
!5015 = !{i32 2, !"Debug Info Version", i32 3}
!5016 = !{i32 1, !"wchar_size", i32 2}
!5017 = !{i32 8, !"cf-protection-branch", i32 1}
!5018 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5019 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5020 = !{i32 1, !"Code Model", i32 2}
!5021 = !{i32 1, !"override-stack-alignment", i32 8}
!5022 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5023 = distinct !DISubprogram(name: "__init_ldsem", scope: !7, file: !7, line: 57, type: !5024, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5028)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !5026, !795, !5027}
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!5028 = !{!5029, !5030, !5031}
!5029 = !DILocalVariable(name: "sem", arg: 1, scope: !5023, file: !7, line: 57, type: !5026)
!5030 = !DILocalVariable(name: "name", arg: 2, scope: !5023, file: !7, line: 57, type: !795)
!5031 = !DILocalVariable(name: "key", arg: 3, scope: !5023, file: !7, line: 58, type: !5027)
!5032 = !DILocation(line: 57, column: 40, scope: !5023)
!5033 = !DILocation(line: 57, column: 57, scope: !5023)
!5034 = !DILocation(line: 58, column: 28, scope: !5023)
!5035 = !DILocation(line: 67, column: 19, scope: !5023)
!5036 = !DILocation(line: 67, column: 24, scope: !5023)
!5037 = !DILocation(line: 67, column: 2, scope: !5023)
!5038 = !DILocation(line: 68, column: 2, scope: !5023)
!5039 = !DILocation(line: 68, column: 7, scope: !5023)
!5040 = !DILocation(line: 68, column: 20, scope: !5023)
!5041 = !DILocation(line: 69, column: 2, scope: !5023)
!5042 = !DILocation(line: 69, column: 2, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5023, file: !7, line: 69, column: 2)
!5044 = !DILocation(line: 70, column: 18, scope: !5023)
!5045 = !DILocation(line: 70, column: 23, scope: !5023)
!5046 = !DILocation(line: 70, column: 2, scope: !5023)
!5047 = !DILocation(line: 71, column: 18, scope: !5023)
!5048 = !DILocation(line: 71, column: 23, scope: !5023)
!5049 = !DILocation(line: 71, column: 2, scope: !5023)
!5050 = !DILocation(line: 72, column: 1, scope: !5023)
!5051 = distinct !DISubprogram(name: "atomic_long_set", scope: !5052, file: !5052, line: 3193, type: !5053, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5055)
!5052 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !2843, !1066}
!5055 = !{!5056, !5057}
!5056 = !DILocalVariable(name: "v", arg: 1, scope: !5051, file: !5052, line: 3193, type: !2843)
!5057 = !DILocalVariable(name: "i", arg: 2, scope: !5051, file: !5052, line: 3193, type: !1066)
!5058 = !DILocation(line: 3193, column: 32, scope: !5051)
!5059 = !DILocation(line: 3193, column: 40, scope: !5051)
!5060 = !DILocation(line: 3195, column: 26, scope: !5051)
!5061 = !DILocation(line: 3195, column: 2, scope: !5051)
!5062 = !DILocation(line: 3196, column: 22, scope: !5051)
!5063 = !DILocation(line: 3196, column: 25, scope: !5051)
!5064 = !DILocation(line: 3196, column: 2, scope: !5051)
!5065 = !DILocation(line: 3197, column: 1, scope: !5051)
!5066 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5067, file: !5067, line: 35, type: !5068, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5070)
!5067 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !168}
!5070 = !{!5071}
!5071 = !DILocalVariable(name: "list", arg: 1, scope: !5066, file: !5067, line: 35, type: !168)
!5072 = !DILocation(line: 35, column: 53, scope: !5066)
!5073 = !DILocation(line: 37, column: 2, scope: !5066)
!5074 = !DILocation(line: 37, column: 2, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5066, file: !5067, line: 37, column: 2)
!5076 = !DILocation(line: 37, column: 2, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5075, file: !5067, line: 37, column: 2)
!5078 = !DILocation(line: 37, column: 2, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5075, file: !5067, line: 37, column: 2)
!5080 = !DILocation(line: 38, column: 2, scope: !5066)
!5081 = !DILocation(line: 38, column: 2, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5066, file: !5067, line: 38, column: 2)
!5083 = !DILocation(line: 38, column: 2, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5082, file: !5067, line: 38, column: 2)
!5085 = !DILocation(line: 38, column: 2, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !5067, line: 38, column: 2)
!5087 = !DILocation(line: 39, column: 1, scope: !5066)
!5088 = distinct !DISubprogram(name: "ldsem_down_read", scope: !7, file: !7, line: 337, type: !5089, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!111, !5026, !1066}
!5091 = !{!5092, !5093}
!5092 = !DILocalVariable(name: "sem", arg: 1, scope: !5088, file: !7, line: 337, type: !5026)
!5093 = !DILocalVariable(name: "timeout", arg: 2, scope: !5088, file: !7, line: 337, type: !1066)
!5094 = !DILocation(line: 337, column: 50, scope: !5088)
!5095 = !DILocation(line: 337, column: 60, scope: !5088)
!5096 = !DILocation(line: 339, column: 2, scope: !5088)
!5097 = !DILocation(line: 339, column: 2, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5088, file: !7, line: 339, column: 2)
!5099 = !DILocation(line: 340, column: 34, scope: !5088)
!5100 = !DILocation(line: 340, column: 42, scope: !5088)
!5101 = !DILocation(line: 340, column: 9, scope: !5088)
!5102 = !DILocation(line: 340, column: 2, scope: !5088)
!5103 = !DILocation(line: 112, column: 2, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !2, file: !3, line: 112, column: 2)
!5105 = !DILocation(line: 112, column: 2, scope: !2)
!5106 = !DILocation(line: 113, column: 1, scope: !2)
!5107 = distinct !DISubprogram(name: "__ldsem_down_read_nested", scope: !7, file: !7, line: 295, type: !5108, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!111, !5026, !111, !1066}
!5110 = !{!5111, !5112, !5113, !5114}
!5111 = !DILocalVariable(name: "sem", arg: 1, scope: !5107, file: !7, line: 295, type: !5026)
!5112 = !DILocalVariable(name: "subclass", arg: 2, scope: !5107, file: !7, line: 296, type: !111)
!5113 = !DILocalVariable(name: "timeout", arg: 3, scope: !5107, file: !7, line: 296, type: !1066)
!5114 = !DILocalVariable(name: "count", scope: !5107, file: !7, line: 298, type: !1066)
!5115 = !DILocation(line: 295, column: 58, scope: !5107)
!5116 = !DILocation(line: 296, column: 13, scope: !5107)
!5117 = !DILocation(line: 296, column: 28, scope: !5107)
!5118 = !DILocation(line: 298, column: 2, scope: !5107)
!5119 = !DILocation(line: 298, column: 7, scope: !5107)
!5120 = !DILocation(line: 300, column: 2, scope: !5107)
!5121 = !DILocation(line: 300, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5107, file: !7, line: 300, column: 2)
!5123 = !DILocation(line: 302, column: 51, scope: !5107)
!5124 = !DILocation(line: 302, column: 56, scope: !5107)
!5125 = !DILocation(line: 302, column: 10, scope: !5107)
!5126 = !DILocation(line: 302, column: 8, scope: !5107)
!5127 = !DILocation(line: 303, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5107, file: !7, line: 303, column: 6)
!5129 = !DILocation(line: 303, column: 12, scope: !5128)
!5130 = !DILocation(line: 303, column: 6, scope: !5107)
!5131 = !DILocation(line: 304, column: 3, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !7, line: 303, column: 18)
!5133 = !DILocation(line: 304, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5132, file: !7, line: 304, column: 3)
!5135 = !DILocation(line: 305, column: 25, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !7, line: 305, column: 7)
!5137 = !DILocation(line: 305, column: 30, scope: !5136)
!5138 = !DILocation(line: 305, column: 37, scope: !5136)
!5139 = !DILocation(line: 305, column: 8, scope: !5136)
!5140 = !DILocation(line: 305, column: 7, scope: !5132)
!5141 = !DILocation(line: 306, column: 4, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5136, file: !7, line: 305, column: 47)
!5143 = !DILocation(line: 306, column: 4, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5142, file: !7, line: 306, column: 4)
!5145 = !DILocation(line: 307, column: 4, scope: !5142)
!5146 = !DILocation(line: 309, column: 2, scope: !5132)
!5147 = !DILocation(line: 310, column: 2, scope: !5107)
!5148 = !DILocation(line: 310, column: 2, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5107, file: !7, line: 310, column: 2)
!5150 = !DILocation(line: 311, column: 2, scope: !5107)
!5151 = !DILocation(line: 312, column: 1, scope: !5107)
!5152 = distinct !DISubprogram(name: "ldsem_down_read_trylock", scope: !7, file: !7, line: 346, type: !5153, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!111, !5026}
!5155 = !{!5156, !5157}
!5156 = !DILocalVariable(name: "sem", arg: 1, scope: !5152, file: !7, line: 346, type: !5026)
!5157 = !DILocalVariable(name: "count", scope: !5152, file: !7, line: 348, type: !1066)
!5158 = !DILocation(line: 346, column: 50, scope: !5152)
!5159 = !DILocation(line: 348, column: 2, scope: !5152)
!5160 = !DILocation(line: 348, column: 7, scope: !5152)
!5161 = !DILocation(line: 348, column: 33, scope: !5152)
!5162 = !DILocation(line: 348, column: 38, scope: !5152)
!5163 = !DILocation(line: 348, column: 15, scope: !5152)
!5164 = !DILocation(line: 350, column: 2, scope: !5152)
!5165 = !DILocation(line: 350, column: 9, scope: !5152)
!5166 = !DILocation(line: 350, column: 15, scope: !5152)
!5167 = !DILocation(line: 351, column: 32, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !7, line: 351, column: 7)
!5169 = distinct !DILexicalBlock(scope: !5152, file: !7, line: 350, column: 21)
!5170 = !DILocation(line: 351, column: 37, scope: !5168)
!5171 = !DILocation(line: 351, column: 52, scope: !5168)
!5172 = !DILocation(line: 351, column: 58, scope: !5168)
!5173 = !DILocation(line: 351, column: 7, scope: !5168)
!5174 = !DILocation(line: 351, column: 7, scope: !5169)
!5175 = !DILocation(line: 352, column: 4, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5168, file: !7, line: 351, column: 78)
!5177 = !DILocation(line: 352, column: 4, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5176, file: !7, line: 352, column: 4)
!5179 = !DILocation(line: 353, column: 4, scope: !5176)
!5180 = !DILocation(line: 353, column: 4, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5176, file: !7, line: 353, column: 4)
!5182 = !DILocation(line: 354, column: 4, scope: !5176)
!5183 = distinct !{!5183, !5164, !5184, !5185, !5186}
!5184 = !DILocation(line: 356, column: 2, scope: !5152)
!5185 = !{!"llvm.loop.mustprogress"}
!5186 = !{!"llvm.loop.unroll.disable"}
!5187 = !DILocation(line: 357, column: 2, scope: !5152)
!5188 = !DILocation(line: 358, column: 1, scope: !5152)
!5189 = distinct !DISubprogram(name: "atomic_long_read", scope: !5052, file: !5052, line: 3158, type: !5190, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5194)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!1066, !5192}
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!5194 = !{!5195}
!5195 = !DILocalVariable(name: "v", arg: 1, scope: !5189, file: !5052, line: 3158, type: !5192)
!5196 = !DILocation(line: 3158, column: 39, scope: !5189)
!5197 = !DILocation(line: 3160, column: 25, scope: !5189)
!5198 = !DILocation(line: 3160, column: 2, scope: !5189)
!5199 = !DILocation(line: 3161, column: 30, scope: !5189)
!5200 = !DILocation(line: 3161, column: 9, scope: !5189)
!5201 = !DILocation(line: 3161, column: 2, scope: !5189)
!5202 = distinct !DISubprogram(name: "atomic_long_try_cmpxchg", scope: !5052, file: !5052, line: 4398, type: !5203, scopeLine: 4399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5206)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!792, !2843, !5205, !1066}
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!5206 = !{!5207, !5208, !5209}
!5207 = !DILocalVariable(name: "v", arg: 1, scope: !5202, file: !5052, line: 4398, type: !2843)
!5208 = !DILocalVariable(name: "old", arg: 2, scope: !5202, file: !5052, line: 4398, type: !5205)
!5209 = !DILocalVariable(name: "new", arg: 3, scope: !5202, file: !5052, line: 4398, type: !1066)
!5210 = !DILocation(line: 4398, column: 40, scope: !5202)
!5211 = !DILocation(line: 4398, column: 49, scope: !5202)
!5212 = !DILocation(line: 4398, column: 59, scope: !5202)
!5213 = !DILocation(line: 4400, column: 2, scope: !5202)
!5214 = !DILocation(line: 4400, column: 2, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5202, file: !5052, line: 4400, column: 2)
!5216 = !DILocation(line: 4401, column: 31, scope: !5202)
!5217 = !DILocation(line: 4401, column: 2, scope: !5202)
!5218 = !DILocation(line: 4402, column: 31, scope: !5202)
!5219 = !DILocation(line: 4402, column: 2, scope: !5202)
!5220 = !DILocation(line: 4403, column: 37, scope: !5202)
!5221 = !DILocation(line: 4403, column: 40, scope: !5202)
!5222 = !DILocation(line: 4403, column: 45, scope: !5202)
!5223 = !DILocation(line: 4403, column: 9, scope: !5202)
!5224 = !DILocation(line: 4403, column: 2, scope: !5202)
!5225 = distinct !DISubprogram(name: "ldsem_down_write", scope: !7, file: !7, line: 363, type: !5089, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5226)
!5226 = !{!5227, !5228}
!5227 = !DILocalVariable(name: "sem", arg: 1, scope: !5225, file: !7, line: 363, type: !5026)
!5228 = !DILocalVariable(name: "timeout", arg: 2, scope: !5225, file: !7, line: 363, type: !1066)
!5229 = !DILocation(line: 363, column: 51, scope: !5225)
!5230 = !DILocation(line: 363, column: 61, scope: !5225)
!5231 = !DILocation(line: 365, column: 2, scope: !5225)
!5232 = !DILocation(line: 365, column: 2, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5225, file: !7, line: 365, column: 2)
!5234 = !DILocation(line: 366, column: 35, scope: !5225)
!5235 = !DILocation(line: 366, column: 43, scope: !5225)
!5236 = !DILocation(line: 366, column: 9, scope: !5225)
!5237 = !DILocation(line: 366, column: 2, scope: !5225)
!5238 = distinct !DISubprogram(name: "__ldsem_down_write_nested", scope: !7, file: !7, line: 314, type: !5108, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5239)
!5239 = !{!5240, !5241, !5242, !5243}
!5240 = !DILocalVariable(name: "sem", arg: 1, scope: !5238, file: !7, line: 314, type: !5026)
!5241 = !DILocalVariable(name: "subclass", arg: 2, scope: !5238, file: !7, line: 315, type: !111)
!5242 = !DILocalVariable(name: "timeout", arg: 3, scope: !5238, file: !7, line: 315, type: !1066)
!5243 = !DILocalVariable(name: "count", scope: !5238, file: !7, line: 317, type: !1066)
!5244 = !DILocation(line: 314, column: 59, scope: !5238)
!5245 = !DILocation(line: 315, column: 14, scope: !5238)
!5246 = !DILocation(line: 315, column: 29, scope: !5238)
!5247 = !DILocation(line: 317, column: 2, scope: !5238)
!5248 = !DILocation(line: 317, column: 7, scope: !5238)
!5249 = !DILocation(line: 319, column: 2, scope: !5238)
!5250 = !DILocation(line: 319, column: 2, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5238, file: !7, line: 319, column: 2)
!5252 = !DILocation(line: 321, column: 52, scope: !5238)
!5253 = !DILocation(line: 321, column: 57, scope: !5238)
!5254 = !DILocation(line: 321, column: 10, scope: !5238)
!5255 = !DILocation(line: 321, column: 8, scope: !5238)
!5256 = !DILocation(line: 322, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5238, file: !7, line: 322, column: 6)
!5258 = !DILocation(line: 322, column: 13, scope: !5257)
!5259 = !DILocation(line: 322, column: 34, scope: !5257)
!5260 = !DILocation(line: 322, column: 6, scope: !5238)
!5261 = !DILocation(line: 323, column: 3, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5257, file: !7, line: 322, column: 56)
!5263 = !DILocation(line: 323, column: 3, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5262, file: !7, line: 323, column: 3)
!5265 = !DILocation(line: 324, column: 26, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !7, line: 324, column: 7)
!5267 = !DILocation(line: 324, column: 31, scope: !5266)
!5268 = !DILocation(line: 324, column: 38, scope: !5266)
!5269 = !DILocation(line: 324, column: 8, scope: !5266)
!5270 = !DILocation(line: 324, column: 7, scope: !5262)
!5271 = !DILocation(line: 325, column: 4, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5266, file: !7, line: 324, column: 48)
!5273 = !DILocation(line: 325, column: 4, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5272, file: !7, line: 325, column: 4)
!5275 = !DILocation(line: 326, column: 4, scope: !5272)
!5276 = !DILocation(line: 328, column: 2, scope: !5262)
!5277 = !DILocation(line: 329, column: 2, scope: !5238)
!5278 = !DILocation(line: 329, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5238, file: !7, line: 329, column: 2)
!5280 = !DILocation(line: 330, column: 2, scope: !5238)
!5281 = !DILocation(line: 331, column: 1, scope: !5238)
!5282 = distinct !DISubprogram(name: "ldsem_down_write_trylock", scope: !7, file: !7, line: 372, type: !5153, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5283)
!5283 = !{!5284, !5285}
!5284 = !DILocalVariable(name: "sem", arg: 1, scope: !5282, file: !7, line: 372, type: !5026)
!5285 = !DILocalVariable(name: "count", scope: !5282, file: !7, line: 374, type: !1066)
!5286 = !DILocation(line: 372, column: 51, scope: !5282)
!5287 = !DILocation(line: 374, column: 2, scope: !5282)
!5288 = !DILocation(line: 374, column: 7, scope: !5282)
!5289 = !DILocation(line: 374, column: 33, scope: !5282)
!5290 = !DILocation(line: 374, column: 38, scope: !5282)
!5291 = !DILocation(line: 374, column: 15, scope: !5282)
!5292 = !DILocation(line: 376, column: 2, scope: !5282)
!5293 = !DILocation(line: 376, column: 10, scope: !5282)
!5294 = !DILocation(line: 376, column: 16, scope: !5282)
!5295 = !DILocation(line: 376, column: 37, scope: !5282)
!5296 = !DILocation(line: 377, column: 32, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !7, line: 377, column: 7)
!5298 = distinct !DILexicalBlock(scope: !5282, file: !7, line: 376, column: 43)
!5299 = !DILocation(line: 377, column: 37, scope: !5297)
!5300 = !DILocation(line: 377, column: 52, scope: !5297)
!5301 = !DILocation(line: 377, column: 58, scope: !5297)
!5302 = !DILocation(line: 377, column: 7, scope: !5297)
!5303 = !DILocation(line: 377, column: 7, scope: !5298)
!5304 = !DILocation(line: 378, column: 4, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5297, file: !7, line: 377, column: 79)
!5306 = !DILocation(line: 378, column: 4, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5305, file: !7, line: 378, column: 4)
!5308 = !DILocation(line: 379, column: 4, scope: !5305)
!5309 = !DILocation(line: 379, column: 4, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !7, line: 379, column: 4)
!5311 = !DILocation(line: 380, column: 4, scope: !5305)
!5312 = distinct !{!5312, !5292, !5313, !5185, !5186}
!5313 = !DILocation(line: 382, column: 2, scope: !5282)
!5314 = !DILocation(line: 383, column: 2, scope: !5282)
!5315 = !DILocation(line: 384, column: 1, scope: !5282)
!5316 = distinct !DISubprogram(name: "ldsem_up_read", scope: !7, file: !7, line: 389, type: !5317, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{null, !5026}
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "sem", arg: 1, scope: !5316, file: !7, line: 389, type: !5026)
!5321 = !DILocalVariable(name: "count", scope: !5316, file: !7, line: 391, type: !1066)
!5322 = !DILocation(line: 389, column: 41, scope: !5316)
!5323 = !DILocation(line: 391, column: 2, scope: !5316)
!5324 = !DILocation(line: 391, column: 7, scope: !5316)
!5325 = !DILocation(line: 393, column: 2, scope: !5316)
!5326 = !DILocation(line: 393, column: 2, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5316, file: !7, line: 393, column: 2)
!5328 = !DILocation(line: 395, column: 52, scope: !5316)
!5329 = !DILocation(line: 395, column: 57, scope: !5316)
!5330 = !DILocation(line: 395, column: 10, scope: !5316)
!5331 = !DILocation(line: 395, column: 8, scope: !5316)
!5332 = !DILocation(line: 396, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5316, file: !7, line: 396, column: 6)
!5334 = !DILocation(line: 396, column: 12, scope: !5333)
!5335 = !DILocation(line: 396, column: 16, scope: !5333)
!5336 = !DILocation(line: 396, column: 20, scope: !5333)
!5337 = !DILocation(line: 396, column: 26, scope: !5333)
!5338 = !DILocation(line: 396, column: 47, scope: !5333)
!5339 = !DILocation(line: 396, column: 6, scope: !5316)
!5340 = !DILocation(line: 397, column: 14, scope: !5333)
!5341 = !DILocation(line: 397, column: 3, scope: !5333)
!5342 = !DILocation(line: 398, column: 1, scope: !5316)
!5343 = distinct !DISubprogram(name: "atomic_long_add_return", scope: !5052, file: !5052, line: 3248, type: !5344, scopeLine: 3249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!1066, !1066, !2843}
!5346 = !{!5347, !5348}
!5347 = !DILocalVariable(name: "i", arg: 1, scope: !5343, file: !5052, line: 3248, type: !1066)
!5348 = !DILocalVariable(name: "v", arg: 2, scope: !5343, file: !5052, line: 3248, type: !2843)
!5349 = !DILocation(line: 3248, column: 29, scope: !5343)
!5350 = !DILocation(line: 3248, column: 47, scope: !5343)
!5351 = !DILocation(line: 3250, column: 2, scope: !5343)
!5352 = !DILocation(line: 3250, column: 2, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5343, file: !5052, line: 3250, column: 2)
!5354 = !DILocation(line: 3251, column: 31, scope: !5343)
!5355 = !DILocation(line: 3251, column: 2, scope: !5343)
!5356 = !DILocation(line: 3252, column: 36, scope: !5343)
!5357 = !DILocation(line: 3252, column: 39, scope: !5343)
!5358 = !DILocation(line: 3252, column: 9, scope: !5343)
!5359 = !DILocation(line: 3252, column: 2, scope: !5343)
!5360 = distinct !DISubprogram(name: "ldsem_wake", scope: !7, file: !7, line: 143, type: !5317, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5361)
!5361 = !{!5362, !5363, !5364, !5367, !5368, !5371}
!5362 = !DILocalVariable(name: "sem", arg: 1, scope: !5360, file: !7, line: 143, type: !5026)
!5363 = !DILocalVariable(name: "flags", scope: !5360, file: !7, line: 145, type: !187)
!5364 = !DILocalVariable(name: "__dummy", scope: !5365, file: !7, line: 147, type: !187)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !7, line: 147, column: 2)
!5366 = distinct !DILexicalBlock(scope: !5360, file: !7, line: 147, column: 2)
!5367 = !DILocalVariable(name: "__dummy2", scope: !5365, file: !7, line: 147, type: !187)
!5368 = !DILocalVariable(name: "__dummy", scope: !5369, file: !7, line: 149, type: !187)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !7, line: 149, column: 2)
!5370 = distinct !DILexicalBlock(scope: !5360, file: !7, line: 149, column: 2)
!5371 = !DILocalVariable(name: "__dummy2", scope: !5369, file: !7, line: 149, type: !187)
!5372 = !DILocation(line: 143, column: 45, scope: !5360)
!5373 = !DILocation(line: 145, column: 2, scope: !5360)
!5374 = !DILocation(line: 145, column: 16, scope: !5360)
!5375 = !DILocation(line: 147, column: 2, scope: !5360)
!5376 = !DILocation(line: 147, column: 2, scope: !5365)
!5377 = !DILocation(line: 147, column: 2, scope: !5366)
!5378 = !DILocation(line: 148, column: 15, scope: !5360)
!5379 = !DILocation(line: 148, column: 2, scope: !5360)
!5380 = !DILocation(line: 149, column: 2, scope: !5360)
!5381 = !DILocation(line: 149, column: 2, scope: !5369)
!5382 = !DILocation(line: 149, column: 2, scope: !5370)
!5383 = !DILocation(line: 150, column: 1, scope: !5360)
!5384 = distinct !DISubprogram(name: "ldsem_up_write", scope: !7, file: !7, line: 403, type: !5317, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5385)
!5385 = !{!5386, !5387}
!5386 = !DILocalVariable(name: "sem", arg: 1, scope: !5384, file: !7, line: 403, type: !5026)
!5387 = !DILocalVariable(name: "count", scope: !5384, file: !7, line: 405, type: !1066)
!5388 = !DILocation(line: 403, column: 42, scope: !5384)
!5389 = !DILocation(line: 405, column: 2, scope: !5384)
!5390 = !DILocation(line: 405, column: 7, scope: !5384)
!5391 = !DILocation(line: 407, column: 2, scope: !5384)
!5392 = !DILocation(line: 407, column: 2, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5384, file: !7, line: 407, column: 2)
!5394 = !DILocation(line: 409, column: 53, scope: !5384)
!5395 = !DILocation(line: 409, column: 58, scope: !5384)
!5396 = !DILocation(line: 409, column: 10, scope: !5384)
!5397 = !DILocation(line: 409, column: 8, scope: !5384)
!5398 = !DILocation(line: 410, column: 6, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5384, file: !7, line: 410, column: 6)
!5400 = !DILocation(line: 410, column: 12, scope: !5399)
!5401 = !DILocation(line: 410, column: 6, scope: !5384)
!5402 = !DILocation(line: 411, column: 14, scope: !5399)
!5403 = !DILocation(line: 411, column: 3, scope: !5399)
!5404 = !DILocation(line: 412, column: 1, scope: !5384)
!5405 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5406, file: !5406, line: 80, type: !5407, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5412)
!5406 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5407 = !DISubroutineType(types: !5408)
!5408 = !{null, !5409, !1108}
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5411)
!5411 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5412 = !{!5413, !5414}
!5413 = !DILocalVariable(name: "v", arg: 1, scope: !5405, file: !5406, line: 80, type: !5409)
!5414 = !DILocalVariable(name: "size", arg: 2, scope: !5405, file: !5406, line: 80, type: !1108)
!5415 = !DILocation(line: 80, column: 74, scope: !5405)
!5416 = !DILocation(line: 80, column: 84, scope: !5405)
!5417 = !DILocation(line: 82, column: 20, scope: !5405)
!5418 = !DILocation(line: 82, column: 23, scope: !5405)
!5419 = !DILocation(line: 82, column: 2, scope: !5405)
!5420 = !DILocation(line: 83, column: 2, scope: !5405)
!5421 = !DILocation(line: 84, column: 1, scope: !5405)
!5422 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !585, file: !585, line: 76, type: !5053, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5423)
!5423 = !{!5424, !5425}
!5424 = !DILocalVariable(name: "v", arg: 1, scope: !5422, file: !585, line: 76, type: !2843)
!5425 = !DILocalVariable(name: "i", arg: 2, scope: !5422, file: !585, line: 76, type: !1066)
!5426 = !DILocation(line: 76, column: 36, scope: !5422)
!5427 = !DILocation(line: 76, column: 44, scope: !5422)
!5428 = !DILocation(line: 79, column: 19, scope: !5422)
!5429 = !DILocation(line: 79, column: 22, scope: !5422)
!5430 = !DILocation(line: 79, column: 2, scope: !5422)
!5431 = !DILocation(line: 83, column: 1, scope: !5422)
!5432 = distinct !DISubprogram(name: "kasan_check_write", scope: !5433, file: !5433, line: 44, type: !5434, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5436)
!5433 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!792, !5409, !11}
!5436 = !{!5437, !5438}
!5437 = !DILocalVariable(name: "p", arg: 1, scope: !5432, file: !5433, line: 44, type: !5409)
!5438 = !DILocalVariable(name: "size", arg: 2, scope: !5432, file: !5433, line: 44, type: !11)
!5439 = !DILocation(line: 44, column: 59, scope: !5432)
!5440 = !DILocation(line: 44, column: 75, scope: !5432)
!5441 = !DILocation(line: 46, column: 2, scope: !5432)
!5442 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5443, file: !5443, line: 229, type: !5444, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5446)
!5443 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5444 = !DISubroutineType(types: !5445)
!5445 = !{null, !5409, !1108, !111}
!5446 = !{!5447, !5448, !5449}
!5447 = !DILocalVariable(name: "ptr", arg: 1, scope: !5442, file: !5443, line: 229, type: !5409)
!5448 = !DILocalVariable(name: "size", arg: 2, scope: !5442, file: !5443, line: 229, type: !1108)
!5449 = !DILocalVariable(name: "type", arg: 3, scope: !5442, file: !5443, line: 230, type: !111)
!5450 = !DILocation(line: 229, column: 60, scope: !5442)
!5451 = !DILocation(line: 229, column: 72, scope: !5442)
!5452 = !DILocation(line: 230, column: 15, scope: !5442)
!5453 = !DILocation(line: 230, column: 23, scope: !5442)
!5454 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !5455, file: !5455, line: 2600, type: !5456, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5459)
!5455 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5456 = !DISubroutineType(types: !5457)
!5457 = !{null, !5458, !161}
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!5459 = !{!5460, !5461}
!5460 = !DILocalVariable(name: "v", arg: 1, scope: !5454, file: !5455, line: 2600, type: !5458)
!5461 = !DILocalVariable(name: "i", arg: 2, scope: !5454, file: !5455, line: 2600, type: !161)
!5462 = !DILocation(line: 2600, column: 30, scope: !5454)
!5463 = !DILocation(line: 2600, column: 37, scope: !5454)
!5464 = !DILocation(line: 2602, column: 20, scope: !5454)
!5465 = !DILocation(line: 2602, column: 23, scope: !5454)
!5466 = !DILocation(line: 2602, column: 2, scope: !5454)
!5467 = !DILocation(line: 2603, column: 1, scope: !5454)
!5468 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !5469, file: !5469, line: 18, type: !5456, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5470)
!5469 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5470 = !{!5471, !5472}
!5471 = !DILocalVariable(name: "v", arg: 1, scope: !5468, file: !5469, line: 18, type: !5458)
!5472 = !DILocalVariable(name: "i", arg: 2, scope: !5468, file: !5469, line: 18, type: !161)
!5473 = !DILocation(line: 18, column: 59, scope: !5468)
!5474 = !DILocation(line: 18, column: 66, scope: !5468)
!5475 = !DILocation(line: 20, column: 2, scope: !5468)
!5476 = !DILocation(line: 20, column: 2, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5468, file: !5469, line: 20, column: 2)
!5478 = !DILocation(line: 21, column: 1, scope: !5468)
!5479 = distinct !DISubprogram(name: "down_read_failed", scope: !7, file: !7, line: 156, type: !5480, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5482)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!5026, !5026, !1066, !1066}
!5482 = !{!5483, !5484, !5485, !5486, !5487, !5488, !5496, !5498}
!5483 = !DILocalVariable(name: "sem", arg: 1, scope: !5479, file: !7, line: 156, type: !5026)
!5484 = !DILocalVariable(name: "count", arg: 2, scope: !5479, file: !7, line: 156, type: !1066)
!5485 = !DILocalVariable(name: "timeout", arg: 3, scope: !5479, file: !7, line: 156, type: !1066)
!5486 = !DILocalVariable(name: "waiter", scope: !5479, file: !7, line: 158, type: !4994)
!5487 = !DILocalVariable(name: "adjust", scope: !5479, file: !7, line: 159, type: !1066)
!5488 = !DILocalVariable(name: "__ai_ptr", scope: !5489, file: !7, line: 194, type: !2109)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !7, line: 194, column: 3)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !7, line: 194, column: 3)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !7, line: 194, column: 3)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !7, line: 194, column: 3)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !7, line: 193, column: 11)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !7, line: 193, column: 2)
!5495 = distinct !DILexicalBlock(scope: !5479, file: !7, line: 193, column: 2)
!5496 = !DILocalVariable(name: "__ret", scope: !5497, file: !7, line: 194, type: !11)
!5497 = distinct !DILexicalBlock(scope: !5489, file: !7, line: 194, column: 3)
!5498 = !DILocalVariable(name: "___p1", scope: !5499, file: !7, line: 196, type: !178)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !7, line: 196, column: 8)
!5500 = distinct !DILexicalBlock(scope: !5493, file: !7, line: 196, column: 7)
!5501 = !DILocation(line: 156, column: 39, scope: !5479)
!5502 = !DILocation(line: 156, column: 49, scope: !5479)
!5503 = !DILocation(line: 156, column: 61, scope: !5479)
!5504 = !DILocation(line: 158, column: 2, scope: !5479)
!5505 = !DILocation(line: 158, column: 22, scope: !5479)
!5506 = !DILocation(line: 159, column: 2, scope: !5479)
!5507 = !DILocation(line: 159, column: 7, scope: !5479)
!5508 = !DILocation(line: 162, column: 2, scope: !5479)
!5509 = !DILocation(line: 169, column: 2, scope: !5479)
!5510 = !DILocation(line: 170, column: 32, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !7, line: 170, column: 7)
!5512 = distinct !DILexicalBlock(scope: !5479, file: !7, line: 169, column: 5)
!5513 = !DILocation(line: 170, column: 37, scope: !5511)
!5514 = !DILocation(line: 170, column: 52, scope: !5511)
!5515 = !DILocation(line: 170, column: 60, scope: !5511)
!5516 = !DILocation(line: 170, column: 58, scope: !5511)
!5517 = !DILocation(line: 170, column: 7, scope: !5511)
!5518 = !DILocation(line: 170, column: 7, scope: !5512)
!5519 = !DILocation(line: 171, column: 13, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5511, file: !7, line: 170, column: 69)
!5521 = !DILocation(line: 171, column: 10, scope: !5520)
!5522 = !DILocation(line: 172, column: 4, scope: !5520)
!5523 = !DILocation(line: 174, column: 7, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5512, file: !7, line: 174, column: 7)
!5525 = !DILocation(line: 174, column: 13, scope: !5524)
!5526 = !DILocation(line: 174, column: 7, scope: !5512)
!5527 = !DILocation(line: 175, column: 4, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5524, file: !7, line: 174, column: 18)
!5529 = !DILocation(line: 176, column: 11, scope: !5528)
!5530 = !DILocation(line: 176, column: 4, scope: !5528)
!5531 = !DILocation(line: 178, column: 2, scope: !5512)
!5532 = distinct !{!5532, !5509, !5533, !5186}
!5533 = !DILocation(line: 178, column: 12, scope: !5479)
!5534 = !DILocation(line: 180, column: 24, scope: !5479)
!5535 = !DILocation(line: 180, column: 31, scope: !5479)
!5536 = !DILocation(line: 180, column: 36, scope: !5479)
!5537 = !DILocation(line: 180, column: 2, scope: !5479)
!5538 = !DILocation(line: 181, column: 2, scope: !5479)
!5539 = !DILocation(line: 181, column: 7, scope: !5479)
!5540 = !DILocation(line: 181, column: 19, scope: !5479)
!5541 = !DILocation(line: 183, column: 16, scope: !5479)
!5542 = !DILocation(line: 183, column: 9, scope: !5479)
!5543 = !DILocation(line: 183, column: 14, scope: !5479)
!5544 = !DILocation(line: 184, column: 18, scope: !5479)
!5545 = !DILocation(line: 184, column: 2, scope: !5479)
!5546 = !DILocation(line: 187, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5479, file: !7, line: 187, column: 6)
!5548 = !DILocation(line: 187, column: 13, scope: !5547)
!5549 = !DILocation(line: 187, column: 34, scope: !5547)
!5550 = !DILocation(line: 187, column: 6, scope: !5479)
!5551 = !DILocation(line: 188, column: 16, scope: !5547)
!5552 = !DILocation(line: 188, column: 3, scope: !5547)
!5553 = !DILocation(line: 190, column: 2, scope: !5479)
!5554 = !DILocation(line: 193, column: 2, scope: !5479)
!5555 = !DILocation(line: 194, column: 3, scope: !5493)
!5556 = !DILocation(line: 194, column: 3, scope: !5492)
!5557 = !DILocation(line: 194, column: 3, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5492, file: !7, line: 194, column: 3)
!5559 = !DILocation(line: 194, column: 3, scope: !5491)
!5560 = !DILocation(line: 194, column: 3, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5491, file: !7, line: 194, column: 3)
!5562 = !DILocation(line: 194, column: 3, scope: !5489)
!5563 = !DILocation(line: 194, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5489, file: !7, line: 194, column: 3)
!5565 = !DILocation(line: 194, column: 3, scope: !5497)
!5566 = !{i64 2154654295}
!5567 = !DILocation(line: 194, column: 3, scope: !5490)
!5568 = !DILocation(line: 196, column: 8, scope: !5499)
!5569 = !DILocation(line: 196, column: 8, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5499, file: !7, line: 196, column: 8)
!5571 = !DILocation(line: 196, column: 8, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5570, file: !7, line: 196, column: 8)
!5573 = !DILocation(line: 196, column: 8, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5499, file: !7, line: 196, column: 8)
!5575 = !{i64 2154659199}
!5576 = !DILocation(line: 196, column: 8, scope: !5500)
!5577 = !DILocation(line: 196, column: 7, scope: !5493)
!5578 = !DILocation(line: 197, column: 4, scope: !5500)
!5579 = !DILocation(line: 198, column: 8, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5493, file: !7, line: 198, column: 7)
!5581 = !DILocation(line: 198, column: 7, scope: !5493)
!5582 = !DILocation(line: 199, column: 4, scope: !5580)
!5583 = !DILocation(line: 200, column: 30, scope: !5493)
!5584 = !DILocation(line: 200, column: 13, scope: !5493)
!5585 = !DILocation(line: 200, column: 11, scope: !5493)
!5586 = !DILocation(line: 193, column: 2, scope: !5494)
!5587 = distinct !{!5587, !5588, !5589, !5186}
!5588 = !DILocation(line: 193, column: 2, scope: !5495)
!5589 = !DILocation(line: 201, column: 2, scope: !5495)
!5590 = !DILocation(line: 203, column: 2, scope: !5479)
!5591 = !DILocation(line: 203, column: 2, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5479, file: !7, line: 203, column: 2)
!5593 = !DILocation(line: 203, column: 2, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5592, file: !7, line: 203, column: 2)
!5595 = !DILocation(line: 203, column: 2, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5592, file: !7, line: 203, column: 2)
!5597 = !DILocation(line: 203, column: 2, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5596, file: !7, line: 203, column: 2)
!5599 = !DILocation(line: 203, column: 2, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5596, file: !7, line: 203, column: 2)
!5601 = !DILocation(line: 205, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5479, file: !7, line: 205, column: 6)
!5603 = !DILocation(line: 205, column: 6, scope: !5479)
!5604 = !DILocation(line: 211, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5602, file: !7, line: 205, column: 16)
!5606 = !DILocation(line: 212, column: 14, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5605, file: !7, line: 212, column: 7)
!5608 = !DILocation(line: 212, column: 7, scope: !5607)
!5609 = !DILocation(line: 212, column: 7, scope: !5605)
!5610 = !DILocation(line: 213, column: 46, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5607, file: !7, line: 212, column: 20)
!5612 = !DILocation(line: 213, column: 51, scope: !5611)
!5613 = !DILocation(line: 213, column: 4, scope: !5611)
!5614 = !DILocation(line: 214, column: 4, scope: !5611)
!5615 = !DILocation(line: 214, column: 9, scope: !5611)
!5616 = !DILocation(line: 214, column: 21, scope: !5611)
!5617 = !DILocation(line: 215, column: 21, scope: !5611)
!5618 = !DILocation(line: 215, column: 4, scope: !5611)
!5619 = !DILocation(line: 216, column: 4, scope: !5611)
!5620 = !DILocation(line: 217, column: 27, scope: !5611)
!5621 = !DILocation(line: 217, column: 4, scope: !5611)
!5622 = !DILocation(line: 218, column: 4, scope: !5611)
!5623 = !DILocation(line: 220, column: 3, scope: !5605)
!5624 = !DILocation(line: 221, column: 2, scope: !5605)
!5625 = !DILocation(line: 223, column: 9, scope: !5479)
!5626 = !DILocation(line: 223, column: 2, scope: !5479)
!5627 = !DILocation(line: 224, column: 1, scope: !5479)
!5628 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5629, file: !5629, line: 29, type: !5630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5629 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5630 = !DISubroutineType(types: !5631)
!5631 = !{null, !5632}
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!5633 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5629, file: !5629, line: 41, type: !5630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = distinct !DISubprogram(name: "list_add_tail", scope: !5067, file: !5067, line: 181, type: !5635, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5637)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !168, !168}
!5637 = !{!5638, !5639}
!5638 = !DILocalVariable(name: "new", arg: 1, scope: !5634, file: !5067, line: 181, type: !168)
!5639 = !DILocalVariable(name: "head", arg: 2, scope: !5634, file: !5067, line: 181, type: !168)
!5640 = !DILocation(line: 181, column: 52, scope: !5634)
!5641 = !DILocation(line: 181, column: 75, scope: !5634)
!5642 = !DILocation(line: 183, column: 13, scope: !5634)
!5643 = !DILocation(line: 183, column: 18, scope: !5634)
!5644 = !DILocation(line: 183, column: 24, scope: !5634)
!5645 = !DILocation(line: 183, column: 30, scope: !5634)
!5646 = !DILocation(line: 183, column: 2, scope: !5634)
!5647 = !DILocation(line: 184, column: 1, scope: !5634)
!5648 = distinct !DISubprogram(name: "get_current", scope: !5649, file: !5649, line: 39, type: !5650, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5652)
!5649 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!178}
!5652 = !{!5653, !5655, !5657}
!5653 = !DILocalVariable(name: "pscr_ret__", scope: !5654, file: !5649, line: 41, type: !178)
!5654 = distinct !DILexicalBlock(scope: !5648, file: !5649, line: 41, column: 9)
!5655 = !DILocalVariable(name: "__vpp_verify", scope: !5656, file: !5649, line: 41, type: !1850)
!5656 = distinct !DILexicalBlock(scope: !5654, file: !5649, line: 41, column: 9)
!5657 = !DILocalVariable(name: "pfo_val__", scope: !5658, file: !5649, line: 41, type: !254)
!5658 = distinct !DILexicalBlock(scope: !5654, file: !5649, line: 41, column: 9)
!5659 = !DILocation(line: 41, column: 9, scope: !5654)
!5660 = !DILocation(line: 41, column: 9, scope: !5656)
!5661 = !DILocation(line: 41, column: 9, scope: !5658)
!5662 = !{i64 2148271805}
!5663 = !DILocation(line: 41, column: 9, scope: !5648)
!5664 = !DILocation(line: 41, column: 2, scope: !5648)
!5665 = distinct !DISubprogram(name: "get_task_struct", scope: !5009, file: !5009, line: 115, type: !5666, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5668)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!178, !178}
!5668 = !{!5669}
!5669 = !DILocalVariable(name: "t", arg: 1, scope: !5665, file: !5009, line: 115, type: !178)
!5670 = !DILocation(line: 115, column: 71, scope: !5665)
!5671 = !DILocation(line: 117, column: 16, scope: !5665)
!5672 = !DILocation(line: 117, column: 19, scope: !5665)
!5673 = !DILocation(line: 117, column: 2, scope: !5665)
!5674 = !DILocation(line: 118, column: 9, scope: !5665)
!5675 = !DILocation(line: 118, column: 2, scope: !5665)
!5676 = distinct !DISubprogram(name: "__ldsem_wake", scope: !7, file: !7, line: 135, type: !5317, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5677)
!5677 = !{!5678}
!5678 = !DILocalVariable(name: "sem", arg: 1, scope: !5676, file: !7, line: 135, type: !5026)
!5679 = !DILocation(line: 135, column: 47, scope: !5676)
!5680 = !DILocation(line: 137, column: 19, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5676, file: !7, line: 137, column: 6)
!5682 = !DILocation(line: 137, column: 24, scope: !5681)
!5683 = !DILocation(line: 137, column: 7, scope: !5681)
!5684 = !DILocation(line: 137, column: 6, scope: !5676)
!5685 = !DILocation(line: 138, column: 23, scope: !5681)
!5686 = !DILocation(line: 138, column: 3, scope: !5681)
!5687 = !DILocation(line: 139, column: 24, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5681, file: !7, line: 139, column: 11)
!5689 = !DILocation(line: 139, column: 29, scope: !5688)
!5690 = !DILocation(line: 139, column: 12, scope: !5688)
!5691 = !DILocation(line: 139, column: 11, scope: !5681)
!5692 = !DILocation(line: 140, column: 24, scope: !5688)
!5693 = !DILocation(line: 140, column: 3, scope: !5688)
!5694 = !DILocation(line: 141, column: 1, scope: !5676)
!5695 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5406, file: !5406, line: 94, type: !5407, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5696)
!5696 = !{!5697, !5698}
!5697 = !DILocalVariable(name: "v", arg: 1, scope: !5695, file: !5406, line: 94, type: !5409)
!5698 = !DILocalVariable(name: "size", arg: 2, scope: !5695, file: !5406, line: 94, type: !1108)
!5699 = !DILocation(line: 94, column: 79, scope: !5695)
!5700 = !DILocation(line: 94, column: 89, scope: !5695)
!5701 = !DILocation(line: 96, column: 20, scope: !5695)
!5702 = !DILocation(line: 96, column: 23, scope: !5695)
!5703 = !DILocation(line: 96, column: 2, scope: !5695)
!5704 = !DILocation(line: 97, column: 2, scope: !5695)
!5705 = !DILocation(line: 98, column: 1, scope: !5695)
!5706 = !DISubprogram(name: "schedule_timeout", scope: !180, file: !180, line: 298, type: !5707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!1066, !1066}
!5709 = distinct !DISubprogram(name: "list_del", scope: !5067, file: !5067, line: 227, type: !5068, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5710)
!5710 = !{!5711}
!5711 = !DILocalVariable(name: "entry", arg: 1, scope: !5709, file: !5067, line: 227, type: !168)
!5712 = !DILocation(line: 227, column: 47, scope: !5709)
!5713 = !DILocation(line: 229, column: 19, scope: !5709)
!5714 = !DILocation(line: 229, column: 2, scope: !5709)
!5715 = !DILocation(line: 230, column: 2, scope: !5709)
!5716 = !DILocation(line: 230, column: 9, scope: !5709)
!5717 = !DILocation(line: 230, column: 14, scope: !5709)
!5718 = !DILocation(line: 231, column: 2, scope: !5709)
!5719 = !DILocation(line: 231, column: 9, scope: !5709)
!5720 = !DILocation(line: 231, column: 14, scope: !5709)
!5721 = !DILocation(line: 232, column: 1, scope: !5709)
!5722 = !DILocation(line: 124, column: 56, scope: !5008)
!5723 = !DILocation(line: 126, column: 30, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5008, file: !5009, line: 126, column: 6)
!5725 = !DILocation(line: 126, column: 33, scope: !5724)
!5726 = !DILocation(line: 126, column: 7, scope: !5724)
!5727 = !DILocation(line: 126, column: 6, scope: !5008)
!5728 = !DILocation(line: 127, column: 3, scope: !5724)
!5729 = !DILocation(line: 136, column: 3, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !5009, line: 133, column: 55)
!5731 = distinct !DILexicalBlock(scope: !5008, file: !5009, line: 133, column: 6)
!5732 = !DILocation(line: 136, column: 3, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !5009, line: 136, column: 3)
!5734 = !DILocation(line: 137, column: 21, scope: !5730)
!5735 = !DILocation(line: 137, column: 3, scope: !5730)
!5736 = !DILocation(line: 138, column: 3, scope: !5730)
!5737 = !DILocation(line: 138, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5730, file: !5009, line: 138, column: 3)
!5739 = !DILocation(line: 139, column: 3, scope: !5730)
!5740 = !DILocation(line: 163, column: 1, scope: !5008)
!5741 = distinct !DISubprogram(name: "__list_add", scope: !5067, file: !5067, line: 146, type: !5742, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5744)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{null, !168, !168, !168}
!5744 = !{!5745, !5746, !5747}
!5745 = !DILocalVariable(name: "new", arg: 1, scope: !5741, file: !5067, line: 146, type: !168)
!5746 = !DILocalVariable(name: "prev", arg: 2, scope: !5741, file: !5067, line: 147, type: !168)
!5747 = !DILocalVariable(name: "next", arg: 3, scope: !5741, file: !5067, line: 148, type: !168)
!5748 = !DILocation(line: 146, column: 49, scope: !5741)
!5749 = !DILocation(line: 147, column: 28, scope: !5741)
!5750 = !DILocation(line: 148, column: 28, scope: !5741)
!5751 = !DILocation(line: 150, column: 24, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5741, file: !5067, line: 150, column: 6)
!5753 = !DILocation(line: 150, column: 29, scope: !5752)
!5754 = !DILocation(line: 150, column: 35, scope: !5752)
!5755 = !DILocation(line: 150, column: 7, scope: !5752)
!5756 = !DILocation(line: 150, column: 6, scope: !5741)
!5757 = !DILocation(line: 151, column: 3, scope: !5752)
!5758 = !DILocation(line: 153, column: 15, scope: !5741)
!5759 = !DILocation(line: 153, column: 2, scope: !5741)
!5760 = !DILocation(line: 153, column: 8, scope: !5741)
!5761 = !DILocation(line: 153, column: 13, scope: !5741)
!5762 = !DILocation(line: 154, column: 14, scope: !5741)
!5763 = !DILocation(line: 154, column: 2, scope: !5741)
!5764 = !DILocation(line: 154, column: 7, scope: !5741)
!5765 = !DILocation(line: 154, column: 12, scope: !5741)
!5766 = !DILocation(line: 155, column: 14, scope: !5741)
!5767 = !DILocation(line: 155, column: 2, scope: !5741)
!5768 = !DILocation(line: 155, column: 7, scope: !5741)
!5769 = !DILocation(line: 155, column: 12, scope: !5741)
!5770 = !DILocation(line: 156, column: 2, scope: !5741)
!5771 = !DILocation(line: 156, column: 2, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5741, file: !5067, line: 156, column: 2)
!5773 = !DILocation(line: 156, column: 2, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5772, file: !5067, line: 156, column: 2)
!5775 = !DILocation(line: 156, column: 2, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5772, file: !5067, line: 156, column: 2)
!5777 = !DILocation(line: 157, column: 1, scope: !5741)
!5778 = distinct !DISubprogram(name: "__list_add_valid", scope: !5067, file: !5067, line: 128, type: !5779, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5781)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!792, !168, !168, !168}
!5781 = !{!5782, !5783, !5784}
!5782 = !DILocalVariable(name: "new", arg: 1, scope: !5778, file: !5067, line: 128, type: !168)
!5783 = !DILocalVariable(name: "prev", arg: 2, scope: !5778, file: !5067, line: 129, type: !168)
!5784 = !DILocalVariable(name: "next", arg: 3, scope: !5778, file: !5067, line: 130, type: !168)
!5785 = !DILocation(line: 128, column: 55, scope: !5778)
!5786 = !DILocation(line: 129, column: 23, scope: !5778)
!5787 = !DILocation(line: 130, column: 23, scope: !5778)
!5788 = !DILocation(line: 132, column: 2, scope: !5778)
!5789 = distinct !DISubprogram(name: "refcount_inc", scope: !151, file: !151, line: 265, type: !5790, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5793)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !5792}
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!5793 = !{!5794}
!5794 = !DILocalVariable(name: "r", arg: 1, scope: !5789, file: !151, line: 265, type: !5792)
!5795 = !DILocation(line: 265, column: 45, scope: !5789)
!5796 = !DILocation(line: 267, column: 17, scope: !5789)
!5797 = !DILocation(line: 267, column: 2, scope: !5789)
!5798 = !DILocation(line: 268, column: 1, scope: !5789)
!5799 = distinct !DISubprogram(name: "__refcount_inc", scope: !151, file: !151, line: 248, type: !5800, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5802)
!5800 = !DISubroutineType(types: !5801)
!5801 = !{null, !5792, !2157}
!5802 = !{!5803, !5804}
!5803 = !DILocalVariable(name: "r", arg: 1, scope: !5799, file: !151, line: 248, type: !5792)
!5804 = !DILocalVariable(name: "oldp", arg: 2, scope: !5799, file: !151, line: 248, type: !2157)
!5805 = !DILocation(line: 248, column: 47, scope: !5799)
!5806 = !DILocation(line: 248, column: 55, scope: !5799)
!5807 = !DILocation(line: 250, column: 20, scope: !5799)
!5808 = !DILocation(line: 250, column: 23, scope: !5799)
!5809 = !DILocation(line: 250, column: 2, scope: !5799)
!5810 = !DILocation(line: 251, column: 1, scope: !5799)
!5811 = distinct !DISubprogram(name: "__refcount_add", scope: !151, file: !151, line: 191, type: !5812, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5814)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !111, !5792, !2157}
!5814 = !{!5815, !5816, !5817, !5818}
!5815 = !DILocalVariable(name: "i", arg: 1, scope: !5811, file: !151, line: 191, type: !111)
!5816 = !DILocalVariable(name: "r", arg: 2, scope: !5811, file: !151, line: 191, type: !5792)
!5817 = !DILocalVariable(name: "oldp", arg: 3, scope: !5811, file: !151, line: 191, type: !2157)
!5818 = !DILocalVariable(name: "old", scope: !5811, file: !151, line: 193, type: !111)
!5819 = !DILocation(line: 191, column: 39, scope: !5811)
!5820 = !DILocation(line: 191, column: 54, scope: !5811)
!5821 = !DILocation(line: 191, column: 62, scope: !5811)
!5822 = !DILocation(line: 193, column: 2, scope: !5811)
!5823 = !DILocation(line: 193, column: 6, scope: !5811)
!5824 = !DILocation(line: 193, column: 37, scope: !5811)
!5825 = !DILocation(line: 193, column: 41, scope: !5811)
!5826 = !DILocation(line: 193, column: 44, scope: !5811)
!5827 = !DILocation(line: 193, column: 12, scope: !5811)
!5828 = !DILocation(line: 195, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5811, file: !151, line: 195, column: 6)
!5830 = !DILocation(line: 195, column: 6, scope: !5811)
!5831 = !DILocation(line: 196, column: 11, scope: !5829)
!5832 = !DILocation(line: 196, column: 4, scope: !5829)
!5833 = !DILocation(line: 196, column: 9, scope: !5829)
!5834 = !DILocation(line: 196, column: 3, scope: !5829)
!5835 = !DILocation(line: 198, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5811, file: !151, line: 198, column: 6)
!5837 = !DILocation(line: 198, column: 6, scope: !5811)
!5838 = !DILocation(line: 199, column: 26, scope: !5836)
!5839 = !DILocation(line: 199, column: 3, scope: !5836)
!5840 = !DILocation(line: 200, column: 11, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !151, line: 200, column: 11)
!5842 = !DILocation(line: 200, column: 11, scope: !5836)
!5843 = !DILocation(line: 201, column: 26, scope: !5841)
!5844 = !DILocation(line: 201, column: 3, scope: !5841)
!5845 = !DILocation(line: 202, column: 1, scope: !5811)
!5846 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5052, file: !5052, line: 250, type: !5847, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5850)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!111, !111, !5849}
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!5850 = !{!5851, !5852}
!5851 = !DILocalVariable(name: "i", arg: 1, scope: !5846, file: !5052, line: 250, type: !111)
!5852 = !DILocalVariable(name: "v", arg: 2, scope: !5846, file: !5052, line: 250, type: !5849)
!5853 = !DILocation(line: 250, column: 30, scope: !5846)
!5854 = !DILocation(line: 250, column: 43, scope: !5846)
!5855 = !DILocation(line: 252, column: 31, scope: !5846)
!5856 = !DILocation(line: 252, column: 2, scope: !5846)
!5857 = !DILocation(line: 253, column: 38, scope: !5846)
!5858 = !DILocation(line: 253, column: 41, scope: !5846)
!5859 = !DILocation(line: 253, column: 9, scope: !5846)
!5860 = !DILocation(line: 253, column: 2, scope: !5846)
!5861 = !DISubprogram(name: "refcount_warn_saturate", scope: !151, file: !151, line: 127, type: !5862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{null, !5792, !150}
!5864 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5455, file: !5455, line: 731, type: !5847, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5865)
!5865 = !{!5866, !5867}
!5866 = !DILocalVariable(name: "i", arg: 1, scope: !5864, file: !5455, line: 731, type: !111)
!5867 = !DILocalVariable(name: "v", arg: 2, scope: !5864, file: !5455, line: 731, type: !5849)
!5868 = !DILocation(line: 731, column: 34, scope: !5864)
!5869 = !DILocation(line: 731, column: 47, scope: !5864)
!5870 = !DILocation(line: 736, column: 31, scope: !5864)
!5871 = !DILocation(line: 736, column: 34, scope: !5864)
!5872 = !DILocation(line: 736, column: 9, scope: !5864)
!5873 = !DILocation(line: 736, column: 2, scope: !5864)
!5874 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5875, file: !5875, line: 95, type: !5847, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5876)
!5875 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5876 = !{!5877, !5878, !5879}
!5877 = !DILocalVariable(name: "i", arg: 1, scope: !5874, file: !5875, line: 95, type: !111)
!5878 = !DILocalVariable(name: "v", arg: 2, scope: !5874, file: !5875, line: 95, type: !5849)
!5879 = !DILocalVariable(name: "__ret", scope: !5880, file: !5875, line: 97, type: !111)
!5880 = distinct !DILexicalBlock(scope: !5874, file: !5875, line: 97, column: 9)
!5881 = !DILocation(line: 95, column: 54, scope: !5874)
!5882 = !DILocation(line: 95, column: 67, scope: !5874)
!5883 = !DILocation(line: 97, column: 9, scope: !5880)
!5884 = !{i64 2148820747, i64 2148820786, i64 2148820807, i64 2148820844, i64 2148820867, i64 2148820876}
!5885 = !DILocation(line: 97, column: 9, scope: !5874)
!5886 = !DILocation(line: 97, column: 2, scope: !5874)
!5887 = distinct !DISubprogram(name: "list_empty", scope: !5067, file: !5067, line: 371, type: !5888, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5892)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!111, !5890}
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5891, size: 64)
!5891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!5892 = !{!5893}
!5893 = !DILocalVariable(name: "head", arg: 1, scope: !5887, file: !5067, line: 371, type: !5890)
!5894 = !DILocation(line: 371, column: 54, scope: !5887)
!5895 = !DILocation(line: 373, column: 9, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5887, file: !5067, line: 373, column: 9)
!5897 = !DILocation(line: 373, column: 9, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5896, file: !5067, line: 373, column: 9)
!5899 = !DILocation(line: 373, column: 34, scope: !5887)
!5900 = !DILocation(line: 373, column: 31, scope: !5887)
!5901 = !DILocation(line: 373, column: 2, scope: !5887)
!5902 = distinct !DISubprogram(name: "__ldsem_wake_writer", scope: !7, file: !7, line: 119, type: !5317, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5903)
!5903 = !{!5904, !5905, !5906}
!5904 = !DILocalVariable(name: "sem", arg: 1, scope: !5902, file: !7, line: 119, type: !5026)
!5905 = !DILocalVariable(name: "waiter", scope: !5902, file: !7, line: 121, type: !4993)
!5906 = !DILocalVariable(name: "__mptr", scope: !5907, file: !7, line: 123, type: !174)
!5907 = distinct !DILexicalBlock(scope: !5902, file: !7, line: 123, column: 11)
!5908 = !DILocation(line: 119, column: 54, scope: !5902)
!5909 = !DILocation(line: 121, column: 2, scope: !5902)
!5910 = !DILocation(line: 121, column: 23, scope: !5902)
!5911 = !DILocation(line: 123, column: 11, scope: !5907)
!5912 = !DILocation(line: 123, column: 11, scope: !5902)
!5913 = !DILocation(line: 123, column: 9, scope: !5902)
!5914 = !DILocation(line: 124, column: 18, scope: !5902)
!5915 = !DILocation(line: 124, column: 26, scope: !5902)
!5916 = !DILocation(line: 124, column: 2, scope: !5902)
!5917 = !DILocation(line: 125, column: 1, scope: !5902)
!5918 = distinct !DISubprogram(name: "__ldsem_wake_readers", scope: !7, file: !7, line: 74, type: !5317, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !5919)
!5919 = !{!5920, !5921, !5922, !5923, !5924, !5925, !5926, !5929, !5931}
!5920 = !DILocalVariable(name: "sem", arg: 1, scope: !5918, file: !7, line: 74, type: !5026)
!5921 = !DILocalVariable(name: "waiter", scope: !5918, file: !7, line: 76, type: !4993)
!5922 = !DILocalVariable(name: "next", scope: !5918, file: !7, line: 76, type: !4993)
!5923 = !DILocalVariable(name: "tsk", scope: !5918, file: !7, line: 77, type: !178)
!5924 = !DILocalVariable(name: "adjust", scope: !5918, file: !7, line: 78, type: !1066)
!5925 = !DILocalVariable(name: "count", scope: !5918, file: !7, line: 78, type: !1066)
!5926 = !DILocalVariable(name: "__mptr", scope: !5927, file: !7, line: 94, type: !174)
!5927 = distinct !DILexicalBlock(scope: !5928, file: !7, line: 94, column: 2)
!5928 = distinct !DILexicalBlock(scope: !5918, file: !7, line: 94, column: 2)
!5929 = !DILocalVariable(name: "__mptr", scope: !5930, file: !7, line: 94, type: !174)
!5930 = distinct !DILexicalBlock(scope: !5928, file: !7, line: 94, column: 2)
!5931 = !DILocalVariable(name: "__mptr", scope: !5932, file: !7, line: 94, type: !174)
!5932 = distinct !DILexicalBlock(scope: !5933, file: !7, line: 94, column: 2)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !7, line: 94, column: 2)
!5934 = !DILocation(line: 74, column: 55, scope: !5918)
!5935 = !DILocation(line: 76, column: 2, scope: !5918)
!5936 = !DILocation(line: 76, column: 23, scope: !5918)
!5937 = !DILocation(line: 76, column: 32, scope: !5918)
!5938 = !DILocation(line: 77, column: 2, scope: !5918)
!5939 = !DILocation(line: 77, column: 22, scope: !5918)
!5940 = !DILocation(line: 78, column: 2, scope: !5918)
!5941 = !DILocation(line: 78, column: 7, scope: !5918)
!5942 = !DILocation(line: 78, column: 15, scope: !5918)
!5943 = !DILocation(line: 85, column: 11, scope: !5918)
!5944 = !DILocation(line: 85, column: 16, scope: !5918)
!5945 = !DILocation(line: 85, column: 29, scope: !5918)
!5946 = !DILocation(line: 85, column: 9, scope: !5918)
!5947 = !DILocation(line: 86, column: 33, scope: !5918)
!5948 = !DILocation(line: 86, column: 42, scope: !5918)
!5949 = !DILocation(line: 86, column: 47, scope: !5918)
!5950 = !DILocation(line: 86, column: 10, scope: !5918)
!5951 = !DILocation(line: 86, column: 8, scope: !5918)
!5952 = !DILocation(line: 87, column: 2, scope: !5918)
!5953 = !DILocation(line: 88, column: 7, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5955, file: !7, line: 88, column: 7)
!5955 = distinct !DILexicalBlock(scope: !5918, file: !7, line: 87, column: 5)
!5956 = !DILocation(line: 88, column: 13, scope: !5954)
!5957 = !DILocation(line: 88, column: 7, scope: !5955)
!5958 = !DILocation(line: 89, column: 4, scope: !5954)
!5959 = !DILocation(line: 90, column: 32, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5955, file: !7, line: 90, column: 7)
!5961 = !DILocation(line: 90, column: 37, scope: !5960)
!5962 = !DILocation(line: 90, column: 52, scope: !5960)
!5963 = !DILocation(line: 90, column: 60, scope: !5960)
!5964 = !DILocation(line: 90, column: 58, scope: !5960)
!5965 = !DILocation(line: 90, column: 7, scope: !5960)
!5966 = !DILocation(line: 90, column: 7, scope: !5955)
!5967 = !DILocation(line: 91, column: 4, scope: !5960)
!5968 = !DILocation(line: 92, column: 2, scope: !5955)
!5969 = distinct !{!5969, !5952, !5970, !5186}
!5970 = !DILocation(line: 92, column: 12, scope: !5918)
!5971 = !DILocation(line: 94, column: 2, scope: !5927)
!5972 = !DILocation(line: 94, column: 2, scope: !5928)
!5973 = !DILocation(line: 94, column: 2, scope: !5930)
!5974 = !DILocation(line: 94, column: 2, scope: !5933)
!5975 = !DILocation(line: 95, column: 9, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5933, file: !7, line: 94, column: 64)
!5977 = !DILocation(line: 95, column: 17, scope: !5976)
!5978 = !DILocation(line: 95, column: 7, scope: !5976)
!5979 = !DILocation(line: 96, column: 3, scope: !5976)
!5980 = !DILocation(line: 96, column: 3, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5976, file: !7, line: 96, column: 3)
!5982 = !DILocation(line: 96, column: 3, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5981, file: !7, line: 96, column: 3)
!5984 = !DILocation(line: 96, column: 3, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !7, line: 96, column: 3)
!5986 = !DILocation(line: 96, column: 3, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5985, file: !7, line: 96, column: 3)
!5988 = !{i64 2154648155}
!5989 = !DILocation(line: 96, column: 3, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !7, line: 96, column: 3)
!5991 = !DILocation(line: 96, column: 3, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5990, file: !7, line: 96, column: 3)
!5993 = !DILocation(line: 96, column: 3, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5990, file: !7, line: 96, column: 3)
!5995 = !DILocation(line: 97, column: 19, scope: !5976)
!5996 = !DILocation(line: 97, column: 3, scope: !5976)
!5997 = !DILocation(line: 98, column: 19, scope: !5976)
!5998 = !DILocation(line: 98, column: 3, scope: !5976)
!5999 = !DILocation(line: 99, column: 2, scope: !5976)
!6000 = !DILocation(line: 94, column: 2, scope: !5932)
!6001 = distinct !{!6001, !5972, !6002, !5185, !5186}
!6002 = !DILocation(line: 99, column: 2, scope: !5928)
!6003 = !DILocation(line: 100, column: 18, scope: !5918)
!6004 = !DILocation(line: 100, column: 23, scope: !5918)
!6005 = !DILocation(line: 100, column: 2, scope: !5918)
!6006 = !DILocation(line: 101, column: 2, scope: !5918)
!6007 = !DILocation(line: 101, column: 7, scope: !5918)
!6008 = !DILocation(line: 101, column: 20, scope: !5918)
!6009 = !DILocation(line: 102, column: 1, scope: !5918)
!6010 = !DISubprogram(name: "wake_up_process", scope: !180, file: !180, line: 1998, type: !6011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!111, !178}
!6013 = distinct !DISubprogram(name: "__list_del_entry", scope: !5067, file: !5067, line: 213, type: !5068, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6014)
!6014 = !{!6015}
!6015 = !DILocalVariable(name: "entry", arg: 1, scope: !6013, file: !5067, line: 213, type: !168)
!6016 = !DILocation(line: 213, column: 55, scope: !6013)
!6017 = !DILocation(line: 215, column: 30, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6013, file: !5067, line: 215, column: 6)
!6019 = !DILocation(line: 215, column: 7, scope: !6018)
!6020 = !DILocation(line: 215, column: 6, scope: !6013)
!6021 = !DILocation(line: 216, column: 3, scope: !6018)
!6022 = !DILocation(line: 218, column: 13, scope: !6013)
!6023 = !DILocation(line: 218, column: 20, scope: !6013)
!6024 = !DILocation(line: 218, column: 26, scope: !6013)
!6025 = !DILocation(line: 218, column: 33, scope: !6013)
!6026 = !DILocation(line: 218, column: 2, scope: !6013)
!6027 = !DILocation(line: 219, column: 1, scope: !6013)
!6028 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5067, file: !5067, line: 134, type: !6029, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6031)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!792, !168}
!6031 = !{!6032}
!6032 = !DILocalVariable(name: "entry", arg: 1, scope: !6028, file: !5067, line: 134, type: !168)
!6033 = !DILocation(line: 134, column: 61, scope: !6028)
!6034 = !DILocation(line: 136, column: 2, scope: !6028)
!6035 = distinct !DISubprogram(name: "__list_del", scope: !5067, file: !5067, line: 193, type: !5635, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6036)
!6036 = !{!6037, !6038}
!6037 = !DILocalVariable(name: "prev", arg: 1, scope: !6035, file: !5067, line: 193, type: !168)
!6038 = !DILocalVariable(name: "next", arg: 2, scope: !6035, file: !5067, line: 193, type: !168)
!6039 = !DILocation(line: 193, column: 50, scope: !6035)
!6040 = !DILocation(line: 193, column: 75, scope: !6035)
!6041 = !DILocation(line: 195, column: 15, scope: !6035)
!6042 = !DILocation(line: 195, column: 2, scope: !6035)
!6043 = !DILocation(line: 195, column: 8, scope: !6035)
!6044 = !DILocation(line: 195, column: 13, scope: !6035)
!6045 = !DILocation(line: 196, column: 2, scope: !6035)
!6046 = !DILocation(line: 196, column: 2, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6035, file: !5067, line: 196, column: 2)
!6048 = !DILocation(line: 196, column: 2, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6047, file: !5067, line: 196, column: 2)
!6050 = !DILocation(line: 196, column: 2, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6047, file: !5067, line: 196, column: 2)
!6052 = !DILocation(line: 197, column: 1, scope: !6035)
!6053 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !151, file: !151, line: 331, type: !6054, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6056)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!792, !5792}
!6056 = !{!6057}
!6057 = !DILocalVariable(name: "r", arg: 1, scope: !6053, file: !151, line: 331, type: !5792)
!6058 = !DILocation(line: 331, column: 67, scope: !6053)
!6059 = !DILocation(line: 333, column: 33, scope: !6053)
!6060 = !DILocation(line: 333, column: 9, scope: !6053)
!6061 = !DILocation(line: 333, column: 2, scope: !6053)
!6062 = !DISubprogram(name: "__put_task_struct", scope: !5009, file: !5009, line: 121, type: !5010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !151, file: !151, line: 313, type: !6064, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6066)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!792, !5792, !2157}
!6066 = !{!6067, !6068}
!6067 = !DILocalVariable(name: "r", arg: 1, scope: !6063, file: !151, line: 313, type: !5792)
!6068 = !DILocalVariable(name: "oldp", arg: 2, scope: !6063, file: !151, line: 313, type: !2157)
!6069 = !DILocation(line: 313, column: 69, scope: !6063)
!6070 = !DILocation(line: 313, column: 77, scope: !6063)
!6071 = !DILocation(line: 315, column: 36, scope: !6063)
!6072 = !DILocation(line: 315, column: 39, scope: !6063)
!6073 = !DILocation(line: 315, column: 9, scope: !6063)
!6074 = !DILocation(line: 315, column: 2, scope: !6063)
!6075 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !151, file: !151, line: 270, type: !6076, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6078)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!792, !111, !5792, !2157}
!6078 = !{!6079, !6080, !6081, !6082}
!6079 = !DILocalVariable(name: "i", arg: 1, scope: !6075, file: !151, line: 270, type: !111)
!6080 = !DILocalVariable(name: "r", arg: 2, scope: !6075, file: !151, line: 270, type: !5792)
!6081 = !DILocalVariable(name: "oldp", arg: 3, scope: !6075, file: !151, line: 270, type: !2157)
!6082 = !DILocalVariable(name: "old", scope: !6075, file: !151, line: 272, type: !111)
!6083 = !DILocation(line: 270, column: 61, scope: !6075)
!6084 = !DILocation(line: 270, column: 76, scope: !6075)
!6085 = !DILocation(line: 270, column: 84, scope: !6075)
!6086 = !DILocation(line: 272, column: 2, scope: !6075)
!6087 = !DILocation(line: 272, column: 6, scope: !6075)
!6088 = !DILocation(line: 272, column: 37, scope: !6075)
!6089 = !DILocation(line: 272, column: 41, scope: !6075)
!6090 = !DILocation(line: 272, column: 44, scope: !6075)
!6091 = !DILocation(line: 272, column: 12, scope: !6075)
!6092 = !DILocation(line: 274, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6075, file: !151, line: 274, column: 6)
!6094 = !DILocation(line: 274, column: 6, scope: !6075)
!6095 = !DILocation(line: 275, column: 11, scope: !6093)
!6096 = !DILocation(line: 275, column: 4, scope: !6093)
!6097 = !DILocation(line: 275, column: 9, scope: !6093)
!6098 = !DILocation(line: 275, column: 3, scope: !6093)
!6099 = !DILocation(line: 277, column: 6, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6075, file: !151, line: 277, column: 6)
!6101 = !DILocation(line: 277, column: 13, scope: !6100)
!6102 = !DILocation(line: 277, column: 10, scope: !6100)
!6103 = !DILocation(line: 277, column: 6, scope: !6075)
!6104 = !DILocation(line: 278, column: 3, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6100, file: !151, line: 277, column: 16)
!6106 = !DILocation(line: 278, column: 3, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6105, file: !151, line: 278, column: 3)
!6108 = !DILocation(line: 278, column: 3, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6107, file: !151, line: 278, column: 3)
!6110 = !DILocation(line: 278, column: 3, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6107, file: !151, line: 278, column: 3)
!6112 = !DILocation(line: 278, column: 3, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6111, file: !151, line: 278, column: 3)
!6114 = !{i64 2150834942}
!6115 = !DILocation(line: 279, column: 3, scope: !6105)
!6116 = !DILocation(line: 282, column: 6, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6075, file: !151, line: 282, column: 6)
!6118 = !DILocation(line: 282, column: 6, scope: !6075)
!6119 = !DILocation(line: 283, column: 26, scope: !6117)
!6120 = !DILocation(line: 283, column: 3, scope: !6117)
!6121 = !DILocation(line: 285, column: 2, scope: !6075)
!6122 = !DILocation(line: 286, column: 1, scope: !6075)
!6123 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5052, file: !5052, line: 397, type: !5847, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6124)
!6124 = !{!6125, !6126}
!6125 = !DILocalVariable(name: "i", arg: 1, scope: !6123, file: !5052, line: 397, type: !111)
!6126 = !DILocalVariable(name: "v", arg: 2, scope: !6123, file: !5052, line: 397, type: !5849)
!6127 = !DILocation(line: 397, column: 30, scope: !6123)
!6128 = !DILocation(line: 397, column: 43, scope: !6123)
!6129 = !DILocation(line: 399, column: 2, scope: !6123)
!6130 = !DILocation(line: 399, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6123, file: !5052, line: 399, column: 2)
!6132 = !DILocation(line: 400, column: 31, scope: !6123)
!6133 = !DILocation(line: 400, column: 2, scope: !6123)
!6134 = !DILocation(line: 401, column: 38, scope: !6123)
!6135 = !DILocation(line: 401, column: 41, scope: !6123)
!6136 = !DILocation(line: 401, column: 9, scope: !6123)
!6137 = !DILocation(line: 401, column: 2, scope: !6123)
!6138 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5455, file: !5455, line: 928, type: !5847, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6139)
!6139 = !{!6140, !6141}
!6140 = !DILocalVariable(name: "i", arg: 1, scope: !6138, file: !5455, line: 928, type: !111)
!6141 = !DILocalVariable(name: "v", arg: 2, scope: !6138, file: !5455, line: 928, type: !5849)
!6142 = !DILocation(line: 928, column: 34, scope: !6138)
!6143 = !DILocation(line: 928, column: 47, scope: !6138)
!6144 = !DILocation(line: 936, column: 31, scope: !6138)
!6145 = !DILocation(line: 936, column: 34, scope: !6138)
!6146 = !DILocation(line: 936, column: 9, scope: !6138)
!6147 = !DILocation(line: 936, column: 2, scope: !6138)
!6148 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5875, file: !5875, line: 101, type: !5847, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6149)
!6149 = !{!6150, !6151, !6152}
!6150 = !DILocalVariable(name: "i", arg: 1, scope: !6148, file: !5875, line: 101, type: !111)
!6151 = !DILocalVariable(name: "v", arg: 2, scope: !6148, file: !5875, line: 101, type: !5849)
!6152 = !DILocalVariable(name: "__ret", scope: !6153, file: !5875, line: 103, type: !111)
!6153 = distinct !DILexicalBlock(scope: !6148, file: !5875, line: 103, column: 9)
!6154 = !DILocation(line: 101, column: 54, scope: !6148)
!6155 = !DILocation(line: 101, column: 67, scope: !6148)
!6156 = !DILocation(line: 103, column: 9, scope: !6153)
!6157 = !{i64 2148822932, i64 2148822971, i64 2148822992, i64 2148823029, i64 2148823052, i64 2148823061}
!6158 = !DILocation(line: 103, column: 9, scope: !6148)
!6159 = !DILocation(line: 103, column: 2, scope: !6148)
!6160 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5406, file: !5406, line: 66, type: !5407, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6161)
!6161 = !{!6162, !6163}
!6162 = !DILocalVariable(name: "v", arg: 1, scope: !6160, file: !5406, line: 66, type: !5409)
!6163 = !DILocalVariable(name: "size", arg: 2, scope: !6160, file: !5406, line: 66, type: !1108)
!6164 = !DILocation(line: 66, column: 73, scope: !6160)
!6165 = !DILocation(line: 66, column: 83, scope: !6160)
!6166 = !DILocation(line: 68, column: 19, scope: !6160)
!6167 = !DILocation(line: 68, column: 22, scope: !6160)
!6168 = !DILocation(line: 68, column: 2, scope: !6160)
!6169 = !DILocation(line: 69, column: 2, scope: !6160)
!6170 = !DILocation(line: 70, column: 1, scope: !6160)
!6171 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !585, file: !585, line: 35, type: !5190, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6172)
!6172 = !{!6173}
!6173 = !DILocalVariable(name: "v", arg: 1, scope: !6171, file: !585, line: 35, type: !5192)
!6174 = !DILocation(line: 35, column: 43, scope: !6171)
!6175 = !DILocation(line: 38, column: 27, scope: !6171)
!6176 = !DILocation(line: 38, column: 9, scope: !6171)
!6177 = !DILocation(line: 38, column: 2, scope: !6171)
!6178 = distinct !DISubprogram(name: "kasan_check_read", scope: !5433, file: !5433, line: 40, type: !5434, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6179)
!6179 = !{!6180, !6181}
!6180 = !DILocalVariable(name: "p", arg: 1, scope: !6178, file: !5433, line: 40, type: !5409)
!6181 = !DILocalVariable(name: "size", arg: 2, scope: !6178, file: !5433, line: 40, type: !11)
!6182 = !DILocation(line: 40, column: 58, scope: !6178)
!6183 = !DILocation(line: 40, column: 74, scope: !6178)
!6184 = !DILocation(line: 42, column: 2, scope: !6178)
!6185 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5455, file: !5455, line: 2554, type: !6186, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6190)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!161, !6188}
!6188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6189, size: 64)
!6189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!6190 = !{!6191}
!6191 = !DILocalVariable(name: "v", arg: 1, scope: !6185, file: !5455, line: 2554, type: !6188)
!6192 = !DILocation(line: 2554, column: 37, scope: !6185)
!6193 = !DILocation(line: 2556, column: 28, scope: !6185)
!6194 = !DILocation(line: 2556, column: 9, scope: !6185)
!6195 = !DILocation(line: 2556, column: 2, scope: !6185)
!6196 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5469, file: !5469, line: 13, type: !6186, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6197)
!6197 = !{!6198}
!6198 = !DILocalVariable(name: "v", arg: 1, scope: !6196, file: !5469, line: 13, type: !6188)
!6199 = !DILocation(line: 13, column: 65, scope: !6196)
!6200 = !DILocation(line: 15, column: 9, scope: !6196)
!6201 = !DILocation(line: 15, column: 2, scope: !6196)
!6202 = distinct !DISubprogram(name: "raw_atomic_long_try_cmpxchg", scope: !585, file: !585, line: 1450, type: !5203, scopeLine: 1451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6203)
!6203 = !{!6204, !6205, !6206}
!6204 = !DILocalVariable(name: "v", arg: 1, scope: !6202, file: !585, line: 1450, type: !2843)
!6205 = !DILocalVariable(name: "old", arg: 2, scope: !6202, file: !585, line: 1450, type: !5205)
!6206 = !DILocalVariable(name: "new", arg: 3, scope: !6202, file: !585, line: 1450, type: !1066)
!6207 = !DILocation(line: 1450, column: 44, scope: !6202)
!6208 = !DILocation(line: 1450, column: 53, scope: !6202)
!6209 = !DILocation(line: 1450, column: 63, scope: !6202)
!6210 = !DILocation(line: 1453, column: 34, scope: !6202)
!6211 = !DILocation(line: 1453, column: 44, scope: !6202)
!6212 = !DILocation(line: 1453, column: 49, scope: !6202)
!6213 = !DILocation(line: 1453, column: 9, scope: !6202)
!6214 = !DILocation(line: 1453, column: 2, scope: !6202)
!6215 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !5455, file: !5455, line: 4221, type: !6216, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6218)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{!792, !5458, !5002, !161}
!6218 = !{!6219, !6220, !6221}
!6219 = !DILocalVariable(name: "v", arg: 1, scope: !6215, file: !5455, line: 4221, type: !5458)
!6220 = !DILocalVariable(name: "old", arg: 2, scope: !6215, file: !5455, line: 4221, type: !5002)
!6221 = !DILocalVariable(name: "new", arg: 3, scope: !6215, file: !5455, line: 4221, type: !161)
!6222 = !DILocation(line: 4221, column: 38, scope: !6215)
!6223 = !DILocation(line: 4221, column: 46, scope: !6215)
!6224 = !DILocation(line: 4221, column: 55, scope: !6215)
!6225 = !DILocation(line: 4224, column: 35, scope: !6215)
!6226 = !DILocation(line: 4224, column: 38, scope: !6215)
!6227 = !DILocation(line: 4224, column: 43, scope: !6215)
!6228 = !DILocation(line: 4224, column: 9, scope: !6215)
!6229 = !DILocation(line: 4224, column: 2, scope: !6215)
!6230 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !5469, file: !5469, line: 107, type: !6216, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6231)
!6231 = !{!6232, !6233, !6234, !6235, !6237, !6238, !6239, !6240}
!6232 = !DILocalVariable(name: "v", arg: 1, scope: !6230, file: !5469, line: 107, type: !5458)
!6233 = !DILocalVariable(name: "old", arg: 2, scope: !6230, file: !5469, line: 107, type: !5002)
!6234 = !DILocalVariable(name: "new", arg: 3, scope: !6230, file: !5469, line: 107, type: !161)
!6235 = !DILocalVariable(name: "success", scope: !6236, file: !5469, line: 109, type: !792)
!6236 = distinct !DILexicalBlock(scope: !6230, file: !5469, line: 109, column: 9)
!6237 = !DILocalVariable(name: "_old", scope: !6236, file: !5469, line: 109, type: !5002)
!6238 = !DILocalVariable(name: "__old", scope: !6236, file: !5469, line: 109, type: !161)
!6239 = !DILocalVariable(name: "__new", scope: !6236, file: !5469, line: 109, type: !161)
!6240 = !DILocalVariable(name: "__ptr", scope: !6236, file: !5469, line: 109, type: !5003)
!6241 = !DILocation(line: 107, column: 67, scope: !6230)
!6242 = !DILocation(line: 107, column: 75, scope: !6230)
!6243 = !DILocation(line: 107, column: 84, scope: !6230)
!6244 = !DILocation(line: 109, column: 9, scope: !6236)
!6245 = !{i64 2148859727, i64 2148859766, i64 2148859787, i64 2148859824, i64 2148859847, i64 2148859856, i64 2148860057}
!6246 = !DILocation(line: 109, column: 9, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6236, file: !5469, line: 109, column: 9)
!6248 = !{i8 0, i8 2}
!6249 = !DILocation(line: 109, column: 9, scope: !6230)
!6250 = !DILocation(line: 109, column: 2, scope: !6230)
!6251 = distinct !DISubprogram(name: "down_write_failed", scope: !7, file: !7, line: 230, type: !5480, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6252)
!6252 = !{!6253, !6254, !6255, !6256, !6257, !6258, !6259, !6264, !6266, !6274}
!6253 = !DILocalVariable(name: "sem", arg: 1, scope: !6251, file: !7, line: 230, type: !5026)
!6254 = !DILocalVariable(name: "count", arg: 2, scope: !6251, file: !7, line: 230, type: !1066)
!6255 = !DILocalVariable(name: "timeout", arg: 3, scope: !6251, file: !7, line: 230, type: !1066)
!6256 = !DILocalVariable(name: "waiter", scope: !6251, file: !7, line: 232, type: !4994)
!6257 = !DILocalVariable(name: "adjust", scope: !6251, file: !7, line: 233, type: !1066)
!6258 = !DILocalVariable(name: "locked", scope: !6251, file: !7, line: 234, type: !111)
!6259 = !DILocalVariable(name: "__ai_ptr", scope: !6260, file: !7, line: 257, type: !2109)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !7, line: 257, column: 2)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !7, line: 257, column: 2)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !7, line: 257, column: 2)
!6263 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 257, column: 2)
!6264 = !DILocalVariable(name: "__ret", scope: !6265, file: !7, line: 257, type: !11)
!6265 = distinct !DILexicalBlock(scope: !6260, file: !7, line: 257, column: 2)
!6266 = !DILocalVariable(name: "__ai_ptr", scope: !6267, file: !7, line: 264, type: !2109)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !7, line: 264, column: 3)
!6268 = distinct !DILexicalBlock(scope: !6269, file: !7, line: 264, column: 3)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !7, line: 264, column: 3)
!6270 = distinct !DILexicalBlock(scope: !6271, file: !7, line: 264, column: 3)
!6271 = distinct !DILexicalBlock(scope: !6272, file: !7, line: 258, column: 11)
!6272 = distinct !DILexicalBlock(scope: !6273, file: !7, line: 258, column: 2)
!6273 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 258, column: 2)
!6274 = !DILocalVariable(name: "__ret", scope: !6275, file: !7, line: 264, type: !11)
!6275 = distinct !DILexicalBlock(scope: !6267, file: !7, line: 264, column: 3)
!6276 = !DILocation(line: 230, column: 40, scope: !6251)
!6277 = !DILocation(line: 230, column: 50, scope: !6251)
!6278 = !DILocation(line: 230, column: 62, scope: !6251)
!6279 = !DILocation(line: 232, column: 2, scope: !6251)
!6280 = !DILocation(line: 232, column: 22, scope: !6251)
!6281 = !DILocation(line: 233, column: 2, scope: !6251)
!6282 = !DILocation(line: 233, column: 7, scope: !6251)
!6283 = !DILocation(line: 234, column: 2, scope: !6251)
!6284 = !DILocation(line: 234, column: 6, scope: !6251)
!6285 = !DILocation(line: 237, column: 2, scope: !6251)
!6286 = !DILocation(line: 244, column: 2, scope: !6251)
!6287 = !DILocation(line: 245, column: 32, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6289, file: !7, line: 245, column: 7)
!6289 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 244, column: 5)
!6290 = !DILocation(line: 245, column: 37, scope: !6288)
!6291 = !DILocation(line: 245, column: 52, scope: !6288)
!6292 = !DILocation(line: 245, column: 60, scope: !6288)
!6293 = !DILocation(line: 245, column: 58, scope: !6288)
!6294 = !DILocation(line: 245, column: 7, scope: !6288)
!6295 = !DILocation(line: 245, column: 7, scope: !6289)
!6296 = !DILocation(line: 246, column: 4, scope: !6288)
!6297 = !DILocation(line: 247, column: 8, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6289, file: !7, line: 247, column: 7)
!6299 = !DILocation(line: 247, column: 14, scope: !6298)
!6300 = !DILocation(line: 247, column: 35, scope: !6298)
!6301 = !DILocation(line: 247, column: 7, scope: !6289)
!6302 = !DILocation(line: 248, column: 4, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6298, file: !7, line: 247, column: 57)
!6304 = !DILocation(line: 249, column: 11, scope: !6303)
!6305 = !DILocation(line: 249, column: 4, scope: !6303)
!6306 = !DILocation(line: 251, column: 2, scope: !6289)
!6307 = distinct !{!6307, !6286, !6308, !5186}
!6308 = !DILocation(line: 251, column: 12, scope: !6251)
!6309 = !DILocation(line: 253, column: 24, scope: !6251)
!6310 = !DILocation(line: 253, column: 31, scope: !6251)
!6311 = !DILocation(line: 253, column: 36, scope: !6251)
!6312 = !DILocation(line: 253, column: 2, scope: !6251)
!6313 = !DILocation(line: 255, column: 16, scope: !6251)
!6314 = !DILocation(line: 255, column: 9, scope: !6251)
!6315 = !DILocation(line: 255, column: 14, scope: !6251)
!6316 = !DILocation(line: 257, column: 2, scope: !6251)
!6317 = !DILocation(line: 257, column: 2, scope: !6263)
!6318 = !DILocation(line: 257, column: 2, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6263, file: !7, line: 257, column: 2)
!6320 = !DILocation(line: 257, column: 2, scope: !6262)
!6321 = !DILocation(line: 257, column: 2, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6262, file: !7, line: 257, column: 2)
!6323 = !DILocation(line: 257, column: 2, scope: !6260)
!6324 = !DILocation(line: 257, column: 2, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6260, file: !7, line: 257, column: 2)
!6326 = !DILocation(line: 257, column: 2, scope: !6265)
!6327 = !{i64 2154663770}
!6328 = !DILocation(line: 257, column: 2, scope: !6261)
!6329 = !DILocation(line: 258, column: 2, scope: !6251)
!6330 = !DILocation(line: 259, column: 8, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6271, file: !7, line: 259, column: 7)
!6332 = !DILocation(line: 259, column: 7, scope: !6271)
!6333 = !DILocation(line: 260, column: 4, scope: !6331)
!6334 = !DILocation(line: 261, column: 3, scope: !6271)
!6335 = !DILocation(line: 262, column: 30, scope: !6271)
!6336 = !DILocation(line: 262, column: 13, scope: !6271)
!6337 = !DILocation(line: 262, column: 11, scope: !6271)
!6338 = !DILocation(line: 263, column: 3, scope: !6271)
!6339 = !DILocation(line: 264, column: 3, scope: !6271)
!6340 = !DILocation(line: 264, column: 3, scope: !6270)
!6341 = !DILocation(line: 264, column: 3, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6270, file: !7, line: 264, column: 3)
!6343 = !DILocation(line: 264, column: 3, scope: !6269)
!6344 = !DILocation(line: 264, column: 3, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6269, file: !7, line: 264, column: 3)
!6346 = !DILocation(line: 264, column: 3, scope: !6267)
!6347 = !DILocation(line: 264, column: 3, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6267, file: !7, line: 264, column: 3)
!6349 = !DILocation(line: 264, column: 3, scope: !6275)
!6350 = !{i64 2154665541}
!6351 = !DILocation(line: 264, column: 3, scope: !6268)
!6352 = !DILocation(line: 265, column: 27, scope: !6271)
!6353 = !DILocation(line: 265, column: 12, scope: !6271)
!6354 = !DILocation(line: 265, column: 10, scope: !6271)
!6355 = !DILocation(line: 266, column: 7, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6271, file: !7, line: 266, column: 7)
!6357 = !DILocation(line: 266, column: 7, scope: !6271)
!6358 = !DILocation(line: 267, column: 4, scope: !6356)
!6359 = !DILocation(line: 258, column: 2, scope: !6272)
!6360 = distinct !{!6360, !6361, !6362, !5186}
!6361 = !DILocation(line: 258, column: 2, scope: !6273)
!6362 = !DILocation(line: 268, column: 2, scope: !6273)
!6363 = !DILocation(line: 270, column: 7, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 270, column: 6)
!6365 = !DILocation(line: 270, column: 6, scope: !6251)
!6366 = !DILocation(line: 271, column: 45, scope: !6364)
!6367 = !DILocation(line: 271, column: 50, scope: !6364)
!6368 = !DILocation(line: 271, column: 3, scope: !6364)
!6369 = !DILocation(line: 272, column: 19, scope: !6251)
!6370 = !DILocation(line: 272, column: 2, scope: !6251)
!6371 = !DILocation(line: 280, column: 7, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 280, column: 6)
!6373 = !DILocation(line: 280, column: 14, scope: !6372)
!6374 = !DILocation(line: 280, column: 29, scope: !6372)
!6375 = !DILocation(line: 280, column: 34, scope: !6372)
!6376 = !DILocation(line: 280, column: 17, scope: !6372)
!6377 = !DILocation(line: 280, column: 6, scope: !6251)
!6378 = !DILocation(line: 281, column: 24, scope: !6372)
!6379 = !DILocation(line: 281, column: 3, scope: !6372)
!6380 = !DILocation(line: 283, column: 2, scope: !6251)
!6381 = !DILocation(line: 285, column: 2, scope: !6251)
!6382 = !DILocation(line: 285, column: 2, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 285, column: 2)
!6384 = !DILocation(line: 285, column: 2, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6383, file: !7, line: 285, column: 2)
!6386 = !DILocation(line: 285, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6383, file: !7, line: 285, column: 2)
!6388 = !DILocation(line: 285, column: 2, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6387, file: !7, line: 285, column: 2)
!6390 = !DILocation(line: 285, column: 2, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6387, file: !7, line: 285, column: 2)
!6392 = !DILocation(line: 288, column: 7, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6251, file: !7, line: 288, column: 6)
!6394 = !DILocation(line: 288, column: 6, scope: !6251)
!6395 = !DILocation(line: 289, column: 3, scope: !6393)
!6396 = !DILocation(line: 290, column: 9, scope: !6251)
!6397 = !DILocation(line: 290, column: 2, scope: !6251)
!6398 = !DILocation(line: 291, column: 1, scope: !6251)
!6399 = distinct !DISubprogram(name: "writer_trylock", scope: !7, file: !7, line: 104, type: !5153, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6400)
!6400 = !{!6401, !6402}
!6401 = !DILocalVariable(name: "sem", arg: 1, scope: !6399, file: !7, line: 104, type: !5026)
!6402 = !DILocalVariable(name: "count", scope: !6399, file: !7, line: 110, type: !1066)
!6403 = !DILocation(line: 104, column: 55, scope: !6399)
!6404 = !DILocation(line: 110, column: 2, scope: !6399)
!6405 = !DILocation(line: 110, column: 7, scope: !6399)
!6406 = !DILocation(line: 110, column: 58, scope: !6399)
!6407 = !DILocation(line: 110, column: 63, scope: !6399)
!6408 = !DILocation(line: 110, column: 15, scope: !6399)
!6409 = !DILocation(line: 111, column: 2, scope: !6399)
!6410 = !DILocation(line: 112, column: 8, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6412, file: !7, line: 112, column: 7)
!6412 = distinct !DILexicalBlock(scope: !6399, file: !7, line: 111, column: 5)
!6413 = !DILocation(line: 112, column: 14, scope: !6411)
!6414 = !DILocation(line: 112, column: 35, scope: !6411)
!6415 = !DILocation(line: 112, column: 7, scope: !6412)
!6416 = !DILocation(line: 113, column: 4, scope: !6411)
!6417 = !DILocation(line: 114, column: 32, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6412, file: !7, line: 114, column: 7)
!6419 = !DILocation(line: 114, column: 37, scope: !6418)
!6420 = !DILocation(line: 114, column: 52, scope: !6418)
!6421 = !DILocation(line: 114, column: 58, scope: !6418)
!6422 = !DILocation(line: 114, column: 7, scope: !6418)
!6423 = !DILocation(line: 114, column: 7, scope: !6412)
!6424 = !DILocation(line: 115, column: 4, scope: !6418)
!6425 = !DILocation(line: 116, column: 2, scope: !6412)
!6426 = distinct !{!6426, !6409, !6427, !5186}
!6427 = !DILocation(line: 116, column: 12, scope: !6399)
!6428 = !DILocation(line: 117, column: 1, scope: !6399)
!6429 = distinct !DISubprogram(name: "raw_atomic_long_add_return", scope: !585, file: !585, line: 139, type: !5344, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6430)
!6430 = !{!6431, !6432}
!6431 = !DILocalVariable(name: "i", arg: 1, scope: !6429, file: !585, line: 139, type: !1066)
!6432 = !DILocalVariable(name: "v", arg: 2, scope: !6429, file: !585, line: 139, type: !2843)
!6433 = !DILocation(line: 139, column: 33, scope: !6429)
!6434 = !DILocation(line: 139, column: 51, scope: !6429)
!6435 = !DILocation(line: 142, column: 33, scope: !6429)
!6436 = !DILocation(line: 142, column: 36, scope: !6429)
!6437 = !DILocation(line: 142, column: 9, scope: !6429)
!6438 = !DILocation(line: 142, column: 2, scope: !6429)
!6439 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !5455, file: !5455, line: 2660, type: !6440, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6442)
!6440 = !DISubroutineType(types: !6441)
!6441 = !{!161, !161, !5458}
!6442 = !{!6443, !6444}
!6443 = !DILocalVariable(name: "i", arg: 1, scope: !6439, file: !5455, line: 2660, type: !161)
!6444 = !DILocalVariable(name: "v", arg: 2, scope: !6439, file: !5455, line: 2660, type: !5458)
!6445 = !DILocation(line: 2660, column: 29, scope: !6439)
!6446 = !DILocation(line: 2660, column: 44, scope: !6439)
!6447 = !DILocation(line: 2663, column: 34, scope: !6439)
!6448 = !DILocation(line: 2663, column: 37, scope: !6439)
!6449 = !DILocation(line: 2663, column: 9, scope: !6439)
!6450 = !DILocation(line: 2663, column: 2, scope: !6439)
!6451 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !5469, file: !5469, line: 77, type: !6440, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !6452)
!6452 = !{!6453, !6454, !6455}
!6453 = !DILocalVariable(name: "i", arg: 1, scope: !6451, file: !5469, line: 77, type: !161)
!6454 = !DILocalVariable(name: "v", arg: 2, scope: !6451, file: !5469, line: 77, type: !5458)
!6455 = !DILocalVariable(name: "__ret", scope: !6456, file: !5469, line: 79, type: !161)
!6456 = distinct !DILexicalBlock(scope: !6451, file: !5469, line: 79, column: 13)
!6457 = !DILocation(line: 77, column: 57, scope: !6451)
!6458 = !DILocation(line: 77, column: 72, scope: !6451)
!6459 = !DILocation(line: 79, column: 9, scope: !6451)
!6460 = !DILocation(line: 79, column: 13, scope: !6456)
!6461 = !{i64 2148849428, i64 2148849467, i64 2148849488, i64 2148849525, i64 2148849548, i64 2148849557}
!6462 = !DILocation(line: 79, column: 13, scope: !6451)
!6463 = !DILocation(line: 79, column: 11, scope: !6451)
!6464 = !DILocation(line: 79, column: 2, scope: !6451)
!6465 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5629, file: !5629, line: 32, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!187, !5632}
!6468 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5629, file: !5629, line: 43, type: !6469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{null, !5632, !187}
