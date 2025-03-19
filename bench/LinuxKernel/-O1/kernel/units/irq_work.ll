; ModuleID = 'kernel/irq_work.c'
source_filename = "kernel/irq_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_work_queue: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_work_queue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_work_run: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_work_run ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_work_sync: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_work_sync ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_irq_work__291_327_irq_work_init_threads\22, \22a\22\09\09"
module asm "__initcall__kmod_irq_work__291_327_irq_work_init_threadsearly:\09\09\09"
module asm ".long\09__initstub__kmod_irq_work__291_327_irq_work_init_threadsearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.llist_head = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.cpuinfo_x86 = type { %union.anon.17, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.19, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { i64, [88 x i8] }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }

@irq_work_queue.__UNIQUE_ID___addressable___SCK__preempt_schedule286 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !0
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__UNIQUE_ID___addressable_irq_work_queue287 = internal global ptr @irq_work_queue, section ".discard.addressable", align 8, !dbg !1925
@.str = private unnamed_addr constant [18 x i8] c"kernel/irq_work.c\00", align 1, !dbg !1927
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1932
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@irq_work_queue_on.__UNIQUE_ID___addressable___SCK__preempt_schedule288 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1937
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@raised_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 8, !dbg !1971
@lazy_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 8, !dbg !1973
@__UNIQUE_ID___addressable_irq_work_run289 = internal global ptr @irq_work_run, section ".discard.addressable", align 8, !dbg !1965
@__UNIQUE_ID___addressable_irq_work_sync290 = internal global ptr @irq_work_sync, section ".discard.addressable", align 8, !dbg !1967
@__UNIQUE_ID___addressable___initstub__kmod_irq_work__291_327_irq_work_init_threadsearly292 = internal global ptr @__initstub__kmod_irq_work__291_327_irq_work_init_threadsearly, section ".discard.addressable", align 8, !dbg !1969
@__tracepoint_ipi_send_cpu = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"include/trace/events/ipi.h\00", align 1, !dbg !1975
@trace_ipi_send_cpu.__UNIQUE_ID___addressable___SCK__tp_func_ipi_send_cpu256 = internal global ptr @__SCK__tp_func_ipi_send_cpu, section ".discard.addressable", align 8, !dbg !1981
@__SCK__tp_func_ipi_send_cpu = external dso_local global %struct.static_call_key, align 8
@trace_ipi_send_cpu.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace257 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2012
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !2014
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [9 x ptr] [ptr @irq_work_queue.__UNIQUE_ID___addressable___SCK__preempt_schedule286, ptr @__UNIQUE_ID___addressable_irq_work_queue287, ptr @irq_work_queue_on.__UNIQUE_ID___addressable___SCK__preempt_schedule288, ptr @__UNIQUE_ID___addressable_irq_work_run289, ptr @__UNIQUE_ID___addressable_irq_work_sync290, ptr @__UNIQUE_ID___addressable___initstub__kmod_irq_work__291_327_irq_work_init_threadsearly292, ptr @trace_ipi_send_cpu.__UNIQUE_ID___addressable___SCK__tp_func_ipi_send_cpu256, ptr @trace_ipi_send_cpu.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace257, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @arch_irq_work_raise() #0 align 16 !dbg !2030 {
entry:
  ret void, !dbg !2031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @irq_work_queue(ptr noundef %work) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i1, align 1
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2019, metadata !DIExpression()), !dbg !2032
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2033
  %call = call zeroext i1 @irq_work_claim(ptr noundef %0) #12, !dbg !2035
  br i1 %call, label %if.end, label %if.then, !dbg !2036

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2037
  br label %return, !dbg !2037

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2038

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !2039
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2039, !srcloc !2041
  br label %do.end, !dbg !2039

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %work.addr, align 8, !dbg !2042
  call void @__irq_work_queue_local(ptr noundef %1) #12, !dbg !2043
  br label %do.body1, !dbg !2044

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2045, !srcloc !2047
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !2048
  %lnot = xor i1 %call2, true, !dbg !2048
  %lnot3 = xor i1 %lnot, true, !dbg !2048
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2048
  %conv = sext i32 %lnot.ext to i64, !dbg !2048
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2048
  %tobool = icmp ne i64 %expval, 0, !dbg !2048
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !2045

if.then4:                                         ; preds = %do.body1
  br label %do.body5, !dbg !2048

do.body5:                                         ; preds = %if.then4
  %2 = call i64 @llvm.read_register.i64(metadata !2020), !dbg !2050
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #13, !dbg !2050, !srcloc !2052
  call void @llvm.write_register.i64(metadata !2020, i64 %3), !dbg !2050
  br label %do.end6, !dbg !2050

do.end6:                                          ; preds = %do.body5
  br label %if.end7, !dbg !2050

if.end7:                                          ; preds = %do.end6, %do.body1
  br label %do.end8, !dbg !2045

do.end8:                                          ; preds = %if.end7
  store i1 true, ptr %retval, align 1, !dbg !2053
  br label %return, !dbg !2053

return:                                           ; preds = %do.end8, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !2054
  ret i1 %4, !dbg !2054
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_work_claim(ptr noundef %work) #0 align 16 !dbg !2055 {
entry:
  %retval = alloca i1, align 1
  %work.addr = alloca ptr, align 8
  %oflags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 4, ptr %oflags) #13, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %oflags, metadata !2058, metadata !DIExpression()), !dbg !2061
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2062
  %node = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 0, !dbg !2063
  %1 = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 1, !dbg !2064
  %call = call i32 @atomic_fetch_or(i32 noundef 35, ptr noundef %1) #12, !dbg !2065
  store i32 %call, ptr %oflags, align 4, !dbg !2066
  %2 = load i32, ptr %oflags, align 4, !dbg !2067
  %and = and i32 %2, 1, !dbg !2069
  %tobool = icmp ne i32 %and, 0, !dbg !2069
  br i1 %tobool, label %if.then, label %if.end, !dbg !2070

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2071

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2072

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %oflags) #13, !dbg !2073
  %3 = load i1, ptr %retval, align 1, !dbg !2073
  ret i1 %3, !dbg !2073
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !2074 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2077, metadata !DIExpression()), !dbg !2085
  br label %do.body, !dbg !2086

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2078, metadata !DIExpression()), !dbg !2087
  %0 = load i32, ptr %val.addr, align 4, !dbg !2087
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2087
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2087

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2087
  %cmp = icmp eq i32 %2, 1, !dbg !2087
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2087

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2087
  %cmp1 = icmp eq i32 %3, -1, !dbg !2087
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2087

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2087
  br label %cond.end, !dbg !2087

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2087

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2087
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2087
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2088
  %cmp2 = icmp eq i32 %5, 1, !dbg !2088
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2087

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !2089, !srcloc !2091
  br label %if.end8, !dbg !2088

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2092
  %cmp3 = icmp eq i32 %6, -1, !dbg !2092
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2088

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !2093, !srcloc !2095
  br label %if.end, !dbg !2092

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2092

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2081, metadata !DIExpression()), !dbg !2096
  %7 = load i32, ptr %val.addr, align 4, !dbg !2096
  %conv = sext i32 %7 to i64, !dbg !2096
  %and = and i64 %conv, 4294967295, !dbg !2096
  %conv7 = trunc i64 %and to i32, !dbg !2096
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2096
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2096
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !2096, !srcloc !2097
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !2092
  br label %do.cond, !dbg !2096

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2096

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !2086
  br label %do.end10, !dbg !2087

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__irq_work_queue_local(ptr noundef %work) #0 align 16 !dbg !2099 {
entry:
  %work.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %rt_lazy_work = alloca i8, align 1
  %lazy_work = alloca i8, align 1
  %work_flags = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %__vpp_verify7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tcp_ptr__11 = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2101, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #13, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2102, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 1, ptr %rt_lazy_work) #13, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %rt_lazy_work, metadata !2103, metadata !DIExpression()), !dbg !2121
  store i8 0, ptr %rt_lazy_work, align 1, !dbg !2121
  call void @llvm.lifetime.start.p0(i64 1, ptr %lazy_work) #13, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %lazy_work, metadata !2104, metadata !DIExpression()), !dbg !2123
  store i8 0, ptr %lazy_work, align 1, !dbg !2123
  call void @llvm.lifetime.start.p0(i64 4, ptr %work_flags) #13, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %work_flags, metadata !2105, metadata !DIExpression()), !dbg !2125
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2126
  %node = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 0, !dbg !2127
  %1 = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 1, !dbg !2128
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !2129
  store i32 %call, ptr %work_flags, align 4, !dbg !2130
  %2 = load i32, ptr %work_flags, align 4, !dbg !2131
  %and = and i32 %2, 4, !dbg !2133
  %tobool = icmp ne i32 %and, 0, !dbg !2133
  br i1 %tobool, label %if.then, label %if.else, !dbg !2134

if.then:                                          ; preds = %entry
  store i8 1, ptr %lazy_work, align 1, !dbg !2135
  br label %if.end, !dbg !2136

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, ptr %lazy_work, align 1, !dbg !2137, !range !2138, !noundef !421
  %tobool1 = trunc i8 %3 to i1, !dbg !2137
  br i1 %tobool1, label %if.then3, label %lor.lhs.false, !dbg !2139

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8, ptr %rt_lazy_work, align 1, !dbg !2140, !range !2138, !noundef !421
  %tobool2 = trunc i8 %4 to i1, !dbg !2140
  br i1 %tobool2, label %if.then3, label %if.else5, !dbg !2141

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !2142

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2143
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2106, metadata !DIExpression()), !dbg !2143
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2143
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !2143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2142
  br label %do.cond, !dbg !2143

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2143

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2110, metadata !DIExpression()), !dbg !2144
  %6 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @lazy_list) #14, !dbg !2144, !srcloc !2145
  store i64 %6, ptr %tcp_ptr__, align 8, !dbg !2144
  %7 = load i64, ptr %tcp_ptr__, align 8, !dbg !2144
  %8 = inttoptr i64 %7 to ptr, !dbg !2144
  store ptr %8, ptr %tmp4, align 8, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2142
  %9 = load ptr, ptr %tmp4, align 8, !dbg !2144
  store ptr %9, ptr %tmp, align 8, !dbg !2143
  %10 = load ptr, ptr %tmp, align 8, !dbg !2142
  store ptr %10, ptr %list, align 8, !dbg !2146
  br label %if.end13, !dbg !2147

if.else5:                                         ; preds = %lor.lhs.false
  br label %do.body6, !dbg !2148

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #13, !dbg !2149
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !2112, metadata !DIExpression()), !dbg !2149
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !2149
  %11 = load ptr, ptr %__vpp_verify7, align 8, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #13, !dbg !2148
  br label %do.cond8, !dbg !2149

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !2149

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__11) #13, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__11, metadata !2115, metadata !DIExpression()), !dbg !2150
  %12 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @raised_list) #14, !dbg !2150, !srcloc !2151
  store i64 %12, ptr %tcp_ptr__11, align 8, !dbg !2150
  %13 = load i64, ptr %tcp_ptr__11, align 8, !dbg !2150
  %14 = inttoptr i64 %13 to ptr, !dbg !2150
  store ptr %14, ptr %tmp12, align 8, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__11) #13, !dbg !2148
  %15 = load ptr, ptr %tmp12, align 8, !dbg !2150
  store ptr %15, ptr %tmp10, align 8, !dbg !2149
  %16 = load ptr, ptr %tmp10, align 8, !dbg !2148
  store ptr %16, ptr %list, align 8, !dbg !2152
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %do.end
  %17 = load ptr, ptr %work.addr, align 8, !dbg !2153
  %node14 = getelementptr inbounds %struct.irq_work, ptr %17, i32 0, i32 0, !dbg !2155
  %llist = getelementptr inbounds %struct.__call_single_node, ptr %node14, i32 0, i32 0, !dbg !2156
  %18 = load ptr, ptr %list, align 8, !dbg !2157
  %call15 = call zeroext i1 @llist_add(ptr noundef %llist, ptr noundef %18) #12, !dbg !2158
  br i1 %call15, label %if.end17, label %if.then16, !dbg !2159

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2160

if.end17:                                         ; preds = %if.end13
  %19 = load i8, ptr %lazy_work, align 1, !dbg !2161, !range !2138, !noundef !421
  %tobool18 = trunc i8 %19 to i1, !dbg !2161
  br i1 %tobool18, label %lor.lhs.false19, label %if.then21, !dbg !2163

lor.lhs.false19:                                  ; preds = %if.end17
  %call20 = call zeroext i1 @tick_nohz_tick_stopped() #12, !dbg !2164
  br i1 %call20, label %if.then21, label %if.end22, !dbg !2165

if.then21:                                        ; preds = %lor.lhs.false19, %if.end17
  %20 = load ptr, ptr %work.addr, align 8, !dbg !2166
  call void @irq_work_raise(ptr noundef %20) #12, !dbg !2167
  br label %if.end22, !dbg !2167

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2168
  br label %cleanup, !dbg !2168

cleanup:                                          ; preds = %if.end22, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %work_flags) #13, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 1, ptr %lazy_work) #13, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 1, ptr %rt_lazy_work) #13, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #13, !dbg !2168
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2168

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !2169 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !2175
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2173, metadata !DIExpression()), !dbg !2175
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !2175, !srcloc !2176
  %1 = icmp ult i8 %0, 2, !dbg !2175
  call void @llvm.assume(i1 %1), !dbg !2175
  store i8 %0, ptr %c, align 1, !dbg !2175
  %2 = load i8, ptr %c, align 1, !dbg !2175, !range !2138, !noundef !421
  %tobool = trunc i8 %2 to i1, !dbg !2175
  %frombool = zext i1 %tobool to i8, !dbg !2175
  store i8 %frombool, ptr %tmp, align 1, !dbg !2175
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !2177
  %3 = load i8, ptr %tmp, align 1, !dbg !2175, !range !2138, !noundef !421
  %tobool1 = trunc i8 %3 to i1, !dbg !2175
  ret i1 %tobool1, !dbg !2178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @irq_work_queue_on(ptr noundef %work, i32 noundef %cpu) #0 align 16 !dbg !1939 {
entry:
  %retval = alloca i1, align 1
  %work.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %__ret_warn_on47 = alloca i32, align 4
  %__flags65 = alloca i32, align 4
  %tmp78 = alloca i64, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1943, metadata !DIExpression()), !dbg !2179
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1944, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1945, metadata !DIExpression()), !dbg !2181
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2181
  %call = call zeroext i1 @cpu_online(i32 noundef %0) #12, !dbg !2181
  %lnot = xor i1 %call, true, !dbg !2181
  %lnot1 = xor i1 %lnot, true, !dbg !2181
  %lnot2 = xor i1 %lnot1, true, !dbg !2181
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2181
  %conv = sext i32 %lnot.ext to i64, !dbg !2181
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2181
  %tobool = icmp ne i64 %expval, 0, !dbg !2181
  %lnot3 = xor i1 %tobool, true, !dbg !2181
  %lnot5 = xor i1 %lnot3, true, !dbg !2181
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2181
  store i32 %lnot.ext6, ptr %__ret_warn_on, align 4, !dbg !2181
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2182
  %tobool7 = icmp ne i32 %1, 0, !dbg !2182
  %lnot8 = xor i1 %tobool7, true, !dbg !2182
  %lnot10 = xor i1 %lnot8, true, !dbg !2182
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2182
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2182
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2182
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !2182
  br i1 %tobool14, label %if.then, label %if.end, !dbg !2181

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2182

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1947, metadata !DIExpression()), !dbg !2183
  store i32 2307, ptr %__flags, align 4, !dbg !2183
  br label %do.body15, !dbg !2183

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !2184

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !2184

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !2183

do.body16:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2186
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 144, i32 %2, i64 12) #13, !dbg !2186, !srcloc !2188
  br label %do.cond17, !dbg !2186

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2186

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !2183

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !2189

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2189

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2182
  br label %do.cond22, !dbg !2183

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !2183

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !2183

if.end:                                           ; preds = %do.end23, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2181
  %tobool24 = icmp ne i32 %3, 0, !dbg !2181
  %lnot25 = xor i1 %tobool24, true, !dbg !2181
  %lnot27 = xor i1 %lnot25, true, !dbg !2181
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2181
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2181
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2181
  store i64 %expval30, ptr %tmp, align 8, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2191
  %4 = load i64, ptr %tmp, align 8, !dbg !2181
  %5 = load ptr, ptr %work.addr, align 8, !dbg !2192
  %call31 = call zeroext i1 @irq_work_claim(ptr noundef %5) #12, !dbg !2194
  br i1 %call31, label %if.end33, label %if.then32, !dbg !2195

if.then32:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2196
  br label %return, !dbg !2196

if.end33:                                         ; preds = %if.end
  %6 = load ptr, ptr %work.addr, align 8, !dbg !2197
  call void @kasan_record_aux_stack_noalloc(ptr noundef %6) #12, !dbg !2198
  br label %do.body34, !dbg !2199

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !2200
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2200, !srcloc !2202
  br label %do.end36, !dbg !2200

do.end36:                                         ; preds = %do.body34
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !2203
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #12, !dbg !2204
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1950, metadata !DIExpression()), !dbg !2205
  br label %do.body38, !dbg !2205

do.body38:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1954, metadata !DIExpression()), !dbg !2206
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2206
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2205
  br label %do.cond39, !dbg !2206

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2206

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1956, metadata !DIExpression()), !dbg !2207
  %9 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !2207, !srcloc !2208
  store i32 %9, ptr %pfo_val__, align 4, !dbg !2207
  %10 = load i32, ptr %pfo_val__, align 4, !dbg !2207
  %conv42 = zext i32 %10 to i64, !dbg !2207
  %conv43 = trunc i64 %conv42 to i32, !dbg !2207
  store i32 %conv43, ptr %tmp41, align 4, !dbg !2207
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2205
  %11 = load i32, ptr %tmp41, align 4, !dbg !2207
  store i32 %11, ptr %pscr_ret__, align 4, !dbg !2205
  %12 = load i32, ptr %pscr_ret__, align 4, !dbg !2205
  store i32 %12, ptr %tmp44, align 4, !dbg !2205
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2204
  %13 = load i32, ptr %tmp44, align 4, !dbg !2205
  store i32 %13, ptr %tmp37, align 4, !dbg !2204
  %14 = load i32, ptr %tmp37, align 4, !dbg !2204
  %cmp = icmp ne i32 %7, %14, !dbg !2209
  br i1 %cmp, label %if.then46, label %if.else, !dbg !2210

if.then46:                                        ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on47) #13, !dbg !2211
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on47, metadata !1958, metadata !DIExpression()), !dbg !2211
  %call48 = call i32 @preempt_count() #12, !dbg !2211
  %conv49 = sext i32 %call48 to i64, !dbg !2211
  %and = and i64 %conv49, 15728640, !dbg !2211
  %tobool50 = icmp ne i64 %and, 0, !dbg !2211
  %lnot51 = xor i1 %tobool50, true, !dbg !2211
  %lnot53 = xor i1 %lnot51, true, !dbg !2211
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !2211
  store i32 %lnot.ext54, ptr %__ret_warn_on47, align 4, !dbg !2211
  %15 = load i32, ptr %__ret_warn_on47, align 4, !dbg !2212
  %tobool55 = icmp ne i32 %15, 0, !dbg !2212
  %lnot56 = xor i1 %tobool55, true, !dbg !2212
  %lnot58 = xor i1 %lnot56, true, !dbg !2212
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !2212
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !2212
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !2212
  %tobool62 = icmp ne i64 %expval61, 0, !dbg !2212
  br i1 %tobool62, label %if.then63, label %if.end77, !dbg !2211

if.then63:                                        ; preds = %if.then46
  br label %do.body64, !dbg !2212

do.body64:                                        ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags65) #13, !dbg !2213
  call void @llvm.dbg.declare(metadata ptr %__flags65, metadata !1961, metadata !DIExpression()), !dbg !2213
  store i32 2307, ptr %__flags65, align 4, !dbg !2213
  br label %do.body66, !dbg !2213

do.body66:                                        ; preds = %do.body64
  br label %do.cond67, !dbg !2214

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !2214

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !2213

do.body69:                                        ; preds = %do.end68
  %16 = load i32, ptr %__flags65, align 4, !dbg !2216
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 155, i32 %16, i64 12) #13, !dbg !2216, !srcloc !2218
  br label %do.cond70, !dbg !2216

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !2216

do.end71:                                         ; preds = %do.cond70
  br label %do.body72, !dbg !2213

do.body72:                                        ; preds = %do.end71
  br label %do.cond73, !dbg !2219

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !2219

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags65) #13, !dbg !2212
  br label %do.cond75, !dbg !2213

do.cond75:                                        ; preds = %do.end74
  br label %do.end76, !dbg !2213

do.end76:                                         ; preds = %do.cond75
  br label %if.end77, !dbg !2213

if.end77:                                         ; preds = %do.end76, %if.then46
  %17 = load i32, ptr %__ret_warn_on47, align 4, !dbg !2211
  %tobool79 = icmp ne i32 %17, 0, !dbg !2211
  %lnot80 = xor i1 %tobool79, true, !dbg !2211
  %lnot82 = xor i1 %lnot80, true, !dbg !2211
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !2211
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !2211
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !2211
  store i64 %expval85, ptr %tmp78, align 8, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on47) #13, !dbg !2221
  %18 = load i64, ptr %tmp78, align 8, !dbg !2211
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !2222
  %20 = load ptr, ptr %work.addr, align 8, !dbg !2223
  %node = getelementptr inbounds %struct.irq_work, ptr %20, i32 0, i32 0, !dbg !2224
  %llist = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 0, !dbg !2225
  call void @__smp_call_single_queue(i32 noundef %19, ptr noundef %llist) #12, !dbg !2226
  br label %if.end86, !dbg !2227

if.else:                                          ; preds = %do.end40
  %21 = load ptr, ptr %work.addr, align 8, !dbg !2228
  call void @__irq_work_queue_local(ptr noundef %21) #12, !dbg !2230
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.end77
  br label %out, !dbg !2231

out:                                              ; preds = %if.end86
  call void @llvm.dbg.label(metadata !1964), !dbg !2232
  br label %do.body87, !dbg !2233

do.body87:                                        ; preds = %out
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2234, !srcloc !2236
  %call88 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !2237
  %lnot89 = xor i1 %call88, true, !dbg !2237
  %lnot91 = xor i1 %lnot89, true, !dbg !2237
  %lnot.ext92 = zext i1 %lnot91 to i32, !dbg !2237
  %conv93 = sext i32 %lnot.ext92 to i64, !dbg !2237
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0), !dbg !2237
  %tobool95 = icmp ne i64 %expval94, 0, !dbg !2237
  br i1 %tobool95, label %if.then96, label %if.end100, !dbg !2234

if.then96:                                        ; preds = %do.body87
  br label %do.body97, !dbg !2237

do.body97:                                        ; preds = %if.then96
  %22 = call i64 @llvm.read_register.i64(metadata !2020), !dbg !2239
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #13, !dbg !2239, !srcloc !2241
  call void @llvm.write_register.i64(metadata !2020, i64 %23), !dbg !2239
  br label %do.end99, !dbg !2239

do.end99:                                         ; preds = %do.body97
  br label %if.end100, !dbg !2239

if.end100:                                        ; preds = %do.end99, %do.body87
  br label %do.end102, !dbg !2234

do.end102:                                        ; preds = %if.end100
  store i1 true, ptr %retval, align 1, !dbg !2242
  br label %return, !dbg !2242

return:                                           ; preds = %do.end102, %if.then32
  %24 = load i1, ptr %retval, align 1, !dbg !2243
  ret i1 %24, !dbg !2243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #7 align 16 !dbg !2244 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2248, metadata !DIExpression()), !dbg !2249
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2250
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !2251
  ret i1 %call, !dbg !2252
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_record_aux_stack_noalloc(ptr noundef %ptr) #7 align 16 !dbg !2253 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  ret void, !dbg !2260
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #2 align 16 !dbg !2261 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2266, metadata !DIExpression()), !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #2 align 16 !dbg !2269 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2273, metadata !DIExpression()), !dbg !2275
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2275, !srcloc !2276
  store i32 %0, ptr %pfo_val__, align 4, !dbg !2275
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !2275
  %conv = zext i32 %1 to i64, !dbg !2275
  %conv1 = trunc i64 %conv to i32, !dbg !2275
  store i32 %conv1, ptr %tmp, align 4, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2277
  %2 = load i32, ptr %tmp, align 4, !dbg !2275
  %and = and i32 %2, 2147483647, !dbg !2278
  ret i32 %and, !dbg !2279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2280 dso_local void @__smp_call_single_queue(i32 noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @irq_work_needs_cpu() #0 align 16 !dbg !2284 {
entry:
  %retval = alloca i1, align 1
  %raised = alloca ptr, align 8
  %lazy = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %tcp_ptr__7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify15 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %raised) #13, !dbg !2310
  call void @llvm.dbg.declare(metadata ptr %raised, metadata !2286, metadata !DIExpression()), !dbg !2311
  call void @llvm.lifetime.start.p0(i64 8, ptr %lazy) #13, !dbg !2310
  call void @llvm.dbg.declare(metadata ptr %lazy, metadata !2287, metadata !DIExpression()), !dbg !2312
  br label %do.body, !dbg !2313

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2288, metadata !DIExpression()), !dbg !2314
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2314
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2313
  br label %do.cond, !dbg !2314

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2314

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2291, metadata !DIExpression()), !dbg !2315
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @raised_list) #14, !dbg !2315, !srcloc !2316
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !2315
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !2315
  %3 = inttoptr i64 %2 to ptr, !dbg !2315
  store ptr %3, ptr %tmp1, align 8, !dbg !2315
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2313
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2315
  store ptr %4, ptr %tmp, align 8, !dbg !2314
  %5 = load ptr, ptr %tmp, align 8, !dbg !2313
  store ptr %5, ptr %raised, align 8, !dbg !2317
  br label %do.body2, !dbg !2318

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #13, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !2293, metadata !DIExpression()), !dbg !2319
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !2319
  %6 = load ptr, ptr %__vpp_verify3, align 8, !dbg !2319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #13, !dbg !2318
  br label %do.cond4, !dbg !2319

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !2319

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__7) #13, !dbg !2320
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__7, metadata !2296, metadata !DIExpression()), !dbg !2320
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @lazy_list) #14, !dbg !2320, !srcloc !2321
  store i64 %7, ptr %tcp_ptr__7, align 8, !dbg !2320
  %8 = load i64, ptr %tcp_ptr__7, align 8, !dbg !2320
  %9 = inttoptr i64 %8 to ptr, !dbg !2320
  store ptr %9, ptr %tmp8, align 8, !dbg !2320
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__7) #13, !dbg !2318
  %10 = load ptr, ptr %tmp8, align 8, !dbg !2320
  store ptr %10, ptr %tmp6, align 8, !dbg !2319
  %11 = load ptr, ptr %tmp6, align 8, !dbg !2318
  store ptr %11, ptr %lazy, align 8, !dbg !2322
  %12 = load ptr, ptr %raised, align 8, !dbg !2323
  %call = call zeroext i1 @llist_empty(ptr noundef %12) #12, !dbg !2325
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !2326

lor.lhs.false:                                    ; preds = %do.end5
  %call9 = call zeroext i1 @arch_irq_work_has_interrupt() #12, !dbg !2327
  br i1 %call9, label %if.then, label %if.end12, !dbg !2328

if.then:                                          ; preds = %lor.lhs.false, %do.end5
  %13 = load ptr, ptr %lazy, align 8, !dbg !2329
  %call10 = call zeroext i1 @llist_empty(ptr noundef %13) #12, !dbg !2331
  br i1 %call10, label %if.then11, label %if.end, !dbg !2332

if.then11:                                        ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !2333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2333

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !2334

if.end12:                                         ; preds = %if.end, %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2335
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2298, metadata !DIExpression()), !dbg !2335
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #12, !dbg !2336
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2337
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2300, metadata !DIExpression()), !dbg !2337
  br label %do.body14, !dbg !2337

do.body14:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify15) #13, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify15, metadata !2303, metadata !DIExpression()), !dbg !2338
  store ptr null, ptr %__vpp_verify15, align 8, !dbg !2338
  %14 = load ptr, ptr %__vpp_verify15, align 8, !dbg !2338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify15) #13, !dbg !2337
  br label %do.cond16, !dbg !2338

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !2338

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2339
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2305, metadata !DIExpression()), !dbg !2339
  %15 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !2339, !srcloc !2340
  store i32 %15, ptr %pfo_val__, align 4, !dbg !2339
  %16 = load i32, ptr %pfo_val__, align 4, !dbg !2339
  %conv = zext i32 %16 to i64, !dbg !2339
  %conv19 = trunc i64 %conv to i32, !dbg !2339
  store i32 %conv19, ptr %tmp18, align 4, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2337
  %17 = load i32, ptr %tmp18, align 4, !dbg !2339
  store i32 %17, ptr %pscr_ret__, align 4, !dbg !2337
  %18 = load i32, ptr %pscr_ret__, align 4, !dbg !2337
  store i32 %18, ptr %tmp20, align 4, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2336
  %19 = load i32, ptr %tmp20, align 4, !dbg !2337
  store i32 %19, ptr %tmp13, align 4, !dbg !2336
  %20 = load i32, ptr %tmp13, align 4, !dbg !2336
  %call21 = call zeroext i1 @cpu_online(i32 noundef %20) #12, !dbg !2335
  %lnot = xor i1 %call21, true, !dbg !2335
  %lnot22 = xor i1 %lnot, true, !dbg !2335
  %lnot23 = xor i1 %lnot22, true, !dbg !2335
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !2335
  %conv24 = sext i32 %lnot.ext to i64, !dbg !2335
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2335
  %tobool = icmp ne i64 %expval, 0, !dbg !2335
  %lnot25 = xor i1 %tobool, true, !dbg !2335
  %lnot27 = xor i1 %lnot25, true, !dbg !2335
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2335
  store i32 %lnot.ext28, ptr %__ret_warn_on, align 4, !dbg !2335
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !2341
  %tobool29 = icmp ne i32 %21, 0, !dbg !2341
  %lnot30 = xor i1 %tobool29, true, !dbg !2341
  %lnot32 = xor i1 %lnot30, true, !dbg !2341
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2341
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !2341
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !2341
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !2341
  br i1 %tobool36, label %if.then37, label %if.end50, !dbg !2335

if.then37:                                        ; preds = %do.end17
  br label %do.body38, !dbg !2341

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2307, metadata !DIExpression()), !dbg !2342
  store i32 2307, ptr %__flags, align 4, !dbg !2342
  br label %do.body39, !dbg !2342

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !2343

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !2343

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !2342

do.body42:                                        ; preds = %do.end41
  %22 = load i32, ptr %__flags, align 4, !dbg !2345
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 196, i32 %22, i64 12) #13, !dbg !2345, !srcloc !2347
  br label %do.cond43, !dbg !2345

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2345

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !2342

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !2348

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2348

do.end47:                                         ; preds = %do.cond46
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2341
  br label %do.cond48, !dbg !2342

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !2342

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !2342

if.end50:                                         ; preds = %do.end49, %do.end17
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !2335
  %tobool52 = icmp ne i32 %23, 0, !dbg !2335
  %lnot53 = xor i1 %tobool52, true, !dbg !2335
  %lnot55 = xor i1 %lnot53, true, !dbg !2335
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !2335
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !2335
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !2335
  store i64 %expval58, ptr %tmp51, align 8, !dbg !2341
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2350
  %24 = load i64, ptr %tmp51, align 8, !dbg !2335
  store i1 true, ptr %retval, align 1, !dbg !2351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2351

cleanup:                                          ; preds = %if.end50, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %lazy) #13, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %raised) #13, !dbg !2352
  %25 = load i1, ptr %retval, align 1, !dbg !2352
  ret i1 %25, !dbg !2352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_empty(ptr noundef %head) #7 align 16 !dbg !2353 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  br label %do.body, !dbg !2361

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2363

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2361
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !2361
  %1 = load volatile ptr, ptr %first, align 8, !dbg !2361
  store ptr %1, ptr %tmp, align 8, !dbg !2363
  %2 = load ptr, ptr %tmp, align 8, !dbg !2361
  %cmp = icmp eq ptr %2, null, !dbg !2365
  ret i1 %cmp, !dbg !2366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_irq_work_has_interrupt() #7 align 16 !dbg !2367 {
entry:
  %call = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !2369
  ret i1 %call, !dbg !2370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_work_single(ptr noundef %arg) #0 align 16 !dbg !2371 {
entry:
  %arg.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %flags = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #13, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %work, metadata !2374, metadata !DIExpression()), !dbg !2378
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !2379
  store ptr %0, ptr %work, align 8, !dbg !2378
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2375, metadata !DIExpression()), !dbg !2381
  %1 = load ptr, ptr %work, align 8, !dbg !2382
  %node = getelementptr inbounds %struct.irq_work, ptr %1, i32 0, i32 0, !dbg !2383
  %2 = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 1, !dbg !2384
  %call = call i32 @atomic_read(ptr noundef %2) #12, !dbg !2385
  store i32 %call, ptr %flags, align 4, !dbg !2386
  %3 = load i32, ptr %flags, align 4, !dbg !2387
  %and = and i32 %3, -2, !dbg !2387
  store i32 %and, ptr %flags, align 4, !dbg !2387
  %4 = load ptr, ptr %work, align 8, !dbg !2388
  %node1 = getelementptr inbounds %struct.irq_work, ptr %4, i32 0, i32 0, !dbg !2389
  %5 = getelementptr inbounds %struct.__call_single_node, ptr %node1, i32 0, i32 1, !dbg !2390
  %6 = load i32, ptr %flags, align 4, !dbg !2391
  call void @atomic_set(ptr noundef %5, i32 noundef %6) #12, !dbg !2392
  br label %do.body, !dbg !2393

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2394

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2396

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2396

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2394, !srcloc !2398
  br label %do.cond3, !dbg !2394

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2394

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !2399

do.body5:                                         ; preds = %do.end4
  br label %do.cond6, !dbg !2400

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2400

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %work, align 8, !dbg !2402
  %func = getelementptr inbounds %struct.irq_work, ptr %7, i32 0, i32 1, !dbg !2403
  %8 = load ptr, ptr %func, align 8, !dbg !2403
  %9 = load ptr, ptr %work, align 8, !dbg !2404
  call void %8(ptr noundef %9) #12, !dbg !2402
  br label %do.body8, !dbg !2405

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !2406

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2406

do.end10:                                         ; preds = %do.cond9
  %10 = load ptr, ptr %work, align 8, !dbg !2408
  %node11 = getelementptr inbounds %struct.irq_work, ptr %10, i32 0, i32 0, !dbg !2409
  %11 = getelementptr inbounds %struct.__call_single_node, ptr %node11, i32 0, i32 1, !dbg !2410
  %12 = load i32, ptr %flags, align 4, !dbg !2411
  %13 = load i32, ptr %flags, align 4, !dbg !2412
  %and12 = and i32 %13, -3, !dbg !2413
  %call13 = call i32 @atomic_cmpxchg(ptr noundef %11, i32 noundef %12, i32 noundef %and12) #12, !dbg !2414
  %call14 = call zeroext i1 @arch_irq_work_has_interrupt() #12, !dbg !2415
  br i1 %call14, label %if.end, label %if.then, !dbg !2417

if.then:                                          ; preds = %do.end10
  %14 = load ptr, ptr %work, align 8, !dbg !2418
  %irqwait = getelementptr inbounds %struct.irq_work, ptr %14, i32 0, i32 2, !dbg !2419
  %call15 = call i32 @rcuwait_wake_up(ptr noundef %irqwait) #12, !dbg !2420
  br label %if.end, !dbg !2420

if.end:                                           ; preds = %if.then, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #13, !dbg !2421
  ret void, !dbg !2421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !2422 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2429, metadata !DIExpression()), !dbg !2430
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2431
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !2432
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2433
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !2434
  ret i32 %call, !dbg !2435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !2436 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2441, metadata !DIExpression()), !dbg !2443
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2442, metadata !DIExpression()), !dbg !2444
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2445
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2446
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2447
  %2 = load i32, ptr %i.addr, align 4, !dbg !2448
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #12, !dbg !2449
  ret void, !dbg !2450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !2451 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2455, metadata !DIExpression()), !dbg !2458
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2456, metadata !DIExpression()), !dbg !2459
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2457, metadata !DIExpression()), !dbg !2460
  br label %do.body, !dbg !2461

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2462

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2464
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2465
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2466
  %2 = load i32, ptr %old.addr, align 4, !dbg !2467
  %3 = load i32, ptr %new.addr, align 4, !dbg !2468
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #12, !dbg !2469
  ret i32 %call, !dbg !2470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2471 dso_local i32 @rcuwait_wake_up(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_work_run() #0 align 16 !dbg !2475 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tcp_ptr__6 = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  br label %do.body, !dbg !2488

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2477, metadata !DIExpression()), !dbg !2489
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2489
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2488
  br label %do.end, !dbg !2489

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2490
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2480, metadata !DIExpression()), !dbg !2490
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @raised_list) #14, !dbg !2490, !srcloc !2491
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !2490
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !2490
  %3 = inttoptr i64 %2 to ptr, !dbg !2490
  store ptr %3, ptr %tmp1, align 8, !dbg !2490
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2488
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2490
  store ptr %4, ptr %tmp, align 8, !dbg !2489
  %5 = load ptr, ptr %tmp, align 8, !dbg !2488
  call void @irq_work_run_list(ptr noundef %5) #12, !dbg !2492
  br label %do.body2, !dbg !2493

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #13, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !2482, metadata !DIExpression()), !dbg !2494
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !2494
  %6 = load ptr, ptr %__vpp_verify3, align 8, !dbg !2494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #13, !dbg !2493
  br label %do.end4, !dbg !2494

do.end4:                                          ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__6) #13, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__6, metadata !2486, metadata !DIExpression()), !dbg !2495
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @lazy_list) #14, !dbg !2495, !srcloc !2496
  store i64 %7, ptr %tcp_ptr__6, align 8, !dbg !2495
  %8 = load i64, ptr %tcp_ptr__6, align 8, !dbg !2495
  %9 = inttoptr i64 %8 to ptr, !dbg !2495
  store ptr %9, ptr %tmp7, align 8, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__6) #13, !dbg !2493
  %10 = load ptr, ptr %tmp7, align 8, !dbg !2495
  store ptr %10, ptr %tmp5, align 8, !dbg !2494
  %11 = load ptr, ptr %tmp5, align 8, !dbg !2493
  call void @irq_work_run_list(ptr noundef %11) #12, !dbg !2497
  ret void, !dbg !2498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_work_run_list(ptr noundef %list) #0 align 16 !dbg !2499 {
entry:
  %list.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %llnode = alloca ptr, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr33 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2503, metadata !DIExpression()), !dbg !2525
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #13, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %work, metadata !2504, metadata !DIExpression()), !dbg !2527
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2505, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 8, ptr %llnode) #13, !dbg !2529
  call void @llvm.dbg.declare(metadata ptr %llnode, metadata !2506, metadata !DIExpression()), !dbg !2530
  br label %do.body, !dbg !2531

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2507, metadata !DIExpression()), !dbg !2532
  br label %do.body1, !dbg !2532

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !2533
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !2533
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2514, metadata !DIExpression()), !dbg !2533
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2533
  %conv = zext i1 %cmp to i32, !dbg !2533
  store i32 1, ptr %tmp2, align 4, !dbg !2533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !2534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !2534
  %0 = load i32, ptr %tmp2, align 4, !dbg !2533
  %call = call i64 @arch_local_save_flags() #12, !dbg !2534
  store i64 %call, ptr %_flags, align 8, !dbg !2534
  br label %do.cond, !dbg !2534

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2534

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #13, !dbg !2535
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !2515, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #13, !dbg !2535
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !2518, metadata !DIExpression()), !dbg !2535
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !2535
  %conv7 = zext i1 %cmp6 to i32, !dbg !2535
  store i32 1, ptr %tmp8, align 4, !dbg !2535
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #13, !dbg !2536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #13, !dbg !2536
  %1 = load i32, ptr %tmp8, align 4, !dbg !2535
  %2 = load i64, ptr %_flags, align 8, !dbg !2536
  %call10 = call i32 @arch_irqs_disabled_flags(i64 noundef %2) #12, !dbg !2536
  store i32 %call10, ptr %tmp9, align 4, !dbg !2536
  %3 = load i32, ptr %tmp9, align 4, !dbg !2536
  store i32 %3, ptr %tmp3, align 4, !dbg !2534
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !2537
  %4 = load i32, ptr %tmp3, align 4, !dbg !2532
  %tobool = icmp ne i32 %4, 0, !dbg !2537
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2537

land.rhs:                                         ; preds = %do.end
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %5 = phi i1 [ false, %do.end ], [ true, %land.rhs ], !dbg !2538
  %lnot = xor i1 %5, true, !dbg !2537
  %lnot11 = xor i1 %lnot, true, !dbg !2537
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !2537
  %conv12 = sext i32 %lnot.ext to i64, !dbg !2537
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2537
  %tobool13 = icmp ne i64 %expval, 0, !dbg !2537
  br i1 %tobool13, label %if.then, label %if.end, !dbg !2539

if.then:                                          ; preds = %land.end
  br label %do.body14, !dbg !2537

do.body14:                                        ; preds = %if.then
  br label %do.body15, !dbg !2540

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !2542

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2542

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !2540

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 245, i32 0, i64 12) #13, !dbg !2544, !srcloc !2546
  br label %do.cond19, !dbg !2544

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !2544

do.end20:                                         ; preds = %do.cond19
  unreachable, !dbg !2540

do.cond21:                                        ; No predecessors!
  br label %do.end22, !dbg !2540

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !2540

if.end:                                           ; preds = %do.end22, %land.end
  br label %do.cond23, !dbg !2539

do.cond23:                                        ; preds = %if.end
  br label %do.end24, !dbg !2539

do.end24:                                         ; preds = %do.cond23
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2547
  %call25 = call zeroext i1 @llist_empty(ptr noundef %6) #12, !dbg !2549
  br i1 %call25, label %if.then26, label %if.end27, !dbg !2550

if.then26:                                        ; preds = %do.end24
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2551

if.end27:                                         ; preds = %do.end24
  %7 = load ptr, ptr %list.addr, align 8, !dbg !2552
  %call28 = call ptr @llist_del_all(ptr noundef %7) #12, !dbg !2553
  store ptr %call28, ptr %llnode, align 8, !dbg !2554
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2519, metadata !DIExpression()), !dbg !2555
  %8 = load ptr, ptr %llnode, align 8, !dbg !2555
  store ptr %8, ptr %__mptr, align 8, !dbg !2555
  %9 = load ptr, ptr %__mptr, align 8, !dbg !2555
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !2555
  store ptr %add.ptr, ptr %tmp29, align 8, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2556
  %10 = load ptr, ptr %tmp29, align 8, !dbg !2555
  store ptr %10, ptr %work, align 8, !dbg !2556
  br label %for.cond, !dbg !2556

for.cond:                                         ; preds = %for.inc, %if.end27
  %11 = load ptr, ptr %work, align 8, !dbg !2557
  %12 = ptrtoint ptr %11 to i64, !dbg !2557
  %add = add i64 %12, 0, !dbg !2557
  %cmp30 = icmp ne i64 %add, 0, !dbg !2557
  br i1 %cmp30, label %land.rhs32, label %land.end36, !dbg !2557

land.rhs32:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr33) #13, !dbg !2558
  call void @llvm.dbg.declare(metadata ptr %__mptr33, metadata !2522, metadata !DIExpression()), !dbg !2558
  %13 = load ptr, ptr %work, align 8, !dbg !2558
  %node = getelementptr inbounds %struct.irq_work, ptr %13, i32 0, i32 0, !dbg !2558
  %llist = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 0, !dbg !2558
  %next = getelementptr inbounds %struct.llist_node, ptr %llist, i32 0, i32 0, !dbg !2558
  %14 = load ptr, ptr %next, align 8, !dbg !2558
  store ptr %14, ptr %__mptr33, align 8, !dbg !2558
  %15 = load ptr, ptr %__mptr33, align 8, !dbg !2558
  %add.ptr35 = getelementptr i8, ptr %15, i64 0, !dbg !2558
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !2558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr33) #13, !dbg !2557
  %16 = load ptr, ptr %tmp34, align 8, !dbg !2558
  store ptr %16, ptr %tmp, align 8, !dbg !2557
  br label %land.end36

land.end36:                                       ; preds = %land.rhs32, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ true, %land.rhs32 ], !dbg !2559
  br i1 %17, label %for.body, label %for.end, !dbg !2556

for.body:                                         ; preds = %land.end36
  %18 = load ptr, ptr %work, align 8, !dbg !2560
  call void @irq_work_single(ptr noundef %18) #12, !dbg !2561
  br label %for.inc, !dbg !2561

for.inc:                                          ; preds = %for.body
  %19 = load ptr, ptr %tmp, align 8, !dbg !2557
  store ptr %19, ptr %work, align 8, !dbg !2557
  br label %for.cond, !dbg !2557, !llvm.loop !2562

for.end:                                          ; preds = %land.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2566
  br label %cleanup, !dbg !2566

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %llnode) #13, !dbg !2566
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2566
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #13, !dbg !2566
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2566

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_work_tick() #0 align 16 !dbg !2567 {
entry:
  %raised = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tcp_ptr__8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %raised) #13, !dbg !2581
  call void @llvm.dbg.declare(metadata ptr %raised, metadata !2569, metadata !DIExpression()), !dbg !2582
  br label %do.body, !dbg !2583

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2570, metadata !DIExpression()), !dbg !2584
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2584
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2583
  br label %do.cond, !dbg !2584

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2584

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2573, metadata !DIExpression()), !dbg !2585
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @raised_list) #14, !dbg !2585, !srcloc !2586
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !2585
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !2585
  %3 = inttoptr i64 %2 to ptr, !dbg !2585
  store ptr %3, ptr %tmp1, align 8, !dbg !2585
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2583
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2585
  store ptr %4, ptr %tmp, align 8, !dbg !2584
  %5 = load ptr, ptr %tmp, align 8, !dbg !2583
  store ptr %5, ptr %raised, align 8, !dbg !2582
  %6 = load ptr, ptr %raised, align 8, !dbg !2587
  %call = call zeroext i1 @llist_empty(ptr noundef %6) #12, !dbg !2589
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !2590

land.lhs.true:                                    ; preds = %do.end
  %call2 = call zeroext i1 @arch_irq_work_has_interrupt() #12, !dbg !2591
  br i1 %call2, label %if.end, label %if.then, !dbg !2592

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %raised, align 8, !dbg !2593
  call void @irq_work_run_list(ptr noundef %7) #12, !dbg !2594
  br label %if.end, !dbg !2594

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  br label %do.body3, !dbg !2595

do.body3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !2596
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !2575, metadata !DIExpression()), !dbg !2596
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !2596
  %8 = load ptr, ptr %__vpp_verify4, align 8, !dbg !2596
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !2595
  br label %do.cond5, !dbg !2596

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !2596

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__8) #13, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__8, metadata !2579, metadata !DIExpression()), !dbg !2597
  %9 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @lazy_list) #14, !dbg !2597, !srcloc !2598
  store i64 %9, ptr %tcp_ptr__8, align 8, !dbg !2597
  %10 = load i64, ptr %tcp_ptr__8, align 8, !dbg !2597
  %11 = inttoptr i64 %10 to ptr, !dbg !2597
  store ptr %11, ptr %tmp9, align 8, !dbg !2597
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__8) #13, !dbg !2595
  %12 = load ptr, ptr %tmp9, align 8, !dbg !2597
  store ptr %12, ptr %tmp7, align 8, !dbg !2596
  %13 = load ptr, ptr %tmp7, align 8, !dbg !2595
  call void @irq_work_run_list(ptr noundef %13) #12, !dbg !2599
  call void @llvm.lifetime.end.p0(i64 8, ptr %raised) #13, !dbg !2600
  ret void, !dbg !2600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_work_sync(ptr noundef %work) #0 align 16 !dbg !2601 {
entry:
  %work.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2603, metadata !DIExpression()), !dbg !2619
  br label %do.body, !dbg !2620

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2623

do.body1:                                         ; preds = %do.end
  call void @might_resched() #12, !dbg !2624
  br label %do.end2, !dbg !2624

do.end2:                                          ; preds = %do.body1
  %call = call zeroext i1 @arch_irq_work_has_interrupt() #12, !dbg !2626
  br i1 %call, label %if.end31, label %if.then, !dbg !2627

if.then:                                          ; preds = %do.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #13, !dbg !2628
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2604, metadata !DIExpression()), !dbg !2628
  store i64 0, ptr %__ret, align 8, !dbg !2628
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2628
  %irqwait = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 2, !dbg !2628
  call void @prepare_to_rcuwait(ptr noundef %irqwait) #12, !dbg !2628
  br label %for.cond, !dbg !2628

for.cond:                                         ; preds = %if.end28, %if.then
  br label %do.body3, !dbg !2629

do.body3:                                         ; preds = %for.cond
  br label %do.body4, !dbg !2630

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !2631

do.cond:                                          ; preds = %do.body4
  br label %do.end5, !dbg !2631

do.end5:                                          ; preds = %do.cond
  br label %do.body6, !dbg !2630

do.body6:                                         ; preds = %do.end5
  br label %do.body7, !dbg !2633

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !2634

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2634

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !2633

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #13, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2608, metadata !DIExpression()), !dbg !2636
  %call11 = call ptr @get_current() #12, !dbg !2636
  %__state = getelementptr inbounds %struct.task_struct, ptr %call11, i32 0, i32 1, !dbg !2636
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2636
  br label %do.body12, !dbg !2636

do.body12:                                        ; preds = %do.body10
  br label %do.cond13, !dbg !2637

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2637

do.end14:                                         ; preds = %do.cond13
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !2636
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #12, !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret15) #13, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__ret15, metadata !2617, metadata !DIExpression()), !dbg !2639
  store i32 2, ptr %__ret15, align 4, !dbg !2639
  %2 = load i32, ptr %__ret15, align 4, !dbg !2639
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !2639
  %4 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %2, ptr elementtype(i32) %3) #13, !dbg !2639, !srcloc !2640
  store i32 %4, ptr %__ret15, align 4, !dbg !2639
  %5 = load i32, ptr %__ret15, align 4, !dbg !2639
  store i32 %5, ptr %tmp16, align 4, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret15) #13, !dbg !2636
  %6 = load i32, ptr %tmp16, align 4, !dbg !2639
  store i32 %6, ptr %tmp, align 4, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #13, !dbg !2641
  %7 = load i32, ptr %tmp, align 4, !dbg !2636
  br label %do.cond17, !dbg !2641

do.cond17:                                        ; preds = %do.end14
  br label %do.end18, !dbg !2641

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !2633

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2633

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !2630

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !2630

do.end22:                                         ; preds = %do.cond21
  %8 = load ptr, ptr %work.addr, align 8, !dbg !2642
  %call23 = call zeroext i1 @irq_work_is_busy(ptr noundef %8) #12, !dbg !2642
  br i1 %call23, label %if.end, label %if.then24, !dbg !2629

if.then24:                                        ; preds = %do.end22
  br label %for.end, !dbg !2642

if.end:                                           ; preds = %do.end22
  %call25 = call ptr @get_current() #12, !dbg !2644
  %call26 = call i32 @signal_pending_state(i32 noundef 2, ptr noundef %call25) #12, !dbg !2644
  %tobool = icmp ne i32 %call26, 0, !dbg !2644
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !2629

if.then27:                                        ; preds = %if.end
  store i64 -4, ptr %__ret, align 8, !dbg !2646
  br label %for.end, !dbg !2646

if.end28:                                         ; preds = %if.end
  call void @schedule() #12, !dbg !2629
  br label %for.cond, !dbg !2648, !llvm.loop !2649

for.end:                                          ; preds = %if.then27, %if.then24
  %9 = load ptr, ptr %work.addr, align 8, !dbg !2628
  %irqwait29 = getelementptr inbounds %struct.irq_work, ptr %9, i32 0, i32 2, !dbg !2628
  call void @finish_rcuwait(ptr noundef %irqwait29) #12, !dbg !2628
  %10 = load i64, ptr %__ret, align 8, !dbg !2628
  store i64 %10, ptr %tmp30, align 8, !dbg !2628
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #13, !dbg !2651
  %11 = load i64, ptr %tmp30, align 8, !dbg !2628
  br label %while.end, !dbg !2652

if.end31:                                         ; preds = %do.end2
  br label %while.cond, !dbg !2653

while.cond:                                       ; preds = %while.body, %if.end31
  %12 = load ptr, ptr %work.addr, align 8, !dbg !2654
  %call32 = call zeroext i1 @irq_work_is_busy(ptr noundef %12) #12, !dbg !2655
  br i1 %call32, label %while.body, label %while.end, !dbg !2653

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #12, !dbg !2656
  br label %while.cond, !dbg !2653, !llvm.loop !2657

while.end:                                        ; preds = %for.end, %while.cond
  ret void, !dbg !2659
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #2 align 16 !dbg !2016 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !2660
  %0 = load ptr, ptr %tmp, align 8, !dbg !2660
  %call = call i32 %0() #12, !dbg !2662
  ret void, !dbg !2663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prepare_to_rcuwait(ptr noundef %w) #7 align 16 !dbg !2664 {
entry:
  %w.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2668, metadata !DIExpression()), !dbg !2671
  br label %do.body, !dbg !2672

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2669, metadata !DIExpression()), !dbg !2673
  %call = call ptr @get_current() #12, !dbg !2673
  %0 = ptrtoint ptr %call to i64, !dbg !2673
  store i64 %0, ptr %_r_a_p__v, align 8, !dbg !2673
  br label %do.body1, !dbg !2674

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !2676

do.body2:                                         ; preds = %do.body1
  br label %do.cond, !dbg !2678

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2678

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2676

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2680

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2682

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2682

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2680, !srcloc !2684
  br label %do.body7, !dbg !2680

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !2685

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !2687

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2687

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2685

do.body11:                                        ; preds = %do.end10
  %1 = load i64, ptr %_r_a_p__v, align 8, !dbg !2689
  %2 = inttoptr i64 %1 to ptr, !dbg !2689
  %3 = load ptr, ptr %w.addr, align 8, !dbg !2689
  %task = getelementptr inbounds %struct.rcuwait, ptr %3, i32 0, i32 0, !dbg !2689
  store volatile ptr %2, ptr %task, align 8, !dbg !2689
  br label %do.cond12, !dbg !2689

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2689

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !2685

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2685

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !2680

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2680

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !2676

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2676

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !2672
  br label %do.end21, !dbg !2673

do.end21:                                         ; preds = %do.end19
  ret void, !dbg !2691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !2692 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2697, metadata !DIExpression()), !dbg !2703
  br label %do.body, !dbg !2703

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2704
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2699, metadata !DIExpression()), !dbg !2704
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2704
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2704
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2703
  br label %do.cond, !dbg !2704

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2704

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2701, metadata !DIExpression()), !dbg !2705
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !2705, !srcloc !2706
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2705
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2705
  %3 = inttoptr i64 %2 to ptr, !dbg !2705
  store ptr %3, ptr %tmp, align 8, !dbg !2705
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !2703
  %4 = load ptr, ptr %tmp, align 8, !dbg !2705
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2703
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2703
  store ptr %5, ptr %tmp1, align 8, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2707
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2703
  ret ptr %6, !dbg !2708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !2709 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2717, metadata !DIExpression()), !dbg !2719
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2718, metadata !DIExpression()), !dbg !2720
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2721
  %1 = load i64, ptr %size.addr, align 8, !dbg !2722
  %conv = trunc i64 %1 to i32, !dbg !2722
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !2723
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2724
  %3 = load i64, ptr %size.addr, align 8, !dbg !2724
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !2724
  ret void, !dbg !2725
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_work_is_busy(ptr noundef %work) #7 align 16 !dbg !2726 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2730
  %node = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 0, !dbg !2731
  %1 = getelementptr inbounds %struct.__call_single_node, ptr %node, i32 0, i32 1, !dbg !2732
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !2733
  %and = and i32 %call, 2, !dbg !2734
  %tobool = icmp ne i32 %and, 0, !dbg !2733
  ret i1 %tobool, !dbg !2735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending_state(i32 noundef %state, ptr noundef %p) #7 align 16 !dbg !2736 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2740, metadata !DIExpression()), !dbg !2742
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2741, metadata !DIExpression()), !dbg !2743
  %0 = load i32, ptr %state.addr, align 4, !dbg !2744
  %and = and i32 %0, 257, !dbg !2746
  %tobool = icmp ne i32 %and, 0, !dbg !2746
  br i1 %tobool, label %if.end, label %if.then, !dbg !2747

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2749
  %call = call i32 @signal_pending(ptr noundef %1) #12, !dbg !2751
  %tobool1 = icmp ne i32 %call, 0, !dbg !2751
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2752

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2753
  br label %return, !dbg !2753

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !2754
  %and4 = and i32 %2, 1, !dbg !2755
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2755
  br i1 %tobool5, label %lor.end, label %lor.rhs, !dbg !2756

lor.rhs:                                          ; preds = %if.end3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2757
  %call6 = call i32 @__fatal_signal_pending(ptr noundef %3) #12, !dbg !2758
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2756
  br label %lor.end, !dbg !2756

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %4 = phi i1 [ true, %if.end3 ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !2756
  store i32 %lor.ext, ptr %retval, align 4, !dbg !2759
  br label %return, !dbg !2759

return:                                           ; preds = %lor.end, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2760
  ret i32 %5, !dbg !2760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2761 dso_local void @schedule() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2762 dso_local void @finish_rcuwait(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !2763 {
entry:
  call void @rep_nop() #12, !dbg !2765
  ret void, !dbg !2766
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_irq_work__291_327_irq_work_init_threadsearly() #9 section ".init.text" align 16 !dbg !2767 {
entry:
  %call = call i32 @irq_work_init_threads() #16, !dbg !2768
  ret i32 %call, !dbg !2768
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @irq_work_init_threads() #9 section ".init.text" align 16 !dbg !2769 {
entry:
  ret i32 0, !dbg !2770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !2771 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2775, metadata !DIExpression()), !dbg !2777
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2776, metadata !DIExpression()), !dbg !2778
  br label %do.body, !dbg !2779

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2780

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2782
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2783
  %1 = load i32, ptr %i.addr, align 4, !dbg !2784
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2785
  %call = call i32 @raw_atomic_fetch_or(i32 noundef %1, ptr noundef %2) #12, !dbg !2786
  ret i32 %call, !dbg !2787
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !2788 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2791, metadata !DIExpression()), !dbg !2793
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2792, metadata !DIExpression()), !dbg !2794
  %0 = load i32, ptr %i.addr, align 4, !dbg !2795
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2796
  %call = call i32 @arch_atomic_fetch_or(i32 noundef %0, ptr noundef %1) #12, !dbg !2797
  ret i32 %call, !dbg !2798
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !2799 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2802, metadata !DIExpression()), !dbg !2805
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2804, metadata !DIExpression()), !dbg !2808
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2809
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !2810
  store i32 %call, ptr %val, align 4, !dbg !2808
  br label %do.body, !dbg !2811

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !2812

do.cond:                                          ; preds = %do.body
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2814
  %2 = load i32, ptr %val, align 4, !dbg !2815
  %3 = load i32, ptr %i.addr, align 4, !dbg !2816
  %or = or i32 %2, %3, !dbg !2817
  %call1 = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %1, ptr noundef %val, i32 noundef %or) #12, !dbg !2818
  %lnot = xor i1 %call1, true, !dbg !2819
  br i1 %lnot, label %do.body, label %do.end, !dbg !2812, !llvm.loop !2820

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %val, align 4, !dbg !2822
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !2823
  ret i32 %4, !dbg !2824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !2825 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2827, metadata !DIExpression()), !dbg !2828
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2829
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2829
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2829
  ret i32 %1, !dbg !2830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !2831 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2835, metadata !DIExpression()), !dbg !2844
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2836, metadata !DIExpression()), !dbg !2845
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2837, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #13, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2838, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #13, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2840, metadata !DIExpression()), !dbg !2847
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2847
  store ptr %0, ptr %_old, align 8, !dbg !2847
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #13, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2841, metadata !DIExpression()), !dbg !2847
  %1 = load ptr, ptr %_old, align 8, !dbg !2847
  %2 = load i32, ptr %1, align 4, !dbg !2847
  store i32 %2, ptr %__old, align 4, !dbg !2847
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #13, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2842, metadata !DIExpression()), !dbg !2847
  %3 = load i32, ptr %new.addr, align 4, !dbg !2847
  store i32 %3, ptr %__new, align 4, !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2843, metadata !DIExpression()), !dbg !2847
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2847
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2847
  store ptr %counter, ptr %__ptr, align 8, !dbg !2847
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2847
  %6 = load i32, ptr %__old, align 4, !dbg !2847
  %7 = load i32, ptr %__new, align 4, !dbg !2847
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #13, !dbg !2847, !srcloc !2848
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !2847
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !2847
  %9 = icmp ult i8 %asmresult, 2, !dbg !2847
  call void @llvm.assume(i1 %9), !dbg !2847
  store i8 %asmresult, ptr %success, align 1, !dbg !2847
  store i32 %asmresult1, ptr %__old, align 4, !dbg !2847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !2847
  %10 = load i8, ptr %success, align 1, !dbg !2849, !range !2138, !noundef !421
  %tobool = trunc i8 %10 to i1, !dbg !2849
  %lnot = xor i1 %tobool, true, !dbg !2849
  %lnot2 = xor i1 %lnot, true, !dbg !2849
  %lnot3 = xor i1 %lnot2, true, !dbg !2849
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2849
  %conv = sext i32 %lnot.ext to i64, !dbg !2849
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2849
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2849
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !2849
  %12 = load ptr, ptr %_old, align 8, !dbg !2849
  store i32 %11, ptr %12, align 4, !dbg !2849
  br label %if.end, !dbg !2849

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2847, !range !2138, !noundef !421
  %tobool5 = trunc i8 %13 to i1, !dbg !2847
  %lnot6 = xor i1 %tobool5, true, !dbg !2847
  %lnot8 = xor i1 %lnot6, true, !dbg !2847
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2847
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2847
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2847
  store i64 %expval11, ptr %tmp, align 8, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #13, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #13, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #13, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #13, !dbg !2851
  %14 = load i64, ptr %tmp, align 8, !dbg !2847
  %tobool12 = icmp ne i64 %14, 0, !dbg !2851
  ret i1 %tobool12, !dbg !2852
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_add(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !2853 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2857, metadata !DIExpression()), !dbg !2859
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2858, metadata !DIExpression()), !dbg !2860
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2861
  %1 = load ptr, ptr %new.addr, align 8, !dbg !2862
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2863
  %call = call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !2864
  ret i1 %call, !dbg !2865
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2866 dso_local zeroext i1 @tick_nohz_tick_stopped() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_work_raise(ptr noundef %work) #2 align 16 !dbg !2868 {
entry:
  %work.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2870, metadata !DIExpression()), !dbg !2879
  %call = call zeroext i1 @trace_ipi_send_cpu_enabled() #12, !dbg !2880
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2881

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @arch_irq_work_has_interrupt() #12, !dbg !2882
  br i1 %call1, label %if.then, label %if.end, !dbg !2883

if.then:                                          ; preds = %land.lhs.true
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #12, !dbg !2884
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2871, metadata !DIExpression()), !dbg !2885
  br label %do.body, !dbg !2885

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2875, metadata !DIExpression()), !dbg !2886
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2886
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2886
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2885
  br label %do.cond, !dbg !2886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2886

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2877, metadata !DIExpression()), !dbg !2887
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !2887, !srcloc !2888
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2887
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2887
  %conv = zext i32 %2 to i64, !dbg !2887
  %conv3 = trunc i64 %conv to i32, !dbg !2887
  store i32 %conv3, ptr %tmp2, align 4, !dbg !2887
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2885
  %3 = load i32, ptr %tmp2, align 4, !dbg !2887
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2885
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2885
  store i32 %4, ptr %tmp4, align 4, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2884
  %5 = load i32, ptr %tmp4, align 4, !dbg !2885
  store i32 %5, ptr %tmp, align 4, !dbg !2884
  %6 = load i32, ptr %tmp, align 4, !dbg !2884
  %7 = call ptr @llvm.returnaddress(i32 0), !dbg !2889
  %8 = ptrtoint ptr %7 to i64, !dbg !2889
  %9 = load ptr, ptr %work.addr, align 8, !dbg !2890
  %func = getelementptr inbounds %struct.irq_work, ptr %9, i32 0, i32 1, !dbg !2891
  %10 = load ptr, ptr %func, align 8, !dbg !2891
  call void @trace_ipi_send_cpu(i32 noundef %6, i64 noundef %8, ptr noundef %10) #12, !dbg !2892
  br label %if.end, !dbg !2892

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  call void @arch_irq_work_raise() #12, !dbg !2893
  ret void, !dbg !2894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2895 dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_ipi_send_cpu_enabled() #7 align 16 !dbg !2898 {
entry:
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_send_cpu, i32 0, i32 1)) #12, !dbg !2899
  ret i1 %call, !dbg !2899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_ipi_send_cpu(i32 noundef %cpu, i64 noundef %callsite, ptr noundef %callback) #7 align 16 !dbg !1983 {
entry:
  %cpu.addr = alloca i32, align 4
  %callsite.addr = alloca i64, align 8
  %callback.addr = alloca ptr, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu254 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1988, metadata !DIExpression()), !dbg !2900
  store i64 %callsite, ptr %callsite.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callsite.addr, metadata !1989, metadata !DIExpression()), !dbg !2900
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !1990, metadata !DIExpression()), !dbg !2900
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_send_cpu, i32 0, i32 1)) #12, !dbg !2901
  br i1 %call, label %if.then, label %if.end68, !dbg !2900

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2901

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #13, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !1991, metadata !DIExpression()), !dbg !2902
  store i32 0, ptr %__idx, align 4, !dbg !2902
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1994, metadata !DIExpression()), !dbg !2903
  br label %do.body1, !dbg !2903

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1997, metadata !DIExpression()), !dbg !2904
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2904
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2903
  br label %do.cond, !dbg !2904

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2904

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2905
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1999, metadata !DIExpression()), !dbg !2905
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !2905, !srcloc !2906
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2905
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2905
  %conv = zext i32 %2 to i64, !dbg !2905
  %conv2 = trunc i64 %conv to i32, !dbg !2905
  store i32 %conv2, ptr %tmp, align 4, !dbg !2905
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2903
  %3 = load i32, ptr %tmp, align 4, !dbg !2905
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2903
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2903
  store i32 %4, ptr %tmp3, align 4, !dbg !2903
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2907
  %5 = load i32, ptr %tmp3, align 4, !dbg !2903
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !2907
  br i1 %call4, label %if.end, label %if.then5, !dbg !2902

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2907

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2001, metadata !DIExpression()), !dbg !2908
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2908
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2909
  %tobool = icmp ne i32 %6, 0, !dbg !2909
  %lnot = xor i1 %tobool, true, !dbg !2909
  %lnot6 = xor i1 %lnot, true, !dbg !2909
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2909
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2909
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2909
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2909
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2908

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2909

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2004, metadata !DIExpression()), !dbg !2910
  store i32 2307, ptr %__flags, align 4, !dbg !2910
  br label %do.body11, !dbg !2910

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2911

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2911

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2910

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2913
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 58, i32 %7, i64 12) #13, !dbg !2913, !srcloc !2915
  br label %do.cond15, !dbg !2913

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2913

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2910

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2916

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2916

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2909
  br label %do.cond20, !dbg !2910

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2910

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2910

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2908
  %tobool24 = icmp ne i32 %8, 0, !dbg !2908
  %lnot25 = xor i1 %tobool24, true, !dbg !2908
  %lnot27 = xor i1 %lnot25, true, !dbg !2908
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2908
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2908
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2908
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2909
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2918
  %9 = load i64, ptr %tmp23, align 8, !dbg !2908
  %tobool31 = icmp ne i64 %9, 0, !dbg !2918
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2902

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2918

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2902

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !2919
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2919, !srcloc !2921
  br label %do.cond35, !dbg !2919

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2919

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2902

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #13, !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2007, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #13, !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2009, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu254) #13, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu254, metadata !2010, metadata !DIExpression()), !dbg !2923
  br label %do.body38, !dbg !2924

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2926

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2926

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_send_cpu, i32 0, i32 8), align 8, !dbg !2924
  store ptr %10, ptr %tmp41, align 8, !dbg !2926
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2924
  store ptr %11, ptr %__UNIQUE_ID_rcu254, align 8, !dbg !2923
  %12 = load ptr, ptr %__UNIQUE_ID_rcu254, align 8, !dbg !2923
  store ptr %12, ptr %tmp42, align 8, !dbg !2923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu254) #13, !dbg !2922
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2923
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2922
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2928
  %tobool43 = icmp ne ptr %14, null, !dbg !2928
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2922

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2930
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2930
  %16 = load ptr, ptr %data, align 8, !dbg !2930
  store ptr %16, ptr %__data, align 8, !dbg !2930
  store ptr @__SCT__tp_func_ipi_send_cpu, ptr %tmp45, align 8, !dbg !2932
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2932
  %18 = load ptr, ptr %__data, align 8, !dbg !2930
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !2930
  %20 = load i64, ptr %callsite.addr, align 8, !dbg !2930
  %21 = load ptr, ptr %callback.addr, align 8, !dbg !2930
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i64 noundef %20, ptr noundef %21) #12, !dbg !2930
  br label %if.end47, !dbg !2930

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #13, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #13, !dbg !2902
  br label %do.cond48, !dbg !2922

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2922

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2902

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2934, !srcloc !2936
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !2937
  %lnot52 = xor i1 %call51, true, !dbg !2937
  %lnot54 = xor i1 %lnot52, true, !dbg !2937
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2937
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2937
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2937
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2937
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2934

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2937

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !2020), !dbg !2939
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #13, !dbg !2939, !srcloc !2941
  call void @llvm.write_register.i64(metadata !2020, i64 %23), !dbg !2939
  br label %do.cond61, !dbg !2939

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2939

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2939

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2934

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2934

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2901
  br label %cleanup, !dbg !2901

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #13, !dbg !2901
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2902

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2902

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2900

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !2942 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2967
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !2968
  ret i1 %call, !dbg !2969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !2970 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2975, metadata !DIExpression()), !dbg !2978
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2976, metadata !DIExpression()), !dbg !2979
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2980
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2981, !range !2138, !noundef !421
  %tobool = trunc i8 %1 to i1, !dbg !2981
  %conv = zext i1 %tobool to i32, !dbg !2981
  %or = or i32 2, %conv, !dbg !2982
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !2983, !srcloc !2984

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2985
  br label %return, !dbg !2985

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2977), !dbg !2986
  store i1 true, ptr %retval, align 1, !dbg !2987
  br label %return, !dbg !2987

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2988
  ret i1 %2, !dbg !2988
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ipi_send_cpu(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #2 align 16 !dbg !2989 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2993, metadata !DIExpression()), !dbg !2995
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2994, metadata !DIExpression()), !dbg !2996
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2997
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !2997
  %conv = zext i32 %call to i64, !dbg !2997
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2997
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2997
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2997
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !2997
  ret i1 %call1, !dbg !2998
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !2999 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3007, metadata !DIExpression()), !dbg !3009
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3008, metadata !DIExpression()), !dbg !3010
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3011
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3012
  %div = udiv i64 %1, 64, !dbg !3012
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3013
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !3014
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3015
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3016
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3017
  ret i1 %call, !dbg !3018
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #2 align 16 !dbg !3019 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3023, metadata !DIExpression()), !dbg !3024
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3025
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !3026
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3027
  ret i32 %1, !dbg !3028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !3029 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3031, metadata !DIExpression()), !dbg !3033
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3032, metadata !DIExpression()), !dbg !3034
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3035
  %1 = load i64, ptr %size.addr, align 8, !dbg !3036
  %conv = trunc i64 %1 to i32, !dbg !3036
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !3037
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3038
  %3 = load i64, ptr %size.addr, align 8, !dbg !3038
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !3038
  ret void, !dbg !3039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3040 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3043, metadata !DIExpression()), !dbg !3045
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3044, metadata !DIExpression()), !dbg !3046
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3047
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3048
  br i1 %1, label %cond.true, label %cond.false, !dbg !3048

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3049
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3050
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3051
  %conv = zext i1 %call to i32, !dbg !3051
  br label %cond.end, !dbg !3048

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3052
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3053
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !3054
  %conv2 = zext i1 %call1 to i32, !dbg !3054
  br label %cond.end, !dbg !3048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3048
  %tobool = icmp ne i32 %cond, 0, !dbg !3048
  ret i1 %tobool, !dbg !3055
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !3056 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3061, metadata !DIExpression()), !dbg !3063
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3062, metadata !DIExpression()), !dbg !3064
  ret i1 true, !dbg !3065
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !3066 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3071, metadata !DIExpression()), !dbg !3074
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3072, metadata !DIExpression()), !dbg !3075
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3073, metadata !DIExpression()), !dbg !3076
  ret void, !dbg !3077
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3078 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3082, metadata !DIExpression()), !dbg !3084
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3083, metadata !DIExpression()), !dbg !3085
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3086
  %and = and i64 %0, 63, !dbg !3087
  %shl = shl i64 1, %and, !dbg !3088
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3089
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3090
  %shr = ashr i64 %2, 6, !dbg !3091
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3089
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3089
  %and1 = and i64 %shl, %3, !dbg !3092
  %cmp = icmp ne i64 %and1, 0, !dbg !3093
  ret i1 %cmp, !dbg !3094
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3095 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3097, metadata !DIExpression()), !dbg !3100
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3099, metadata !DIExpression()), !dbg !3103
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3104
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3105
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !3106, !srcloc !3107
  %3 = icmp ult i8 %2, 2, !dbg !3106
  call void @llvm.assume(i1 %3), !dbg !3106
  store i8 %2, ptr %oldbit, align 1, !dbg !3106
  %4 = load i8, ptr %oldbit, align 1, !dbg !3108, !range !2138, !noundef !421
  %tobool = trunc i8 %4 to i1, !dbg !3108
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !3109
  ret i1 %tobool, !dbg !3110
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #2 align 16 !dbg !3111 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3115, metadata !DIExpression()), !dbg !3117
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3116, metadata !DIExpression()), !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !3120 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3124
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !3125
  ret i32 %call, !dbg !3126
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !3127 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3129, metadata !DIExpression()), !dbg !3131
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3130, metadata !DIExpression()), !dbg !3132
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3133
  %1 = load i64, ptr %size.addr, align 8, !dbg !3134
  %conv = trunc i64 %1 to i32, !dbg !3134
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !3135
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3136
  %3 = load i64, ptr %size.addr, align 8, !dbg !3136
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !3138 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3140, metadata !DIExpression()), !dbg !3142
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3141, metadata !DIExpression()), !dbg !3143
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3144
  %1 = load i32, ptr %i.addr, align 4, !dbg !3145
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #12, !dbg !3146
  ret void, !dbg !3147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !3148 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3150, metadata !DIExpression()), !dbg !3152
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3151, metadata !DIExpression()), !dbg !3153
  ret i1 true, !dbg !3154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !3155 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3157, metadata !DIExpression()), !dbg !3159
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3158, metadata !DIExpression()), !dbg !3160
  br label %do.body, !dbg !3161

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !3162
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3162
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3162
  store volatile i32 %0, ptr %counter, align 4, !dbg !3162
  br label %do.end, !dbg !3162

do.end:                                           ; preds = %do.body
  ret void, !dbg !3164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !3165 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3167, metadata !DIExpression()), !dbg !3170
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3168, metadata !DIExpression()), !dbg !3171
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3169, metadata !DIExpression()), !dbg !3172
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3173
  %1 = load i32, ptr %old.addr, align 4, !dbg !3174
  %2 = load i32, ptr %new.addr, align 4, !dbg !3175
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !3176
  ret i32 %call, !dbg !3177
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !3178 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3180, metadata !DIExpression()), !dbg !3188
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3181, metadata !DIExpression()), !dbg !3189
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3182, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3183, metadata !DIExpression()), !dbg !3191
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3185, metadata !DIExpression()), !dbg !3191
  %0 = load i32, ptr %old.addr, align 4, !dbg !3191
  store i32 %0, ptr %__old, align 4, !dbg !3191
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3186, metadata !DIExpression()), !dbg !3191
  %1 = load i32, ptr %new.addr, align 4, !dbg !3191
  store i32 %1, ptr %__new, align 4, !dbg !3191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3187, metadata !DIExpression()), !dbg !3191
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3191
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3191
  store ptr %counter, ptr %__ptr, align 8, !dbg !3191
  %3 = load ptr, ptr %__ptr, align 8, !dbg !3191
  %4 = load i32, ptr %__new, align 4, !dbg !3191
  %5 = load i32, ptr %__old, align 4, !dbg !3191
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #13, !dbg !3191, !srcloc !3192
  store i32 %6, ptr %__ret, align 4, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !3191
  %7 = load i32, ptr %__ret, align 4, !dbg !3191
  store i32 %7, ptr %tmp, align 4, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #13, !dbg !3193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #13, !dbg !3193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !3193
  %8 = load i32, ptr %tmp, align 4, !dbg !3191
  ret i32 %8, !dbg !3194
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #2 align 16 !dbg !3195 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !3199
  ret i64 %call, !dbg !3200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #2 align 16 !dbg !3201 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3207
  %and = and i64 %0, 512, !dbg !3208
  %tobool = icmp ne i64 %and, 0, !dbg !3209
  %lnot = xor i1 %tobool, true, !dbg !3209
  %lnot.ext = zext i1 %lnot to i32, !dbg !3209
  ret i32 %lnot.ext, !dbg !3210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @llist_del_all(ptr noundef %head) #7 align 16 !dbg !3211 {
entry:
  %head.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3215, metadata !DIExpression()), !dbg !3221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #13, !dbg !3222
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3216, metadata !DIExpression()), !dbg !3222
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3222
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !3222
  store ptr %first, ptr %__ai_ptr, align 8, !dbg !3222
  br label %do.body, !dbg !3222

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3223

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3223

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !3222
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #12, !dbg !3222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #13, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3219, metadata !DIExpression()), !dbg !3225
  store ptr null, ptr %__ret, align 8, !dbg !3225
  %2 = load ptr, ptr %__ret, align 8, !dbg !3225
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !3225
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #13, !dbg !3225, !srcloc !3226
  store ptr %4, ptr %__ret, align 8, !dbg !3225
  %5 = load ptr, ptr %__ret, align 8, !dbg !3225
  store ptr %5, ptr %tmp1, align 8, !dbg !3225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #13, !dbg !3222
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3225
  store ptr %6, ptr %tmp, align 8, !dbg !3222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #13, !dbg !3227
  %7 = load ptr, ptr %tmp, align 8, !dbg !3222
  ret ptr %7, !dbg !3228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #2 align 16 !dbg !3229 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !3232
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3231, metadata !DIExpression()), !dbg !3233
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !3234, !srcloc !3235
  %0 = load i64, ptr %flags, align 8, !dbg !3236
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3237
  ret i64 %0, !dbg !3238
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #7 align 16 !dbg !3239 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3243, metadata !DIExpression()), !dbg !3244
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3245
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #12, !dbg !3245
  %tobool = icmp ne i32 %call, 0, !dbg !3245
  %lnot = xor i1 %tobool, true, !dbg !3245
  %lnot1 = xor i1 %lnot, true, !dbg !3245
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3245
  %conv = sext i32 %lnot.ext to i64, !dbg !3245
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3245
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3245
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3247

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3248
  br label %return, !dbg !3248

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3249
  %call3 = call i32 @task_sigpending(ptr noundef %1) #12, !dbg !3250
  store i32 %call3, ptr %retval, align 4, !dbg !3251
  br label %return, !dbg !3251

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3252
  ret i32 %2, !dbg !3252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #7 align 16 !dbg !3253 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3257
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !3257
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !3257
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #12, !dbg !3257
  %tobool = icmp ne i32 %call, 0, !dbg !3257
  %lnot = xor i1 %tobool, true, !dbg !3257
  %lnot1 = xor i1 %lnot, true, !dbg !3257
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3257
  %conv = sext i32 %lnot.ext to i64, !dbg !3257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3257
  %conv2 = trunc i64 %expval to i32, !dbg !3257
  ret i32 %conv2, !dbg !3258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #7 align 16 !dbg !3259 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3263, metadata !DIExpression()), !dbg !3265
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3264, metadata !DIExpression()), !dbg !3266
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3267
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !3267
  %1 = load i32, ptr %flag.addr, align 4, !dbg !3268
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #12, !dbg !3269
  ret i32 %call, !dbg !3270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #7 align 16 !dbg !3271 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3275
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #12, !dbg !3275
  %tobool = icmp ne i32 %call, 0, !dbg !3275
  %lnot = xor i1 %tobool, true, !dbg !3275
  %lnot1 = xor i1 %lnot, true, !dbg !3275
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3275
  %conv = sext i32 %lnot.ext to i64, !dbg !3275
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3275
  %conv2 = trunc i64 %expval to i32, !dbg !3275
  ret i32 %conv2, !dbg !3276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #7 align 16 !dbg !3277 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !3283, metadata !DIExpression()), !dbg !3285
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3284, metadata !DIExpression()), !dbg !3286
  %0 = load i32, ptr %flag.addr, align 4, !dbg !3287
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3287
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3287

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !3287
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !3287
  %3 = ptrtoint ptr %flags to i64, !dbg !3287
  %cmp = icmp ne i64 %3, 0, !dbg !3287
  %conv = zext i1 %cmp to i32, !dbg !3287
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3287
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !3287

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !3287
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !3287
  %6 = ptrtoint ptr %flags2 to i64, !dbg !3287
  %cmp3 = icmp ne i64 %6, 0, !dbg !3287
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !3287

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !3287
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !3287
  %8 = load i64, ptr %flags6, align 8, !dbg !3287
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3287
  br i1 %9, label %cond.true, label %cond.false, !dbg !3287

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !3287
  %conv7 = sext i32 %10 to i64, !dbg !3287
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !3287
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !3287
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #12, !dbg !3287
  %conv9 = zext i1 %call to i32, !dbg !3287
  br label %cond.end, !dbg !3287

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !3287
  %conv10 = sext i32 %12 to i64, !dbg !3287
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !3287
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !3287
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #12, !dbg !3287
  %conv13 = zext i1 %call12 to i32, !dbg !3287
  br label %cond.end, !dbg !3287

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !3287
  ret i32 %cond, !dbg !3288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3289 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3292, metadata !DIExpression()), !dbg !3297
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !3299
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3294, metadata !DIExpression()), !dbg !3300
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3301
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3302
  %div = udiv i64 %1, 64, !dbg !3302
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3303
  store ptr %add.ptr, ptr %p, align 8, !dbg !3300
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !3304
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3295, metadata !DIExpression()), !dbg !3305
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3306
  %rem = urem i64 %2, 64, !dbg !3306
  %shl = shl i64 1, %rem, !dbg !3306
  store i64 %shl, ptr %mask, align 8, !dbg !3305
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !3307
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3296, metadata !DIExpression()), !dbg !3308
  %3 = load ptr, ptr %p, align 8, !dbg !3309
  %4 = load i64, ptr %3, align 8, !dbg !3310
  store i64 %4, ptr %val, align 8, !dbg !3308
  %5 = load i64, ptr %val, align 8, !dbg !3311
  %6 = load i64, ptr %mask, align 8, !dbg !3312
  %and = and i64 %5, %6, !dbg !3313
  %tobool = icmp ne i64 %and, 0, !dbg !3314
  %lnot = xor i1 %tobool, true, !dbg !3314
  %lnot1 = xor i1 %lnot, true, !dbg !3315
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !3316
  ret i1 %lnot1, !dbg !3317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #7 align 16 !dbg !3318 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3324, metadata !DIExpression()), !dbg !3327
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #13, !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !3326, metadata !DIExpression()), !dbg !3330
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !3331
  %sub = sub i32 %0, 1, !dbg !3332
  %conv = sext i32 %sub to i64, !dbg !3331
  store i64 %conv, ptr %sig, align 8, !dbg !3330
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3333
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !3335
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !3333
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3333
  %3 = load i64, ptr %sig, align 8, !dbg !3336
  %shr = lshr i64 %2, %3, !dbg !3337
  %and = and i64 1, %shr, !dbg !3338
  %conv2 = trunc i64 %and to i32, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #13, !dbg !3340
  ret i32 %conv2, !dbg !3341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !3342 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !3343, !srcloc !3344
  ret void, !dbg !3345
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { nounwind memory(read) }
attributes #15 = { nounwind memory(none) }
attributes #16 = { cold noredzone }

!llvm.dbg.cu = !{!1874}
!llvm.named.register.rsp = !{!2020}
!llvm.module.flags = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!llvm.ident = !{!2029}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule286", scope: !2, file: !3, line: 125, type: !67, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "irq_work_queue", scope: !3, file: !3, line: 116, type: !4, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2018)
!3 = !DIFile(filename: "kernel/irq_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2383770391bc0d27827314c7e3b7f56")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !7, line: 35, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !11, line: 17, size: 256, elements: !12)
!11 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!12 = !{!13, !41, !45}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !10, file: !11, line: 18, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !15, line: 58, size: 128, elements: !16)
!15 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!16 = !{!17, !23, !34, !40}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !14, file: !15, line: 59, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !19, line: 60, size: 64, elements: !20)
!19 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !19, line: 61, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, scope: !14, file: !15, line: 60, baseType: !24, size: 32, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 60, size: 32, elements: !25)
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !24, file: !15, line: 61, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !24, file: !15, line: 62, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !7, line: 174, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 172, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !30, file: !7, line: 173, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !14, file: !15, line: 65, baseType: !35, size: 16, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !14, file: !15, line: 65, baseType: !35, size: 16, offset: 112)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !10, file: !11, line: 19, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !9}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !10, file: !11, line: 20, baseType: !46, size: 64, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !47, line: 16, size: 64, elements: !48)
!47 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !46, file: !47, line: 17, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !52, line: 746, size: 58368, elements: !53)
!52 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!53 = !{!54, !65, !66, !68, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !150, !161, !293, !297, !300, !331, !332, !333, !334, !345, !347, !348, !349, !350, !351, !352, !363, !364, !367, !368, !369, !370, !371, !372, !373, !374, !381, !382, !389, !390, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !700, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !756, !758, !759, !760, !772, !774, !775, !776, !777, !778, !779, !785, !786, !787, !788, !789, !790, !791, !805, !811, !1009, !1010, !1011, !1012, !1016, !1019, !1026, !1031, !1034, !1037, !1040, !1043, !1188, !1219, !1220, !1221, !1222, !1223, !1224, !1227, !1228, !1229, !1232, !1233, !1234, !1243, !1251, !1252, !1253, !1254, !1255, !1260, !1261, !1262, !1265, !1266, !1269, !1272, !1275, !1278, !1281, !1282, !1369, !1370, !1371, !1372, !1373, !1379, !1380, !1381, !1382, !1385, !1386, !1389, !1392, !1393, !1396, !1397, !1398, !1401, !1402, !1403, !1406, !1407, !1408, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1440, !1443, !1511, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1523, !1601, !1603, !1604, !1605, !1606, !1607, !1619, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1649, !1650, !1651}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !51, file: !52, line: 752, baseType: !55, size: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !56, line: 56, size: 192, elements: !57)
!56 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!57 = !{!58, !60, !61, !64}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !56, line: 57, baseType: !59, size: 64)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !55, file: !56, line: 58, baseType: !59, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !55, file: !56, line: 59, baseType: !62, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !27)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !55, file: !56, line: 61, baseType: !62, size: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !51, file: !52, line: 754, baseType: !27, size: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !51, file: !52, line: 767, baseType: !67, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !51, file: !52, line: 768, baseType: !69, size: 32, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !70, line: 113, baseType: !71)
!70 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !70, line: 111, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !71, file: !70, line: 112, baseType: !29, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !52, line: 770, baseType: !27, size: 32, offset: 352)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !51, file: !52, line: 771, baseType: !27, size: 32, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !51, file: !52, line: 774, baseType: !33, size: 32, offset: 416)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !51, file: !52, line: 775, baseType: !14, size: 128, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !51, file: !52, line: 776, baseType: !27, size: 32, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !51, file: !52, line: 777, baseType: !59, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !51, file: !52, line: 778, baseType: !50, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !51, file: !52, line: 787, baseType: !33, size: 32, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !51, file: !52, line: 788, baseType: !33, size: 32, offset: 800)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !51, file: !52, line: 790, baseType: !33, size: 32, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !51, file: !52, line: 792, baseType: !33, size: 32, offset: 864)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !51, file: !52, line: 793, baseType: !33, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !51, file: !52, line: 794, baseType: !33, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !51, file: !52, line: 795, baseType: !27, size: 32, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !51, file: !52, line: 797, baseType: !89, size: 2048, offset: 1024)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !52, line: 551, size: 2048, elements: !90)
!90 = !{!91, !96, !104, !108, !109, !115, !116, !117, !118, !119, !120, !124, !125, !126, !127, !129, !132, !133, !134}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !89, file: !52, line: 553, baseType: !92, size: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !52, line: 411, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !92, file: !52, line: 412, baseType: !59, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !92, file: !52, line: 413, baseType: !62, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !89, file: !52, line: 554, baseType: !97, size: 192, align: 64, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !98, line: 5, size: 192, align: 64, elements: !99)
!98 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!99 = !{!100, !101, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !97, file: !98, line: 6, baseType: !59, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !97, file: !98, line: 7, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !97, file: !98, line: 8, baseType: !102, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !89, file: !52, line: 555, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !107)
!107 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !89, file: !52, line: 556, baseType: !105, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !89, file: !52, line: 558, baseType: !110, size: 128, offset: 448)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !7, line: 190, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !7, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !7, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !89, file: !52, line: 559, baseType: !27, size: 32, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !89, file: !52, line: 561, baseType: !105, size: 64, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !89, file: !52, line: 562, baseType: !105, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !89, file: !52, line: 563, baseType: !105, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !89, file: !52, line: 564, baseType: !105, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !89, file: !52, line: 565, baseType: !121, size: 64, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !36, line: 22, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !38, line: 30, baseType: !123)
!123 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !89, file: !52, line: 566, baseType: !105, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !89, file: !52, line: 568, baseType: !105, size: 64, offset: 1024)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !89, file: !52, line: 571, baseType: !33, size: 32, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !52, line: 572, baseType: !128, size: 64, offset: 1152)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !89, file: !52, line: 574, baseType: !130, size: 64, offset: 1216)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !52, line: 49, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !89, file: !52, line: 576, baseType: !130, size: 64, offset: 1280)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !89, file: !52, line: 578, baseType: !59, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !89, file: !52, line: 588, baseType: !135, size: 512, align: 512, offset: 1536)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !52, line: 497, size: 512, align: 512, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !135, file: !52, line: 498, baseType: !105, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !135, file: !52, line: 499, baseType: !105, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !135, file: !52, line: 500, baseType: !105, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !135, file: !52, line: 501, baseType: !62, size: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !135, file: !52, line: 502, baseType: !62, size: 32, offset: 224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !135, file: !52, line: 503, baseType: !59, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !135, file: !52, line: 504, baseType: !59, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !135, file: !52, line: 505, baseType: !59, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !135, file: !52, line: 506, baseType: !146, size: 64, align: 64, offset: 448)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !52, line: 445, size: 64, align: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !146, file: !52, line: 446, baseType: !27, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !146, file: !52, line: 447, baseType: !27, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !51, file: !52, line: 798, baseType: !151, size: 384, offset: 3072)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !52, line: 592, size: 384, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !151, file: !52, line: 593, baseType: !110, size: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !151, file: !52, line: 594, baseType: !59, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !151, file: !52, line: 595, baseType: !59, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !151, file: !52, line: 596, baseType: !27, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !151, file: !52, line: 597, baseType: !39, size: 16, offset: 288)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !151, file: !52, line: 598, baseType: !39, size: 16, offset: 304)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !151, file: !52, line: 600, baseType: !160, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !51, file: !52, line: 799, baseType: !162, size: 1792, offset: 3456)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !52, line: 610, size: 1792, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !290, !291}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !162, file: !52, line: 611, baseType: !97, size: 192, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !162, file: !52, line: 618, baseType: !105, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !162, file: !52, line: 619, baseType: !105, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !162, file: !52, line: 620, baseType: !105, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !162, file: !52, line: 621, baseType: !105, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !162, file: !52, line: 622, baseType: !105, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !162, file: !52, line: 629, baseType: !121, size: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !162, file: !52, line: 630, baseType: !105, size: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !52, line: 631, baseType: !27, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !162, file: !52, line: 653, baseType: !27, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !162, file: !52, line: 654, baseType: !27, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !162, file: !52, line: 655, baseType: !27, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !162, file: !52, line: 656, baseType: !27, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !162, file: !52, line: 662, baseType: !178, size: 512, offset: 704)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !179, line: 118, size: 512, elements: !180)
!179 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!180 = !{!181, !189, !190, !199, !286, !287, !288, !289}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !179, line: 119, baseType: !182, size: 256)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !183, line: 9, size: 256, elements: !184)
!183 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !183, line: 10, baseType: !97, size: 192, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !182, file: !183, line: 11, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !188, line: 29, baseType: !121)
!188 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !178, file: !179, line: 120, baseType: !187, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !178, file: !179, line: 121, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !198}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !179, line: 65, baseType: !27, size: 32, elements: !195)
!195 = !{!196, !197}
!196 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!197 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !178, file: !179, line: 122, baseType: !200, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !179, line: 159, size: 512, align: 512, elements: !202)
!202 = !{!203, !254, !255, !259, !269, !270, !281, !285}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !201, file: !179, line: 160, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !179, line: 215, size: 4608, align: 512, elements: !206)
!206 = !{!207, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !205, file: !179, line: 216, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 23, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !209, line: 14, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !210, file: !209, line: 15, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !214, line: 44, baseType: !215)
!214 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !214, line: 14, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 15, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 15, size: 32, elements: !219)
!219 = !{!220, !221, !229}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !218, file: !214, line: 16, baseType: !29, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !214, line: 24, baseType: !222, size: 16)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !214, line: 24, size: 16, elements: !223)
!223 = !{!224, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !222, file: !214, line: 25, baseType: !225, size: 8)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !227)
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !222, file: !214, line: 26, baseType: !225, size: 8, offset: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !214, line: 28, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !214, line: 28, size: 32, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !230, file: !214, line: 29, baseType: !35, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !230, file: !214, line: 30, baseType: !35, size: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !205, file: !179, line: 217, baseType: !27, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !205, file: !179, line: 218, baseType: !27, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !205, file: !179, line: 219, baseType: !27, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !205, file: !179, line: 220, baseType: !27, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !205, file: !179, line: 221, baseType: !27, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !205, file: !179, line: 222, baseType: !27, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !205, file: !179, line: 223, baseType: !27, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !205, file: !179, line: 224, baseType: !27, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !205, file: !179, line: 226, baseType: !27, size: 32, offset: 160)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !205, file: !179, line: 227, baseType: !39, size: 16, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !205, file: !179, line: 228, baseType: !39, size: 16, offset: 208)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !205, file: !179, line: 229, baseType: !27, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !205, file: !179, line: 235, baseType: !187, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !205, file: !179, line: 236, baseType: !198, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !205, file: !179, line: 237, baseType: !187, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !205, file: !179, line: 238, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !205, file: !179, line: 239, baseType: !251, size: 4096, align: 512, offset: 512)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 4096, align: 512, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !201, file: !179, line: 161, baseType: !27, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !201, file: !179, line: 162, baseType: !256, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !7, line: 32, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !258, line: 96, baseType: !33)
!258 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !201, file: !179, line: 163, baseType: !260, size: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !261, line: 274, baseType: !262)
!261 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !261, line: 274, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !262, file: !261, line: 274, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !261, line: 69, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !261, line: 64, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !266, file: !261, line: 65, baseType: !27, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !201, file: !179, line: 164, baseType: !198, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !201, file: !179, line: 165, baseType: !271, size: 128, offset: 256)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !183, line: 14, size: 128, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !271, file: !183, line: 15, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !98, line: 26, size: 128, elements: !275)
!275 = !{!276, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !274, file: !98, line: 27, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !98, line: 12, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !277, file: !98, line: 13, baseType: !102, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !274, file: !98, line: 28, baseType: !102, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !201, file: !179, line: 166, baseType: !282, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!187}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !201, file: !179, line: 167, baseType: !187, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !178, file: !179, line: 123, baseType: !225, size: 8, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !178, file: !179, line: 124, baseType: !225, size: 8, offset: 456)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !178, file: !179, line: 125, baseType: !225, size: 8, offset: 464)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !178, file: !179, line: 126, baseType: !225, size: 8, offset: 472)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !162, file: !52, line: 671, baseType: !178, size: 512, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !162, file: !52, line: 679, baseType: !292, size: 64, offset: 1728)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !51, file: !52, line: 800, baseType: !294, size: 64, offset: 5248)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !52, line: 800, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !51, file: !52, line: 809, baseType: !298, size: 64, offset: 5312)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !52, line: 70, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !51, file: !52, line: 825, baseType: !301, size: 2048, align: 512, offset: 5632)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !52, line: 509, size: 2048, align: 512, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !301, file: !52, line: 511, baseType: !105, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !301, file: !52, line: 512, baseType: !105, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !301, file: !52, line: 513, baseType: !105, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !301, file: !52, line: 514, baseType: !105, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !301, file: !52, line: 515, baseType: !105, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !301, file: !52, line: 516, baseType: !105, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !301, file: !52, line: 518, baseType: !105, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !301, file: !52, line: 519, baseType: !105, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !301, file: !52, line: 520, baseType: !121, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !301, file: !52, line: 522, baseType: !105, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !301, file: !52, line: 523, baseType: !105, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !301, file: !52, line: 524, baseType: !121, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !301, file: !52, line: 526, baseType: !121, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !301, file: !52, line: 527, baseType: !105, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !301, file: !52, line: 529, baseType: !105, size: 64, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !301, file: !52, line: 530, baseType: !105, size: 64, offset: 960)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !301, file: !52, line: 531, baseType: !105, size: 64, offset: 1024)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !301, file: !52, line: 532, baseType: !105, size: 64, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !301, file: !52, line: 533, baseType: !105, size: 64, offset: 1152)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !301, file: !52, line: 535, baseType: !105, size: 64, offset: 1216)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !301, file: !52, line: 536, baseType: !105, size: 64, offset: 1280)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !301, file: !52, line: 537, baseType: !105, size: 64, offset: 1344)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !301, file: !52, line: 538, baseType: !105, size: 64, offset: 1408)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !301, file: !52, line: 539, baseType: !105, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !301, file: !52, line: 540, baseType: !105, size: 64, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !301, file: !52, line: 541, baseType: !105, size: 64, offset: 1600)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !301, file: !52, line: 542, baseType: !105, size: 64, offset: 1664)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !301, file: !52, line: 543, baseType: !105, size: 64, offset: 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !51, file: !52, line: 833, baseType: !27, size: 32, offset: 7680)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !51, file: !52, line: 836, baseType: !27, size: 32, offset: 7712)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !51, file: !52, line: 837, baseType: !33, size: 32, offset: 7744)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !51, file: !52, line: 838, baseType: !335, size: 64, offset: 7808)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !338, line: 19, baseType: !339)
!338 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !338, line: 19, size: 64, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !339, file: !338, line: 19, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 1)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !51, file: !52, line: 839, baseType: !346, size: 64, offset: 7872)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !51, file: !52, line: 840, baseType: !337, size: 64, offset: 7936)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !51, file: !52, line: 841, baseType: !67, size: 64, offset: 8000)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !51, file: !52, line: 843, baseType: !39, size: 16, offset: 8064)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !51, file: !52, line: 845, baseType: !39, size: 16, offset: 8080)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !51, file: !52, line: 848, baseType: !33, size: 32, offset: 8096)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !51, file: !52, line: 849, baseType: !353, size: 32, offset: 8128)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !52, line: 718, size: 32, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !353, file: !52, line: 724, baseType: !356, size: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !52, line: 719, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !356, file: !52, line: 720, baseType: !225, size: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !356, file: !52, line: 721, baseType: !225, size: 8, offset: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !356, file: !52, line: 722, baseType: !225, size: 8, offset: 16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !356, file: !52, line: 723, baseType: !225, size: 8, offset: 24)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !353, file: !52, line: 725, baseType: !62, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !51, file: !52, line: 850, baseType: !110, size: 128, offset: 8192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !51, file: !52, line: 851, baseType: !365, size: 64, offset: 8320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !52, line: 60, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !51, file: !52, line: 855, baseType: !59, size: 64, offset: 8384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !51, file: !52, line: 856, baseType: !225, size: 8, offset: 8448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !51, file: !52, line: 857, baseType: !225, size: 8, offset: 8456)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !51, file: !52, line: 858, baseType: !33, size: 32, offset: 8480)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !51, file: !52, line: 859, baseType: !110, size: 128, offset: 8512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !51, file: !52, line: 860, baseType: !33, size: 32, offset: 8640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !51, file: !52, line: 861, baseType: !110, size: 128, offset: 8704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !51, file: !52, line: 873, baseType: !375, size: 256, offset: 8832)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !52, line: 376, size: 256, elements: !376)
!376 = !{!377, !378, !379, !380}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !375, file: !52, line: 381, baseType: !59, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !375, file: !52, line: 384, baseType: !107, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !375, file: !52, line: 389, baseType: !107, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !375, file: !52, line: 392, baseType: !107, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !51, file: !52, line: 875, baseType: !110, size: 128, offset: 9088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !51, file: !52, line: 877, baseType: !383, size: 320, offset: 9216)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !384, line: 86, size: 320, elements: !385)
!384 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !383, file: !384, line: 87, baseType: !33, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !383, file: !384, line: 88, baseType: !110, size: 128, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !383, file: !384, line: 89, baseType: !110, size: 128, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !51, file: !52, line: 878, baseType: !97, size: 192, align: 64, offset: 9536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !51, file: !52, line: 881, baseType: !391, size: 64, offset: 9728)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !393, line: 733, size: 10240, elements: !394)
!393 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!394 = !{!395, !611}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !393, line: 734, baseType: !396, size: 10240)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 734, size: 10240, elements: !397)
!397 = !{!398, !402, !424, !431, !432, !433, !434, !435, !436, !444, !445, !446, !452, !453, !460, !461, !462, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !503, !517, !520, !576, !577, !578, !581, !585, !586, !589, !590, !591, !598, !599}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !393, line: 739, baseType: !399, size: 512, align: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !393, line: 739, size: 512, align: 512, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !399, file: !393, line: 747, baseType: !29, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !396, file: !393, line: 750, baseType: !403, size: 128, offset: 512)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !404, line: 218, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!405 = !{!406, !422, !423}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 219, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 219, size: 32, elements: !408)
!408 = !{!409, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !407, file: !404, line: 220, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !411, line: 29, baseType: !412)
!411 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !411, line: 17, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !411, line: 18, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !411, line: 18, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !415, file: !411, line: 19, baseType: !210, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !407, file: !404, line: 221, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !404, line: 197, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 197, elements: !421)
!421 = !{}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !403, file: !404, line: 223, baseType: !27, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !403, file: !404, line: 224, baseType: !67, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !396, file: !393, line: 752, baseType: !425, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!59, !428, !59, !59, !59, !59}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !430, line: 537, flags: DIFlagFwdDecl)
!430 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !396, file: !393, line: 756, baseType: !59, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !396, file: !393, line: 757, baseType: !59, size: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !396, file: !393, line: 760, baseType: !59, size: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !396, file: !393, line: 761, baseType: !59, size: 64, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !396, file: !393, line: 763, baseType: !59, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !396, file: !393, line: 764, baseType: !437, size: 64, offset: 1024)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !430, line: 299, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 299, size: 64, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !439, file: !430, line: 299, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !443, line: 18, baseType: !59)
!443 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!444 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !396, file: !393, line: 773, baseType: !29, size: 32, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !396, file: !393, line: 785, baseType: !29, size: 32, offset: 1120)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !396, file: !393, line: 795, baseType: !447, size: 64, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !393, line: 726, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !448, file: !393, line: 727, baseType: !105, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !448, file: !393, line: 728, baseType: !33, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !396, file: !393, line: 801, baseType: !59, size: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !396, file: !393, line: 804, baseType: !454, size: 64, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !455, line: 13, baseType: !456)
!455 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !7, line: 181, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 179, size: 64, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !457, file: !7, line: 180, baseType: !121, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !396, file: !393, line: 806, baseType: !33, size: 32, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !396, file: !393, line: 808, baseType: !410, size: 32, offset: 1376)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !396, file: !393, line: 823, baseType: !463, size: 320, offset: 1408)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !464, line: 48, size: 320, elements: !465)
!464 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!465 = !{!466, !467, !468, !473, !474}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !464, line: 49, baseType: !454, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !463, file: !464, line: 55, baseType: !454, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !463, file: !464, line: 57, baseType: !469, size: 32, offset: 128)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !470, line: 15, size: 32, elements: !471)
!470 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !469, file: !470, line: 20, baseType: !29, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !463, file: !464, line: 59, baseType: !208, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !463, file: !464, line: 60, baseType: !110, size: 128, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !396, file: !393, line: 825, baseType: !110, size: 128, offset: 1728)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !396, file: !393, line: 845, baseType: !33, size: 32, offset: 1856)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !396, file: !393, line: 849, baseType: !59, size: 64, offset: 1920)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !396, file: !393, line: 850, baseType: !59, size: 64, offset: 1984)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !396, file: !393, line: 852, baseType: !59, size: 64, offset: 2048)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !396, file: !393, line: 853, baseType: !59, size: 64, offset: 2112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !396, file: !393, line: 854, baseType: !456, size: 64, offset: 2176)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !396, file: !393, line: 855, baseType: !59, size: 64, offset: 2240)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !396, file: !393, line: 856, baseType: !59, size: 64, offset: 2304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !396, file: !393, line: 857, baseType: !59, size: 64, offset: 2368)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !396, file: !393, line: 858, baseType: !59, size: 64, offset: 2432)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !396, file: !393, line: 865, baseType: !265, size: 32, offset: 2496)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !396, file: !393, line: 867, baseType: !410, size: 32, offset: 2528)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !396, file: !393, line: 869, baseType: !59, size: 64, offset: 2560)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !396, file: !393, line: 869, baseType: !59, size: 64, offset: 2624)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !396, file: !393, line: 869, baseType: !59, size: 64, offset: 2688)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !396, file: !393, line: 869, baseType: !59, size: 64, offset: 2752)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !396, file: !393, line: 870, baseType: !59, size: 64, offset: 2816)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !396, file: !393, line: 870, baseType: !59, size: 64, offset: 2880)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !396, file: !393, line: 870, baseType: !59, size: 64, offset: 2944)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !396, file: !393, line: 871, baseType: !59, size: 64, offset: 3008)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !396, file: !393, line: 871, baseType: !59, size: 64, offset: 3072)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !396, file: !393, line: 871, baseType: !59, size: 64, offset: 3136)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !396, file: !393, line: 871, baseType: !59, size: 64, offset: 3200)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !396, file: !393, line: 873, baseType: !500, size: 3328, offset: 3264)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 52)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !396, file: !393, line: 875, baseType: !504, size: 1280, offset: 6592)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1280, elements: !515)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !506, line: 22, size: 320, elements: !507)
!506 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !505, file: !506, line: 23, baseType: !208, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !505, file: !506, line: 24, baseType: !121, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !505, file: !506, line: 26, baseType: !110, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !505, file: !506, line: 28, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !36, line: 20, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !38, line: 26, baseType: !33)
!515 = !{!516}
!516 = !DISubrange(count: 4)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !396, file: !393, line: 877, baseType: !518, size: 64, offset: 7872)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !393, line: 877, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !396, file: !393, line: 880, baseType: !521, size: 1088, offset: 7936)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !522, line: 72, baseType: !523)
!522 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 23, size: 1088, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !532, !533, !541, !542, !570, !571, !572}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !523, file: !522, line: 28, baseType: !105, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !523, file: !522, line: 38, baseType: !456, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !523, file: !522, line: 40, baseType: !59, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !523, file: !522, line: 43, baseType: !463, size: 320, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !523, file: !522, line: 44, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !522, line: 44, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !522, line: 48, baseType: !59, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !523, file: !522, line: 59, baseType: !534, size: 256, offset: 640)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !535, line: 66, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !534, file: !535, line: 67, baseType: !454, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !534, file: !535, line: 68, baseType: !208, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !534, file: !535, line: 70, baseType: !469, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !534, file: !535, line: 72, baseType: !110, size: 128, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !523, file: !522, line: 60, baseType: !67, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !523, file: !522, line: 61, baseType: !543, size: 64, offset: 960)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !546, line: 13, size: 1216, elements: !547)
!546 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!547 = !{!548, !549, !550, !551, !552, !553, !554, !557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !545, file: !546, line: 14, baseType: !67, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !545, file: !546, line: 15, baseType: !59, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !545, file: !546, line: 17, baseType: !59, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !545, file: !546, line: 17, baseType: !59, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !545, file: !546, line: 18, baseType: !59, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !545, file: !546, line: 18, baseType: !59, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !545, file: !546, line: 19, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !545, file: !546, line: 21, baseType: !558, size: 64, offset: 448)
!558 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !545, file: !546, line: 23, baseType: !558, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !545, file: !546, line: 24, baseType: !558, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !545, file: !546, line: 25, baseType: !558, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !545, file: !546, line: 26, baseType: !558, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !545, file: !546, line: 27, baseType: !558, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !545, file: !546, line: 28, baseType: !558, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !545, file: !546, line: 29, baseType: !558, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !545, file: !546, line: 30, baseType: !558, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !545, file: !546, line: 31, baseType: !558, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !545, file: !546, line: 32, baseType: !558, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !545, file: !546, line: 33, baseType: !558, size: 64, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !523, file: !522, line: 63, baseType: !29, size: 32, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !523, file: !522, line: 69, baseType: !35, size: 16, offset: 1056)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !523, file: !522, line: 70, baseType: !573, size: 16, offset: 1072)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !36, line: 18, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !38, line: 23, baseType: !575)
!575 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !393, line: 882, baseType: !59, size: 64, offset: 9024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !396, file: !393, line: 885, baseType: !410, size: 32, offset: 9088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !396, file: !393, line: 886, baseType: !579, size: 64, offset: 9152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !393, line: 732, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !396, file: !393, line: 901, baseType: !582, size: 64, offset: 9216)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !584, line: 18, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !396, file: !393, line: 904, baseType: !428, size: 64, offset: 9280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !396, file: !393, line: 906, baseType: !587, size: 64, offset: 9344)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !393, line: 906, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !396, file: !393, line: 930, baseType: !29, size: 32, offset: 9408)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !396, file: !393, line: 933, baseType: !29, size: 32, offset: 9440)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !396, file: !393, line: 935, baseType: !592, size: 64, offset: 9472)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !593, line: 103, size: 64, elements: !594)
!593 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !592, file: !593, line: 104, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !593, line: 101, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !396, file: !393, line: 940, baseType: !454, size: 64, offset: 9536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !396, file: !393, line: 942, baseType: !600, size: 256, offset: 9600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !601, line: 98, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!602 = !{!603, !604, !605}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !600, file: !601, line: 99, baseType: !454, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !600, file: !601, line: 100, baseType: !110, size: 128, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !600, file: !601, line: 101, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !601, line: 21, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !392, file: !393, line: 986, baseType: !612, offset: 10240)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: -1)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !51, file: !52, line: 882, baseType: !391, size: 64, offset: 9792)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !51, file: !52, line: 884, baseType: !33, size: 32, offset: 9856)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !51, file: !52, line: 885, baseType: !33, size: 32, offset: 9888)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !51, file: !52, line: 886, baseType: !33, size: 32, offset: 9920)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !51, file: !52, line: 888, baseType: !33, size: 32, offset: 9952)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !51, file: !52, line: 890, baseType: !59, size: 64, offset: 9984)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !51, file: !52, line: 893, baseType: !27, size: 32, offset: 10048)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !51, file: !52, line: 896, baseType: !27, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !51, file: !52, line: 897, baseType: !27, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !51, file: !52, line: 898, baseType: !27, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !51, file: !52, line: 899, baseType: !27, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !51, file: !52, line: 919, baseType: !27, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !51, file: !52, line: 922, baseType: !27, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !51, file: !52, line: 923, baseType: !27, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !51, file: !52, line: 925, baseType: !27, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !51, file: !52, line: 939, baseType: !27, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !51, file: !52, line: 941, baseType: !27, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !51, file: !52, line: 944, baseType: !27, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !51, file: !52, line: 956, baseType: !27, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !51, file: !52, line: 962, baseType: !27, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !51, file: !52, line: 966, baseType: !27, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !51, file: !52, line: 969, baseType: !59, size: 64, offset: 10176)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !51, file: !52, line: 971, baseType: !638, size: 448, offset: 10240)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !639, line: 25, size: 448, elements: !640)
!639 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!640 = !{!641, !642, !647}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !638, file: !639, line: 26, baseType: !59, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !638, file: !639, line: 27, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!558, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !639, line: 28, baseType: !648, size: 320, offset: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 28, size: 320, elements: !649)
!649 = !{!650, !660, !690}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !648, file: !639, line: 37, baseType: !651, size: 320)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !639, line: 30, size: 320, elements: !652)
!652 = !{!653, !655, !656, !657, !658, !659}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !651, file: !639, line: 31, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !651, file: !639, line: 32, baseType: !62, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !639, line: 33, baseType: !62, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !651, file: !639, line: 34, baseType: !62, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !651, file: !639, line: 35, baseType: !105, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !651, file: !639, line: 36, baseType: !654, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !648, file: !639, line: 47, baseType: !661, size: 192)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !639, line: 39, size: 192, elements: !662)
!662 = !{!663, !664, !670, !689}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !661, file: !639, line: 40, baseType: !256, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !639, line: 41, baseType: !665, size: 32, offset: 32)
!665 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !639, line: 16, baseType: !27, size: 32, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIEnumerator(name: "TT_NONE", value: 0)
!668 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!669 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !639, line: 42, baseType: !671, size: 64, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !639, line: 42, size: 64, elements: !672)
!672 = !{!673, !681}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !671, file: !639, line: 43, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !676, line: 7, size: 128, elements: !677)
!676 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!677 = !{!678, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !675, file: !676, line: 8, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !258, line: 93, baseType: !123)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !675, file: !676, line: 9, baseType: !123, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !671, file: !639, line: 44, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !684, line: 7, size: 64, elements: !685)
!684 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!685 = !{!686, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !683, file: !684, line: 8, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !684, line: 5, baseType: !513)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !683, file: !684, line: 9, baseType: !513, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !661, file: !639, line: 46, baseType: !105, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !648, file: !639, line: 55, baseType: !691, size: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !639, line: 49, size: 256, elements: !692)
!692 = !{!693, !696, !697, !698, !699}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !691, file: !639, line: 50, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !639, line: 14, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !691, file: !639, line: 51, baseType: !33, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !691, file: !639, line: 52, baseType: !33, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !691, file: !639, line: 53, baseType: !59, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !691, file: !639, line: 54, baseType: !59, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !51, file: !52, line: 973, baseType: !701, size: 32, offset: 10688)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !7, line: 27, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !258, line: 28, baseType: !33)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !51, file: !52, line: 974, baseType: !701, size: 32, offset: 10720)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !51, file: !52, line: 978, baseType: !59, size: 64, offset: 10752)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !51, file: !52, line: 987, baseType: !50, size: 64, offset: 10816)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !51, file: !52, line: 990, baseType: !50, size: 64, offset: 10880)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !51, file: !52, line: 995, baseType: !110, size: 128, offset: 10944)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !51, file: !52, line: 996, baseType: !110, size: 128, offset: 11072)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !51, file: !52, line: 997, baseType: !50, size: 64, offset: 11200)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !51, file: !52, line: 1005, baseType: !110, size: 128, offset: 11264)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !51, file: !52, line: 1006, baseType: !110, size: 128, offset: 11392)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !51, file: !52, line: 1009, baseType: !713, size: 64, offset: 11520)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !715, line: 59, size: 768, elements: !716)
!715 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!716 = !{!717, !718, !719, !720, !731, !732, !739, !748}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !714, file: !715, line: 61, baseType: !69, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !714, file: !715, line: 62, baseType: !27, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !714, file: !715, line: 63, baseType: !410, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !714, file: !715, line: 65, baseType: !721, size: 256, offset: 128)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 256, elements: !515)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !7, line: 194, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !722, file: !7, line: 195, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !7, line: 198, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !7, line: 199, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !726, file: !7, line: 199, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !714, file: !715, line: 66, baseType: !722, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !714, file: !715, line: 68, baseType: !733, size: 192, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !734, line: 41, baseType: !735)
!734 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !734, line: 37, size: 192, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !735, file: !734, line: 38, baseType: !410, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !735, file: !734, line: 39, baseType: !110, size: 128, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !714, file: !715, line: 69, baseType: !740, size: 128, align: 64, offset: 640)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !7, line: 232, size: 128, align: 64, elements: !741)
!741 = !{!742, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !7, line: 233, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !740, file: !7, line: 234, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !743}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !714, file: !715, line: 70, baseType: !749, offset: 768)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, elements: !613)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !715, line: 54, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !750, file: !715, line: 55, baseType: !33, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !750, file: !715, line: 56, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !715, line: 56, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !51, file: !52, line: 1010, baseType: !757, size: 512, offset: 11584)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 512, elements: !515)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !51, file: !52, line: 1011, baseType: !110, size: 128, offset: 12096)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !51, file: !52, line: 1012, baseType: !110, size: 128, offset: 12224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !51, file: !52, line: 1014, baseType: !761, size: 64, offset: 12352)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !763, line: 26, size: 256, elements: !764)
!763 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !762, file: !763, line: 27, baseType: !27, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !762, file: !763, line: 28, baseType: !767, size: 192, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !768, line: 43, size: 192, elements: !769)
!768 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !768, line: 44, baseType: !208, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !767, file: !768, line: 45, baseType: !110, size: 128, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !51, file: !52, line: 1017, baseType: !773, size: 64, offset: 12416)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !51, file: !52, line: 1020, baseType: !773, size: 64, offset: 12480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !51, file: !52, line: 1023, baseType: !67, size: 64, offset: 12544)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !51, file: !52, line: 1025, baseType: !105, size: 64, offset: 12608)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !51, file: !52, line: 1026, baseType: !105, size: 64, offset: 12672)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !51, file: !52, line: 1031, baseType: !105, size: 64, offset: 12736)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !51, file: !52, line: 1032, baseType: !780, size: 192, offset: 12800)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !52, line: 324, size: 192, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !780, file: !52, line: 326, baseType: !105, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !780, file: !52, line: 327, baseType: !105, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !780, file: !52, line: 328, baseType: !208, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !51, file: !52, line: 1041, baseType: !59, size: 64, offset: 12992)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !51, file: !52, line: 1042, baseType: !59, size: 64, offset: 13056)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !51, file: !52, line: 1045, baseType: !105, size: 64, offset: 13120)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !51, file: !52, line: 1048, baseType: !105, size: 64, offset: 13184)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !51, file: !52, line: 1051, baseType: !59, size: 64, offset: 13248)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !51, file: !52, line: 1052, baseType: !59, size: 64, offset: 13312)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !51, file: !52, line: 1055, baseType: !792, size: 640, offset: 13376)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !793, line: 132, size: 640, elements: !794)
!793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!794 = !{!795, !803, !804}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !792, file: !793, line: 133, baseType: !796, size: 576)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 576, elements: !801)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !793, line: 117, size: 192, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !797, file: !793, line: 118, baseType: !105, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !797, file: !793, line: 119, baseType: !271, size: 128, offset: 64)
!801 = !{!802}
!802 = !DISubrange(count: 3)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !792, file: !793, line: 134, baseType: !27, size: 32, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !792, file: !793, line: 135, baseType: !27, size: 32, offset: 608)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !51, file: !52, line: 1058, baseType: !806, size: 448, offset: 14016)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !793, line: 144, size: 448, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !806, file: !793, line: 145, baseType: !740, size: 128, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !806, file: !793, line: 146, baseType: !534, size: 256, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !806, file: !793, line: 147, baseType: !27, size: 32, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !51, file: !52, line: 1064, baseType: !812, size: 64, offset: 14464)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !815, line: 110, size: 1472, elements: !816)
!815 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!816 = !{!817, !818, !825, !832, !833, !834, !835, !836, !837, !838, !839, !845, !846, !847, !848, !849, !850, !964, !965, !966, !967, !968, !991, !992, !996, !1004}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !814, file: !815, line: 111, baseType: !454, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !814, file: !815, line: 112, baseType: !819, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !584, line: 23, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 21, size: 32, elements: !821)
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !820, file: !584, line: 22, baseType: !823, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !7, line: 37, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !258, line: 49, baseType: !27)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !814, file: !815, line: 113, baseType: !826, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !584, line: 28, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 26, size: 32, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !584, line: 27, baseType: !830, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !7, line: 38, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !258, line: 50, baseType: !27)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !814, file: !815, line: 114, baseType: !819, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !814, file: !815, line: 115, baseType: !826, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !814, file: !815, line: 116, baseType: !819, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !814, file: !815, line: 117, baseType: !826, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !814, file: !815, line: 118, baseType: !819, size: 32, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !814, file: !815, line: 119, baseType: !826, size: 32, offset: 288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !814, file: !815, line: 120, baseType: !27, size: 32, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !814, file: !815, line: 121, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !841, line: 24, baseType: !842)
!841 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !841, line: 24, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !842, file: !841, line: 24, baseType: !105, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !814, file: !815, line: 122, baseType: !840, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !814, file: !815, line: 123, baseType: !840, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !814, file: !815, line: 124, baseType: !840, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !814, file: !815, line: 125, baseType: !840, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !814, file: !815, line: 127, baseType: !227, size: 8, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !814, file: !815, line: 129, baseType: !851, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !853, line: 195, size: 1728, elements: !854)
!853 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!854 = !{!855, !856, !859, !864, !865, !868, !869, !876, !877, !878, !879, !882, !883, !884, !885, !886, !928, !949}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !852, file: !853, line: 196, baseType: !69, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !852, file: !853, line: 197, baseType: !857, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !853, line: 28, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 104, baseType: !513)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 198, baseType: !860, size: 192, offset: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 198, size: 192, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !860, file: !853, line: 199, baseType: !110, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !860, file: !853, line: 200, baseType: !97, size: 192, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !852, file: !853, line: 205, baseType: !463, size: 320, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !852, file: !853, line: 206, baseType: !866, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !853, line: 206, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !852, file: !853, line: 207, baseType: !67, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 208, baseType: !870, size: 64, offset: 704)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 208, size: 64, elements: !871)
!871 = !{!872, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !870, file: !853, line: 209, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !874, line: 8, baseType: !122)
!874 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !870, file: !853, line: 210, baseType: !873, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !852, file: !853, line: 212, baseType: !873, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !852, file: !853, line: 213, baseType: !819, size: 32, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !852, file: !853, line: 214, baseType: !826, size: 32, offset: 864)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !852, file: !853, line: 215, baseType: !880, size: 32, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !853, line: 31, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 110, baseType: !62)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !852, file: !853, line: 216, baseType: !39, size: 16, offset: 928)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !852, file: !853, line: 217, baseType: !39, size: 16, offset: 944)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !852, file: !853, line: 221, baseType: !575, size: 16, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !853, line: 228, baseType: !59, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 245, baseType: !887, size: 320, offset: 1088)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 245, size: 320, elements: !888)
!888 = !{!889, !919}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !887, file: !853, line: 246, baseType: !890, size: 320)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !853, line: 114, size: 320, elements: !891)
!891 = !{!892, !893, !906, !909, !916}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !890, file: !853, line: 116, baseType: !59, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !853, line: 117, baseType: !894, size: 64, offset: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !853, line: 117, size: 64, elements: !895)
!895 = !{!896, !905}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !853, line: 118, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !853, line: 118, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !897, file: !853, line: 120, baseType: !35, size: 16)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !897, file: !853, line: 121, baseType: !901, size: 48, offset: 16)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 48, elements: !903)
!902 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!903 = !{!904}
!904 = !DISubrange(count: 6)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !894, file: !853, line: 127, baseType: !59, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !890, file: !853, line: 129, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !853, line: 102, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !890, file: !853, line: 130, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !853, line: 108, size: 192, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !911, file: !853, line: 109, baseType: !740, size: 128, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !911, file: !853, line: 110, baseType: !69, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !911, file: !853, line: 111, baseType: !6, size: 8, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !890, file: !853, line: 131, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !853, line: 247, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !853, line: 247, size: 320, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !920, file: !853, line: 248, baseType: !59, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !920, file: !853, line: 249, baseType: !59, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !853, line: 250, baseType: !907, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !920, file: !853, line: 251, baseType: !910, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !920, file: !853, line: 252, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 260, baseType: !929, size: 256, offset: 1408)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 260, size: 256, elements: !930)
!930 = !{!931, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !929, file: !853, line: 261, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !853, line: 134, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !932, file: !853, line: 135, baseType: !67, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !932, file: !853, line: 136, baseType: !936, size: 256)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !515)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !853, line: 262, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !853, line: 262, size: 256, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !938, file: !853, line: 264, baseType: !110, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !938, file: !853, line: 265, baseType: !942, size: 128, offset: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !943, line: 22, size: 128, elements: !944)
!943 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!944 = !{!945, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !942, file: !943, line: 23, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !943, line: 23, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !942, file: !943, line: 24, baseType: !59, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !852, file: !853, line: 280, baseType: !950, size: 64, offset: 1664)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !853, line: 176, size: 192, elements: !952)
!952 = !{!953, !962, !963}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !951, file: !853, line: 177, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !853, line: 171, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!33, !851, !958, !960, !851}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !951, file: !853, line: 178, baseType: !851, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !951, file: !853, line: 179, baseType: !907, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !814, file: !815, line: 130, baseType: !851, size: 64, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !814, file: !815, line: 131, baseType: !851, size: 64, offset: 896)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !814, file: !815, line: 132, baseType: !851, size: 64, offset: 960)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !814, file: !815, line: 135, baseType: !67, size: 64, offset: 1024)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !814, file: !815, line: 137, baseType: !969, size: 64, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !971, line: 14, size: 1088, elements: !972)
!971 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !970, file: !971, line: 15, baseType: !69, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !970, file: !971, line: 17, baseType: !505, size: 320, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !970, file: !971, line: 19, baseType: !59, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !970, file: !971, line: 20, baseType: !454, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !970, file: !971, line: 23, baseType: !726, size: 128, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !970, file: !971, line: 24, baseType: !819, size: 32, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !970, file: !971, line: 29, baseType: !454, size: 64, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !970, file: !971, line: 36, baseType: !981, size: 320, offset: 768)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !982, line: 15, size: 320, elements: !983)
!982 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!983 = !{!984, !985, !986, !987, !988, !989, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !981, file: !982, line: 16, baseType: !208, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !981, file: !982, line: 18, baseType: !33, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !981, file: !982, line: 19, baseType: !33, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !981, file: !982, line: 20, baseType: !33, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !981, file: !982, line: 21, baseType: !33, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !981, file: !982, line: 22, baseType: !59, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 23, baseType: !59, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !814, file: !815, line: 138, baseType: !582, size: 64, offset: 1152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !814, file: !815, line: 139, baseType: !993, size: 64, offset: 1216)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !995, line: 16, flags: DIFlagFwdDecl)
!995 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !814, file: !815, line: 140, baseType: !997, size: 64, offset: 1280)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !815, line: 25, size: 64, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !998, file: !815, line: 26, baseType: !29, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !998, file: !815, line: 27, baseType: !33, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !998, file: !815, line: 28, baseType: !1003, offset: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, elements: !613)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !815, line: 142, baseType: !1005, size: 128, offset: 1344)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !815, line: 142, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1005, file: !815, line: 143, baseType: !33, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1005, file: !815, line: 144, baseType: !740, size: 128, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !51, file: !52, line: 1067, baseType: !812, size: 64, offset: 14528)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !51, file: !52, line: 1070, baseType: !812, size: 64, offset: 14592)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !51, file: !52, line: 1074, baseType: !851, size: 64, offset: 14656)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !51, file: !52, line: 1084, baseType: !1013, size: 128, offset: 14720)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 128, elements: !1014)
!1014 = !{!1015}
!1015 = !DISubrange(count: 16)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !51, file: !52, line: 1086, baseType: !1017, size: 64, offset: 14848)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !52, line: 55, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !51, file: !52, line: 1089, baseType: !1020, size: 64, offset: 14912)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1021, line: 12, size: 64, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1020, file: !1021, line: 13, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1021, line: 8, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !51, file: !52, line: 1090, baseType: !1027, size: 128, offset: 14976)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1028, line: 13, size: 128, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1027, file: !1028, line: 14, baseType: !110, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !51, file: !52, line: 1097, baseType: !1032, size: 64, offset: 15104)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !52, line: 50, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !51, file: !52, line: 1100, baseType: !1035, size: 64, offset: 15168)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !52, line: 1100, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !51, file: !52, line: 1103, baseType: !1038, size: 64, offset: 15232)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !52, line: 53, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !51, file: !52, line: 1107, baseType: !1041, size: 64, offset: 15296)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !52, line: 56, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !51, file: !52, line: 1110, baseType: !1044, size: 64, offset: 15360)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1046, line: 93, size: 8768, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1097, !1106, !1107, !1109, !1110, !1111, !1114, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1156, !1157, !1165, !1175, !1178, !1179, !1182, !1183, !1184, !1185, !1186, !1187}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1045, file: !1046, line: 94, baseType: !69, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1045, file: !1046, line: 95, baseType: !29, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1045, file: !1046, line: 96, baseType: !33, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1045, file: !1046, line: 97, baseType: !33, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1045, file: !1046, line: 98, baseType: !110, size: 128, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1045, file: !1046, line: 100, baseType: !733, size: 192, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1045, file: !1046, line: 103, baseType: !50, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1045, file: !1046, line: 106, baseType: !1056, size: 192, offset: 512)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !995, line: 32, size: 192, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1056, file: !995, line: 33, baseType: !110, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1056, file: !995, line: 34, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1061, line: 25, baseType: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1061, line: 23, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1062, file: !1061, line: 24, baseType: !342, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1045, file: !1046, line: 109, baseType: !722, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1045, file: !1046, line: 112, baseType: !33, size: 32, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1045, file: !1046, line: 114, baseType: !33, size: 32, offset: 800)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1045, file: !1046, line: 115, baseType: !50, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1045, file: !1046, line: 118, baseType: !33, size: 32, offset: 896)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !1046, line: 119, baseType: !27, size: 32, offset: 928)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1045, file: !1046, line: 121, baseType: !1072, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1046, line: 80, size: 448, elements: !1074)
!1074 = !{!1075, !1076, !1082}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1073, file: !1046, line: 81, baseType: !29, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1073, file: !1046, line: 82, baseType: !1077, size: 128, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1046, line: 75, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1077, file: !1046, line: 76, baseType: !50, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1077, file: !1046, line: 77, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1073, file: !1046, line: 83, baseType: !762, size: 256, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1045, file: !1046, line: 132, baseType: !27, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1045, file: !1046, line: 133, baseType: !27, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1045, file: !1046, line: 138, baseType: !27, size: 32, offset: 1056)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1045, file: !1046, line: 139, baseType: !110, size: 128, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1045, file: !1046, line: 142, baseType: !178, size: 512, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1045, file: !1046, line: 143, baseType: !187, size: 64, offset: 1728)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1045, file: !1046, line: 150, baseType: !1090, size: 256, offset: 1792)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 256, elements: !1095)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1046, line: 38, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1091, file: !1046, line: 39, baseType: !105, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1091, file: !1046, line: 40, baseType: !105, size: 64, offset: 64)
!1095 = !{!1096}
!1096 = !DISubrange(count: 2)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1045, file: !1046, line: 156, baseType: !1098, size: 192, offset: 2048)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1046, line: 66, size: 192, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1098, file: !1046, line: 67, baseType: !1101, size: 192)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1046, line: 47, size: 192, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1101, file: !1046, line: 48, baseType: !456, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1101, file: !1046, line: 49, baseType: !456, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1101, file: !1046, line: 50, baseType: !456, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1045, file: !1046, line: 160, baseType: !792, size: 640, offset: 2240)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1045, file: !1046, line: 163, baseType: !1108, size: 256, offset: 2880)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 256, elements: !515)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1045, file: !1046, line: 169, baseType: !713, size: 64, offset: 3136)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1045, file: !1046, line: 172, baseType: !33, size: 32, offset: 3200)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1045, file: !1046, line: 174, baseType: !1112, size: 64, offset: 3264)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1046, line: 174, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1045, file: !1046, line: 185, baseType: !1115, size: 64, offset: 3328)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !261, line: 860, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 853, size: 64, elements: !1117)
!1117 = !{!1118, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1116, file: !261, line: 858, baseType: !1119, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !261, line: 275, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !261, line: 275, size: 32, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1120, file: !261, line: 275, baseType: !265, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !261, line: 859, baseType: !410, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1045, file: !1046, line: 186, baseType: !105, size: 64, offset: 3392)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1045, file: !1046, line: 186, baseType: !105, size: 64, offset: 3456)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1045, file: !1046, line: 186, baseType: !105, size: 64, offset: 3520)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1045, file: !1046, line: 186, baseType: !105, size: 64, offset: 3584)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1045, file: !1046, line: 187, baseType: !105, size: 64, offset: 3648)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1045, file: !1046, line: 188, baseType: !105, size: 64, offset: 3712)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1045, file: !1046, line: 189, baseType: !780, size: 192, offset: 3776)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1045, file: !1046, line: 190, baseType: !59, size: 64, offset: 3968)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1045, file: !1046, line: 190, baseType: !59, size: 64, offset: 4032)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1045, file: !1046, line: 190, baseType: !59, size: 64, offset: 4096)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1045, file: !1046, line: 190, baseType: !59, size: 64, offset: 4160)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1045, file: !1046, line: 191, baseType: !59, size: 64, offset: 4224)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1045, file: !1046, line: 191, baseType: !59, size: 64, offset: 4288)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1045, file: !1046, line: 191, baseType: !59, size: 64, offset: 4352)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1045, file: !1046, line: 191, baseType: !59, size: 64, offset: 4416)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1045, file: !1046, line: 192, baseType: !59, size: 64, offset: 4480)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1045, file: !1046, line: 192, baseType: !59, size: 64, offset: 4544)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1045, file: !1046, line: 192, baseType: !59, size: 64, offset: 4608)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1045, file: !1046, line: 192, baseType: !59, size: 64, offset: 4672)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1045, file: !1046, line: 193, baseType: !59, size: 64, offset: 4736)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1045, file: !1046, line: 193, baseType: !59, size: 64, offset: 4800)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1045, file: !1046, line: 194, baseType: !1146, size: 448, offset: 4864)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1147, line: 12, size: 448, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1146, file: !1147, line: 15, baseType: !105, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1146, file: !1147, line: 17, baseType: !105, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1146, file: !1147, line: 19, baseType: !105, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1146, file: !1147, line: 21, baseType: !105, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1146, file: !1147, line: 29, baseType: !105, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1146, file: !1147, line: 35, baseType: !105, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1146, file: !1147, line: 44, baseType: !105, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1045, file: !1046, line: 202, baseType: !107, size: 64, offset: 5312)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1045, file: !1046, line: 213, baseType: !1158, size: 2048, offset: 5376)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 2048, elements: !1014)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1160, line: 43, size: 128, elements: !1161)
!1160 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1161 = !{!1162, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1159, file: !1160, line: 44, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !258, line: 16, baseType: !59)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1159, file: !1160, line: 45, baseType: !1163, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1045, file: !1046, line: 216, baseType: !1166, size: 448, offset: 7424)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1046, line: 30, size: 448, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1166, file: !1046, line: 31, baseType: !33, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1166, file: !1046, line: 32, baseType: !558, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1166, file: !1046, line: 33, baseType: !59, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1166, file: !1046, line: 34, baseType: !105, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1166, file: !1046, line: 34, baseType: !105, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1166, file: !1046, line: 35, baseType: !59, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1166, file: !1046, line: 35, baseType: !59, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1045, file: !1046, line: 219, baseType: !1176, size: 64, offset: 7872)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1046, line: 219, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1045, file: !1046, line: 222, baseType: !27, size: 32, offset: 7936)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1045, file: !1046, line: 223, baseType: !1180, size: 64, offset: 8000)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1046, line: 223, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1045, file: !1046, line: 230, baseType: !6, size: 8, offset: 8064)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1045, file: !1046, line: 231, baseType: !575, size: 16, offset: 8080)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1045, file: !1046, line: 232, baseType: !575, size: 16, offset: 8096)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1045, file: !1046, line: 234, baseType: !391, size: 64, offset: 8128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1045, file: !1046, line: 237, baseType: !534, size: 256, offset: 8192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1045, file: !1046, line: 243, baseType: !463, size: 320, offset: 8448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !51, file: !52, line: 1111, baseType: !1189, size: 64, offset: 15424)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1046, line: 20, size: 16640, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1190, file: !1046, line: 21, baseType: !410, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1190, file: !1046, line: 22, baseType: !69, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1190, file: !1046, line: 23, baseType: !733, size: 192, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1190, file: !1046, line: 24, baseType: !1196, size: 16384, offset: 256)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 16384, elements: !1217)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !995, line: 51, size: 256, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1197, file: !995, line: 52, baseType: !1200, size: 256)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !995, line: 37, size: 256, elements: !1201)
!1201 = !{!1202, !1209, !1210, !1216}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1200, file: !995, line: 39, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1204, line: 83, baseType: !1205)
!1204 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1204, line: 82, baseType: !1207)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !33}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1200, file: !995, line: 40, baseType: !59, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1200, file: !995, line: 46, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1204, line: 86, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1204, line: 85, baseType: !1214)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1200, file: !995, line: 48, baseType: !1060, size: 64, offset: 192)
!1217 = !{!1218}
!1218 = !DISubrange(count: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !51, file: !52, line: 1112, baseType: !1060, size: 64, offset: 15488)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !51, file: !52, line: 1113, baseType: !1060, size: 64, offset: 15552)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !51, file: !52, line: 1115, baseType: !1060, size: 64, offset: 15616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !51, file: !52, line: 1116, baseType: !1056, size: 192, offset: 15680)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !51, file: !52, line: 1117, baseType: !59, size: 64, offset: 15872)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !51, file: !52, line: 1118, baseType: !1225, size: 64, offset: 15936)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !258, line: 72, baseType: !1163)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !51, file: !52, line: 1119, baseType: !27, size: 32, offset: 16000)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !51, file: !52, line: 1121, baseType: !743, size: 64, offset: 16064)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !51, file: !52, line: 1125, baseType: !1230, size: 64, offset: 16128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !52, line: 43, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !51, file: !52, line: 1127, baseType: !819, size: 32, offset: 16192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !51, file: !52, line: 1128, baseType: !27, size: 32, offset: 16224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !51, file: !52, line: 1130, baseType: !1235, size: 128, offset: 16256)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1236, line: 37, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1235, file: !1236, line: 38, baseType: !33, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1235, file: !1236, line: 39, baseType: !29, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1235, file: !1236, line: 40, baseType: !1241, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1236, line: 24, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !51, file: !52, line: 1131, baseType: !1244, size: 256, offset: 16384)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1245, line: 12, size: 256, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1244, file: !1245, line: 13, baseType: !927, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !1245, line: 14, baseType: !59, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1244, file: !1245, line: 15, baseType: !59, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1244, file: !1245, line: 16, baseType: !6, size: 8, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !51, file: !52, line: 1134, baseType: !105, size: 64, offset: 16640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !51, file: !52, line: 1135, baseType: !105, size: 64, offset: 16704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !51, file: !52, line: 1138, baseType: !410, size: 32, offset: 16768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !51, file: !52, line: 1141, baseType: !208, size: 32, offset: 16800)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !51, file: !52, line: 1143, baseType: !1256, size: 64, offset: 16832)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !52, line: 735, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !52, line: 736, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !51, file: !52, line: 1147, baseType: !274, size: 128, offset: 16896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !51, file: !52, line: 1149, baseType: !50, size: 64, offset: 17024)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !51, file: !52, line: 1151, baseType: !1263, size: 64, offset: 17088)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !52, line: 1151, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !51, file: !52, line: 1188, baseType: !67, size: 64, offset: 17152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !51, file: !52, line: 1191, baseType: !1267, size: 64, offset: 17216)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !52, line: 44, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !51, file: !52, line: 1194, baseType: !1270, size: 64, offset: 17280)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !52, line: 45, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !51, file: !52, line: 1197, baseType: !1273, size: 64, offset: 17344)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !52, line: 61, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !51, file: !52, line: 1199, baseType: !1276, size: 64, offset: 17408)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !52, line: 52, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !51, file: !52, line: 1202, baseType: !1279, size: 64, offset: 17472)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !52, line: 48, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !51, file: !52, line: 1205, baseType: !59, size: 64, offset: 17536)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !51, file: !52, line: 1206, baseType: !1283, size: 64, offset: 17600)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !995, line: 14, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !995, line: 12, size: 384, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !995, line: 13, baseType: !1288, size: 384)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !995, line: 13, size: 384, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1288, file: !995, line: 13, baseType: !33, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1288, file: !995, line: 13, baseType: !33, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1288, file: !995, line: 13, baseType: !33, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1288, file: !995, line: 13, baseType: !1294, size: 256, offset: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1295, line: 37, size: 256, elements: !1296)
!1295 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1296 = !{!1297, !1302, !1315, !1321, !1331, !1358, !1363}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1294, file: !1295, line: 42, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 39, size: 64, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1298, file: !1295, line: 40, baseType: !702, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1298, file: !1295, line: 41, baseType: !824, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1294, file: !1295, line: 50, baseType: !1303, size: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 45, size: 192, elements: !1304)
!1304 = !{!1305, !1307, !1308, !1314}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1303, file: !1295, line: 46, baseType: !1306, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !258, line: 95, baseType: !33)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1303, file: !1295, line: 47, baseType: !33, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1303, file: !1295, line: 48, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1295, line: 11, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1295, line: 8, size: 64, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1310, file: !1295, line: 9, baseType: !33, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1310, file: !1295, line: 10, baseType: !67, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1303, file: !1295, line: 49, baseType: !33, size: 32, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1294, file: !1295, line: 57, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 53, size: 128, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1316, file: !1295, line: 54, baseType: !702, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1316, file: !1295, line: 55, baseType: !824, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1316, file: !1295, line: 56, baseType: !1309, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1294, file: !1295, line: 66, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 60, size: 256, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1330}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1322, file: !1295, line: 61, baseType: !702, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1322, file: !1295, line: 62, baseType: !824, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1322, file: !1295, line: 63, baseType: !33, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1322, file: !1295, line: 64, baseType: !1328, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !258, line: 94, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !258, line: 15, baseType: !558)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1322, file: !1295, line: 65, baseType: !1328, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1294, file: !1295, line: 105, baseType: !1332, size: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 69, size: 256, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1332, file: !1295, line: 70, baseType: !67, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1295, line: 79, baseType: !1336, size: 192, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !1295, line: 79, size: 192, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1347, !1352}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1336, file: !1295, line: 81, baseType: !33, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1336, file: !1295, line: 86, baseType: !575, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1336, file: !1295, line: 92, baseType: !1341, size: 192)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !1295, line: 88, size: 192, elements: !1342)
!1342 = !{!1343, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1341, file: !1295, line: 89, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 64, elements: !252)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1341, file: !1295, line: 90, baseType: !67, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1341, file: !1295, line: 91, baseType: !67, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1336, file: !1295, line: 97, baseType: !1348, size: 96)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !1295, line: 94, size: 96, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1348, file: !1295, line: 95, baseType: !1344, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1348, file: !1295, line: 96, baseType: !63, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1336, file: !1295, line: 103, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !1295, line: 99, size: 128, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1353, file: !1295, line: 100, baseType: !59, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1353, file: !1295, line: 101, baseType: !63, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1353, file: !1295, line: 102, baseType: !63, size: 32, offset: 96)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1294, file: !1295, line: 111, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 108, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1359, file: !1295, line: 109, baseType: !558, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1359, file: !1295, line: 110, baseType: !33, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1294, file: !1295, line: 118, baseType: !1364, size: 128)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1295, line: 114, size: 128, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1364, file: !1295, line: 115, baseType: !67, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1364, file: !1295, line: 116, baseType: !33, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1364, file: !1295, line: 117, baseType: !27, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !51, file: !52, line: 1208, baseType: !1146, size: 448, offset: 17664)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !51, file: !52, line: 1215, baseType: !105, size: 64, offset: 18112)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !51, file: !52, line: 1217, baseType: !105, size: 64, offset: 18176)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !51, file: !52, line: 1219, baseType: !105, size: 64, offset: 18240)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !51, file: !52, line: 1223, baseType: !1374, size: 64, offset: 18304)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1375, line: 99, baseType: !1376)
!1375 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1375, line: 99, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1376, file: !1375, line: 99, baseType: !342, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !51, file: !52, line: 1225, baseType: !1119, size: 32, offset: 18368)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !51, file: !52, line: 1226, baseType: !33, size: 32, offset: 18400)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !51, file: !52, line: 1227, baseType: !33, size: 32, offset: 18432)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !51, file: !52, line: 1231, baseType: !1383, size: 64, offset: 18496)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !52, line: 1231, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !51, file: !52, line: 1233, baseType: !110, size: 128, offset: 18560)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !51, file: !52, line: 1240, baseType: !1387, size: 64, offset: 18688)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !52, line: 62, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !51, file: !52, line: 1242, baseType: !1390, size: 64, offset: 18752)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !52, line: 1242, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !51, file: !52, line: 1244, baseType: !110, size: 128, offset: 18816)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !51, file: !52, line: 1245, baseType: !1394, size: 64, offset: 18944)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !52, line: 51, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !51, file: !52, line: 1246, baseType: !534, size: 256, offset: 19008)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !51, file: !52, line: 1247, baseType: !27, size: 32, offset: 19264)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !51, file: !52, line: 1250, baseType: !1399, size: 64, offset: 19328)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !52, line: 57, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !51, file: !52, line: 1251, baseType: !534, size: 256, offset: 19392)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !51, file: !52, line: 1252, baseType: !110, size: 128, offset: 19648)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !51, file: !52, line: 1259, baseType: !1404, size: 64, offset: 19776)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 54, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !51, file: !52, line: 1260, baseType: !575, size: 16, offset: 19840)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !51, file: !52, line: 1261, baseType: !575, size: 16, offset: 19856)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !51, file: !52, line: 1314, baseType: !1409, size: 64, offset: 19904)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1411, line: 62, size: 256, align: 256, elements: !1412)
!1411 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1410, file: !1411, line: 75, baseType: !63, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1410, file: !1411, line: 90, baseType: !63, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1410, file: !1411, line: 112, baseType: !106, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 132, baseType: !63, size: 32, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1410, file: !1411, line: 140, baseType: !63, size: 32, offset: 160)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1410, file: !1411, line: 149, baseType: !63, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1410, file: !1411, line: 154, baseType: !1420, offset: 224)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, elements: !613)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !51, file: !52, line: 1315, baseType: !62, size: 32, offset: 19968)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !51, file: !52, line: 1316, baseType: !62, size: 32, offset: 20000)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !51, file: !52, line: 1321, baseType: !59, size: 64, offset: 20032)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !51, file: !52, line: 1325, baseType: !33, size: 32, offset: 20096)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !51, file: !52, line: 1326, baseType: !33, size: 32, offset: 20128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !51, file: !52, line: 1327, baseType: !33, size: 32, offset: 20160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !51, file: !52, line: 1328, baseType: !33, size: 32, offset: 20192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !51, file: !52, line: 1329, baseType: !740, size: 128, align: 64, offset: 20224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !51, file: !52, line: 1332, baseType: !1430, size: 128, offset: 20352)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1431, line: 51, size: 128, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1432 = !{!1433, !1438, !1439}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1430, file: !1431, line: 60, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1435, line: 7, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1434, file: !1435, line: 12, baseType: !339, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1430, file: !1431, line: 63, baseType: !6, size: 8, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1430, file: !1431, line: 70, baseType: !6, size: 8, offset: 72)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !51, file: !52, line: 1335, baseType: !1441, size: 64, offset: 20480)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !52, line: 59, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !51, file: !52, line: 1337, baseType: !1444, size: 128, offset: 20544)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1431, line: 39, size: 128, elements: !1445)
!1445 = !{!1446, !1509, !1510}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1444, file: !1431, line: 40, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !393, line: 74, size: 512, align: 128, elements: !1449)
!1449 = !{!1450, !1451, !1503, !1508}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !393, line: 75, baseType: !59, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !393, line: 83, baseType: !1452, size: 320, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !393, line: 83, size: 320, elements: !1453)
!1453 = !{!1454, !1477, !1491, !1495, !1502}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !393, line: 84, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !393, line: 84, size: 320, elements: !1456)
!1456 = !{!1457, !1468, !1471, !1476}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !393, line: 90, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !393, line: 90, size: 128, elements: !1459)
!1459 = !{!1460, !1461, !1466, !1467}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1458, file: !393, line: 91, baseType: !110, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !393, line: 94, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !393, line: 94, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1462, file: !393, line: 96, baseType: !67, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1462, file: !393, line: 98, baseType: !27, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1458, file: !393, line: 102, baseType: !110, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1458, file: !393, line: 103, baseType: !110, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1455, file: !393, line: 106, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !393, line: 32, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !393, line: 107, baseType: !1472, size: 64, offset: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !393, line: 107, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1472, file: !393, line: 108, baseType: !59, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1472, file: !393, line: 109, baseType: !59, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1455, file: !393, line: 117, baseType: !59, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !393, line: 119, baseType: !1478, size: 320)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !393, line: 119, size: 320, elements: !1479)
!1479 = !{!1480, !1481, !1484, !1485, !1486}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1478, file: !393, line: 124, baseType: !59, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1478, file: !393, line: 125, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !393, line: 125, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1478, file: !393, line: 126, baseType: !59, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1478, file: !393, line: 127, baseType: !59, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !393, line: 128, baseType: !1487, size: 64, offset: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !393, line: 128, size: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1487, file: !393, line: 133, baseType: !59, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1487, file: !393, line: 138, baseType: !454, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !393, line: 141, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !393, line: 141, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1492, file: !393, line: 142, baseType: !59, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !393, line: 144, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !393, line: 144, size: 128, elements: !1497)
!1497 = !{!1498, !1501}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1496, file: !393, line: 146, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !393, line: 146, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1496, file: !393, line: 147, baseType: !67, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1452, file: !393, line: 161, baseType: !740, size: 128, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !393, line: 164, baseType: !1504, size: 32, offset: 384)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !393, line: 164, size: 32, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1504, file: !393, line: 169, baseType: !29, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1504, file: !393, line: 177, baseType: !27, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1448, file: !393, line: 181, baseType: !29, size: 32, offset: 416)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1444, file: !1431, line: 42, baseType: !63, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1444, file: !1431, line: 43, baseType: !63, size: 32, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !51, file: !52, line: 1340, baseType: !1512, size: 64, offset: 20672)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !52, line: 69, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !51, file: !52, line: 1351, baseType: !33, size: 32, offset: 20736)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !51, file: !52, line: 1352, baseType: !33, size: 32, offset: 20768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !51, file: !52, line: 1354, baseType: !59, size: 64, offset: 20800)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !51, file: !52, line: 1364, baseType: !105, size: 64, offset: 20864)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !51, file: !52, line: 1365, baseType: !105, size: 64, offset: 20928)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !51, file: !52, line: 1412, baseType: !59, size: 64, offset: 20992)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !51, file: !52, line: 1453, baseType: !1521, size: 64, offset: 21056)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !52, line: 1453, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !51, file: !52, line: 1457, baseType: !1524, size: 64, offset: 21120)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !593, line: 61, size: 576, elements: !1526)
!1526 = !{!1527, !1534, !1553, !1556, !1557, !1590, !1600}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1525, file: !593, line: 62, baseType: !1528, size: 32)
!1528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !593, line: 51, baseType: !27, size: 32, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!1531 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!1532 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!1533 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !593, line: 64, baseType: !1535, size: 192, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !593, line: 64, size: 192, elements: !1536)
!1536 = !{!1537, !1548}
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !593, line: 65, baseType: !1538, size: 192)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !593, line: 65, size: 192, elements: !1539)
!1539 = !{!1540, !1547}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1538, file: !593, line: 66, baseType: !1541, size: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1542, line: 50, size: 128, elements: !1543)
!1542 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1541, file: !1542, line: 52, baseType: !59, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1541, file: !1542, line: 54, baseType: !27, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1541, file: !1542, line: 55, baseType: !27, size: 32, offset: 96)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1538, file: !593, line: 67, baseType: !59, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !593, line: 70, baseType: !1549, size: 192)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !593, line: 70, size: 192, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1549, file: !593, line: 71, baseType: !740, size: 128, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1549, file: !593, line: 72, baseType: !59, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1525, file: !593, line: 76, baseType: !1554, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !593, line: 76, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1525, file: !593, line: 77, baseType: !59, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1525, file: !593, line: 79, baseType: !1558, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1542, line: 25, size: 256, elements: !1560)
!1560 = !{!1561, !1567, !1571}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1542, line: 26, baseType: !1562, size: 128)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1542, line: 26, size: 128, elements: !1563)
!1563 = !{!1564, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1562, file: !1542, line: 27, baseType: !1565, size: 128)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !1014)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1562, file: !1542, line: 28, baseType: !1565, size: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1559, file: !1542, line: 31, baseType: !1568, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1542, line: 23, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1542, line: 33, baseType: !1572, size: 64, offset: 192)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1542, line: 33, size: 64, elements: !1573)
!1573 = !{!1574, !1580, !1585}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1572, file: !1542, line: 38, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1542, line: 34, size: 64, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1575, file: !1542, line: 35, baseType: !513, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1575, file: !1542, line: 36, baseType: !225, size: 8, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1575, file: !1542, line: 37, baseType: !225, size: 8, offset: 40)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1572, file: !1542, line: 42, baseType: !1581, size: 16)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1542, line: 39, size: 16, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1581, file: !1542, line: 40, baseType: !225, size: 8)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1581, file: !1542, line: 41, baseType: !225, size: 8, offset: 8)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1572, file: !1542, line: 46, baseType: !1586, size: 16)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1542, line: 43, size: 16, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1586, file: !1542, line: 44, baseType: !225, size: 8)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1586, file: !1542, line: 45, baseType: !225, size: 8, offset: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1525, file: !593, line: 81, baseType: !1591, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !593, line: 85, size: 384, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1592, file: !593, line: 86, baseType: !1554, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1592, file: !593, line: 87, baseType: !59, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1592, file: !593, line: 88, baseType: !59, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1592, file: !593, line: 89, baseType: !59, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1592, file: !593, line: 90, baseType: !6, size: 8, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1592, file: !593, line: 92, baseType: !1591, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1525, file: !593, line: 82, baseType: !27, size: 32, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !51, file: !52, line: 1463, baseType: !1602, offset: 21184)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !52, line: 739, elements: !421)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !51, file: !52, line: 1470, baseType: !740, size: 128, align: 64, offset: 21184)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !51, file: !52, line: 1471, baseType: !69, size: 32, offset: 21312)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !51, file: !52, line: 1472, baseType: !33, size: 32, offset: 21344)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !51, file: !52, line: 1474, baseType: !50, size: 64, offset: 21376)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !51, file: !52, line: 1475, baseType: !1608, size: 320, offset: 21440)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1609, line: 11, size: 320, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1610 = !{!1611, !1612, !1613, !1618}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1608, file: !1609, line: 16, baseType: !726, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1608, file: !1609, line: 17, baseType: !59, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1608, file: !1609, line: 18, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1609, line: 19, baseType: !62, size: 32, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !51, file: !52, line: 1478, baseType: !1620, size: 64, offset: 21760)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1622, line: 49, size: 512, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1630, !1631, !1632, !1634}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1621, file: !1622, line: 50, baseType: !1620, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1621, file: !1622, line: 51, baseType: !67, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1621, file: !1622, line: 52, baseType: !59, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 53, baseType: !59, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1621, file: !1622, line: 54, baseType: !1629, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1621, file: !1622, line: 56, baseType: !27, size: 32, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1621, file: !1622, line: 58, baseType: !27, size: 32, offset: 352)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1621, file: !1622, line: 59, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !7, line: 159, baseType: !105)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1621, file: !1622, line: 60, baseType: !555, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !51, file: !52, line: 1482, baseType: !69, size: 32, offset: 21824)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !51, file: !52, line: 1489, baseType: !67, size: 64, offset: 21888)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !51, file: !52, line: 1504, baseType: !67, size: 64, offset: 21952)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !51, file: !52, line: 1505, baseType: !106, size: 64, offset: 22016)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !51, file: !52, line: 1506, baseType: !105, size: 64, offset: 22080)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !51, file: !52, line: 1507, baseType: !106, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !51, file: !52, line: 1508, baseType: !106, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !51, file: !52, line: 1509, baseType: !106, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !51, file: !52, line: 1510, baseType: !740, size: 128, align: 64, offset: 22208)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !51, file: !52, line: 1511, baseType: !33, size: 32, offset: 22336)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !51, file: !52, line: 1515, baseType: !1646, size: 64, offset: 22400)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !19, line: 56, size: 64, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1646, file: !19, line: 57, baseType: !22, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !51, file: !52, line: 1518, baseType: !1646, size: 64, offset: 22464)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !51, file: !52, line: 1528, baseType: !740, size: 128, align: 64, offset: 22528)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !51, file: !52, line: 1552, baseType: !1652, size: 35328, offset: 23040)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1653, line: 430, size: 35328, elements: !1654)
!1653 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1654 = !{!1655, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1684, !1685, !1686, !1687, !1688, !1689, !1692, !1693, !1694, !1695}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1652, file: !1653, line: 432, baseType: !1656, size: 192)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1657, size: 192, elements: !801)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1658, line: 16, size: 64, elements: !1659)
!1658 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1657, file: !1658, line: 17, baseType: !35, size: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1657, file: !1658, line: 18, baseType: !35, size: 16, offset: 16)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1657, file: !1658, line: 19, baseType: !35, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1657, file: !1658, line: 19, baseType: !35, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1657, file: !1658, line: 19, baseType: !35, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1657, file: !1658, line: 19, baseType: !35, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1657, file: !1658, line: 19, baseType: !35, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1657, file: !1658, line: 20, baseType: !35, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1657, file: !1658, line: 20, baseType: !35, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1657, file: !1658, line: 20, baseType: !35, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1657, file: !1658, line: 20, baseType: !35, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1657, file: !1658, line: 20, baseType: !35, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1657, file: !1658, line: 20, baseType: !35, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1652, file: !1653, line: 436, baseType: !59, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1652, file: !1653, line: 440, baseType: !39, size: 16, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1652, file: !1653, line: 441, baseType: !39, size: 16, offset: 272)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1652, file: !1653, line: 442, baseType: !39, size: 16, offset: 288)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1652, file: !1653, line: 443, baseType: !39, size: 16, offset: 304)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1652, file: !1653, line: 447, baseType: !59, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1652, file: !1653, line: 448, baseType: !59, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1652, file: !1653, line: 459, baseType: !1681, size: 256, offset: 448)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 256, elements: !515)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1653, line: 428, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1652, file: !1653, line: 461, baseType: !59, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1652, file: !1653, line: 463, baseType: !59, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1652, file: !1653, line: 465, baseType: !59, size: 64, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1652, file: !1653, line: 466, baseType: !59, size: 64, offset: 896)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1652, file: !1653, line: 467, baseType: !59, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1652, file: !1653, line: 473, baseType: !1690, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1653, line: 10, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1652, file: !1653, line: 480, baseType: !59, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1652, file: !1653, line: 482, baseType: !27, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1652, file: !1653, line: 491, baseType: !62, size: 32, offset: 1184)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1652, file: !1653, line: 501, baseType: !1696, size: 33792, offset: 1536)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1697, line: 448, size: 33792, elements: !1698)
!1697 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1698 = !{!1699, !1700, !1701, !1865, !1866, !1872, !1873}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1696, file: !1697, line: 461, baseType: !27, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1696, file: !1697, line: 468, baseType: !59, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1696, file: !1697, line: 476, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1697, line: 356, size: 33280, align: 512, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1703, file: !1697, line: 358, baseType: !27, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1703, file: !1697, line: 361, baseType: !27, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1703, file: !1697, line: 364, baseType: !105, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1703, file: !1697, line: 367, baseType: !105, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1703, file: !1697, line: 370, baseType: !105, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1703, file: !1697, line: 373, baseType: !27, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1703, file: !1697, line: 376, baseType: !27, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1703, file: !1697, line: 391, baseType: !27, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1703, file: !1697, line: 394, baseType: !27, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1703, file: !1697, line: 397, baseType: !1715, size: 32768, offset: 512)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1697, line: 348, size: 32768, elements: !1716)
!1716 = !{!1717, !1732, !1771, !1848, !1861}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1715, file: !1697, line: 349, baseType: !1718, size: 896)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1697, line: 12, size: 896, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1731}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1718, file: !1697, line: 13, baseType: !62, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1718, file: !1697, line: 14, baseType: !62, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1718, file: !1697, line: 15, baseType: !62, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1718, file: !1697, line: 16, baseType: !62, size: 32, offset: 96)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1718, file: !1697, line: 17, baseType: !62, size: 32, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1718, file: !1697, line: 18, baseType: !62, size: 32, offset: 160)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1718, file: !1697, line: 19, baseType: !62, size: 32, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1718, file: !1697, line: 22, baseType: !1728, size: 640, offset: 224)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 20)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1718, file: !1697, line: 25, baseType: !62, size: 32, offset: 864)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1715, file: !1697, line: 350, baseType: !1733, size: 4096, align: 128)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1697, line: 34, size: 4096, align: 128, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1754, !1755, !1756, !1760, !1762, !1766}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1733, file: !1697, line: 35, baseType: !35, size: 16)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1733, file: !1697, line: 36, baseType: !35, size: 16, offset: 16)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1733, file: !1697, line: 37, baseType: !35, size: 16, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1733, file: !1697, line: 38, baseType: !35, size: 16, offset: 48)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1697, line: 39, baseType: !1740, size: 128, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1697, line: 39, size: 128, elements: !1741)
!1741 = !{!1742, !1747}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1697, line: 40, baseType: !1743, size: 128)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !1697, line: 40, size: 128, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1743, file: !1697, line: 41, baseType: !105, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1743, file: !1697, line: 42, baseType: !105, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1697, line: 44, baseType: !1748, size: 128)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !1697, line: 44, size: 128, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1748, file: !1697, line: 45, baseType: !62, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1748, file: !1697, line: 46, baseType: !62, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1748, file: !1697, line: 47, baseType: !62, size: 32, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1748, file: !1697, line: 48, baseType: !62, size: 32, offset: 96)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1733, file: !1697, line: 51, baseType: !62, size: 32, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1733, file: !1697, line: 52, baseType: !62, size: 32, offset: 224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1733, file: !1697, line: 55, baseType: !1757, size: 1024, offset: 256)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1024, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1733, file: !1697, line: 58, baseType: !1761, size: 2048, offset: 1280)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2048, elements: !1217)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1733, file: !1697, line: 60, baseType: !1763, size: 384, offset: 3328)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 384, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 12)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1697, line: 62, baseType: !1767, size: 384, offset: 3712)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1697, line: 62, size: 384, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1767, file: !1697, line: 63, baseType: !1763, size: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1767, file: !1697, line: 64, baseType: !1763, size: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1715, file: !1697, line: 351, baseType: !1772, size: 1088)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1697, line: 79, size: 1088, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1847}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1772, file: !1697, line: 80, baseType: !62, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1772, file: !1697, line: 81, baseType: !62, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1772, file: !1697, line: 82, baseType: !62, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1772, file: !1697, line: 83, baseType: !62, size: 32, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1772, file: !1697, line: 84, baseType: !62, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1772, file: !1697, line: 85, baseType: !62, size: 32, offset: 160)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1772, file: !1697, line: 86, baseType: !62, size: 32, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1772, file: !1697, line: 88, baseType: !1728, size: 640, offset: 224)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1772, file: !1697, line: 89, baseType: !225, size: 8, offset: 864)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1772, file: !1697, line: 90, baseType: !225, size: 8, offset: 872)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1772, file: !1697, line: 91, baseType: !225, size: 8, offset: 880)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1772, file: !1697, line: 92, baseType: !225, size: 8, offset: 888)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1772, file: !1697, line: 93, baseType: !225, size: 8, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1772, file: !1697, line: 94, baseType: !225, size: 8, offset: 904)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1772, file: !1697, line: 95, baseType: !1789, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1791, line: 11, size: 128, elements: !1792)
!1791 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1790, file: !1791, line: 12, baseType: !558, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1790, file: !1791, line: 13, baseType: !1795, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1797, line: 103, size: 1344, elements: !1798)
!1797 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1827, !1828, !1829}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1796, file: !1797, line: 109, baseType: !59, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1796, file: !1797, line: 110, baseType: !59, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1796, file: !1797, line: 111, baseType: !59, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1796, file: !1797, line: 112, baseType: !59, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1796, file: !1797, line: 113, baseType: !59, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1796, file: !1797, line: 114, baseType: !59, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1796, file: !1797, line: 117, baseType: !59, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1796, file: !1797, line: 118, baseType: !59, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1796, file: !1797, line: 119, baseType: !59, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1796, file: !1797, line: 120, baseType: !59, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1796, file: !1797, line: 121, baseType: !59, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1796, file: !1797, line: 122, baseType: !59, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1796, file: !1797, line: 123, baseType: !59, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1796, file: !1797, line: 124, baseType: !59, size: 64, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1796, file: !1797, line: 125, baseType: !59, size: 64, offset: 896)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1796, file: !1797, line: 139, baseType: !59, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1796, file: !1797, line: 142, baseType: !59, size: 64, offset: 1024)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1797, line: 144, baseType: !1817, size: 64, offset: 1088)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1797, line: 144, size: 64, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1817, file: !1797, line: 146, baseType: !35, size: 16)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1817, file: !1797, line: 148, baseType: !105, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1817, file: !1797, line: 150, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1797, line: 59, size: 64, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1822, file: !1797, line: 61, baseType: !105, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1822, file: !1797, line: 63, baseType: !105, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1822, file: !1797, line: 65, baseType: !105, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1796, file: !1797, line: 153, baseType: !59, size: 64, offset: 1152)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1796, file: !1797, line: 154, baseType: !59, size: 64, offset: 1216)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1797, line: 156, baseType: !1830, size: 64, offset: 1280)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1797, line: 156, size: 64, elements: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1830, file: !1797, line: 158, baseType: !35, size: 16)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1830, file: !1797, line: 160, baseType: !105, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1830, file: !1797, line: 162, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1797, line: 69, size: 64, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1835, file: !1797, line: 71, baseType: !105, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1835, file: !1797, line: 73, baseType: !105, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1835, file: !1797, line: 75, baseType: !105, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1835, file: !1797, line: 77, baseType: !105, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1835, file: !1797, line: 80, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1797, line: 83, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1835, file: !1797, line: 86, baseType: !105, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1835, file: !1797, line: 88, baseType: !105, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1835, file: !1797, line: 93, baseType: !105, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1835, file: !1797, line: 100, baseType: !105, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1772, file: !1697, line: 96, baseType: !62, size: 32, offset: 1024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1715, file: !1697, line: 352, baseType: !1849, size: 4608, align: 512)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1697, line: 333, size: 4608, align: 512, elements: !1850)
!1850 = !{!1851, !1852, !1859}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1849, file: !1697, line: 334, baseType: !1733, size: 4096, align: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1849, file: !1697, line: 335, baseType: !1853, size: 512, offset: 4096)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1697, line: 312, size: 512, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1853, file: !1697, line: 313, baseType: !105, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1853, file: !1697, line: 314, baseType: !105, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1853, file: !1697, line: 315, baseType: !1858, size: 384, offset: 128)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !903)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1849, file: !1697, line: 336, baseType: !1860, offset: 4608)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !613)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1715, file: !1697, line: 353, baseType: !1862, size: 32768)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 32768, elements: !1863)
!1863 = !{!1864}
!1864 = !DISubrange(count: 4096)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1696, file: !1697, line: 484, baseType: !1702, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1696, file: !1697, line: 491, baseType: !1867, size: 128, offset: 256)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1697, line: 404, size: 128, elements: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1867, file: !1697, line: 424, baseType: !105, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1867, file: !1697, line: 432, baseType: !27, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1867, file: !1697, line: 440, baseType: !27, size: 32, offset: 96)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1696, file: !1697, line: 498, baseType: !1867, size: 128, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1696, file: !1697, line: 508, baseType: !1703, size: 33280, align: 512, offset: 512)
!1874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.irq_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq_work\22 -D KBUILD_BASENAME=\22irq_work\22 -D KBUILD_MODNAME=\22irq_work\22 -D __KBUILD_MODNAME=kmod_irq_work -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq_work.ll kernel/irq_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !1875, retainedTypes: !1894, globals: !1924, splitDebugInlining: false, nameTableKind: None)
!1875 = !{!194, !665, !1528, !1876, !1881}
!1876 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1877, line: 10, baseType: !27, size: 32, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!1878 = !{!1879, !1880}
!1879 = !DIEnumerator(name: "false", value: 0)
!1880 = !DIEnumerator(name: "true", value: 1)
!1881 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 7, baseType: !27, size: 32, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1883 = !DIEnumerator(name: "CSD_FLAG_LOCK", value: 1)
!1884 = !DIEnumerator(name: "IRQ_WORK_PENDING", value: 1)
!1885 = !DIEnumerator(name: "IRQ_WORK_BUSY", value: 2)
!1886 = !DIEnumerator(name: "IRQ_WORK_LAZY", value: 4)
!1887 = !DIEnumerator(name: "IRQ_WORK_HARD_IRQ", value: 8)
!1888 = !DIEnumerator(name: "IRQ_WORK_CLAIMED", value: 3)
!1889 = !DIEnumerator(name: "CSD_TYPE_ASYNC", value: 0)
!1890 = !DIEnumerator(name: "CSD_TYPE_SYNC", value: 16)
!1891 = !DIEnumerator(name: "CSD_TYPE_IRQ_WORK", value: 32)
!1892 = !DIEnumerator(name: "CSD_TYPE_TTWU", value: 48)
!1893 = !DIEnumerator(name: "CSD_FLAG_TYPE_MASK", value: 240)
!1894 = !{!67, !773, !33, !59, !1895, !1896, !1899, !62, !1901, !1904, !1911, !1913, !27, !1914, !1917, !9, !1918, !50, !1919, !1921, !1922}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1906, line: 26, size: 192, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1905, file: !1906, line: 27, baseType: !67, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1905, file: !1906, line: 28, baseType: !67, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1905, file: !1906, line: 29, baseType: !33, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !7, line: 42, baseType: !59)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1924 = !{!0, !1925, !1927, !1932, !1937, !1965, !1967, !1969, !1971, !1973, !1975, !1981, !2012, !2014}
!1925 = !DIGlobalVariableExpression(var: !1926, expr: !DIExpression())
!1926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_work_queue287", scope: !1874, file: !3, line: 129, type: !67, isLocal: true, isDefinition: true)
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !1929, isLocal: true, isDefinition: true)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 144, elements: !1930)
!1930 = !{!1931}
!1931 = !DISubrange(count: 18)
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !1934, isLocal: true, isDefinition: true)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 40, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 5)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule288", scope: !1939, file: !3, line: 178, type: !67, isLocal: true, isDefinition: true)
!1939 = distinct !DISubprogram(name: "irq_work_queue_on", scope: !3, file: !3, line: 137, type: !1940, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!6, !9, !33}
!1942 = !{!1943, !1944, !1945, !1947, !1950, !1954, !1956, !1958, !1961, !1964}
!1943 = !DILocalVariable(name: "work", arg: 1, scope: !1939, file: !3, line: 137, type: !9)
!1944 = !DILocalVariable(name: "cpu", arg: 2, scope: !1939, file: !3, line: 137, type: !33)
!1945 = !DILocalVariable(name: "__ret_warn_on", scope: !1946, file: !3, line: 144, type: !33)
!1946 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 144, column: 2)
!1947 = !DILocalVariable(name: "__flags", scope: !1948, file: !3, line: 144, type: !33)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 144, column: 2)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 144, column: 2)
!1950 = !DILocalVariable(name: "pscr_ret__", scope: !1951, file: !3, line: 153, type: !33)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 153, column: 13)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 153, column: 13)
!1953 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 153, column: 6)
!1954 = !DILocalVariable(name: "__vpp_verify", scope: !1955, file: !3, line: 153, type: !555)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 153, column: 13)
!1956 = !DILocalVariable(name: "pfo_val__", scope: !1957, file: !3, line: 153, type: !62)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 153, column: 13)
!1958 = !DILocalVariable(name: "__ret_warn_on", scope: !1959, file: !3, line: 155, type: !33)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 155, column: 3)
!1960 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 153, column: 33)
!1961 = !DILocalVariable(name: "__flags", scope: !1962, file: !3, line: 155, type: !33)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 155, column: 3)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 155, column: 3)
!1964 = !DILabel(scope: !1939, name: "out", file: !3, line: 177)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_work_run289", scope: !1874, file: !3, line: 267, type: !67, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_work_sync290", scope: !1874, file: !3, line: 301, type: !67, isLocal: true, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_irq_work__291_327_irq_work_init_threadsearly292", scope: !1874, file: !3, line: 327, type: !67, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(name: "raised_list", scope: !1874, file: !3, line: 27, type: !1646, isLocal: true, isDefinition: true)
!1973 = !DIGlobalVariableExpression(var: !1974, expr: !DIExpression())
!1974 = distinct !DIGlobalVariable(name: "lazy_list", scope: !1874, file: !3, line: 28, type: !1646, isLocal: true, isDefinition: true)
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !1977, line: 38, type: !1978, isLocal: true, isDefinition: true)
!1977 = !DIFile(filename: "./include/trace/events/ipi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f4f38aacdac3626da7a091597b4cee")
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 216, elements: !1979)
!1979 = !{!1980}
!1980 = !DISubrange(count: 27)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_ipi_send_cpu256", scope: !1983, file: !1977, line: 38, type: !67, isLocal: true, isDefinition: true)
!1983 = distinct !DISubprogram(name: "trace_ipi_send_cpu", scope: !1977, file: !1977, line: 38, type: !1984, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !1987)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1986, !59, !67}
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1987 = !{!1988, !1989, !1990, !1991, !1994, !1997, !1999, !2001, !2004, !2007, !2009, !2010}
!1988 = !DILocalVariable(name: "cpu", arg: 1, scope: !1983, file: !1977, line: 38, type: !1986)
!1989 = !DILocalVariable(name: "callsite", arg: 2, scope: !1983, file: !1977, line: 38, type: !59)
!1990 = !DILocalVariable(name: "callback", arg: 3, scope: !1983, file: !1977, line: 38, type: !67)
!1991 = !DILocalVariable(name: "__idx", scope: !1992, file: !1977, line: 38, type: !33)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1977, line: 38, column: 1)
!1993 = distinct !DILexicalBlock(scope: !1983, file: !1977, line: 38, column: 1)
!1994 = !DILocalVariable(name: "pscr_ret__", scope: !1995, file: !1977, line: 38, type: !33)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !1977, line: 38, column: 1)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !1977, line: 38, column: 1)
!1997 = !DILocalVariable(name: "__vpp_verify", scope: !1998, file: !1977, line: 38, type: !555)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !1977, line: 38, column: 1)
!1999 = !DILocalVariable(name: "pfo_val__", scope: !2000, file: !1977, line: 38, type: !62)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !1977, line: 38, column: 1)
!2001 = !DILocalVariable(name: "__ret_warn_on", scope: !2002, file: !1977, line: 38, type: !33)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !1977, line: 38, column: 1)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !1977, line: 38, column: 1)
!2004 = !DILocalVariable(name: "__flags", scope: !2005, file: !1977, line: 38, type: !33)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !1977, line: 38, column: 1)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !1977, line: 38, column: 1)
!2007 = !DILocalVariable(name: "it_func_ptr", scope: !2008, file: !1977, line: 38, type: !1904)
!2008 = distinct !DILexicalBlock(scope: !1992, file: !1977, line: 38, column: 1)
!2009 = !DILocalVariable(name: "__data", scope: !2008, file: !1977, line: 38, type: !67)
!2010 = !DILocalVariable(name: "__UNIQUE_ID_rcu254", scope: !2011, file: !1977, line: 38, type: !1904)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !1977, line: 38, column: 1)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace257", scope: !1983, file: !1977, line: 38, type: !67, isLocal: true, isDefinition: true)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !2016, file: !2017, line: 112, type: !67, isLocal: true, isDefinition: true)
!2016 = distinct !DISubprogram(name: "might_resched", scope: !2017, file: !2017, line: 110, type: !1214, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2017 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "work", arg: 1, scope: !2, file: !3, line: 116, type: !9)
!2020 = !{!"rsp"}
!2021 = !{i32 7, !"Dwarf Version", i32 5}
!2022 = !{i32 2, !"Debug Info Version", i32 3}
!2023 = !{i32 1, !"wchar_size", i32 2}
!2024 = !{i32 8, !"cf-protection-branch", i32 1}
!2025 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2026 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2027 = !{i32 1, !"Code Model", i32 2}
!2028 = !{i32 1, !"override-stack-alignment", i32 8}
!2029 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2030 = distinct !DISubprogram(name: "arch_irq_work_raise", scope: !3, file: !3, line: 72, type: !1214, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2031 = !DILocation(line: 77, column: 1, scope: !2030)
!2032 = !DILocation(line: 116, column: 38, scope: !2)
!2033 = !DILocation(line: 119, column: 22, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2, file: !3, line: 119, column: 6)
!2035 = !DILocation(line: 119, column: 7, scope: !2034)
!2036 = !DILocation(line: 119, column: 6, scope: !2)
!2037 = !DILocation(line: 120, column: 3, scope: !2034)
!2038 = !DILocation(line: 123, column: 2, scope: !2)
!2039 = !DILocation(line: 123, column: 2, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2, file: !3, line: 123, column: 2)
!2041 = !{i64 2153996270}
!2042 = !DILocation(line: 124, column: 25, scope: !2)
!2043 = !DILocation(line: 124, column: 2, scope: !2)
!2044 = !DILocation(line: 125, column: 2, scope: !2)
!2045 = !DILocation(line: 125, column: 2, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2, file: !3, line: 125, column: 2)
!2047 = !{i64 2153996416}
!2048 = !DILocation(line: 125, column: 2, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 125, column: 2)
!2050 = !DILocation(line: 125, column: 2, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 125, column: 2)
!2052 = !{i64 2153996598}
!2053 = !DILocation(line: 127, column: 2, scope: !2)
!2054 = !DILocation(line: 128, column: 1, scope: !2)
!2055 = distinct !DISubprogram(name: "irq_work_claim", scope: !3, file: !3, line: 57, type: !4, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2056)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "work", arg: 1, scope: !2055, file: !3, line: 57, type: !9)
!2058 = !DILocalVariable(name: "oflags", scope: !2055, file: !3, line: 59, type: !33)
!2059 = !DILocation(line: 57, column: 45, scope: !2055)
!2060 = !DILocation(line: 59, column: 2, scope: !2055)
!2061 = !DILocation(line: 59, column: 6, scope: !2055)
!2062 = !DILocation(line: 61, column: 66, scope: !2055)
!2063 = !DILocation(line: 61, column: 72, scope: !2055)
!2064 = !DILocation(line: 61, column: 77, scope: !2055)
!2065 = !DILocation(line: 61, column: 11, scope: !2055)
!2066 = !DILocation(line: 61, column: 9, scope: !2055)
!2067 = !DILocation(line: 67, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 67, column: 6)
!2069 = !DILocation(line: 67, column: 13, scope: !2068)
!2070 = !DILocation(line: 67, column: 6, scope: !2055)
!2071 = !DILocation(line: 68, column: 3, scope: !2068)
!2072 = !DILocation(line: 69, column: 2, scope: !2055)
!2073 = !DILocation(line: 70, column: 1, scope: !2055)
!2074 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2075, file: !2075, line: 78, type: !1207, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2076)
!2075 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2076 = !{!2077, !2078, !2081}
!2077 = !DILocalVariable(name: "val", arg: 1, scope: !2074, file: !2075, line: 78, type: !33)
!2078 = !DILocalVariable(name: "pao_ID__", scope: !2079, file: !2075, line: 80, type: !2080)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !2075, line: 80, column: 2)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!2081 = !DILocalVariable(name: "pto_val__", scope: !2082, file: !2075, line: 80, type: !62)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !2075, line: 80, column: 2)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2075, line: 80, column: 2)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !2075, line: 80, column: 2)
!2085 = !DILocation(line: 78, column: 53, scope: !2074)
!2086 = !DILocation(line: 80, column: 2, scope: !2074)
!2087 = !DILocation(line: 80, column: 2, scope: !2079)
!2088 = !DILocation(line: 80, column: 2, scope: !2084)
!2089 = !DILocation(line: 80, column: 2, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !2075, line: 80, column: 2)
!2091 = !{i64 2149501818}
!2092 = !DILocation(line: 80, column: 2, scope: !2083)
!2093 = !DILocation(line: 80, column: 2, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2083, file: !2075, line: 80, column: 2)
!2095 = !{i64 2149502113}
!2096 = !DILocation(line: 80, column: 2, scope: !2082)
!2097 = !{i64 2149502818}
!2098 = !DILocation(line: 81, column: 1, scope: !2074)
!2099 = distinct !DISubprogram(name: "__irq_work_queue_local", scope: !3, file: !3, line: 88, type: !43, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2110, !2112, !2115}
!2101 = !DILocalVariable(name: "work", arg: 1, scope: !2099, file: !3, line: 88, type: !9)
!2102 = !DILocalVariable(name: "list", scope: !2099, file: !3, line: 90, type: !1895)
!2103 = !DILocalVariable(name: "rt_lazy_work", scope: !2099, file: !3, line: 91, type: !6)
!2104 = !DILocalVariable(name: "lazy_work", scope: !2099, file: !3, line: 92, type: !6)
!2105 = !DILocalVariable(name: "work_flags", scope: !2099, file: !3, line: 93, type: !33)
!2106 = !DILocalVariable(name: "__vpp_verify", scope: !2107, file: !3, line: 103, type: !555)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 103, column: 10)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 103, column: 10)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 102, column: 6)
!2110 = !DILocalVariable(name: "tcp_ptr__", scope: !2111, file: !3, line: 103, type: !59)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 103, column: 10)
!2112 = !DILocalVariable(name: "__vpp_verify", scope: !2113, file: !3, line: 105, type: !555)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 105, column: 10)
!2114 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 105, column: 10)
!2115 = !DILocalVariable(name: "tcp_ptr__", scope: !2116, file: !3, line: 105, type: !59)
!2116 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 105, column: 10)
!2117 = !DILocation(line: 88, column: 53, scope: !2099)
!2118 = !DILocation(line: 90, column: 2, scope: !2099)
!2119 = !DILocation(line: 90, column: 21, scope: !2099)
!2120 = !DILocation(line: 91, column: 2, scope: !2099)
!2121 = !DILocation(line: 91, column: 7, scope: !2099)
!2122 = !DILocation(line: 92, column: 2, scope: !2099)
!2123 = !DILocation(line: 92, column: 7, scope: !2099)
!2124 = !DILocation(line: 93, column: 2, scope: !2099)
!2125 = !DILocation(line: 93, column: 6, scope: !2099)
!2126 = !DILocation(line: 95, column: 28, scope: !2099)
!2127 = !DILocation(line: 95, column: 34, scope: !2099)
!2128 = !DILocation(line: 95, column: 39, scope: !2099)
!2129 = !DILocation(line: 95, column: 15, scope: !2099)
!2130 = !DILocation(line: 95, column: 13, scope: !2099)
!2131 = !DILocation(line: 96, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 96, column: 6)
!2133 = !DILocation(line: 96, column: 17, scope: !2132)
!2134 = !DILocation(line: 96, column: 6, scope: !2099)
!2135 = !DILocation(line: 97, column: 13, scope: !2132)
!2136 = !DILocation(line: 97, column: 3, scope: !2132)
!2137 = !DILocation(line: 102, column: 6, scope: !2109)
!2138 = !{i8 0, i8 2}
!2139 = !DILocation(line: 102, column: 16, scope: !2109)
!2140 = !DILocation(line: 102, column: 19, scope: !2109)
!2141 = !DILocation(line: 102, column: 6, scope: !2099)
!2142 = !DILocation(line: 103, column: 10, scope: !2108)
!2143 = !DILocation(line: 103, column: 10, scope: !2107)
!2144 = !DILocation(line: 103, column: 10, scope: !2111)
!2145 = !{i64 2153995243}
!2146 = !DILocation(line: 103, column: 8, scope: !2109)
!2147 = !DILocation(line: 103, column: 3, scope: !2109)
!2148 = !DILocation(line: 105, column: 10, scope: !2114)
!2149 = !DILocation(line: 105, column: 10, scope: !2113)
!2150 = !DILocation(line: 105, column: 10, scope: !2116)
!2151 = !{i64 2153995867}
!2152 = !DILocation(line: 105, column: 8, scope: !2109)
!2153 = !DILocation(line: 107, column: 18, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 107, column: 6)
!2155 = !DILocation(line: 107, column: 24, scope: !2154)
!2156 = !DILocation(line: 107, column: 29, scope: !2154)
!2157 = !DILocation(line: 107, column: 36, scope: !2154)
!2158 = !DILocation(line: 107, column: 7, scope: !2154)
!2159 = !DILocation(line: 107, column: 6, scope: !2099)
!2160 = !DILocation(line: 108, column: 3, scope: !2154)
!2161 = !DILocation(line: 111, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 111, column: 6)
!2163 = !DILocation(line: 111, column: 17, scope: !2162)
!2164 = !DILocation(line: 111, column: 20, scope: !2162)
!2165 = !DILocation(line: 111, column: 6, scope: !2099)
!2166 = !DILocation(line: 112, column: 18, scope: !2162)
!2167 = !DILocation(line: 112, column: 3, scope: !2162)
!2168 = !DILocation(line: 113, column: 1, scope: !2099)
!2169 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2075, file: !2075, line: 93, type: !2170, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!6}
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "c", scope: !2174, file: !2075, line: 95, type: !6)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !2075, line: 95, column: 9)
!2175 = !DILocation(line: 95, column: 9, scope: !2174)
!2176 = !{i64 2149506174, i64 2149506267}
!2177 = !DILocation(line: 95, column: 9, scope: !2169)
!2178 = !DILocation(line: 95, column: 2, scope: !2169)
!2179 = !DILocation(line: 137, column: 41, scope: !1939)
!2180 = !DILocation(line: 137, column: 51, scope: !1939)
!2181 = !DILocation(line: 144, column: 2, scope: !1946)
!2182 = !DILocation(line: 144, column: 2, scope: !1949)
!2183 = !DILocation(line: 144, column: 2, scope: !1948)
!2184 = !DILocation(line: 144, column: 2, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 144, column: 2)
!2186 = !DILocation(line: 144, column: 2, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 144, column: 2)
!2188 = !{i64 2154000568, i64 2154000597, i64 2154000643, i64 2154000701, i64 2154000755, i64 2154000809, i64 2154000864, i64 2154000895, i64 2154001203, i64 2154001209, i64 2154001256, i64 2154001279, i64 2154001305}
!2189 = !DILocation(line: 144, column: 2, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 144, column: 2)
!2191 = !DILocation(line: 144, column: 2, scope: !1939)
!2192 = !DILocation(line: 147, column: 22, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 147, column: 6)
!2194 = !DILocation(line: 147, column: 7, scope: !2193)
!2195 = !DILocation(line: 147, column: 6, scope: !1939)
!2196 = !DILocation(line: 148, column: 3, scope: !2193)
!2197 = !DILocation(line: 150, column: 33, scope: !1939)
!2198 = !DILocation(line: 150, column: 2, scope: !1939)
!2199 = !DILocation(line: 152, column: 2, scope: !1939)
!2200 = !DILocation(line: 152, column: 2, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 152, column: 2)
!2202 = !{i64 2154001670}
!2203 = !DILocation(line: 153, column: 6, scope: !1953)
!2204 = !DILocation(line: 153, column: 13, scope: !1952)
!2205 = !DILocation(line: 153, column: 13, scope: !1951)
!2206 = !DILocation(line: 153, column: 13, scope: !1955)
!2207 = !DILocation(line: 153, column: 13, scope: !1957)
!2208 = !{i64 2154008390}
!2209 = !DILocation(line: 153, column: 10, scope: !1953)
!2210 = !DILocation(line: 153, column: 6, scope: !1939)
!2211 = !DILocation(line: 155, column: 3, scope: !1959)
!2212 = !DILocation(line: 155, column: 3, scope: !1963)
!2213 = !DILocation(line: 155, column: 3, scope: !1962)
!2214 = !DILocation(line: 155, column: 3, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 155, column: 3)
!2216 = !DILocation(line: 155, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 155, column: 3)
!2218 = !{i64 2154009977, i64 2154010006, i64 2154010052, i64 2154010110, i64 2154010164, i64 2154010218, i64 2154010273, i64 2154010304, i64 2154010612, i64 2154010618, i64 2154010665, i64 2154010688, i64 2154010714}
!2219 = !DILocation(line: 155, column: 3, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 155, column: 3)
!2221 = !DILocation(line: 155, column: 3, scope: !1960)
!2222 = !DILocation(line: 173, column: 27, scope: !1960)
!2223 = !DILocation(line: 173, column: 33, scope: !1960)
!2224 = !DILocation(line: 173, column: 39, scope: !1960)
!2225 = !DILocation(line: 173, column: 44, scope: !1960)
!2226 = !DILocation(line: 173, column: 3, scope: !1960)
!2227 = !DILocation(line: 174, column: 2, scope: !1960)
!2228 = !DILocation(line: 175, column: 26, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 174, column: 9)
!2230 = !DILocation(line: 175, column: 3, scope: !2229)
!2231 = !DILocation(line: 153, column: 13, scope: !1953)
!2232 = !DILocation(line: 177, column: 1, scope: !1939)
!2233 = !DILocation(line: 178, column: 2, scope: !1939)
!2234 = !DILocation(line: 178, column: 2, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 178, column: 2)
!2236 = !{i64 2154013522}
!2237 = !DILocation(line: 178, column: 2, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 178, column: 2)
!2239 = !DILocation(line: 178, column: 2, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 178, column: 2)
!2241 = !{i64 2154013704}
!2242 = !DILocation(line: 180, column: 2, scope: !1939)
!2243 = !DILocation(line: 182, column: 1, scope: !1939)
!2244 = distinct !DISubprogram(name: "cpu_online", scope: !338, file: !338, line: 1080, type: !2245, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!6, !27}
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "cpu", arg: 1, scope: !2244, file: !338, line: 1080, type: !27)
!2249 = !DILocation(line: 1080, column: 44, scope: !2244)
!2250 = !DILocation(line: 1082, column: 26, scope: !2244)
!2251 = !DILocation(line: 1082, column: 9, scope: !2244)
!2252 = !DILocation(line: 1082, column: 2, scope: !2244)
!2253 = distinct !DISubprogram(name: "kasan_record_aux_stack_noalloc", scope: !2254, file: !2254, line: 330, type: !2255, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2257)
!2254 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !67}
!2257 = !{!2258}
!2258 = !DILocalVariable(name: "ptr", arg: 1, scope: !2253, file: !2254, line: 330, type: !67)
!2259 = !DILocation(line: 330, column: 57, scope: !2253)
!2260 = !DILocation(line: 330, column: 63, scope: !2253)
!2261 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2262, file: !2262, line: 313, type: !2263, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2265)
!2262 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !917}
!2265 = !{!2266}
!2266 = !DILocalVariable(name: "op", arg: 1, scope: !2261, file: !2262, line: 313, type: !917)
!2267 = !DILocation(line: 313, column: 66, scope: !2261)
!2268 = !DILocation(line: 313, column: 72, scope: !2261)
!2269 = distinct !DISubprogram(name: "preempt_count", scope: !2075, file: !2075, line: 25, type: !2270, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!33}
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "pfo_val__", scope: !2274, file: !2075, line: 27, type: !62)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !2075, line: 27, column: 9)
!2275 = !DILocation(line: 27, column: 9, scope: !2274)
!2276 = !{i64 2149491853}
!2277 = !DILocation(line: 27, column: 9, scope: !2269)
!2278 = !DILocation(line: 27, column: 48, scope: !2269)
!2279 = !DILocation(line: 27, column: 2, scope: !2269)
!2280 = !DISubprogram(name: "__smp_call_single_queue", scope: !2281, file: !2281, line: 45, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2281 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !33, !22}
!2284 = distinct !DISubprogram(name: "irq_work_needs_cpu", scope: !3, file: !3, line: 184, type: !2170, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2285)
!2285 = !{!2286, !2287, !2288, !2291, !2293, !2296, !2298, !2300, !2303, !2305, !2307}
!2286 = !DILocalVariable(name: "raised", scope: !2284, file: !3, line: 186, type: !1895)
!2287 = !DILocalVariable(name: "lazy", scope: !2284, file: !3, line: 186, type: !1895)
!2288 = !DILocalVariable(name: "__vpp_verify", scope: !2289, file: !3, line: 188, type: !555)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 188, column: 11)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 188, column: 11)
!2291 = !DILocalVariable(name: "tcp_ptr__", scope: !2292, file: !3, line: 188, type: !59)
!2292 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 188, column: 11)
!2293 = !DILocalVariable(name: "__vpp_verify", scope: !2294, file: !3, line: 189, type: !555)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 189, column: 9)
!2295 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 189, column: 9)
!2296 = !DILocalVariable(name: "tcp_ptr__", scope: !2297, file: !3, line: 189, type: !59)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 189, column: 9)
!2298 = !DILocalVariable(name: "__ret_warn_on", scope: !2299, file: !3, line: 196, type: !33)
!2299 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 196, column: 2)
!2300 = !DILocalVariable(name: "pscr_ret__", scope: !2301, file: !3, line: 196, type: !33)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 196, column: 2)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 196, column: 2)
!2303 = !DILocalVariable(name: "__vpp_verify", scope: !2304, file: !3, line: 196, type: !555)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 196, column: 2)
!2305 = !DILocalVariable(name: "pfo_val__", scope: !2306, file: !3, line: 196, type: !62)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 196, column: 2)
!2307 = !DILocalVariable(name: "__flags", scope: !2308, file: !3, line: 196, type: !33)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 196, column: 2)
!2309 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 196, column: 2)
!2310 = !DILocation(line: 186, column: 2, scope: !2284)
!2311 = !DILocation(line: 186, column: 21, scope: !2284)
!2312 = !DILocation(line: 186, column: 30, scope: !2284)
!2313 = !DILocation(line: 188, column: 11, scope: !2290)
!2314 = !DILocation(line: 188, column: 11, scope: !2289)
!2315 = !DILocation(line: 188, column: 11, scope: !2292)
!2316 = !{i64 2154015657}
!2317 = !DILocation(line: 188, column: 9, scope: !2284)
!2318 = !DILocation(line: 189, column: 9, scope: !2295)
!2319 = !DILocation(line: 189, column: 9, scope: !2294)
!2320 = !DILocation(line: 189, column: 9, scope: !2297)
!2321 = !{i64 2154016277}
!2322 = !DILocation(line: 189, column: 7, scope: !2284)
!2323 = !DILocation(line: 191, column: 18, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 191, column: 6)
!2325 = !DILocation(line: 191, column: 6, scope: !2324)
!2326 = !DILocation(line: 191, column: 26, scope: !2324)
!2327 = !DILocation(line: 191, column: 29, scope: !2324)
!2328 = !DILocation(line: 191, column: 6, scope: !2284)
!2329 = !DILocation(line: 192, column: 19, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 192, column: 7)
!2331 = !DILocation(line: 192, column: 7, scope: !2330)
!2332 = !DILocation(line: 192, column: 7, scope: !2324)
!2333 = !DILocation(line: 193, column: 4, scope: !2330)
!2334 = !DILocation(line: 192, column: 23, scope: !2330)
!2335 = !DILocation(line: 196, column: 2, scope: !2299)
!2336 = !DILocation(line: 196, column: 2, scope: !2302)
!2337 = !DILocation(line: 196, column: 2, scope: !2301)
!2338 = !DILocation(line: 196, column: 2, scope: !2304)
!2339 = !DILocation(line: 196, column: 2, scope: !2306)
!2340 = !{i64 2154024114}
!2341 = !DILocation(line: 196, column: 2, scope: !2309)
!2342 = !DILocation(line: 196, column: 2, scope: !2308)
!2343 = !DILocation(line: 196, column: 2, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 196, column: 2)
!2345 = !DILocation(line: 196, column: 2, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 196, column: 2)
!2347 = !{i64 2154025043, i64 2154025072, i64 2154025118, i64 2154025176, i64 2154025230, i64 2154025284, i64 2154025339, i64 2154025370, i64 2154025678, i64 2154025684, i64 2154025731, i64 2154025754, i64 2154025780}
!2348 = !DILocation(line: 196, column: 2, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 196, column: 2)
!2350 = !DILocation(line: 196, column: 2, scope: !2284)
!2351 = !DILocation(line: 198, column: 2, scope: !2284)
!2352 = !DILocation(line: 199, column: 1, scope: !2284)
!2353 = distinct !DISubprogram(name: "llist_empty", scope: !19, file: !19, line: 189, type: !2354, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2358)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!6, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "head", arg: 1, scope: !2353, file: !19, line: 189, type: !2356)
!2360 = !DILocation(line: 189, column: 57, scope: !2353)
!2361 = !DILocation(line: 191, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2353, file: !19, line: 191, column: 9)
!2363 = !DILocation(line: 191, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2362, file: !19, line: 191, column: 9)
!2365 = !DILocation(line: 191, column: 32, scope: !2353)
!2366 = !DILocation(line: 191, column: 2, scope: !2353)
!2367 = distinct !DISubprogram(name: "arch_irq_work_has_interrupt", scope: !2368, file: !2368, line: 8, type: !2170, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2368 = !DIFile(filename: "./arch/x86/include/asm/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "afd41a5ce996d0cc8fe9d8b71de1d506")
!2369 = !DILocation(line: 10, column: 9, scope: !2367)
!2370 = !DILocation(line: 10, column: 2, scope: !2367)
!2371 = distinct !DISubprogram(name: "irq_work_single", scope: !3, file: !3, line: 201, type: !2255, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2372)
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !3, line: 201, type: !67)
!2374 = !DILocalVariable(name: "work", scope: !2371, file: !3, line: 203, type: !9)
!2375 = !DILocalVariable(name: "flags", scope: !2371, file: !3, line: 204, type: !33)
!2376 = !DILocation(line: 201, column: 28, scope: !2371)
!2377 = !DILocation(line: 203, column: 2, scope: !2371)
!2378 = !DILocation(line: 203, column: 19, scope: !2371)
!2379 = !DILocation(line: 203, column: 26, scope: !2371)
!2380 = !DILocation(line: 204, column: 2, scope: !2371)
!2381 = !DILocation(line: 204, column: 6, scope: !2371)
!2382 = !DILocation(line: 211, column: 23, scope: !2371)
!2383 = !DILocation(line: 211, column: 29, scope: !2371)
!2384 = !DILocation(line: 211, column: 34, scope: !2371)
!2385 = !DILocation(line: 211, column: 10, scope: !2371)
!2386 = !DILocation(line: 211, column: 8, scope: !2371)
!2387 = !DILocation(line: 212, column: 8, scope: !2371)
!2388 = !DILocation(line: 213, column: 14, scope: !2371)
!2389 = !DILocation(line: 213, column: 20, scope: !2371)
!2390 = !DILocation(line: 213, column: 25, scope: !2371)
!2391 = !DILocation(line: 213, column: 34, scope: !2371)
!2392 = !DILocation(line: 213, column: 2, scope: !2371)
!2393 = !DILocation(line: 218, column: 2, scope: !2371)
!2394 = !DILocation(line: 218, column: 2, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 218, column: 2)
!2396 = !DILocation(line: 218, column: 2, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 218, column: 2)
!2398 = !{i64 2154026088}
!2399 = !DILocation(line: 220, column: 2, scope: !2371)
!2400 = !DILocation(line: 220, column: 2, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 220, column: 2)
!2402 = !DILocation(line: 221, column: 2, scope: !2371)
!2403 = !DILocation(line: 221, column: 8, scope: !2371)
!2404 = !DILocation(line: 221, column: 13, scope: !2371)
!2405 = !DILocation(line: 222, column: 2, scope: !2371)
!2406 = !DILocation(line: 222, column: 2, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 222, column: 2)
!2408 = !DILocation(line: 228, column: 24, scope: !2371)
!2409 = !DILocation(line: 228, column: 30, scope: !2371)
!2410 = !DILocation(line: 228, column: 35, scope: !2371)
!2411 = !DILocation(line: 228, column: 44, scope: !2371)
!2412 = !DILocation(line: 228, column: 51, scope: !2371)
!2413 = !DILocation(line: 228, column: 57, scope: !2371)
!2414 = !DILocation(line: 228, column: 8, scope: !2371)
!2415 = !DILocation(line: 231, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 230, column: 6)
!2417 = !DILocation(line: 230, column: 6, scope: !2371)
!2418 = !DILocation(line: 232, column: 20, scope: !2416)
!2419 = !DILocation(line: 232, column: 26, scope: !2416)
!2420 = !DILocation(line: 232, column: 3, scope: !2416)
!2421 = !DILocation(line: 233, column: 1, scope: !2371)
!2422 = distinct !DISubprogram(name: "atomic_read", scope: !2423, file: !2423, line: 30, type: !2424, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2428)
!2423 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!33, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2428 = !{!2429}
!2429 = !DILocalVariable(name: "v", arg: 1, scope: !2422, file: !2423, line: 30, type: !2426)
!2430 = !DILocation(line: 30, column: 29, scope: !2422)
!2431 = !DILocation(line: 32, column: 25, scope: !2422)
!2432 = !DILocation(line: 32, column: 2, scope: !2422)
!2433 = !DILocation(line: 33, column: 25, scope: !2422)
!2434 = !DILocation(line: 33, column: 9, scope: !2422)
!2435 = !DILocation(line: 33, column: 2, scope: !2422)
!2436 = distinct !DISubprogram(name: "atomic_set", scope: !2423, file: !2423, line: 65, type: !2437, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2440)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{null, !2439, !33}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "v", arg: 1, scope: !2436, file: !2423, line: 65, type: !2439)
!2442 = !DILocalVariable(name: "i", arg: 2, scope: !2436, file: !2423, line: 65, type: !33)
!2443 = !DILocation(line: 65, column: 22, scope: !2436)
!2444 = !DILocation(line: 65, column: 29, scope: !2436)
!2445 = !DILocation(line: 67, column: 26, scope: !2436)
!2446 = !DILocation(line: 67, column: 2, scope: !2436)
!2447 = !DILocation(line: 68, column: 17, scope: !2436)
!2448 = !DILocation(line: 68, column: 20, scope: !2436)
!2449 = !DILocation(line: 68, column: 2, scope: !2436)
!2450 = !DILocation(line: 69, column: 1, scope: !2436)
!2451 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !2423, file: !2423, line: 1191, type: !2452, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!33, !2439, !33, !33}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "v", arg: 1, scope: !2451, file: !2423, line: 1191, type: !2439)
!2456 = !DILocalVariable(name: "old", arg: 2, scope: !2451, file: !2423, line: 1191, type: !33)
!2457 = !DILocalVariable(name: "new", arg: 3, scope: !2451, file: !2423, line: 1191, type: !33)
!2458 = !DILocation(line: 1191, column: 26, scope: !2451)
!2459 = !DILocation(line: 1191, column: 33, scope: !2451)
!2460 = !DILocation(line: 1191, column: 42, scope: !2451)
!2461 = !DILocation(line: 1193, column: 2, scope: !2451)
!2462 = !DILocation(line: 1193, column: 2, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2451, file: !2423, line: 1193, column: 2)
!2464 = !DILocation(line: 1194, column: 31, scope: !2451)
!2465 = !DILocation(line: 1194, column: 2, scope: !2451)
!2466 = !DILocation(line: 1195, column: 28, scope: !2451)
!2467 = !DILocation(line: 1195, column: 31, scope: !2451)
!2468 = !DILocation(line: 1195, column: 36, scope: !2451)
!2469 = !DILocation(line: 1195, column: 9, scope: !2451)
!2470 = !DILocation(line: 1195, column: 2, scope: !2451)
!2471 = !DISubprogram(name: "rcuwait_wake_up", scope: !47, file: !47, line: 37, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!33, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!2475 = distinct !DISubprogram(name: "irq_work_run", scope: !3, file: !3, line: 259, type: !1214, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2476)
!2476 = !{!2477, !2480, !2482, !2486}
!2477 = !DILocalVariable(name: "__vpp_verify", scope: !2478, file: !3, line: 261, type: !555)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 261, column: 20)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 261, column: 20)
!2480 = !DILocalVariable(name: "tcp_ptr__", scope: !2481, file: !3, line: 261, type: !59)
!2481 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 261, column: 20)
!2482 = !DILocalVariable(name: "__vpp_verify", scope: !2483, file: !3, line: 263, type: !555)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 263, column: 21)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 263, column: 21)
!2485 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 262, column: 6)
!2486 = !DILocalVariable(name: "tcp_ptr__", scope: !2487, file: !3, line: 263, type: !59)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 263, column: 21)
!2488 = !DILocation(line: 261, column: 20, scope: !2479)
!2489 = !DILocation(line: 261, column: 20, scope: !2478)
!2490 = !DILocation(line: 261, column: 20, scope: !2481)
!2491 = !{i64 2154033578}
!2492 = !DILocation(line: 261, column: 2, scope: !2475)
!2493 = !DILocation(line: 263, column: 21, scope: !2484)
!2494 = !DILocation(line: 263, column: 21, scope: !2483)
!2495 = !DILocation(line: 263, column: 21, scope: !2487)
!2496 = !{i64 2154034972}
!2497 = !DILocation(line: 263, column: 3, scope: !2485)
!2498 = !DILocation(line: 266, column: 1, scope: !2475)
!2499 = distinct !DISubprogram(name: "irq_work_run_list", scope: !3, file: !3, line: 235, type: !2500, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !1895}
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2511, !2514, !2515, !2518, !2519, !2522}
!2503 = !DILocalVariable(name: "list", arg: 1, scope: !2499, file: !3, line: 235, type: !1895)
!2504 = !DILocalVariable(name: "work", scope: !2499, file: !3, line: 237, type: !9)
!2505 = !DILocalVariable(name: "tmp", scope: !2499, file: !3, line: 237, type: !9)
!2506 = !DILocalVariable(name: "llnode", scope: !2499, file: !3, line: 238, type: !22)
!2507 = !DILocalVariable(name: "_flags", scope: !2508, file: !3, line: 245, type: !59)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 245, column: 2)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 245, column: 2)
!2510 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 245, column: 2)
!2511 = !DILocalVariable(name: "__dummy", scope: !2512, file: !3, line: 245, type: !59)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 245, column: 2)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 245, column: 2)
!2514 = !DILocalVariable(name: "__dummy2", scope: !2512, file: !3, line: 245, type: !59)
!2515 = !DILocalVariable(name: "__dummy", scope: !2516, file: !3, line: 245, type: !59)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 245, column: 2)
!2517 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 245, column: 2)
!2518 = !DILocalVariable(name: "__dummy2", scope: !2516, file: !3, line: 245, type: !59)
!2519 = !DILocalVariable(name: "__mptr", scope: !2520, file: !3, line: 251, type: !67)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 251, column: 2)
!2521 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 251, column: 2)
!2522 = !DILocalVariable(name: "__mptr", scope: !2523, file: !3, line: 251, type: !67)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 251, column: 2)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 251, column: 2)
!2525 = !DILocation(line: 235, column: 50, scope: !2499)
!2526 = !DILocation(line: 237, column: 2, scope: !2499)
!2527 = !DILocation(line: 237, column: 19, scope: !2499)
!2528 = !DILocation(line: 237, column: 26, scope: !2499)
!2529 = !DILocation(line: 238, column: 2, scope: !2499)
!2530 = !DILocation(line: 238, column: 21, scope: !2499)
!2531 = !DILocation(line: 245, column: 2, scope: !2499)
!2532 = !DILocation(line: 245, column: 2, scope: !2508)
!2533 = !DILocation(line: 245, column: 2, scope: !2512)
!2534 = !DILocation(line: 245, column: 2, scope: !2513)
!2535 = !DILocation(line: 245, column: 2, scope: !2516)
!2536 = !DILocation(line: 245, column: 2, scope: !2517)
!2537 = !DILocation(line: 245, column: 2, scope: !2509)
!2538 = !DILocation(line: 0, scope: !2509)
!2539 = !DILocation(line: 245, column: 2, scope: !2510)
!2540 = !DILocation(line: 245, column: 2, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 245, column: 2)
!2542 = !DILocation(line: 245, column: 2, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 245, column: 2)
!2544 = !DILocation(line: 245, column: 2, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 245, column: 2)
!2546 = !{i64 2154029398, i64 2154029427, i64 2154029473, i64 2154029531, i64 2154029585, i64 2154029639, i64 2154029694, i64 2154029725}
!2547 = !DILocation(line: 247, column: 18, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 247, column: 6)
!2549 = !DILocation(line: 247, column: 6, scope: !2548)
!2550 = !DILocation(line: 247, column: 6, scope: !2499)
!2551 = !DILocation(line: 248, column: 3, scope: !2548)
!2552 = !DILocation(line: 250, column: 25, scope: !2499)
!2553 = !DILocation(line: 250, column: 11, scope: !2499)
!2554 = !DILocation(line: 250, column: 9, scope: !2499)
!2555 = !DILocation(line: 251, column: 2, scope: !2520)
!2556 = !DILocation(line: 251, column: 2, scope: !2521)
!2557 = !DILocation(line: 251, column: 2, scope: !2524)
!2558 = !DILocation(line: 251, column: 2, scope: !2523)
!2559 = !DILocation(line: 0, scope: !2524)
!2560 = !DILocation(line: 252, column: 19, scope: !2524)
!2561 = !DILocation(line: 252, column: 3, scope: !2524)
!2562 = distinct !{!2562, !2556, !2563, !2564, !2565}
!2563 = !DILocation(line: 252, column: 23, scope: !2521)
!2564 = !{!"llvm.loop.mustprogress"}
!2565 = !{!"llvm.loop.unroll.disable"}
!2566 = !DILocation(line: 253, column: 1, scope: !2499)
!2567 = distinct !DISubprogram(name: "irq_work_tick", scope: !3, file: !3, line: 269, type: !1214, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2568)
!2568 = !{!2569, !2570, !2573, !2575, !2579}
!2569 = !DILocalVariable(name: "raised", scope: !2567, file: !3, line: 271, type: !1895)
!2570 = !DILocalVariable(name: "__vpp_verify", scope: !2571, file: !3, line: 271, type: !555)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 271, column: 30)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 271, column: 30)
!2573 = !DILocalVariable(name: "tcp_ptr__", scope: !2574, file: !3, line: 271, type: !59)
!2574 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 271, column: 30)
!2575 = !DILocalVariable(name: "__vpp_verify", scope: !2576, file: !3, line: 277, type: !555)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 277, column: 21)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 277, column: 21)
!2578 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 276, column: 6)
!2579 = !DILocalVariable(name: "tcp_ptr__", scope: !2580, file: !3, line: 277, type: !59)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 277, column: 21)
!2581 = !DILocation(line: 271, column: 2, scope: !2567)
!2582 = !DILocation(line: 271, column: 21, scope: !2567)
!2583 = !DILocation(line: 271, column: 30, scope: !2572)
!2584 = !DILocation(line: 271, column: 30, scope: !2571)
!2585 = !DILocation(line: 271, column: 30, scope: !2574)
!2586 = !{i64 2154037255}
!2587 = !DILocation(line: 273, column: 19, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 273, column: 6)
!2589 = !DILocation(line: 273, column: 7, scope: !2588)
!2590 = !DILocation(line: 273, column: 27, scope: !2588)
!2591 = !DILocation(line: 273, column: 31, scope: !2588)
!2592 = !DILocation(line: 273, column: 6, scope: !2567)
!2593 = !DILocation(line: 274, column: 21, scope: !2588)
!2594 = !DILocation(line: 274, column: 3, scope: !2588)
!2595 = !DILocation(line: 277, column: 21, scope: !2577)
!2596 = !DILocation(line: 277, column: 21, scope: !2576)
!2597 = !DILocation(line: 277, column: 21, scope: !2580)
!2598 = !{i64 2154038649}
!2599 = !DILocation(line: 277, column: 3, scope: !2578)
!2600 = !DILocation(line: 280, column: 1, scope: !2567)
!2601 = distinct !DISubprogram(name: "irq_work_sync", scope: !3, file: !3, line: 286, type: !43, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2602)
!2602 = !{!2603, !2604, !2608, !2617}
!2603 = !DILocalVariable(name: "work", arg: 1, scope: !2601, file: !3, line: 286, type: !9)
!2604 = !DILocalVariable(name: "__ret", scope: !2605, file: !3, line: 293, type: !558)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 293, column: 3)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 292, column: 38)
!2607 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 291, column: 6)
!2608 = !DILocalVariable(name: "__ai_ptr", scope: !2609, file: !3, line: 293, type: !2616)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 293, column: 3)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 293, column: 3)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 293, column: 3)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 293, column: 3)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 293, column: 3)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 293, column: 3)
!2615 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 293, column: 3)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2617 = !DILocalVariable(name: "__ret", scope: !2618, file: !3, line: 293, type: !27)
!2618 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 293, column: 3)
!2619 = !DILocation(line: 286, column: 37, scope: !2601)
!2620 = !DILocation(line: 288, column: 2, scope: !2601)
!2621 = !DILocation(line: 288, column: 2, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 288, column: 2)
!2623 = !DILocation(line: 289, column: 2, scope: !2601)
!2624 = !DILocation(line: 289, column: 2, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 289, column: 2)
!2626 = !DILocation(line: 292, column: 7, scope: !2607)
!2627 = !DILocation(line: 291, column: 6, scope: !2601)
!2628 = !DILocation(line: 293, column: 3, scope: !2605)
!2629 = !DILocation(line: 293, column: 3, scope: !2613)
!2630 = !DILocation(line: 293, column: 3, scope: !2612)
!2631 = !DILocation(line: 293, column: 3, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 293, column: 3)
!2633 = !DILocation(line: 293, column: 3, scope: !2611)
!2634 = !DILocation(line: 293, column: 3, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 293, column: 3)
!2636 = !DILocation(line: 293, column: 3, scope: !2609)
!2637 = !DILocation(line: 293, column: 3, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 293, column: 3)
!2639 = !DILocation(line: 293, column: 3, scope: !2618)
!2640 = !{i64 2154042021}
!2641 = !DILocation(line: 293, column: 3, scope: !2610)
!2642 = !DILocation(line: 293, column: 3, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 293, column: 3)
!2644 = !DILocation(line: 293, column: 3, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 293, column: 3)
!2646 = !DILocation(line: 293, column: 3, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 293, column: 3)
!2648 = !DILocation(line: 293, column: 3, scope: !2614)
!2649 = distinct !{!2649, !2650, !2650, !2565}
!2650 = !DILocation(line: 293, column: 3, scope: !2615)
!2651 = !DILocation(line: 293, column: 3, scope: !2606)
!2652 = !DILocation(line: 295, column: 3, scope: !2606)
!2653 = !DILocation(line: 298, column: 2, scope: !2601)
!2654 = !DILocation(line: 298, column: 26, scope: !2601)
!2655 = !DILocation(line: 298, column: 9, scope: !2601)
!2656 = !DILocation(line: 299, column: 3, scope: !2601)
!2657 = distinct !{!2657, !2653, !2658, !2564, !2565}
!2658 = !DILocation(line: 299, column: 13, scope: !2601)
!2659 = !DILocation(line: 300, column: 1, scope: !2601)
!2660 = !DILocation(line: 112, column: 2, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2016, file: !2017, line: 112, column: 2)
!2662 = !DILocation(line: 112, column: 2, scope: !2016)
!2663 = !DILocation(line: 113, column: 1, scope: !2016)
!2664 = distinct !DISubprogram(name: "prepare_to_rcuwait", scope: !47, file: !47, line: 45, type: !2665, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2474}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "w", arg: 1, scope: !2664, file: !47, line: 45, type: !2474)
!2669 = !DILocalVariable(name: "_r_a_p__v", scope: !2670, file: !47, line: 47, type: !1918)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !47, line: 47, column: 2)
!2671 = !DILocation(line: 45, column: 55, scope: !2664)
!2672 = !DILocation(line: 47, column: 2, scope: !2664)
!2673 = !DILocation(line: 47, column: 2, scope: !2670)
!2674 = !DILocation(line: 47, column: 2, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !47, line: 47, column: 2)
!2676 = !DILocation(line: 47, column: 2, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2675, file: !47, line: 47, column: 2)
!2678 = !DILocation(line: 47, column: 2, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2677, file: !47, line: 47, column: 2)
!2680 = !DILocation(line: 47, column: 2, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2677, file: !47, line: 47, column: 2)
!2682 = !DILocation(line: 47, column: 2, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2681, file: !47, line: 47, column: 2)
!2684 = !{i64 2151889574}
!2685 = !DILocation(line: 47, column: 2, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2681, file: !47, line: 47, column: 2)
!2687 = !DILocation(line: 47, column: 2, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2686, file: !47, line: 47, column: 2)
!2689 = !DILocation(line: 47, column: 2, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !47, line: 47, column: 2)
!2691 = !DILocation(line: 48, column: 1, scope: !2664)
!2692 = distinct !DISubprogram(name: "get_current", scope: !2693, file: !2693, line: 39, type: !2694, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2696)
!2693 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!50}
!2696 = !{!2697, !2699, !2701}
!2697 = !DILocalVariable(name: "pscr_ret__", scope: !2698, file: !2693, line: 41, type: !50)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !2693, line: 41, column: 9)
!2699 = !DILocalVariable(name: "__vpp_verify", scope: !2700, file: !2693, line: 41, type: !555)
!2700 = distinct !DILexicalBlock(scope: !2698, file: !2693, line: 41, column: 9)
!2701 = !DILocalVariable(name: "pfo_val__", scope: !2702, file: !2693, line: 41, type: !105)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !2693, line: 41, column: 9)
!2703 = !DILocation(line: 41, column: 9, scope: !2698)
!2704 = !DILocation(line: 41, column: 9, scope: !2700)
!2705 = !DILocation(line: 41, column: 9, scope: !2702)
!2706 = !{i64 2148845003}
!2707 = !DILocation(line: 41, column: 9, scope: !2692)
!2708 = !DILocation(line: 41, column: 2, scope: !2692)
!2709 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2710, file: !2710, line: 94, type: !2711, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2716)
!2710 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2713, !1225}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "v", arg: 1, scope: !2709, file: !2710, line: 94, type: !2713)
!2718 = !DILocalVariable(name: "size", arg: 2, scope: !2709, file: !2710, line: 94, type: !1225)
!2719 = !DILocation(line: 94, column: 79, scope: !2709)
!2720 = !DILocation(line: 94, column: 89, scope: !2709)
!2721 = !DILocation(line: 96, column: 20, scope: !2709)
!2722 = !DILocation(line: 96, column: 23, scope: !2709)
!2723 = !DILocation(line: 96, column: 2, scope: !2709)
!2724 = !DILocation(line: 97, column: 2, scope: !2709)
!2725 = !DILocation(line: 98, column: 1, scope: !2709)
!2726 = distinct !DISubprogram(name: "irq_work_is_busy", scope: !11, file: !11, line: 47, type: !4, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2727)
!2727 = !{!2728}
!2728 = !DILocalVariable(name: "work", arg: 1, scope: !2726, file: !11, line: 47, type: !9)
!2729 = !DILocation(line: 47, column: 54, scope: !2726)
!2730 = !DILocation(line: 49, column: 22, scope: !2726)
!2731 = !DILocation(line: 49, column: 28, scope: !2726)
!2732 = !DILocation(line: 49, column: 33, scope: !2726)
!2733 = !DILocation(line: 49, column: 9, scope: !2726)
!2734 = !DILocation(line: 49, column: 42, scope: !2726)
!2735 = !DILocation(line: 49, column: 2, scope: !2726)
!2736 = distinct !DISubprogram(name: "signal_pending_state", scope: !1046, file: !1046, line: 414, type: !2737, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!33, !27, !50}
!2739 = !{!2740, !2741}
!2740 = !DILocalVariable(name: "state", arg: 1, scope: !2736, file: !1046, line: 414, type: !27)
!2741 = !DILocalVariable(name: "p", arg: 2, scope: !2736, file: !1046, line: 414, type: !50)
!2742 = !DILocation(line: 414, column: 53, scope: !2736)
!2743 = !DILocation(line: 414, column: 80, scope: !2736)
!2744 = !DILocation(line: 416, column: 8, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2736, file: !1046, line: 416, column: 6)
!2746 = !DILocation(line: 416, column: 14, scope: !2745)
!2747 = !DILocation(line: 416, column: 6, scope: !2736)
!2748 = !DILocation(line: 417, column: 3, scope: !2745)
!2749 = !DILocation(line: 418, column: 22, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2736, file: !1046, line: 418, column: 6)
!2751 = !DILocation(line: 418, column: 7, scope: !2750)
!2752 = !DILocation(line: 418, column: 6, scope: !2736)
!2753 = !DILocation(line: 419, column: 3, scope: !2750)
!2754 = !DILocation(line: 421, column: 10, scope: !2736)
!2755 = !DILocation(line: 421, column: 16, scope: !2736)
!2756 = !DILocation(line: 421, column: 38, scope: !2736)
!2757 = !DILocation(line: 421, column: 64, scope: !2736)
!2758 = !DILocation(line: 421, column: 41, scope: !2736)
!2759 = !DILocation(line: 421, column: 2, scope: !2736)
!2760 = !DILocation(line: 422, column: 1, scope: !2736)
!2761 = !DISubprogram(name: "schedule", scope: !52, file: !52, line: 303, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2762 = !DISubprogram(name: "finish_rcuwait", scope: !47, file: !47, line: 50, type: !2665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2763 = distinct !DISubprogram(name: "cpu_relax", scope: !2764, file: !2764, line: 16, type: !1214, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2764 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!2765 = !DILocation(line: 18, column: 2, scope: !2763)
!2766 = !DILocation(line: 19, column: 1, scope: !2763)
!2767 = distinct !DISubprogram(name: "__initstub__kmod_irq_work__291_327_irq_work_init_threadsearly", scope: !3, file: !3, line: 327, type: !2270, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2768 = !DILocation(line: 327, column: 1, scope: !2767)
!2769 = distinct !DISubprogram(name: "irq_work_init_threads", scope: !3, file: !3, line: 321, type: !2270, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2770 = !DILocation(line: 325, column: 2, scope: !2769)
!2771 = distinct !DISubprogram(name: "atomic_fetch_or", scope: !2423, file: !2423, line: 950, type: !2772, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!33, !33, !2439}
!2774 = !{!2775, !2776}
!2775 = !DILocalVariable(name: "i", arg: 1, scope: !2771, file: !2423, line: 950, type: !33)
!2776 = !DILocalVariable(name: "v", arg: 2, scope: !2771, file: !2423, line: 950, type: !2439)
!2777 = !DILocation(line: 950, column: 21, scope: !2771)
!2778 = !DILocation(line: 950, column: 34, scope: !2771)
!2779 = !DILocation(line: 952, column: 2, scope: !2771)
!2780 = !DILocation(line: 952, column: 2, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2771, file: !2423, line: 952, column: 2)
!2782 = !DILocation(line: 953, column: 31, scope: !2771)
!2783 = !DILocation(line: 953, column: 2, scope: !2771)
!2784 = !DILocation(line: 954, column: 29, scope: !2771)
!2785 = !DILocation(line: 954, column: 32, scope: !2771)
!2786 = !DILocation(line: 954, column: 9, scope: !2771)
!2787 = !DILocation(line: 954, column: 2, scope: !2771)
!2788 = distinct !DISubprogram(name: "raw_atomic_fetch_or", scope: !2789, file: !2789, line: 1674, type: !2772, scopeLine: 1675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2790)
!2789 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "i", arg: 1, scope: !2788, file: !2789, line: 1674, type: !33)
!2792 = !DILocalVariable(name: "v", arg: 2, scope: !2788, file: !2789, line: 1674, type: !2439)
!2793 = !DILocation(line: 1674, column: 25, scope: !2788)
!2794 = !DILocation(line: 1674, column: 38, scope: !2788)
!2795 = !DILocation(line: 1677, column: 30, scope: !2788)
!2796 = !DILocation(line: 1677, column: 33, scope: !2788)
!2797 = !DILocation(line: 1677, column: 9, scope: !2788)
!2798 = !DILocation(line: 1677, column: 2, scope: !2788)
!2799 = distinct !DISubprogram(name: "arch_atomic_fetch_or", scope: !2800, file: !2800, line: 151, type: !2772, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2801)
!2800 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "i", arg: 1, scope: !2799, file: !2800, line: 151, type: !33)
!2803 = !DILocalVariable(name: "v", arg: 2, scope: !2799, file: !2800, line: 151, type: !2439)
!2804 = !DILocalVariable(name: "val", scope: !2799, file: !2800, line: 153, type: !33)
!2805 = !DILocation(line: 151, column: 53, scope: !2799)
!2806 = !DILocation(line: 151, column: 66, scope: !2799)
!2807 = !DILocation(line: 153, column: 2, scope: !2799)
!2808 = !DILocation(line: 153, column: 6, scope: !2799)
!2809 = !DILocation(line: 153, column: 29, scope: !2799)
!2810 = !DILocation(line: 153, column: 12, scope: !2799)
!2811 = !DILocation(line: 155, column: 2, scope: !2799)
!2812 = !DILocation(line: 155, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2799, file: !2800, line: 155, column: 5)
!2814 = !DILocation(line: 155, column: 41, scope: !2799)
!2815 = !DILocation(line: 155, column: 50, scope: !2799)
!2816 = !DILocation(line: 155, column: 56, scope: !2799)
!2817 = !DILocation(line: 155, column: 54, scope: !2799)
!2818 = !DILocation(line: 155, column: 17, scope: !2799)
!2819 = !DILocation(line: 155, column: 16, scope: !2799)
!2820 = distinct !{!2820, !2811, !2821, !2564, !2565}
!2821 = !DILocation(line: 155, column: 58, scope: !2799)
!2822 = !DILocation(line: 157, column: 9, scope: !2799)
!2823 = !DILocation(line: 158, column: 1, scope: !2799)
!2824 = !DILocation(line: 157, column: 2, scope: !2799)
!2825 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2800, file: !2800, line: 17, type: !2424, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2826)
!2826 = !{!2827}
!2827 = !DILocalVariable(name: "v", arg: 1, scope: !2825, file: !2800, line: 17, type: !2426)
!2828 = !DILocation(line: 17, column: 61, scope: !2825)
!2829 = !DILocation(line: 23, column: 9, scope: !2825)
!2830 = !DILocation(line: 23, column: 2, scope: !2825)
!2831 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2800, file: !2800, line: 113, type: !2832, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!6, !2439, !773, !33}
!2834 = !{!2835, !2836, !2837, !2838, !2840, !2841, !2842, !2843}
!2835 = !DILocalVariable(name: "v", arg: 1, scope: !2831, file: !2800, line: 113, type: !2439)
!2836 = !DILocalVariable(name: "old", arg: 2, scope: !2831, file: !2800, line: 113, type: !773)
!2837 = !DILocalVariable(name: "new", arg: 3, scope: !2831, file: !2800, line: 113, type: !33)
!2838 = !DILocalVariable(name: "success", scope: !2839, file: !2800, line: 115, type: !6)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !2800, line: 115, column: 9)
!2840 = !DILocalVariable(name: "_old", scope: !2839, file: !2800, line: 115, type: !773)
!2841 = !DILocalVariable(name: "__old", scope: !2839, file: !2800, line: 115, type: !33)
!2842 = !DILocalVariable(name: "__new", scope: !2839, file: !2800, line: 115, type: !33)
!2843 = !DILocalVariable(name: "__ptr", scope: !2839, file: !2800, line: 115, type: !1899)
!2844 = !DILocation(line: 113, column: 63, scope: !2831)
!2845 = !DILocation(line: 113, column: 71, scope: !2831)
!2846 = !DILocation(line: 113, column: 80, scope: !2831)
!2847 = !DILocation(line: 115, column: 9, scope: !2839)
!2848 = !{i64 2148134404, i64 2148134443, i64 2148134464, i64 2148134501, i64 2148134524, i64 2148134533, i64 2148134831}
!2849 = !DILocation(line: 115, column: 9, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2839, file: !2800, line: 115, column: 9)
!2851 = !DILocation(line: 115, column: 9, scope: !2831)
!2852 = !DILocation(line: 115, column: 2, scope: !2831)
!2853 = distinct !DISubprogram(name: "llist_add", scope: !19, file: !19, line: 219, type: !2854, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!6, !22, !1895}
!2856 = !{!2857, !2858}
!2857 = !DILocalVariable(name: "new", arg: 1, scope: !2853, file: !19, line: 219, type: !22)
!2858 = !DILocalVariable(name: "head", arg: 2, scope: !2853, file: !19, line: 219, type: !1895)
!2859 = !DILocation(line: 219, column: 49, scope: !2853)
!2860 = !DILocation(line: 219, column: 73, scope: !2853)
!2861 = !DILocation(line: 221, column: 25, scope: !2853)
!2862 = !DILocation(line: 221, column: 30, scope: !2853)
!2863 = !DILocation(line: 221, column: 35, scope: !2853)
!2864 = !DILocation(line: 221, column: 9, scope: !2853)
!2865 = !DILocation(line: 221, column: 2, scope: !2853)
!2866 = !DISubprogram(name: "tick_nohz_tick_stopped", scope: !2867, file: !2867, line: 128, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2867 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!2868 = distinct !DISubprogram(name: "irq_work_raise", scope: !3, file: !3, line: 79, type: !43, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2869)
!2869 = !{!2870, !2871, !2875, !2877}
!2870 = !DILocalVariable(name: "work", arg: 1, scope: !2868, file: !3, line: 79, type: !9)
!2871 = !DILocalVariable(name: "pscr_ret__", scope: !2872, file: !3, line: 82, type: !33)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 82, column: 22)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 82, column: 22)
!2874 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 81, column: 6)
!2875 = !DILocalVariable(name: "__vpp_verify", scope: !2876, file: !3, line: 82, type: !555)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 82, column: 22)
!2877 = !DILocalVariable(name: "pfo_val__", scope: !2878, file: !3, line: 82, type: !62)
!2878 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 82, column: 22)
!2879 = !DILocation(line: 79, column: 61, scope: !2868)
!2880 = !DILocation(line: 81, column: 6, scope: !2874)
!2881 = !DILocation(line: 81, column: 35, scope: !2874)
!2882 = !DILocation(line: 81, column: 38, scope: !2874)
!2883 = !DILocation(line: 81, column: 6, scope: !2868)
!2884 = !DILocation(line: 82, column: 22, scope: !2873)
!2885 = !DILocation(line: 82, column: 22, scope: !2872)
!2886 = !DILocation(line: 82, column: 22, scope: !2876)
!2887 = !DILocation(line: 82, column: 22, scope: !2878)
!2888 = !{i64 2153993310}
!2889 = !DILocation(line: 82, column: 42, scope: !2874)
!2890 = !DILocation(line: 82, column: 52, scope: !2874)
!2891 = !DILocation(line: 82, column: 58, scope: !2874)
!2892 = !DILocation(line: 82, column: 3, scope: !2874)
!2893 = !DILocation(line: 84, column: 2, scope: !2868)
!2894 = !DILocation(line: 85, column: 1, scope: !2868)
!2895 = !DISubprogram(name: "llist_add_batch", scope: !19, file: !19, line: 199, type: !2896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!6, !22, !22, !1895}
!2898 = distinct !DISubprogram(name: "trace_ipi_send_cpu_enabled", scope: !1977, file: !1977, line: 38, type: !2170, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!2899 = !DILocation(line: 38, column: 1, scope: !2898)
!2900 = !DILocation(line: 38, column: 1, scope: !1983)
!2901 = !DILocation(line: 38, column: 1, scope: !1993)
!2902 = !DILocation(line: 38, column: 1, scope: !1992)
!2903 = !DILocation(line: 38, column: 1, scope: !1995)
!2904 = !DILocation(line: 38, column: 1, scope: !1998)
!2905 = !DILocation(line: 38, column: 1, scope: !2000)
!2906 = !{i64 2153806681}
!2907 = !DILocation(line: 38, column: 1, scope: !1996)
!2908 = !DILocation(line: 38, column: 1, scope: !2002)
!2909 = !DILocation(line: 38, column: 1, scope: !2006)
!2910 = !DILocation(line: 38, column: 1, scope: !2005)
!2911 = !DILocation(line: 38, column: 1, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2005, file: !1977, line: 38, column: 1)
!2913 = !DILocation(line: 38, column: 1, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2005, file: !1977, line: 38, column: 1)
!2915 = !{i64 2153807903, i64 2153807932, i64 2153807978, i64 2153808036, i64 2153808090, i64 2153808144, i64 2153808199, i64 2153808230, i64 2153808538, i64 2153808544, i64 2153808591, i64 2153808614, i64 2153808640}
!2916 = !DILocation(line: 38, column: 1, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2005, file: !1977, line: 38, column: 1)
!2918 = !DILocation(line: 38, column: 1, scope: !2003)
!2919 = !DILocation(line: 38, column: 1, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !1992, file: !1977, line: 38, column: 1)
!2921 = !{i64 2153808990}
!2922 = !DILocation(line: 38, column: 1, scope: !2008)
!2923 = !DILocation(line: 38, column: 1, scope: !2011)
!2924 = !DILocation(line: 38, column: 1, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2011, file: !1977, line: 38, column: 1)
!2926 = !DILocation(line: 38, column: 1, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2925, file: !1977, line: 38, column: 1)
!2928 = !DILocation(line: 38, column: 1, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2008, file: !1977, line: 38, column: 1)
!2930 = !DILocation(line: 38, column: 1, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2929, file: !1977, line: 38, column: 1)
!2932 = !DILocation(line: 38, column: 1, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2931, file: !1977, line: 38, column: 1)
!2934 = !DILocation(line: 38, column: 1, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !1992, file: !1977, line: 38, column: 1)
!2936 = !{i64 2153815255}
!2937 = !DILocation(line: 38, column: 1, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !1977, line: 38, column: 1)
!2939 = !DILocation(line: 38, column: 1, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2938, file: !1977, line: 38, column: 1)
!2941 = !{i64 2153815414}
!2942 = distinct !DISubprogram(name: "static_key_false", scope: !2943, file: !2943, line: 205, type: !2944, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2964)
!2943 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!6, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2943, line: 85, size: 128, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2947, file: !2943, line: 86, baseType: !29, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !2943, line: 101, baseType: !2951, size: 64, offset: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2947, file: !2943, line: 101, size: 64, elements: !2952)
!2952 = !{!2953, !2954, !2961}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2951, file: !2943, line: 102, baseType: !59, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2951, file: !2943, line: 103, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2943, line: 117, size: 128, elements: !2957)
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2956, file: !2943, line: 118, baseType: !513, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2956, file: !2943, line: 119, baseType: !513, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2956, file: !2943, line: 120, baseType: !558, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2951, file: !2943, line: 104, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2943, line: 104, flags: DIFlagFwdDecl)
!2964 = !{!2965}
!2965 = !DILocalVariable(name: "key", arg: 1, scope: !2942, file: !2943, line: 205, type: !2946)
!2966 = !DILocation(line: 205, column: 65, scope: !2942)
!2967 = !DILocation(line: 207, column: 28, scope: !2942)
!2968 = !DILocation(line: 207, column: 9, scope: !2942)
!2969 = !DILocation(line: 207, column: 2, scope: !2942)
!2970 = distinct !DISubprogram(name: "arch_static_branch", scope: !2971, file: !2971, line: 25, type: !2972, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2974)
!2971 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!6, !2946, !6}
!2974 = !{!2975, !2976, !2977}
!2975 = !DILocalVariable(name: "key", arg: 1, scope: !2970, file: !2971, line: 25, type: !2946)
!2976 = !DILocalVariable(name: "branch", arg: 2, scope: !2970, file: !2971, line: 25, type: !6)
!2977 = !DILabel(scope: !2970, name: "l_yes", file: !2971, line: 33)
!2978 = !DILocation(line: 25, column: 67, scope: !2970)
!2979 = !DILocation(line: 25, column: 77, scope: !2970)
!2980 = !DILocation(line: 30, column: 13, scope: !2970)
!2981 = !DILocation(line: 30, column: 28, scope: !2970)
!2982 = !DILocation(line: 30, column: 26, scope: !2970)
!2983 = !DILocation(line: 27, column: 2, scope: !2970)
!2984 = !{i64 1246687, i64 1246731, i64 2148731414, i64 2148731435, i64 2148731461, i64 2148731494, i64 2148731528, i64 2148731552}
!2985 = !DILocation(line: 32, column: 2, scope: !2970)
!2986 = !DILocation(line: 33, column: 1, scope: !2970)
!2987 = !DILocation(line: 34, column: 2, scope: !2970)
!2988 = !DILocation(line: 35, column: 1, scope: !2970)
!2989 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !338, file: !338, line: 502, type: !2990, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!6, !33, !1911}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "cpu", arg: 1, scope: !2989, file: !338, line: 502, type: !33)
!2994 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2989, file: !338, line: 502, type: !1911)
!2995 = !DILocation(line: 502, column: 50, scope: !2989)
!2996 = !DILocation(line: 502, column: 77, scope: !2989)
!2997 = !DILocation(line: 504, column: 9, scope: !2989)
!2998 = !DILocation(line: 504, column: 2, scope: !2989)
!2999 = distinct !DISubprogram(name: "_test_bit", scope: !3000, file: !3000, line: 139, type: !3001, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3006)
!3000 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!6, !59, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3005)
!3005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "nr", arg: 1, scope: !2999, file: !3000, line: 139, type: !59)
!3008 = !DILocalVariable(name: "addr", arg: 2, scope: !2999, file: !3000, line: 139, type: !3003)
!3009 = !DILocation(line: 139, column: 25, scope: !2999)
!3010 = !DILocation(line: 139, column: 59, scope: !2999)
!3011 = !DILocation(line: 141, column: 25, scope: !2999)
!3012 = !DILocation(line: 141, column: 32, scope: !2999)
!3013 = !DILocation(line: 141, column: 30, scope: !2999)
!3014 = !DILocation(line: 141, column: 2, scope: !2999)
!3015 = !DILocation(line: 142, column: 23, scope: !2999)
!3016 = !DILocation(line: 142, column: 27, scope: !2999)
!3017 = !DILocation(line: 142, column: 9, scope: !2999)
!3018 = !DILocation(line: 142, column: 2, scope: !2999)
!3019 = distinct !DISubprogram(name: "cpumask_check", scope: !338, file: !338, line: 148, type: !3020, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!27, !27}
!3022 = !{!3023}
!3023 = !DILocalVariable(name: "cpu", arg: 1, scope: !3019, file: !338, line: 148, type: !27)
!3024 = !DILocation(line: 148, column: 64, scope: !3019)
!3025 = !DILocation(line: 150, column: 20, scope: !3019)
!3026 = !DILocation(line: 150, column: 2, scope: !3019)
!3027 = !DILocation(line: 151, column: 9, scope: !3019)
!3028 = !DILocation(line: 151, column: 2, scope: !3019)
!3029 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2710, file: !2710, line: 66, type: !2711, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3030)
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "v", arg: 1, scope: !3029, file: !2710, line: 66, type: !2713)
!3032 = !DILocalVariable(name: "size", arg: 2, scope: !3029, file: !2710, line: 66, type: !1225)
!3033 = !DILocation(line: 66, column: 73, scope: !3029)
!3034 = !DILocation(line: 66, column: 83, scope: !3029)
!3035 = !DILocation(line: 68, column: 19, scope: !3029)
!3036 = !DILocation(line: 68, column: 22, scope: !3029)
!3037 = !DILocation(line: 68, column: 2, scope: !3029)
!3038 = !DILocation(line: 69, column: 2, scope: !3029)
!3039 = !DILocation(line: 70, column: 1, scope: !3029)
!3040 = distinct !DISubprogram(name: "arch_test_bit", scope: !3041, file: !3041, line: 237, type: !3001, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3042)
!3041 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "nr", arg: 1, scope: !3040, file: !3041, line: 237, type: !59)
!3044 = !DILocalVariable(name: "addr", arg: 2, scope: !3040, file: !3041, line: 237, type: !3003)
!3045 = !DILocation(line: 237, column: 29, scope: !3040)
!3046 = !DILocation(line: 237, column: 63, scope: !3040)
!3047 = !DILocation(line: 239, column: 30, scope: !3040)
!3048 = !DILocation(line: 239, column: 9, scope: !3040)
!3049 = !DILocation(line: 239, column: 54, scope: !3040)
!3050 = !DILocation(line: 239, column: 58, scope: !3040)
!3051 = !DILocation(line: 239, column: 36, scope: !3040)
!3052 = !DILocation(line: 240, column: 26, scope: !3040)
!3053 = !DILocation(line: 240, column: 30, scope: !3040)
!3054 = !DILocation(line: 240, column: 8, scope: !3040)
!3055 = !DILocation(line: 239, column: 2, scope: !3040)
!3056 = distinct !DISubprogram(name: "kasan_check_read", scope: !3057, file: !3057, line: 40, type: !3058, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3060)
!3057 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!6, !2713, !27}
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3056, file: !3057, line: 40, type: !2713)
!3062 = !DILocalVariable(name: "size", arg: 2, scope: !3056, file: !3057, line: 40, type: !27)
!3063 = !DILocation(line: 40, column: 58, scope: !3056)
!3064 = !DILocation(line: 40, column: 74, scope: !3056)
!3065 = !DILocation(line: 42, column: 2, scope: !3056)
!3066 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3067, file: !3067, line: 229, type: !3068, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3070)
!3067 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !2713, !1225, !33}
!3070 = !{!3071, !3072, !3073}
!3071 = !DILocalVariable(name: "ptr", arg: 1, scope: !3066, file: !3067, line: 229, type: !2713)
!3072 = !DILocalVariable(name: "size", arg: 2, scope: !3066, file: !3067, line: 229, type: !1225)
!3073 = !DILocalVariable(name: "type", arg: 3, scope: !3066, file: !3067, line: 230, type: !33)
!3074 = !DILocation(line: 229, column: 60, scope: !3066)
!3075 = !DILocation(line: 229, column: 72, scope: !3066)
!3076 = !DILocation(line: 230, column: 15, scope: !3066)
!3077 = !DILocation(line: 230, column: 23, scope: !3066)
!3078 = distinct !DISubprogram(name: "constant_test_bit", scope: !3041, file: !3041, line: 204, type: !3079, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!6, !558, !3003}
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "nr", arg: 1, scope: !3078, file: !3041, line: 204, type: !558)
!3083 = !DILocalVariable(name: "addr", arg: 2, scope: !3078, file: !3041, line: 204, type: !3003)
!3084 = !DILocation(line: 204, column: 52, scope: !3078)
!3085 = !DILocation(line: 204, column: 86, scope: !3078)
!3086 = !DILocation(line: 206, column: 19, scope: !3078)
!3087 = !DILocation(line: 206, column: 22, scope: !3078)
!3088 = !DILocation(line: 206, column: 15, scope: !3078)
!3089 = !DILocation(line: 207, column: 4, scope: !3078)
!3090 = !DILocation(line: 207, column: 9, scope: !3078)
!3091 = !DILocation(line: 207, column: 12, scope: !3078)
!3092 = !DILocation(line: 206, column: 44, scope: !3078)
!3093 = !DILocation(line: 207, column: 37, scope: !3078)
!3094 = !DILocation(line: 206, column: 2, scope: !3078)
!3095 = distinct !DISubprogram(name: "variable_test_bit", scope: !3041, file: !3041, line: 224, type: !3079, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DILocalVariable(name: "nr", arg: 1, scope: !3095, file: !3041, line: 224, type: !558)
!3098 = !DILocalVariable(name: "addr", arg: 2, scope: !3095, file: !3041, line: 224, type: !3003)
!3099 = !DILocalVariable(name: "oldbit", scope: !3095, file: !3041, line: 226, type: !6)
!3100 = !DILocation(line: 224, column: 52, scope: !3095)
!3101 = !DILocation(line: 224, column: 86, scope: !3095)
!3102 = !DILocation(line: 226, column: 2, scope: !3095)
!3103 = !DILocation(line: 226, column: 7, scope: !3095)
!3104 = !DILocation(line: 231, column: 33, scope: !3095)
!3105 = !DILocation(line: 231, column: 46, scope: !3095)
!3106 = !DILocation(line: 228, column: 2, scope: !3095)
!3107 = !{i64 2147912782, i64 2147912856}
!3108 = !DILocation(line: 233, column: 9, scope: !3095)
!3109 = !DILocation(line: 234, column: 1, scope: !3095)
!3110 = !DILocation(line: 233, column: 2, scope: !3095)
!3111 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !338, file: !338, line: 140, type: !3112, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !27, !27}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "cpu", arg: 1, scope: !3111, file: !338, line: 140, type: !27)
!3116 = !DILocalVariable(name: "bits", arg: 2, scope: !3111, file: !338, line: 140, type: !27)
!3117 = !DILocation(line: 140, column: 60, scope: !3111)
!3118 = !DILocation(line: 140, column: 78, scope: !3111)
!3119 = !DILocation(line: 145, column: 1, scope: !3111)
!3120 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2789, file: !2789, line: 442, type: !2424, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "v", arg: 1, scope: !3120, file: !2789, line: 442, type: !2426)
!3123 = !DILocation(line: 442, column: 33, scope: !3120)
!3124 = !DILocation(line: 444, column: 26, scope: !3120)
!3125 = !DILocation(line: 444, column: 9, scope: !3120)
!3126 = !DILocation(line: 444, column: 2, scope: !3120)
!3127 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2710, file: !2710, line: 80, type: !2711, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3128)
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "v", arg: 1, scope: !3127, file: !2710, line: 80, type: !2713)
!3130 = !DILocalVariable(name: "size", arg: 2, scope: !3127, file: !2710, line: 80, type: !1225)
!3131 = !DILocation(line: 80, column: 74, scope: !3127)
!3132 = !DILocation(line: 80, column: 84, scope: !3127)
!3133 = !DILocation(line: 82, column: 20, scope: !3127)
!3134 = !DILocation(line: 82, column: 23, scope: !3127)
!3135 = !DILocation(line: 82, column: 2, scope: !3127)
!3136 = !DILocation(line: 83, column: 2, scope: !3127)
!3137 = !DILocation(line: 84, column: 1, scope: !3127)
!3138 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2789, file: !2789, line: 488, type: !2437, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3139)
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "v", arg: 1, scope: !3138, file: !2789, line: 488, type: !2439)
!3141 = !DILocalVariable(name: "i", arg: 2, scope: !3138, file: !2789, line: 488, type: !33)
!3142 = !DILocation(line: 488, column: 26, scope: !3138)
!3143 = !DILocation(line: 488, column: 33, scope: !3138)
!3144 = !DILocation(line: 490, column: 18, scope: !3138)
!3145 = !DILocation(line: 490, column: 21, scope: !3138)
!3146 = !DILocation(line: 490, column: 2, scope: !3138)
!3147 = !DILocation(line: 491, column: 1, scope: !3138)
!3148 = distinct !DISubprogram(name: "kasan_check_write", scope: !3057, file: !3057, line: 44, type: !3058, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3149)
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !3057, line: 44, type: !2713)
!3151 = !DILocalVariable(name: "size", arg: 2, scope: !3148, file: !3057, line: 44, type: !27)
!3152 = !DILocation(line: 44, column: 59, scope: !3148)
!3153 = !DILocation(line: 44, column: 75, scope: !3148)
!3154 = !DILocation(line: 46, column: 2, scope: !3148)
!3155 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2800, file: !2800, line: 26, type: !2437, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "v", arg: 1, scope: !3155, file: !2800, line: 26, type: !2439)
!3158 = !DILocalVariable(name: "i", arg: 2, scope: !3155, file: !2800, line: 26, type: !33)
!3159 = !DILocation(line: 26, column: 55, scope: !3155)
!3160 = !DILocation(line: 26, column: 62, scope: !3155)
!3161 = !DILocation(line: 28, column: 2, scope: !3155)
!3162 = !DILocation(line: 28, column: 2, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3155, file: !2800, line: 28, column: 2)
!3164 = !DILocation(line: 29, column: 1, scope: !3155)
!3165 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !2789, file: !2789, line: 2001, type: !2452, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DILocalVariable(name: "v", arg: 1, scope: !3165, file: !2789, line: 2001, type: !2439)
!3168 = !DILocalVariable(name: "old", arg: 2, scope: !3165, file: !2789, line: 2001, type: !33)
!3169 = !DILocalVariable(name: "new", arg: 3, scope: !3165, file: !2789, line: 2001, type: !33)
!3170 = !DILocation(line: 2001, column: 30, scope: !3165)
!3171 = !DILocation(line: 2001, column: 37, scope: !3165)
!3172 = !DILocation(line: 2001, column: 46, scope: !3165)
!3173 = !DILocation(line: 2004, column: 29, scope: !3165)
!3174 = !DILocation(line: 2004, column: 32, scope: !3165)
!3175 = !DILocation(line: 2004, column: 37, scope: !3165)
!3176 = !DILocation(line: 2004, column: 9, scope: !3165)
!3177 = !DILocation(line: 2004, column: 2, scope: !3165)
!3178 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !2800, file: !2800, line: 107, type: !2452, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3185, !3186, !3187}
!3180 = !DILocalVariable(name: "v", arg: 1, scope: !3178, file: !2800, line: 107, type: !2439)
!3181 = !DILocalVariable(name: "old", arg: 2, scope: !3178, file: !2800, line: 107, type: !33)
!3182 = !DILocalVariable(name: "new", arg: 3, scope: !3178, file: !2800, line: 107, type: !33)
!3183 = !DILocalVariable(name: "__ret", scope: !3184, file: !2800, line: 109, type: !33)
!3184 = distinct !DILexicalBlock(scope: !3178, file: !2800, line: 109, column: 9)
!3185 = !DILocalVariable(name: "__old", scope: !3184, file: !2800, line: 109, type: !33)
!3186 = !DILocalVariable(name: "__new", scope: !3184, file: !2800, line: 109, type: !33)
!3187 = !DILocalVariable(name: "__ptr", scope: !3184, file: !2800, line: 109, type: !1899)
!3188 = !DILocation(line: 107, column: 58, scope: !3178)
!3189 = !DILocation(line: 107, column: 65, scope: !3178)
!3190 = !DILocation(line: 107, column: 74, scope: !3178)
!3191 = !DILocation(line: 109, column: 9, scope: !3184)
!3192 = !{i64 2148131309, i64 2148131348, i64 2148131369, i64 2148131406, i64 2148131429, i64 2148131438}
!3193 = !DILocation(line: 109, column: 9, scope: !3178)
!3194 = !DILocation(line: 109, column: 2, scope: !3178)
!3195 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3196, file: !3196, line: 65, type: !3197, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!3196 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!59}
!3199 = !DILocation(line: 67, column: 9, scope: !3195)
!3200 = !DILocation(line: 67, column: 2, scope: !3195)
!3201 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3196, file: !3196, line: 120, type: !3202, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!33, !59}
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "flags", arg: 1, scope: !3201, file: !3196, line: 120, type: !59)
!3206 = !DILocation(line: 120, column: 67, scope: !3201)
!3207 = !DILocation(line: 122, column: 11, scope: !3201)
!3208 = !DILocation(line: 122, column: 17, scope: !3201)
!3209 = !DILocation(line: 122, column: 9, scope: !3201)
!3210 = !DILocation(line: 122, column: 2, scope: !3201)
!3211 = distinct !DISubprogram(name: "llist_del_all", scope: !19, file: !19, line: 237, type: !3212, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!22, !1895}
!3214 = !{!3215, !3216, !3219}
!3215 = !DILocalVariable(name: "head", arg: 1, scope: !3211, file: !19, line: 237, type: !1895)
!3216 = !DILocalVariable(name: "__ai_ptr", scope: !3217, file: !19, line: 239, type: !3218)
!3217 = distinct !DILexicalBlock(scope: !3211, file: !19, line: 239, column: 9)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!3219 = !DILocalVariable(name: "__ret", scope: !3220, file: !19, line: 239, type: !22)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !19, line: 239, column: 9)
!3221 = !DILocation(line: 237, column: 67, scope: !3211)
!3222 = !DILocation(line: 239, column: 9, scope: !3217)
!3223 = !DILocation(line: 239, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !19, line: 239, column: 9)
!3225 = !DILocation(line: 239, column: 9, scope: !3220)
!3226 = !{i64 2148612420}
!3227 = !DILocation(line: 239, column: 9, scope: !3211)
!3228 = !DILocation(line: 239, column: 2, scope: !3211)
!3229 = distinct !DISubprogram(name: "native_save_fl", scope: !3196, file: !3196, line: 17, type: !3197, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "flags", scope: !3229, file: !3196, line: 19, type: !59)
!3232 = !DILocation(line: 19, column: 2, scope: !3229)
!3233 = !DILocation(line: 19, column: 16, scope: !3229)
!3234 = !DILocation(line: 26, column: 2, scope: !3229)
!3235 = !{i64 1189240, i64 1189261}
!3236 = !DILocation(line: 32, column: 9, scope: !3229)
!3237 = !DILocation(line: 33, column: 1, scope: !3229)
!3238 = !DILocation(line: 32, column: 2, scope: !3229)
!3239 = distinct !DISubprogram(name: "signal_pending", scope: !1046, file: !1046, line: 392, type: !3240, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!33, !50}
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "p", arg: 1, scope: !3239, file: !1046, line: 392, type: !50)
!3244 = !DILocation(line: 392, column: 54, scope: !3239)
!3245 = !DILocation(line: 399, column: 6, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3239, file: !1046, line: 399, column: 6)
!3247 = !DILocation(line: 399, column: 6, scope: !3239)
!3248 = !DILocation(line: 400, column: 3, scope: !3246)
!3249 = !DILocation(line: 401, column: 25, scope: !3239)
!3250 = !DILocation(line: 401, column: 9, scope: !3239)
!3251 = !DILocation(line: 401, column: 2, scope: !3239)
!3252 = !DILocation(line: 402, column: 1, scope: !3239)
!3253 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !1046, file: !1046, line: 404, type: !3240, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3254)
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3253, file: !1046, line: 404, type: !50)
!3256 = !DILocation(line: 404, column: 62, scope: !3253)
!3257 = !DILocation(line: 406, column: 9, scope: !3253)
!3258 = !DILocation(line: 406, column: 2, scope: !3253)
!3259 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !52, file: !52, line: 2066, type: !3260, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!33, !50, !33}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "tsk", arg: 1, scope: !3259, file: !52, line: 2066, type: !50)
!3264 = !DILocalVariable(name: "flag", arg: 2, scope: !3259, file: !52, line: 2066, type: !33)
!3265 = !DILocation(line: 2066, column: 60, scope: !3259)
!3266 = !DILocation(line: 2066, column: 69, scope: !3259)
!3267 = !DILocation(line: 2068, column: 29, scope: !3259)
!3268 = !DILocation(line: 2068, column: 52, scope: !3259)
!3269 = !DILocation(line: 2068, column: 9, scope: !3259)
!3270 = !DILocation(line: 2068, column: 2, scope: !3259)
!3271 = distinct !DISubprogram(name: "task_sigpending", scope: !1046, file: !1046, line: 387, type: !3240, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3272)
!3272 = !{!3273}
!3273 = !DILocalVariable(name: "p", arg: 1, scope: !3271, file: !1046, line: 387, type: !50)
!3274 = !DILocation(line: 387, column: 55, scope: !3271)
!3275 = !DILocation(line: 389, column: 9, scope: !3271)
!3276 = !DILocation(line: 389, column: 2, scope: !3271)
!3277 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !3278, file: !3278, line: 116, type: !3279, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3282)
!3278 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!33, !3281, !33}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3282 = !{!3283, !3284}
!3283 = !DILocalVariable(name: "ti", arg: 1, scope: !3277, file: !3278, line: 116, type: !3281)
!3284 = !DILocalVariable(name: "flag", arg: 2, scope: !3277, file: !3278, line: 116, type: !33)
!3285 = !DILocation(line: 116, column: 59, scope: !3277)
!3286 = !DILocation(line: 116, column: 67, scope: !3277)
!3287 = !DILocation(line: 118, column: 9, scope: !3277)
!3288 = !DILocation(line: 118, column: 2, scope: !3277)
!3289 = distinct !DISubprogram(name: "const_test_bit", scope: !3290, file: !3290, line: 166, type: !3001, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3291)
!3290 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3291 = !{!3292, !3293, !3294, !3295, !3296}
!3292 = !DILocalVariable(name: "nr", arg: 1, scope: !3289, file: !3290, line: 166, type: !59)
!3293 = !DILocalVariable(name: "addr", arg: 2, scope: !3289, file: !3290, line: 166, type: !3003)
!3294 = !DILocalVariable(name: "p", scope: !3289, file: !3290, line: 168, type: !1922)
!3295 = !DILocalVariable(name: "mask", scope: !3289, file: !3290, line: 169, type: !59)
!3296 = !DILocalVariable(name: "val", scope: !3289, file: !3290, line: 170, type: !59)
!3297 = !DILocation(line: 166, column: 30, scope: !3289)
!3298 = !DILocation(line: 166, column: 64, scope: !3289)
!3299 = !DILocation(line: 168, column: 2, scope: !3289)
!3300 = !DILocation(line: 168, column: 23, scope: !3289)
!3301 = !DILocation(line: 168, column: 50, scope: !3289)
!3302 = !DILocation(line: 168, column: 57, scope: !3289)
!3303 = !DILocation(line: 168, column: 55, scope: !3289)
!3304 = !DILocation(line: 169, column: 2, scope: !3289)
!3305 = !DILocation(line: 169, column: 16, scope: !3289)
!3306 = !DILocation(line: 169, column: 23, scope: !3289)
!3307 = !DILocation(line: 170, column: 2, scope: !3289)
!3308 = !DILocation(line: 170, column: 16, scope: !3289)
!3309 = !DILocation(line: 170, column: 23, scope: !3289)
!3310 = !DILocation(line: 170, column: 22, scope: !3289)
!3311 = !DILocation(line: 172, column: 12, scope: !3289)
!3312 = !DILocation(line: 172, column: 18, scope: !3289)
!3313 = !DILocation(line: 172, column: 16, scope: !3289)
!3314 = !DILocation(line: 172, column: 10, scope: !3289)
!3315 = !DILocation(line: 172, column: 9, scope: !3289)
!3316 = !DILocation(line: 173, column: 1, scope: !3289)
!3317 = !DILocation(line: 172, column: 2, scope: !3289)
!3318 = distinct !DISubprogram(name: "sigismember", scope: !3319, file: !3319, line: 82, type: !3320, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874, retainedNodes: !3323)
!3319 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!33, !3322, !33}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!3323 = !{!3324, !3325, !3326}
!3324 = !DILocalVariable(name: "set", arg: 1, scope: !3318, file: !3319, line: 82, type: !3322)
!3325 = !DILocalVariable(name: "_sig", arg: 2, scope: !3318, file: !3319, line: 82, type: !33)
!3326 = !DILocalVariable(name: "sig", scope: !3318, file: !3319, line: 84, type: !59)
!3327 = !DILocation(line: 82, column: 41, scope: !3318)
!3328 = !DILocation(line: 82, column: 50, scope: !3318)
!3329 = !DILocation(line: 84, column: 2, scope: !3318)
!3330 = !DILocation(line: 84, column: 16, scope: !3318)
!3331 = !DILocation(line: 84, column: 22, scope: !3318)
!3332 = !DILocation(line: 84, column: 27, scope: !3318)
!3333 = !DILocation(line: 86, column: 15, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3318, file: !3319, line: 85, column: 6)
!3335 = !DILocation(line: 86, column: 20, scope: !3334)
!3336 = !DILocation(line: 86, column: 30, scope: !3334)
!3337 = !DILocation(line: 86, column: 27, scope: !3334)
!3338 = !DILocation(line: 86, column: 12, scope: !3334)
!3339 = !DILocation(line: 86, column: 10, scope: !3334)
!3340 = !DILocation(line: 89, column: 1, scope: !3318)
!3341 = !DILocation(line: 86, column: 3, scope: !3334)
!3342 = distinct !DISubprogram(name: "rep_nop", scope: !2764, file: !2764, line: 11, type: !1214, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1874)
!3343 = !DILocation(line: 13, column: 2, scope: !3342)
!3344 = !{i64 1970604}
!3345 = !DILocation(line: 14, column: 1, scope: !3342)
