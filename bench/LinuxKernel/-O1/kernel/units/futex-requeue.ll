; ModuleID = 'kernel/futex/requeue.c'
source_filename = "kernel/futex/requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon = type { i64, i64, i32 }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%union.futex_key = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i64, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [40 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.plist_head = type { %struct.list_head }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rt_mutex_waiter = type { %struct.rt_waiter_node, %struct.rt_waiter_node, ptr, ptr, i32, ptr }
%struct.rt_waiter_node = type { %struct.rb_node, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.restart_block = type { i64, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
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
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.13, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.16 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%union.anon.16 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@futex_q_init = hidden constant { %struct.plist_node, ptr, ptr, { %struct.anon }, ptr, ptr, ptr, i32, %struct.atomic_t } { %struct.plist_node zeroinitializer, ptr null, ptr null, { %struct.anon } zeroinitializer, ptr null, ptr null, ptr null, i32 -1, %struct.atomic_t zeroinitializer }, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"kernel/futex/requeue.c\00", align 1, !dbg !1929
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !1934
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_requeue(ptr noundef %uaddr1, i32 noundef %flags, ptr noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_requeue, ptr noundef %cmpval, i32 noundef %requeue_pi) #0 align 16 !dbg !1950 {
entry:
  %retval = alloca i32, align 4
  %uaddr1.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %uaddr2.addr = alloca ptr, align 8
  %nr_wake.addr = alloca i32, align 4
  %nr_requeue.addr = alloca i32, align 4
  %cmpval.addr = alloca ptr, align 8
  %requeue_pi.addr = alloca i32, align 4
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %task_count = alloca i32, align 4
  %ret = alloca i32, align 4
  %pi_state = alloca ptr, align 8
  %hb1 = alloca ptr, align 8
  %hb2 = alloca ptr, align 8
  %this = alloca ptr, align 8
  %next = alloca ptr, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %curval = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp66 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  %exiting = alloca ptr, align 8
  %tmp94 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp101 = alloca ptr, align 8
  %__mptr102 = alloca ptr, align 8
  %tmp105 = alloca ptr, align 8
  %__mptr165 = alloca ptr, align 8
  %tmp169 = alloca ptr, align 8
  store ptr %uaddr1, ptr %uaddr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr1.addr, metadata !1954, metadata !DIExpression()), !dbg !2011
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1955, metadata !DIExpression()), !dbg !2012
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !1956, metadata !DIExpression()), !dbg !2013
  store i32 %nr_wake, ptr %nr_wake.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_wake.addr, metadata !1957, metadata !DIExpression()), !dbg !2014
  store i32 %nr_requeue, ptr %nr_requeue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_requeue.addr, metadata !1958, metadata !DIExpression()), !dbg !2015
  store ptr %cmpval, ptr %cmpval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmpval.addr, metadata !1959, metadata !DIExpression()), !dbg !2016
  store i32 %requeue_pi, ptr %requeue_pi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %requeue_pi.addr, metadata !1960, metadata !DIExpression()), !dbg !2017
  call void @llvm.lifetime.start.p0(i64 24, ptr %key1) #13, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %key1, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.memset.p0.i64(ptr align 8 %key1, i8 0, i64 24, i1 false), !dbg !2019
  call void @llvm.lifetime.start.p0(i64 24, ptr %key2) #13, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %key2, metadata !1962, metadata !DIExpression()), !dbg !2020
  call void @llvm.memset.p0.i64(ptr align 8 %key2, i8 0, i64 24, i1 false), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %task_count) #13, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %task_count, metadata !1963, metadata !DIExpression()), !dbg !2022
  store i32 0, ptr %task_count, align 4, !dbg !2022
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1964, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #13, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !1965, metadata !DIExpression()), !dbg !2025
  store ptr null, ptr %pi_state, align 8, !dbg !2025
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb1) #13, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %hb1, metadata !1966, metadata !DIExpression()), !dbg !2027
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb2) #13, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %hb2, metadata !1976, metadata !DIExpression()), !dbg !2028
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #13, !dbg !2029
  call void @llvm.dbg.declare(metadata ptr %this, metadata !1977, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #13, !dbg !2029
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1978, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #13, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !1979, metadata !DIExpression()), !dbg !2032
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2032
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !2032
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !2032
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2032
  store ptr %first1, ptr %lastp, align 8, !dbg !2032
  %0 = load i32, ptr %nr_wake.addr, align 4, !dbg !2033
  %cmp = icmp slt i32 %0, 0, !dbg !2035
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2036

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %nr_requeue.addr, align 4, !dbg !2037
  %cmp2 = icmp slt i32 %1, 0, !dbg !2038
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2039

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2040

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2041
  %tobool = icmp ne i32 %2, 0, !dbg !2041
  br i1 %tobool, label %if.then3, label %if.end13, !dbg !2043

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %uaddr1.addr, align 8, !dbg !2044
  %4 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2047
  %cmp4 = icmp eq ptr %3, %4, !dbg !2048
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2049

if.then5:                                         ; preds = %if.then3
  store i32 -22, ptr %retval, align 4, !dbg !2050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2050

if.end6:                                          ; preds = %if.then3
  %5 = load i32, ptr %nr_wake.addr, align 4, !dbg !2051
  %cmp7 = icmp ne i32 %5, 1, !dbg !2053
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2054

if.then8:                                         ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !2055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2055

if.end9:                                          ; preds = %if.end6
  %call = call i32 @refill_pi_state_cache() #14, !dbg !2056
  %tobool10 = icmp ne i32 %call, 0, !dbg !2056
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2058

if.then11:                                        ; preds = %if.end9
  store i32 -12, ptr %retval, align 4, !dbg !2059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2059

if.end12:                                         ; preds = %if.end9
  br label %if.end13, !dbg !2060

if.end13:                                         ; preds = %if.end12, %if.end
  br label %retry, !dbg !2041

retry:                                            ; preds = %cleanup96, %cleanup, %if.end13
  call void @llvm.dbg.label(metadata !1986), !dbg !2061
  %6 = load ptr, ptr %uaddr1.addr, align 8, !dbg !2062
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2063
  %and = and i32 %7, 1, !dbg !2064
  %tobool14 = icmp ne i32 %and, 0, !dbg !2063
  %call15 = call i32 @get_futex_key(ptr noundef %6, i1 noundef zeroext %tobool14, ptr noundef %key1, i32 noundef 0) #14, !dbg !2065
  store i32 %call15, ptr %ret, align 4, !dbg !2066
  %8 = load i32, ptr %ret, align 4, !dbg !2067
  %cmp16 = icmp ne i32 %8, 0, !dbg !2067
  %lnot = xor i1 %cmp16, true, !dbg !2067
  %lnot17 = xor i1 %lnot, true, !dbg !2067
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !2067
  %conv = sext i32 %lnot.ext to i64, !dbg !2067
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2067
  %tobool18 = icmp ne i64 %expval, 0, !dbg !2067
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2069

if.then19:                                        ; preds = %retry
  %9 = load i32, ptr %ret, align 4, !dbg !2070
  store i32 %9, ptr %retval, align 4, !dbg !2071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2071

if.end20:                                         ; preds = %retry
  %10 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2072
  %11 = load i32, ptr %flags.addr, align 4, !dbg !2073
  %and21 = and i32 %11, 1, !dbg !2074
  %tobool22 = icmp ne i32 %and21, 0, !dbg !2073
  %12 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2075
  %tobool23 = icmp ne i32 %12, 0, !dbg !2075
  %13 = zext i1 %tobool23 to i64, !dbg !2075
  %cond = select i1 %tobool23, i32 1, i32 0, !dbg !2075
  %call24 = call i32 @get_futex_key(ptr noundef %10, i1 noundef zeroext %tobool22, ptr noundef %key2, i32 noundef %cond) #14, !dbg !2076
  store i32 %call24, ptr %ret, align 4, !dbg !2077
  %14 = load i32, ptr %ret, align 4, !dbg !2078
  %cmp25 = icmp ne i32 %14, 0, !dbg !2078
  %lnot27 = xor i1 %cmp25, true, !dbg !2078
  %lnot29 = xor i1 %lnot27, true, !dbg !2078
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !2078
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !2078
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !2078
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !2078
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2080

if.then34:                                        ; preds = %if.end20
  %15 = load i32, ptr %ret, align 4, !dbg !2081
  store i32 %15, ptr %retval, align 4, !dbg !2082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2082

if.end35:                                         ; preds = %if.end20
  %16 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2083
  %tobool36 = icmp ne i32 %16, 0, !dbg !2083
  br i1 %tobool36, label %land.lhs.true, label %if.end40, !dbg !2085

land.lhs.true:                                    ; preds = %if.end35
  %call37 = call i32 @futex_match(ptr noundef %key1, ptr noundef %key2) #14, !dbg !2086
  %tobool38 = icmp ne i32 %call37, 0, !dbg !2086
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2087

if.then39:                                        ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !2088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2088

if.end40:                                         ; preds = %land.lhs.true, %if.end35
  %call41 = call ptr @futex_hash(ptr noundef %key1) #14, !dbg !2089
  store ptr %call41, ptr %hb1, align 8, !dbg !2090
  %call42 = call ptr @futex_hash(ptr noundef %key2) #14, !dbg !2091
  store ptr %call42, ptr %hb2, align 8, !dbg !2092
  br label %retry_private, !dbg !2093

retry_private:                                    ; preds = %cleanup, %if.end40
  call void @llvm.dbg.label(metadata !1987), !dbg !2094
  %17 = load ptr, ptr %hb2, align 8, !dbg !2095
  call void @futex_hb_waiters_inc(ptr noundef %17) #14, !dbg !2096
  %18 = load ptr, ptr %hb1, align 8, !dbg !2097
  %19 = load ptr, ptr %hb2, align 8, !dbg !2098
  call void @double_lock_hb(ptr noundef %18, ptr noundef %19) #14, !dbg !2099
  %20 = load ptr, ptr %cmpval.addr, align 8, !dbg !2100
  %cmp43 = icmp ne ptr %20, null, !dbg !2100
  %lnot45 = xor i1 %cmp43, true, !dbg !2100
  %lnot47 = xor i1 %lnot45, true, !dbg !2100
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2100
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !2100
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 1), !dbg !2100
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !2100
  br i1 %tobool51, label %if.then52, label %if.end84, !dbg !2101

if.then52:                                        ; preds = %retry_private
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #13, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !1988, metadata !DIExpression()), !dbg !2103
  %21 = load ptr, ptr %uaddr1.addr, align 8, !dbg !2104
  %call53 = call i32 @futex_get_value_locked(ptr noundef %curval, ptr noundef %21) #14, !dbg !2105
  store i32 %call53, ptr %ret, align 4, !dbg !2106
  %22 = load i32, ptr %ret, align 4, !dbg !2107
  %tobool54 = icmp ne i32 %22, 0, !dbg !2107
  %lnot55 = xor i1 %tobool54, true, !dbg !2107
  %lnot57 = xor i1 %lnot55, true, !dbg !2107
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !2107
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !2107
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !2107
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !2107
  br i1 %tobool61, label %if.then62, label %if.end79, !dbg !2108

if.then62:                                        ; preds = %if.then52
  %23 = load ptr, ptr %hb1, align 8, !dbg !2109
  %24 = load ptr, ptr %hb2, align 8, !dbg !2110
  call void @double_unlock_hb(ptr noundef %23, ptr noundef %24) #14, !dbg !2111
  %25 = load ptr, ptr %hb2, align 8, !dbg !2112
  call void @futex_hb_waiters_dec(ptr noundef %25) #14, !dbg !2113
  call void @might_fault() #14, !dbg !2114
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #13, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !1991, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #13, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !1996, metadata !DIExpression()), !dbg !2115
  %26 = call i64 @llvm.read_register.i64(metadata !1940), !dbg !2115
  %27 = load ptr, ptr %uaddr1.addr, align 8, !dbg !2115
  %28 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %27, i64 4, i64 %26) #13, !dbg !2115, !srcloc !2116
  %asmresult = extractvalue { ptr, i32, i64 } %28, 0, !dbg !2115
  %asmresult63 = extractvalue { ptr, i32, i64 } %28, 1, !dbg !2115
  %asmresult64 = extractvalue { ptr, i32, i64 } %28, 2, !dbg !2115
  %29 = ptrtoint ptr %asmresult to i64, !dbg !2115
  %30 = trunc i64 %29 to i32, !dbg !2115
  store i32 %30, ptr %__ret_gu, align 4, !dbg !2115
  store i32 %asmresult63, ptr %__val_gu, align 4, !dbg !2115
  call void @llvm.write_register.i64(metadata !1940, i64 %asmresult64), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #13, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !1997, metadata !DIExpression()), !dbg !2117
  %31 = load i32, ptr %__val_gu, align 4, !dbg !2117
  %conv65 = zext i32 %31 to i64, !dbg !2117
  store i64 %conv65, ptr %__tmp, align 8, !dbg !2117
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !2117
  %32 = load i64, ptr %__tmp, align 8, !dbg !2117
  %conv67 = trunc i64 %32 to i32, !dbg !2117
  store i32 %conv67, ptr %__val_gu, align 4, !dbg !2117
  store i32 %conv67, ptr %tmp66, align 4, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #13, !dbg !2115
  %33 = load i32, ptr %tmp66, align 4, !dbg !2117
  %34 = load i32, ptr %__val_gu, align 4, !dbg !2115
  store i32 %34, ptr %curval, align 4, !dbg !2115
  %35 = load i32, ptr %__ret_gu, align 4, !dbg !2115
  %conv69 = sext i32 %35 to i64, !dbg !2115
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !2115
  store i64 %expval70, ptr %tmp68, align 8, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #13, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #13, !dbg !2114
  %36 = load i64, ptr %tmp68, align 8, !dbg !2115
  store i64 %36, ptr %tmp, align 8, !dbg !2114
  %37 = load i64, ptr %tmp, align 8, !dbg !2114
  %conv71 = trunc i64 %37 to i32, !dbg !2118
  store i32 %conv71, ptr %ret, align 4, !dbg !2119
  %38 = load i32, ptr %ret, align 4, !dbg !2120
  %tobool72 = icmp ne i32 %38, 0, !dbg !2120
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !2122

if.then73:                                        ; preds = %if.then62
  %39 = load i32, ptr %ret, align 4, !dbg !2123
  store i32 %39, ptr %retval, align 4, !dbg !2124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2124

if.end74:                                         ; preds = %if.then62
  %40 = load i32, ptr %flags.addr, align 4, !dbg !2125
  %and75 = and i32 %40, 1, !dbg !2127
  %tobool76 = icmp ne i32 %and75, 0, !dbg !2127
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !2128

if.then77:                                        ; preds = %if.end74
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2129

if.end78:                                         ; preds = %if.end74
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2130

if.end79:                                         ; preds = %if.then52
  %41 = load i32, ptr %curval, align 4, !dbg !2131
  %42 = load ptr, ptr %cmpval.addr, align 8, !dbg !2133
  %43 = load i32, ptr %42, align 4, !dbg !2134
  %cmp80 = icmp ne i32 %41, %43, !dbg !2135
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2136

if.then82:                                        ; preds = %if.end79
  store i32 -11, ptr %ret, align 4, !dbg !2137
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2139

if.end83:                                         ; preds = %if.end79
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2140
  br label %cleanup, !dbg !2140

cleanup:                                          ; preds = %if.then82, %if.end83, %if.end78, %if.then77, %if.then73
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #13, !dbg !2140
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup173 [
    i32 0, label %cleanup.cont
    i32 3, label %retry_private
    i32 2, label %retry
    i32 4, label %out_unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end84, !dbg !2141

if.end84:                                         ; preds = %cleanup.cont, %retry_private
  %44 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2142
  %tobool85 = icmp ne i32 %44, 0, !dbg !2142
  br i1 %tobool85, label %if.then86, label %if.end99, !dbg !2143

if.then86:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %exiting) #13, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %exiting, metadata !1999, metadata !DIExpression()), !dbg !2145
  store ptr null, ptr %exiting, align 8, !dbg !2145
  %45 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2146
  %46 = load ptr, ptr %hb1, align 8, !dbg !2147
  %47 = load ptr, ptr %hb2, align 8, !dbg !2148
  %48 = load i32, ptr %nr_requeue.addr, align 4, !dbg !2149
  %call87 = call i32 @futex_proxy_trylock_atomic(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %key1, ptr noundef %key2, ptr noundef %pi_state, ptr noundef %exiting, i32 noundef %48) #14, !dbg !2150
  store i32 %call87, ptr %ret, align 4, !dbg !2151
  %49 = load i32, ptr %ret, align 4, !dbg !2152
  switch i32 %49, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 -14, label %sw.bb88
    i32 -16, label %sw.bb93
    i32 -11, label %sw.bb93
  ], !dbg !2153

sw.bb:                                            ; preds = %if.then86
  %50 = load i32, ptr %task_count, align 4, !dbg !2154
  %inc = add i32 %50, 1, !dbg !2154
  store i32 %inc, ptr %task_count, align 4, !dbg !2154
  store i32 0, ptr %ret, align 4, !dbg !2156
  br label %sw.epilog, !dbg !2157

sw.bb88:                                          ; preds = %if.then86
  %51 = load ptr, ptr %hb1, align 8, !dbg !2158
  %52 = load ptr, ptr %hb2, align 8, !dbg !2159
  call void @double_unlock_hb(ptr noundef %51, ptr noundef %52) #14, !dbg !2160
  %53 = load ptr, ptr %hb2, align 8, !dbg !2161
  call void @futex_hb_waiters_dec(ptr noundef %53) #14, !dbg !2162
  %54 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2163
  %call89 = call i32 @fault_in_user_writeable(ptr noundef %54) #14, !dbg !2164
  store i32 %call89, ptr %ret, align 4, !dbg !2165
  %55 = load i32, ptr %ret, align 4, !dbg !2166
  %tobool90 = icmp ne i32 %55, 0, !dbg !2166
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !2168

if.then91:                                        ; preds = %sw.bb88
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2169

if.end92:                                         ; preds = %sw.bb88
  %56 = load i32, ptr %ret, align 4, !dbg !2170
  store i32 %56, ptr %retval, align 4, !dbg !2171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2171

sw.bb93:                                          ; preds = %if.then86, %if.then86
  %57 = load ptr, ptr %hb1, align 8, !dbg !2172
  %58 = load ptr, ptr %hb2, align 8, !dbg !2173
  call void @double_unlock_hb(ptr noundef %57, ptr noundef %58) #14, !dbg !2174
  %59 = load ptr, ptr %hb2, align 8, !dbg !2175
  call void @futex_hb_waiters_dec(ptr noundef %59) #14, !dbg !2176
  %60 = load i32, ptr %ret, align 4, !dbg !2177
  %61 = load ptr, ptr %exiting, align 8, !dbg !2178
  call void @wait_for_owner_exiting(i32 noundef %60, ptr noundef %61) #14, !dbg !2179
  call void @__might_resched(ptr noundef @.str, i32 noundef 563, i32 noundef 0) #14, !dbg !2180
  %call95 = call i32 @_cond_resched() #14, !dbg !2180
  store i32 %call95, ptr %tmp94, align 4, !dbg !2180
  %62 = load i32, ptr %tmp94, align 4, !dbg !2180
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2182

sw.default:                                       ; preds = %if.then86
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2183

sw.epilog:                                        ; preds = %sw.bb, %if.then86
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2184
  br label %cleanup96, !dbg !2184

cleanup96:                                        ; preds = %sw.default, %sw.epilog, %sw.bb93, %if.end92, %if.then91
  call void @llvm.lifetime.end.p0(i64 8, ptr %exiting) #13, !dbg !2184
  %cleanup.dest97 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest97, label %cleanup173 [
    i32 0, label %cleanup.cont98
    i32 2, label %retry
    i32 4, label %out_unlock
  ]

cleanup.cont98:                                   ; preds = %cleanup96
  br label %if.end99, !dbg !2185

if.end99:                                         ; preds = %cleanup.cont98, %if.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2002, metadata !DIExpression()), !dbg !2186
  %63 = load ptr, ptr %hb1, align 8, !dbg !2186
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %63, i32 0, i32 2, !dbg !2186
  %node_list = getelementptr inbounds %struct.plist_head, ptr %chain, i32 0, i32 0, !dbg !2186
  %next100 = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !2186
  %64 = load ptr, ptr %next100, align 8, !dbg !2186
  store ptr %64, ptr %__mptr, align 8, !dbg !2186
  %65 = load ptr, ptr %__mptr, align 8, !dbg !2186
  %add.ptr = getelementptr i8, ptr %65, i64 -24, !dbg !2186
  store ptr %add.ptr, ptr %tmp101, align 8, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2187
  %66 = load ptr, ptr %tmp101, align 8, !dbg !2186
  store ptr %66, ptr %this, align 8, !dbg !2187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr102) #13, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %__mptr102, metadata !2005, metadata !DIExpression()), !dbg !2188
  %67 = load ptr, ptr %this, align 8, !dbg !2188
  %list = getelementptr inbounds %struct.futex_q, ptr %67, i32 0, i32 0, !dbg !2188
  %node_list103 = getelementptr inbounds %struct.plist_node, ptr %list, i32 0, i32 2, !dbg !2188
  %next104 = getelementptr inbounds %struct.list_head, ptr %node_list103, i32 0, i32 0, !dbg !2188
  %68 = load ptr, ptr %next104, align 8, !dbg !2188
  store ptr %68, ptr %__mptr102, align 8, !dbg !2188
  %69 = load ptr, ptr %__mptr102, align 8, !dbg !2188
  %add.ptr106 = getelementptr i8, ptr %69, i64 -24, !dbg !2188
  store ptr %add.ptr106, ptr %tmp105, align 8, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr102) #13, !dbg !2187
  %70 = load ptr, ptr %tmp105, align 8, !dbg !2188
  store ptr %70, ptr %next, align 8, !dbg !2187
  br label %for.cond, !dbg !2187

for.cond:                                         ; preds = %for.inc, %if.end99
  %71 = load ptr, ptr %this, align 8, !dbg !2189
  %list107 = getelementptr inbounds %struct.futex_q, ptr %71, i32 0, i32 0, !dbg !2189
  %node_list108 = getelementptr inbounds %struct.plist_node, ptr %list107, i32 0, i32 2, !dbg !2189
  %72 = load ptr, ptr %hb1, align 8, !dbg !2189
  %chain109 = getelementptr inbounds %struct.futex_hash_bucket, ptr %72, i32 0, i32 2, !dbg !2189
  %node_list110 = getelementptr inbounds %struct.plist_head, ptr %chain109, i32 0, i32 0, !dbg !2189
  %cmp111 = icmp eq ptr %node_list108, %node_list110, !dbg !2189
  %lnot113 = xor i1 %cmp111, true, !dbg !2189
  br i1 %lnot113, label %for.body, label %for.end, !dbg !2187

for.body:                                         ; preds = %for.cond
  %73 = load i32, ptr %task_count, align 4, !dbg !2190
  %74 = load i32, ptr %nr_wake.addr, align 4, !dbg !2193
  %sub = sub i32 %73, %74, !dbg !2194
  %75 = load i32, ptr %nr_requeue.addr, align 4, !dbg !2195
  %cmp115 = icmp sge i32 %sub, %75, !dbg !2196
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !2197

if.then117:                                       ; preds = %for.body
  br label %for.end, !dbg !2198

if.end118:                                        ; preds = %for.body
  %76 = load ptr, ptr %this, align 8, !dbg !2199
  %key = getelementptr inbounds %struct.futex_q, ptr %76, i32 0, i32 3, !dbg !2201
  %call119 = call i32 @futex_match(ptr noundef %key, ptr noundef %key1) #14, !dbg !2202
  %tobool120 = icmp ne i32 %call119, 0, !dbg !2202
  br i1 %tobool120, label %if.end122, label %if.then121, !dbg !2203

if.then121:                                       ; preds = %if.end118
  br label %for.inc, !dbg !2204

if.end122:                                        ; preds = %if.end118
  %77 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2205
  %tobool123 = icmp ne i32 %77, 0, !dbg !2205
  br i1 %tobool123, label %land.lhs.true124, label %lor.lhs.false126, !dbg !2207

land.lhs.true124:                                 ; preds = %if.end122
  %78 = load ptr, ptr %this, align 8, !dbg !2208
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %78, i32 0, i32 5, !dbg !2209
  %79 = load ptr, ptr %rt_waiter, align 8, !dbg !2209
  %tobool125 = icmp ne ptr %79, null, !dbg !2208
  br i1 %tobool125, label %lor.lhs.false126, label %if.then134, !dbg !2210

lor.lhs.false126:                                 ; preds = %land.lhs.true124, %if.end122
  %80 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2211
  %tobool127 = icmp ne i32 %80, 0, !dbg !2211
  br i1 %tobool127, label %lor.lhs.false131, label %land.lhs.true128, !dbg !2212

land.lhs.true128:                                 ; preds = %lor.lhs.false126
  %81 = load ptr, ptr %this, align 8, !dbg !2213
  %rt_waiter129 = getelementptr inbounds %struct.futex_q, ptr %81, i32 0, i32 5, !dbg !2214
  %82 = load ptr, ptr %rt_waiter129, align 8, !dbg !2214
  %tobool130 = icmp ne ptr %82, null, !dbg !2213
  br i1 %tobool130, label %if.then134, label %lor.lhs.false131, !dbg !2215

lor.lhs.false131:                                 ; preds = %land.lhs.true128, %lor.lhs.false126
  %83 = load ptr, ptr %this, align 8, !dbg !2216
  %pi_state132 = getelementptr inbounds %struct.futex_q, ptr %83, i32 0, i32 4, !dbg !2217
  %84 = load ptr, ptr %pi_state132, align 8, !dbg !2217
  %tobool133 = icmp ne ptr %84, null, !dbg !2216
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !2218

if.then134:                                       ; preds = %lor.lhs.false131, %land.lhs.true128, %land.lhs.true124
  store i32 -22, ptr %ret, align 4, !dbg !2219
  br label %for.end, !dbg !2221

if.end135:                                        ; preds = %lor.lhs.false131
  %85 = load i32, ptr %requeue_pi.addr, align 4, !dbg !2222
  %tobool136 = icmp ne i32 %85, 0, !dbg !2222
  br i1 %tobool136, label %if.end143, label %if.then137, !dbg !2224

if.then137:                                       ; preds = %if.end135
  %86 = load i32, ptr %task_count, align 4, !dbg !2225
  %inc138 = add i32 %86, 1, !dbg !2225
  store i32 %inc138, ptr %task_count, align 4, !dbg !2225
  %87 = load i32, ptr %nr_wake.addr, align 4, !dbg !2228
  %cmp139 = icmp sle i32 %inc138, %87, !dbg !2229
  br i1 %cmp139, label %if.then141, label %if.else, !dbg !2230

if.then141:                                       ; preds = %if.then137
  %88 = load ptr, ptr %this, align 8, !dbg !2231
  call void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %88) #14, !dbg !2232
  br label %if.end142, !dbg !2232

if.else:                                          ; preds = %if.then137
  %89 = load ptr, ptr %this, align 8, !dbg !2233
  %90 = load ptr, ptr %hb1, align 8, !dbg !2234
  %91 = load ptr, ptr %hb2, align 8, !dbg !2235
  call void @requeue_futex(ptr noundef %89, ptr noundef %90, ptr noundef %91, ptr noundef %key2) #14, !dbg !2236
  br label %if.end142

if.end142:                                        ; preds = %if.else, %if.then141
  br label %for.inc, !dbg !2237

if.end143:                                        ; preds = %if.end135
  %92 = load ptr, ptr %this, align 8, !dbg !2238
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, ptr %92, i32 0, i32 6, !dbg !2240
  %93 = load ptr, ptr %requeue_pi_key, align 8, !dbg !2240
  %call144 = call i32 @futex_match(ptr noundef %93, ptr noundef %key2) #14, !dbg !2241
  %tobool145 = icmp ne i32 %call144, 0, !dbg !2241
  br i1 %tobool145, label %if.end147, label %if.then146, !dbg !2242

if.then146:                                       ; preds = %if.end143
  store i32 -22, ptr %ret, align 4, !dbg !2243
  br label %for.end, !dbg !2245

if.end147:                                        ; preds = %if.end143
  %94 = load ptr, ptr %pi_state, align 8, !dbg !2246
  call void @get_pi_state(ptr noundef %94) #14, !dbg !2247
  %95 = load ptr, ptr %this, align 8, !dbg !2248
  %96 = load ptr, ptr %pi_state, align 8, !dbg !2250
  %call148 = call zeroext i1 @futex_requeue_pi_prepare(ptr noundef %95, ptr noundef %96) #14, !dbg !2251
  br i1 %call148, label %if.end150, label %if.then149, !dbg !2252

if.then149:                                       ; preds = %if.end147
  %97 = load ptr, ptr %pi_state, align 8, !dbg !2253
  call void @put_pi_state(ptr noundef %97) #14, !dbg !2255
  br label %for.inc, !dbg !2256

if.end150:                                        ; preds = %if.end147
  %98 = load ptr, ptr %pi_state, align 8, !dbg !2257
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %98, i32 0, i32 1, !dbg !2258
  %99 = load ptr, ptr %this, align 8, !dbg !2259
  %rt_waiter151 = getelementptr inbounds %struct.futex_q, ptr %99, i32 0, i32 5, !dbg !2260
  %100 = load ptr, ptr %rt_waiter151, align 8, !dbg !2260
  %101 = load ptr, ptr %this, align 8, !dbg !2261
  %task = getelementptr inbounds %struct.futex_q, ptr %101, i32 0, i32 1, !dbg !2262
  %102 = load ptr, ptr %task, align 8, !dbg !2262
  %call152 = call i32 @rt_mutex_start_proxy_lock(ptr noundef %pi_mutex, ptr noundef %100, ptr noundef %102) #14, !dbg !2263
  store i32 %call152, ptr %ret, align 4, !dbg !2264
  %103 = load i32, ptr %ret, align 4, !dbg !2265
  %cmp153 = icmp eq i32 %103, 1, !dbg !2267
  br i1 %cmp153, label %if.then155, label %if.else157, !dbg !2268

if.then155:                                       ; preds = %if.end150
  %104 = load ptr, ptr %this, align 8, !dbg !2269
  %105 = load ptr, ptr %hb2, align 8, !dbg !2271
  call void @requeue_pi_wake_futex(ptr noundef %104, ptr noundef %key2, ptr noundef %105) #14, !dbg !2272
  %106 = load i32, ptr %task_count, align 4, !dbg !2273
  %inc156 = add i32 %106, 1, !dbg !2273
  store i32 %inc156, ptr %task_count, align 4, !dbg !2273
  br label %if.end164, !dbg !2274

if.else157:                                       ; preds = %if.end150
  %107 = load i32, ptr %ret, align 4, !dbg !2275
  %tobool158 = icmp ne i32 %107, 0, !dbg !2275
  br i1 %tobool158, label %if.else161, label %if.then159, !dbg !2277

if.then159:                                       ; preds = %if.else157
  %108 = load ptr, ptr %this, align 8, !dbg !2278
  %109 = load ptr, ptr %hb1, align 8, !dbg !2280
  %110 = load ptr, ptr %hb2, align 8, !dbg !2281
  call void @requeue_futex(ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %key2) #14, !dbg !2282
  %111 = load ptr, ptr %this, align 8, !dbg !2283
  call void @futex_requeue_pi_complete(ptr noundef %111, i32 noundef 0) #14, !dbg !2284
  %112 = load i32, ptr %task_count, align 4, !dbg !2285
  %inc160 = add i32 %112, 1, !dbg !2285
  store i32 %inc160, ptr %task_count, align 4, !dbg !2285
  br label %if.end163, !dbg !2286

if.else161:                                       ; preds = %if.else157
  %113 = load ptr, ptr %this, align 8, !dbg !2287
  %pi_state162 = getelementptr inbounds %struct.futex_q, ptr %113, i32 0, i32 4, !dbg !2289
  store ptr null, ptr %pi_state162, align 8, !dbg !2290
  %114 = load ptr, ptr %pi_state, align 8, !dbg !2291
  call void @put_pi_state(ptr noundef %114) #14, !dbg !2292
  %115 = load ptr, ptr %this, align 8, !dbg !2293
  %116 = load i32, ptr %ret, align 4, !dbg !2294
  call void @futex_requeue_pi_complete(ptr noundef %115, i32 noundef %116) #14, !dbg !2295
  br label %for.end, !dbg !2296

if.end163:                                        ; preds = %if.then159
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then155
  br label %for.inc, !dbg !2297

for.inc:                                          ; preds = %if.end164, %if.then149, %if.end142, %if.then121
  %117 = load ptr, ptr %next, align 8, !dbg !2189
  store ptr %117, ptr %this, align 8, !dbg !2189
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr165) #13, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %__mptr165, metadata !2007, metadata !DIExpression()), !dbg !2298
  %118 = load ptr, ptr %next, align 8, !dbg !2298
  %list166 = getelementptr inbounds %struct.futex_q, ptr %118, i32 0, i32 0, !dbg !2298
  %node_list167 = getelementptr inbounds %struct.plist_node, ptr %list166, i32 0, i32 2, !dbg !2298
  %next168 = getelementptr inbounds %struct.list_head, ptr %node_list167, i32 0, i32 0, !dbg !2298
  %119 = load ptr, ptr %next168, align 8, !dbg !2298
  store ptr %119, ptr %__mptr165, align 8, !dbg !2298
  %120 = load ptr, ptr %__mptr165, align 8, !dbg !2298
  %add.ptr170 = getelementptr i8, ptr %120, i64 -24, !dbg !2298
  store ptr %add.ptr170, ptr %tmp169, align 8, !dbg !2298
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr165) #13, !dbg !2189
  %121 = load ptr, ptr %tmp169, align 8, !dbg !2298
  store ptr %121, ptr %next, align 8, !dbg !2189
  br label %for.cond, !dbg !2189, !llvm.loop !2299

for.end:                                          ; preds = %if.else161, %if.then146, %if.then134, %if.then117, %for.cond
  %122 = load ptr, ptr %pi_state, align 8, !dbg !2303
  call void @put_pi_state(ptr noundef %122) #14, !dbg !2304
  br label %out_unlock, !dbg !2304

out_unlock:                                       ; preds = %for.end, %cleanup96, %cleanup
  call void @llvm.dbg.label(metadata !2010), !dbg !2305
  %123 = load ptr, ptr %hb1, align 8, !dbg !2306
  %124 = load ptr, ptr %hb2, align 8, !dbg !2307
  call void @double_unlock_hb(ptr noundef %123, ptr noundef %124) #14, !dbg !2308
  call void @wake_up_q(ptr noundef %wake_q) #14, !dbg !2309
  %125 = load ptr, ptr %hb2, align 8, !dbg !2310
  call void @futex_hb_waiters_dec(ptr noundef %125) #14, !dbg !2311
  %126 = load i32, ptr %ret, align 4, !dbg !2312
  %tobool171 = icmp ne i32 %126, 0, !dbg !2312
  br i1 %tobool171, label %cond.true, label %cond.false, !dbg !2312

cond.true:                                        ; preds = %out_unlock
  %127 = load i32, ptr %ret, align 4, !dbg !2313
  br label %cond.end, !dbg !2312

cond.false:                                       ; preds = %out_unlock
  %128 = load i32, ptr %task_count, align 4, !dbg !2314
  br label %cond.end, !dbg !2312

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond172 = phi i32 [ %127, %cond.true ], [ %128, %cond.false ], !dbg !2312
  store i32 %cond172, ptr %retval, align 4, !dbg !2315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !2315

cleanup173:                                       ; preds = %cond.end, %cleanup96, %cleanup, %if.then39, %if.then34, %if.then19, %if.then11, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb2) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb1) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %task_count) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 24, ptr %key2) #13, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 24, ptr %key1) #13, !dbg !2316
  %129 = load i32, ptr %retval, align 4, !dbg !2316
  ret i32 %129, !dbg !2316
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2317 dso_local i32 @refill_pi_state_cache() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2318 dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_match(ptr noundef %key1, ptr noundef %key2) #6 align 16 !dbg !2321 {
entry:
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  store ptr %key1, ptr %key1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key1.addr, metadata !2325, metadata !DIExpression()), !dbg !2327
  store ptr %key2, ptr %key2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !2326, metadata !DIExpression()), !dbg !2328
  %0 = load ptr, ptr %key1.addr, align 8, !dbg !2329
  %tobool = icmp ne ptr %0, null, !dbg !2329
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2330

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %key2.addr, align 8, !dbg !2331
  %tobool1 = icmp ne ptr %1, null, !dbg !2331
  br i1 %tobool1, label %land.lhs.true2, label %land.end, !dbg !2332

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %key1.addr, align 8, !dbg !2333
  %word = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1, !dbg !2334
  %3 = load i64, ptr %word, align 8, !dbg !2334
  %4 = load ptr, ptr %key2.addr, align 8, !dbg !2335
  %word3 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, !dbg !2336
  %5 = load i64, ptr %word3, align 8, !dbg !2336
  %cmp = icmp eq i64 %3, %5, !dbg !2337
  br i1 %cmp, label %land.lhs.true4, label %land.end, !dbg !2338

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %6 = load ptr, ptr %key1.addr, align 8, !dbg !2339
  %ptr = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 0, !dbg !2340
  %7 = load i64, ptr %ptr, align 8, !dbg !2340
  %8 = load ptr, ptr %key2.addr, align 8, !dbg !2341
  %ptr5 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 0, !dbg !2342
  %9 = load i64, ptr %ptr5, align 8, !dbg !2342
  %cmp6 = icmp eq i64 %7, %9, !dbg !2343
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !2344

land.rhs:                                         ; preds = %land.lhs.true4
  %10 = load ptr, ptr %key1.addr, align 8, !dbg !2345
  %offset = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 2, !dbg !2346
  %11 = load i32, ptr %offset, align 8, !dbg !2346
  %12 = load ptr, ptr %key2.addr, align 8, !dbg !2347
  %offset7 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 2, !dbg !2348
  %13 = load i32, ptr %offset7, align 8, !dbg !2348
  %cmp8 = icmp eq i32 %11, %13, !dbg !2349
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ], !dbg !2350
  %land.ext = zext i1 %14 to i32, !dbg !2344
  ret i32 %land.ext, !dbg !2351
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2352 dso_local ptr @futex_hash(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @futex_hb_waiters_inc(ptr noundef %hb) #6 align 16 !dbg !2355 {
entry:
  %hb.addr = alloca ptr, align 8
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  %0 = load ptr, ptr %hb.addr, align 8, !dbg !2361
  %waiters = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 0, !dbg !2362
  call void @atomic_inc(ptr noundef %waiters) #14, !dbg !2363
  br label %do.body, !dbg !2364

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2365

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2367

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2365

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2369

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2365

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !2371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @double_lock_hb(ptr noundef %hb1, ptr noundef %hb2) #6 align 16 !dbg !2372 {
entry:
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2376, metadata !DIExpression()), !dbg !2381
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2377, metadata !DIExpression()), !dbg !2382
  %0 = load ptr, ptr %hb1.addr, align 8, !dbg !2383
  %1 = load ptr, ptr %hb2.addr, align 8, !dbg !2384
  %cmp = icmp ugt ptr %0, %1, !dbg !2385
  br i1 %cmp, label %if.then, label %if.end, !dbg !2386

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2387

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #13, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !2378, metadata !DIExpression()), !dbg !2388
  %2 = load ptr, ptr %hb1.addr, align 8, !dbg !2388
  store ptr %2, ptr %__tmp, align 8, !dbg !2388
  %3 = load ptr, ptr %hb2.addr, align 8, !dbg !2388
  store ptr %3, ptr %hb1.addr, align 8, !dbg !2388
  %4 = load ptr, ptr %__tmp, align 8, !dbg !2388
  store ptr %4, ptr %hb2.addr, align 8, !dbg !2388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #13, !dbg !2387
  br label %do.end, !dbg !2388

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !2388

if.end:                                           ; preds = %do.end, %entry
  %5 = load ptr, ptr %hb1.addr, align 8, !dbg !2389
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %5, i32 0, i32 1, !dbg !2390
  call void @spin_lock(ptr noundef %lock) #14, !dbg !2391
  %6 = load ptr, ptr %hb1.addr, align 8, !dbg !2392
  %7 = load ptr, ptr %hb2.addr, align 8, !dbg !2394
  %cmp1 = icmp ne ptr %6, %7, !dbg !2395
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2396

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !2397

do.body3:                                         ; preds = %if.then2
  %8 = load ptr, ptr %hb2.addr, align 8, !dbg !2398
  %lock4 = getelementptr inbounds %struct.futex_hash_bucket, ptr %8, i32 0, i32 1, !dbg !2398
  %call = call ptr @spinlock_check(ptr noundef %lock4) #14, !dbg !2398
  call void @_raw_spin_lock(ptr noundef %call) #14, !dbg !2398
  br label %do.end5, !dbg !2398

do.end5:                                          ; preds = %do.body3
  br label %if.end6, !dbg !2398

if.end6:                                          ; preds = %do.end5, %if.end
  ret void, !dbg !2400
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2401 dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @double_unlock_hb(ptr noundef %hb1, ptr noundef %hb2) #6 align 16 !dbg !2404 {
entry:
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2406, metadata !DIExpression()), !dbg !2408
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2407, metadata !DIExpression()), !dbg !2409
  %0 = load ptr, ptr %hb1.addr, align 8, !dbg !2410
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 1, !dbg !2411
  call void @spin_unlock(ptr noundef %lock) #14, !dbg !2412
  %1 = load ptr, ptr %hb1.addr, align 8, !dbg !2413
  %2 = load ptr, ptr %hb2.addr, align 8, !dbg !2415
  %cmp = icmp ne ptr %1, %2, !dbg !2416
  br i1 %cmp, label %if.then, label %if.end, !dbg !2417

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %hb2.addr, align 8, !dbg !2418
  %lock1 = getelementptr inbounds %struct.futex_hash_bucket, ptr %3, i32 0, i32 1, !dbg !2419
  call void @spin_unlock(ptr noundef %lock1) #14, !dbg !2420
  br label %if.end, !dbg !2420

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @futex_hb_waiters_dec(ptr noundef %hb) #6 align 16 !dbg !2422 {
entry:
  %hb.addr = alloca ptr, align 8
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2424, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %hb.addr, align 8, !dbg !2426
  %waiters = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 0, !dbg !2427
  call void @atomic_dec(ptr noundef %waiters) #14, !dbg !2428
  ret void, !dbg !2429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #6 align 16 !dbg !2430 {
entry:
  ret void, !dbg !2432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #6 align 16 !dbg !2433 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !2440, metadata !DIExpression()), !dbg !2442
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2441, metadata !DIExpression()), !dbg !2443
  ret void, !dbg !2444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_proxy_trylock_atomic(ptr noundef %pifutex, ptr noundef %hb1, ptr noundef %hb2, ptr noundef %key1, ptr noundef %key2, ptr noundef %ps, ptr noundef %exiting, i32 noundef %set_waiters) #0 align 16 !dbg !2445 {
entry:
  %retval = alloca i32, align 4
  %pifutex.addr = alloca ptr, align 8
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %exiting.addr = alloca ptr, align 8
  %set_waiters.addr = alloca i32, align 4
  %top_waiter = alloca ptr, align 8
  %curval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pifutex, ptr %pifutex.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pifutex.addr, metadata !2450, metadata !DIExpression()), !dbg !2461
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2451, metadata !DIExpression()), !dbg !2462
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2452, metadata !DIExpression()), !dbg !2463
  store ptr %key1, ptr %key1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key1.addr, metadata !2453, metadata !DIExpression()), !dbg !2464
  store ptr %key2, ptr %key2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !2454, metadata !DIExpression()), !dbg !2465
  store ptr %ps, ptr %ps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !2455, metadata !DIExpression()), !dbg !2466
  store ptr %exiting, ptr %exiting.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %exiting.addr, metadata !2456, metadata !DIExpression()), !dbg !2467
  store i32 %set_waiters, ptr %set_waiters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set_waiters.addr, metadata !2457, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #13, !dbg !2469
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !2458, metadata !DIExpression()), !dbg !2470
  store ptr null, ptr %top_waiter, align 8, !dbg !2470
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #13, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !2459, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2460, metadata !DIExpression()), !dbg !2474
  %0 = load ptr, ptr %pifutex.addr, align 8, !dbg !2475
  %call = call i32 @futex_get_value_locked(ptr noundef %curval, ptr noundef %0) #14, !dbg !2477
  %tobool = icmp ne i32 %call, 0, !dbg !2477
  br i1 %tobool, label %if.then, label %if.end, !dbg !2478

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !2479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2479

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #14, !dbg !2480
  %lnot = xor i1 %call1, true, !dbg !2480
  %lnot2 = xor i1 %lnot, true, !dbg !2480
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2480
  %conv = sext i32 %lnot.ext to i64, !dbg !2480
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2480
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2480
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2482

if.then4:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !2483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %hb1.addr, align 8, !dbg !2484
  %2 = load ptr, ptr %key1.addr, align 8, !dbg !2485
  %call6 = call ptr @futex_top_waiter(ptr noundef %1, ptr noundef %2) #14, !dbg !2486
  store ptr %call6, ptr %top_waiter, align 8, !dbg !2487
  %3 = load ptr, ptr %top_waiter, align 8, !dbg !2488
  %tobool7 = icmp ne ptr %3, null, !dbg !2488
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2490

if.then8:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !2491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2491

if.end9:                                          ; preds = %if.end5
  %4 = load ptr, ptr %top_waiter, align 8, !dbg !2492
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %4, i32 0, i32 5, !dbg !2494
  %5 = load ptr, ptr %rt_waiter, align 8, !dbg !2494
  %tobool10 = icmp ne ptr %5, null, !dbg !2492
  br i1 %tobool10, label %lor.lhs.false, label %if.then12, !dbg !2495

lor.lhs.false:                                    ; preds = %if.end9
  %6 = load ptr, ptr %top_waiter, align 8, !dbg !2496
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %6, i32 0, i32 4, !dbg !2497
  %7 = load ptr, ptr %pi_state, align 8, !dbg !2497
  %tobool11 = icmp ne ptr %7, null, !dbg !2496
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2498

if.then12:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 -22, ptr %retval, align 4, !dbg !2499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2499

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load ptr, ptr %top_waiter, align 8, !dbg !2500
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 6, !dbg !2502
  %9 = load ptr, ptr %requeue_pi_key, align 8, !dbg !2502
  %10 = load ptr, ptr %key2.addr, align 8, !dbg !2503
  %call14 = call i32 @futex_match(ptr noundef %9, ptr noundef %10) #14, !dbg !2504
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2504
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2505

if.then16:                                        ; preds = %if.end13
  store i32 -22, ptr %retval, align 4, !dbg !2506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2506

if.end17:                                         ; preds = %if.end13
  %11 = load ptr, ptr %top_waiter, align 8, !dbg !2507
  %call18 = call zeroext i1 @futex_requeue_pi_prepare(ptr noundef %11, ptr noundef null) #14, !dbg !2509
  br i1 %call18, label %if.end20, label %if.then19, !dbg !2510

if.then19:                                        ; preds = %if.end17
  store i32 -11, ptr %retval, align 4, !dbg !2511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2511

if.end20:                                         ; preds = %if.end17
  %12 = load ptr, ptr %pifutex.addr, align 8, !dbg !2512
  %13 = load ptr, ptr %hb2.addr, align 8, !dbg !2513
  %14 = load ptr, ptr %key2.addr, align 8, !dbg !2514
  %15 = load ptr, ptr %ps.addr, align 8, !dbg !2515
  %16 = load ptr, ptr %top_waiter, align 8, !dbg !2516
  %task = getelementptr inbounds %struct.futex_q, ptr %16, i32 0, i32 1, !dbg !2517
  %17 = load ptr, ptr %task, align 8, !dbg !2517
  %18 = load ptr, ptr %exiting.addr, align 8, !dbg !2518
  %19 = load i32, ptr %set_waiters.addr, align 4, !dbg !2519
  %call21 = call i32 @futex_lock_pi_atomic(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef %18, i32 noundef %19) #14, !dbg !2520
  store i32 %call21, ptr %ret, align 4, !dbg !2521
  %20 = load i32, ptr %ret, align 4, !dbg !2522
  %cmp = icmp eq i32 %20, 1, !dbg !2524
  br i1 %cmp, label %if.then23, label %if.else, !dbg !2525

if.then23:                                        ; preds = %if.end20
  %21 = load ptr, ptr %top_waiter, align 8, !dbg !2526
  %22 = load ptr, ptr %key2.addr, align 8, !dbg !2528
  %23 = load ptr, ptr %hb2.addr, align 8, !dbg !2529
  call void @requeue_pi_wake_futex(ptr noundef %21, ptr noundef %22, ptr noundef %23) #14, !dbg !2530
  br label %if.end29, !dbg !2531

if.else:                                          ; preds = %if.end20
  %24 = load i32, ptr %ret, align 4, !dbg !2532
  %cmp24 = icmp slt i32 %24, 0, !dbg !2534
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !2535

if.then26:                                        ; preds = %if.else
  %25 = load ptr, ptr %top_waiter, align 8, !dbg !2536
  %26 = load i32, ptr %ret, align 4, !dbg !2538
  call void @futex_requeue_pi_complete(ptr noundef %25, i32 noundef %26) #14, !dbg !2539
  br label %if.end28, !dbg !2540

if.else27:                                        ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  %27 = load i32, ptr %ret, align 4, !dbg !2541
  store i32 %27, ptr %retval, align 4, !dbg !2542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2542

cleanup:                                          ; preds = %if.end29, %if.then19, %if.then16, %if.then12, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #13, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #13, !dbg !2543
  %28 = load i32, ptr %retval, align 4, !dbg !2543
  ret i32 %28, !dbg !2543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2544 dso_local i32 @fault_in_user_writeable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2547 dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #6 align 16 !dbg !2550 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2554, metadata !DIExpression()), !dbg !2557
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2555, metadata !DIExpression()), !dbg !2558
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2556, metadata !DIExpression()), !dbg !2559
  ret void, !dbg !2560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #9 align 16 !dbg !1936 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2561
  %0 = load ptr, ptr %tmp, align 8, !dbg !2561
  %call = call i32 %0() #14, !dbg !2563
  ret i32 %call, !dbg !2564
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2565 dso_local void @futex_wake_mark(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @requeue_futex(ptr noundef %q, ptr noundef %hb1, ptr noundef %hb2, ptr noundef %key2) #6 align 16 !dbg !2569 {
entry:
  %q.addr = alloca ptr, align 8
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2573, metadata !DIExpression()), !dbg !2577
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2574, metadata !DIExpression()), !dbg !2578
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2575, metadata !DIExpression()), !dbg !2579
  store ptr %key2, ptr %key2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !2576, metadata !DIExpression()), !dbg !2580
  %0 = load ptr, ptr %hb1.addr, align 8, !dbg !2581
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 2, !dbg !2581
  %1 = load ptr, ptr %hb2.addr, align 8, !dbg !2581
  %chain1 = getelementptr inbounds %struct.futex_hash_bucket, ptr %1, i32 0, i32 2, !dbg !2581
  %cmp = icmp ne ptr %chain, %chain1, !dbg !2581
  %lnot = xor i1 %cmp, true, !dbg !2581
  %lnot2 = xor i1 %lnot, true, !dbg !2581
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2581
  %conv = sext i32 %lnot.ext to i64, !dbg !2581
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2581
  %tobool = icmp ne i64 %expval, 0, !dbg !2581
  br i1 %tobool, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %q.addr, align 8, !dbg !2584
  %list = getelementptr inbounds %struct.futex_q, ptr %2, i32 0, i32 0, !dbg !2586
  %3 = load ptr, ptr %hb1.addr, align 8, !dbg !2587
  %chain3 = getelementptr inbounds %struct.futex_hash_bucket, ptr %3, i32 0, i32 2, !dbg !2588
  call void @plist_del(ptr noundef %list, ptr noundef %chain3) #14, !dbg !2589
  %4 = load ptr, ptr %hb1.addr, align 8, !dbg !2590
  call void @futex_hb_waiters_dec(ptr noundef %4) #14, !dbg !2591
  %5 = load ptr, ptr %hb2.addr, align 8, !dbg !2592
  call void @futex_hb_waiters_inc(ptr noundef %5) #14, !dbg !2593
  %6 = load ptr, ptr %q.addr, align 8, !dbg !2594
  %list4 = getelementptr inbounds %struct.futex_q, ptr %6, i32 0, i32 0, !dbg !2595
  %7 = load ptr, ptr %hb2.addr, align 8, !dbg !2596
  %chain5 = getelementptr inbounds %struct.futex_hash_bucket, ptr %7, i32 0, i32 2, !dbg !2597
  call void @plist_add(ptr noundef %list4, ptr noundef %chain5) #14, !dbg !2598
  %8 = load ptr, ptr %hb2.addr, align 8, !dbg !2599
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %8, i32 0, i32 1, !dbg !2600
  %9 = load ptr, ptr %q.addr, align 8, !dbg !2601
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %9, i32 0, i32 2, !dbg !2602
  store ptr %lock, ptr %lock_ptr, align 8, !dbg !2603
  br label %if.end, !dbg !2604

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %q.addr, align 8, !dbg !2605
  %key = getelementptr inbounds %struct.futex_q, ptr %10, i32 0, i32 3, !dbg !2606
  %11 = load ptr, ptr %key2.addr, align 8, !dbg !2607
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %11, i64 24, i1 false), !dbg !2608
  ret void, !dbg !2609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2610 dso_local void @get_pi_state(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @futex_requeue_pi_prepare(ptr noundef %q, ptr noundef %pi_state) #6 align 16 !dbg !2613 {
entry:
  %retval = alloca i1, align 1
  %q.addr = alloca ptr, align 8
  %pi_state.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2617, metadata !DIExpression()), !dbg !2621
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !2618, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #13, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2620, metadata !DIExpression()), !dbg !2625
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2626
  %requeue_state = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 8, !dbg !2627
  %call = call i32 @atomic_read_acquire(ptr noundef %requeue_state) #14, !dbg !2628
  store i32 %call, ptr %old, align 4, !dbg !2629
  br label %do.body, !dbg !2630

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !2631
  %cmp = icmp eq i32 %1, 1, !dbg !2634
  br i1 %cmp, label %if.then, label %if.end, !dbg !2635

if.then:                                          ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !2636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2636

if.end:                                           ; preds = %do.body
  %2 = load i32, ptr %old, align 4, !dbg !2637
  %cmp1 = icmp ne i32 %2, 0, !dbg !2639
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2640

if.then2:                                         ; preds = %if.end
  br label %do.end, !dbg !2641

if.end3:                                          ; preds = %if.end
  store i32 2, ptr %new, align 4, !dbg !2642
  br label %do.cond, !dbg !2643

do.cond:                                          ; preds = %if.end3
  %3 = load ptr, ptr %q.addr, align 8, !dbg !2644
  %requeue_state4 = getelementptr inbounds %struct.futex_q, ptr %3, i32 0, i32 8, !dbg !2645
  %4 = load i32, ptr %new, align 4, !dbg !2646
  %call5 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %requeue_state4, ptr noundef %old, i32 noundef %4) #14, !dbg !2647
  %lnot = xor i1 %call5, true, !dbg !2648
  br i1 %lnot, label %do.body, label %do.end, !dbg !2643, !llvm.loop !2649

do.end:                                           ; preds = %do.cond, %if.then2
  %5 = load ptr, ptr %pi_state.addr, align 8, !dbg !2651
  %6 = load ptr, ptr %q.addr, align 8, !dbg !2652
  %pi_state6 = getelementptr inbounds %struct.futex_q, ptr %6, i32 0, i32 4, !dbg !2653
  store ptr %5, ptr %pi_state6, align 8, !dbg !2654
  store i1 true, ptr %retval, align 1, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #13, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !2656
  %7 = load i1, ptr %retval, align 1, !dbg !2656
  ret i1 %7, !dbg !2656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2657 dso_local void @put_pi_state(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2658 dso_local i32 @rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @requeue_pi_wake_futex(ptr noundef %q, ptr noundef %key, ptr noundef %hb) #6 align 16 !dbg !2661 {
entry:
  %q.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2665, metadata !DIExpression()), !dbg !2673
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2666, metadata !DIExpression()), !dbg !2674
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2667, metadata !DIExpression()), !dbg !2675
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2676
  %key1 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 3, !dbg !2677
  %1 = load ptr, ptr %key.addr, align 8, !dbg !2678
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key1, ptr align 8 %1, i64 24, i1 false), !dbg !2679
  %2 = load ptr, ptr %q.addr, align 8, !dbg !2680
  call void @__futex_unqueue(ptr noundef %2) #14, !dbg !2681
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2682
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2668, metadata !DIExpression()), !dbg !2682
  %3 = load ptr, ptr %q.addr, align 8, !dbg !2682
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %3, i32 0, i32 5, !dbg !2682
  %4 = load ptr, ptr %rt_waiter, align 8, !dbg !2682
  %tobool = icmp ne ptr %4, null, !dbg !2682
  %lnot = xor i1 %tobool, true, !dbg !2682
  %lnot2 = xor i1 %lnot, true, !dbg !2682
  %lnot3 = xor i1 %lnot2, true, !dbg !2682
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2682
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2682
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2683
  %tobool4 = icmp ne i32 %5, 0, !dbg !2683
  %lnot5 = xor i1 %tobool4, true, !dbg !2683
  %lnot7 = xor i1 %lnot5, true, !dbg !2683
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2683
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2683
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2683
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2683
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2682

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2683

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2684
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2670, metadata !DIExpression()), !dbg !2684
  store i32 2305, ptr %__flags, align 4, !dbg !2684
  br label %do.body10, !dbg !2684

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !2685

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !2685

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !2684

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !2687
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 230, i32 %6, i64 12) #13, !dbg !2687, !srcloc !2689
  br label %do.cond12, !dbg !2687

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2687

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2684

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !2690

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2690

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2683
  br label %do.cond17, !dbg !2684

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2684

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2684

if.end:                                           ; preds = %do.end18, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2682
  %tobool19 = icmp ne i32 %7, 0, !dbg !2682
  %lnot20 = xor i1 %tobool19, true, !dbg !2682
  %lnot22 = xor i1 %lnot20, true, !dbg !2682
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2682
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2682
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2682
  store i64 %expval25, ptr %tmp, align 8, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2692
  %8 = load i64, ptr %tmp, align 8, !dbg !2682
  %9 = load ptr, ptr %q.addr, align 8, !dbg !2693
  %rt_waiter26 = getelementptr inbounds %struct.futex_q, ptr %9, i32 0, i32 5, !dbg !2694
  store ptr null, ptr %rt_waiter26, align 8, !dbg !2695
  %10 = load ptr, ptr %hb.addr, align 8, !dbg !2696
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %10, i32 0, i32 1, !dbg !2697
  %11 = load ptr, ptr %q.addr, align 8, !dbg !2698
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 2, !dbg !2699
  store ptr %lock, ptr %lock_ptr, align 8, !dbg !2700
  %12 = load ptr, ptr %q.addr, align 8, !dbg !2701
  call void @futex_requeue_pi_complete(ptr noundef %12, i32 noundef 1) #14, !dbg !2702
  %13 = load ptr, ptr %q.addr, align 8, !dbg !2703
  %task = getelementptr inbounds %struct.futex_q, ptr %13, i32 0, i32 1, !dbg !2704
  %14 = load ptr, ptr %task, align 8, !dbg !2704
  %call = call i32 @wake_up_state(ptr noundef %14, i32 noundef 3) #14, !dbg !2705
  ret void, !dbg !2706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @futex_requeue_pi_complete(ptr noundef %q, i32 noundef %locked) #6 align 16 !dbg !2707 {
entry:
  %q.addr = alloca ptr, align 8
  %locked.addr = alloca i32, align 4
  %old = alloca i32, align 4
  %new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on34 = alloca i32, align 4
  %__flags51 = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2711, metadata !DIExpression()), !dbg !2730
  store i32 %locked, ptr %locked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !2712, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2713, metadata !DIExpression()), !dbg !2733
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #13, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2714, metadata !DIExpression()), !dbg !2734
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2735
  %requeue_state = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 8, !dbg !2736
  %call = call i32 @atomic_read_acquire(ptr noundef %requeue_state) #14, !dbg !2737
  store i32 %call, ptr %old, align 4, !dbg !2738
  br label %do.body, !dbg !2739

do.body:                                          ; preds = %do.cond74, %entry
  %1 = load i32, ptr %old, align 4, !dbg !2740
  %cmp = icmp eq i32 %1, 1, !dbg !2742
  br i1 %cmp, label %if.then, label %if.end, !dbg !2743

if.then:                                          ; preds = %do.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2744

if.end:                                           ; preds = %do.body
  %2 = load i32, ptr %locked.addr, align 4, !dbg !2745
  %cmp1 = icmp sge i32 %2, 0, !dbg !2746
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2747

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2715, metadata !DIExpression()), !dbg !2748
  %3 = load i32, ptr %old, align 4, !dbg !2748
  %cmp3 = icmp ne i32 %3, 2, !dbg !2748
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2748

land.rhs:                                         ; preds = %if.then2
  %4 = load i32, ptr %old, align 4, !dbg !2748
  %cmp4 = icmp ne i32 %4, 3, !dbg !2748
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then2
  %5 = phi i1 [ false, %if.then2 ], [ %cmp4, %land.rhs ], !dbg !2749
  %lnot = xor i1 %5, true, !dbg !2748
  %lnot5 = xor i1 %lnot, true, !dbg !2748
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2748
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2748
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2750
  %tobool = icmp ne i32 %6, 0, !dbg !2750
  %lnot6 = xor i1 %tobool, true, !dbg !2750
  %lnot8 = xor i1 %lnot6, true, !dbg !2750
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2750
  %conv = sext i32 %lnot.ext9 to i64, !dbg !2750
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2750
  %tobool10 = icmp ne i64 %expval, 0, !dbg !2750
  br i1 %tobool10, label %if.then11, label %if.end22, !dbg !2748

if.then11:                                        ; preds = %land.end
  br label %do.body12, !dbg !2750

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2720, metadata !DIExpression()), !dbg !2751
  store i32 2307, ptr %__flags, align 4, !dbg !2751
  br label %do.body13, !dbg !2751

do.body13:                                        ; preds = %do.body12
  br label %do.cond, !dbg !2752

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !2752

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !2751

do.body14:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !2754
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 137, i32 %7, i64 12) #13, !dbg !2754, !srcloc !2756
  br label %do.cond15, !dbg !2754

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2754

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2751

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2757

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2757

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2750
  br label %do.cond20, !dbg !2751

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2751

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2751

if.end22:                                         ; preds = %do.end21, %land.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2748
  %tobool23 = icmp ne i32 %8, 0, !dbg !2748
  %lnot24 = xor i1 %tobool23, true, !dbg !2748
  %lnot26 = xor i1 %lnot24, true, !dbg !2748
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2748
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !2748
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !2748
  store i64 %expval29, ptr %tmp, align 8, !dbg !2750
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2759
  %9 = load i64, ptr %tmp, align 8, !dbg !2748
  %10 = load i32, ptr %locked.addr, align 4, !dbg !2760
  %add = add i32 4, %10, !dbg !2761
  store i32 %add, ptr %new, align 4, !dbg !2762
  br label %if.end73, !dbg !2763

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %old, align 4, !dbg !2764
  %cmp30 = icmp eq i32 %11, 2, !dbg !2765
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !2766

if.then32:                                        ; preds = %if.else
  store i32 0, ptr %new, align 4, !dbg !2767
  br label %if.end72, !dbg !2769

if.else33:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on34) #13, !dbg !2770
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on34, metadata !2723, metadata !DIExpression()), !dbg !2770
  %12 = load i32, ptr %old, align 4, !dbg !2770
  %cmp35 = icmp ne i32 %12, 3, !dbg !2770
  %lnot37 = xor i1 %cmp35, true, !dbg !2770
  %lnot39 = xor i1 %lnot37, true, !dbg !2770
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !2770
  store i32 %lnot.ext40, ptr %__ret_warn_on34, align 4, !dbg !2770
  %13 = load i32, ptr %__ret_warn_on34, align 4, !dbg !2771
  %tobool41 = icmp ne i32 %13, 0, !dbg !2771
  %lnot42 = xor i1 %tobool41, true, !dbg !2771
  %lnot44 = xor i1 %lnot42, true, !dbg !2771
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !2771
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !2771
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !2771
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !2771
  br i1 %tobool48, label %if.then49, label %if.end63, !dbg !2770

if.then49:                                        ; preds = %if.else33
  br label %do.body50, !dbg !2771

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags51) #13, !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %__flags51, metadata !2727, metadata !DIExpression()), !dbg !2772
  store i32 2307, ptr %__flags51, align 4, !dbg !2772
  br label %do.body52, !dbg !2772

do.body52:                                        ; preds = %do.body50
  br label %do.cond53, !dbg !2773

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !2773

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !2772

do.body55:                                        ; preds = %do.end54
  %14 = load i32, ptr %__flags51, align 4, !dbg !2775
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 144, i32 %14, i64 12) #13, !dbg !2775, !srcloc !2777
  br label %do.cond56, !dbg !2775

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !2775

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !2772

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !2778

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !2778

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags51) #13, !dbg !2771
  br label %do.cond61, !dbg !2772

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !2772

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2772

if.end63:                                         ; preds = %do.end62, %if.else33
  %15 = load i32, ptr %__ret_warn_on34, align 4, !dbg !2770
  %tobool65 = icmp ne i32 %15, 0, !dbg !2770
  %lnot66 = xor i1 %tobool65, true, !dbg !2770
  %lnot68 = xor i1 %lnot66, true, !dbg !2770
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !2770
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !2770
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !2770
  store i64 %expval71, ptr %tmp64, align 8, !dbg !2771
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on34) #13, !dbg !2780
  %16 = load i64, ptr %tmp64, align 8, !dbg !2770
  store i32 1, ptr %new, align 4, !dbg !2781
  br label %if.end72

if.end72:                                         ; preds = %if.end63, %if.then32
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end22
  br label %do.cond74, !dbg !2782

do.cond74:                                        ; preds = %if.end73
  %17 = load ptr, ptr %q.addr, align 8, !dbg !2783
  %requeue_state75 = getelementptr inbounds %struct.futex_q, ptr %17, i32 0, i32 8, !dbg !2784
  %18 = load i32, ptr %new, align 4, !dbg !2785
  %call76 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %requeue_state75, ptr noundef %old, i32 noundef %18) #14, !dbg !2786
  %lnot77 = xor i1 %call76, true, !dbg !2787
  br i1 %lnot77, label %do.body, label %do.end79, !dbg !2782, !llvm.loop !2788

do.end79:                                         ; preds = %do.cond74
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2790
  br label %cleanup, !dbg !2790

cleanup:                                          ; preds = %do.end79, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #13, !dbg !2790
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !2790
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2790

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2791 dso_local void @wake_up_q(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wait_requeue_pi(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %val, ptr noundef %abs_time, i32 noundef %bitset, ptr noundef %uaddr2) #0 align 16 !dbg !2794 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %abs_time.addr = alloca ptr, align 8
  %bitset.addr = alloca i32, align 4
  %uaddr2.addr = alloca ptr, align 8
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %to = alloca ptr, align 8
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %hb = alloca ptr, align 8
  %key2 = alloca %union.futex_key, align 8
  %q = alloca %struct.futex_q, align 8
  %pi_mutex = alloca ptr, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2799, metadata !DIExpression()), !dbg !2820
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2800, metadata !DIExpression()), !dbg !2821
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2801, metadata !DIExpression()), !dbg !2822
  store ptr %abs_time, ptr %abs_time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %abs_time.addr, metadata !2802, metadata !DIExpression()), !dbg !2823
  store i32 %bitset, ptr %bitset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitset.addr, metadata !2803, metadata !DIExpression()), !dbg !2824
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !2804, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 72, ptr %timeout) #13, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !2805, metadata !DIExpression()), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #13, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %to, metadata !2810, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.start.p0(i64 112, ptr %rt_waiter) #13, !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %rt_waiter, metadata !2812, metadata !DIExpression()), !dbg !2830
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #13, !dbg !2831
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !2813, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0(i64 24, ptr %key2) #13, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %key2, metadata !2814, metadata !DIExpression()), !dbg !2834
  call void @llvm.memset.p0.i64(ptr align 8 %key2, i8 0, i64 24, i1 false), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 112, ptr %q) #13, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %q, metadata !2815, metadata !DIExpression()), !dbg !2836
  call void @llvm.memset.p0.i64(ptr align 8 %q, i8 0, i64 112, i1 false), !dbg !2836
  %0 = getelementptr inbounds { %struct.plist_node, ptr, ptr, { %struct.anon }, ptr, ptr, ptr, i32, %struct.atomic_t }, ptr %q, i32 0, i32 7, !dbg !2836
  store i32 -1, ptr %0, align 8, !dbg !2836
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_mutex) #13, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %pi_mutex, metadata !2816, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #13, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2817, metadata !DIExpression()), !dbg !2840
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2818, metadata !DIExpression()), !dbg !2841
  %1 = load ptr, ptr %uaddr.addr, align 8, !dbg !2842
  %2 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2844
  %cmp = icmp eq ptr %1, %2, !dbg !2845
  br i1 %cmp, label %if.then, label %if.end, !dbg !2846

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2847

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %bitset.addr, align 4, !dbg !2848
  %tobool = icmp ne i32 %3, 0, !dbg !2848
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2850

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2851

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %abs_time.addr, align 8, !dbg !2852
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2853
  %call = call ptr @get_current() #14, !dbg !2854
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 173, !dbg !2855
  %6 = load i64, ptr %timer_slack_ns, align 16, !dbg !2855
  %call3 = call ptr @futex_setup_timer(ptr noundef %4, ptr noundef %timeout, i32 noundef %5, i64 noundef %6) #14, !dbg !2856
  store ptr %call3, ptr %to, align 8, !dbg !2857
  call void @rt_mutex_init_waiter(ptr noundef %rt_waiter) #14, !dbg !2858
  %7 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2859
  %8 = load i32, ptr %flags.addr, align 4, !dbg !2860
  %and = and i32 %8, 1, !dbg !2861
  %tobool4 = icmp ne i32 %and, 0, !dbg !2860
  %call5 = call i32 @get_futex_key(ptr noundef %7, i1 noundef zeroext %tobool4, ptr noundef %key2, i32 noundef 1) #14, !dbg !2862
  store i32 %call5, ptr %ret, align 4, !dbg !2863
  %9 = load i32, ptr %ret, align 4, !dbg !2864
  %cmp6 = icmp ne i32 %9, 0, !dbg !2864
  %lnot = xor i1 %cmp6, true, !dbg !2864
  %lnot7 = xor i1 %lnot, true, !dbg !2864
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !2864
  %conv = sext i32 %lnot.ext to i64, !dbg !2864
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2864
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2864
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2866

if.then9:                                         ; preds = %if.end2
  br label %out, !dbg !2867

if.end10:                                         ; preds = %if.end2
  %10 = load i32, ptr %bitset.addr, align 4, !dbg !2868
  %bitset11 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 7, !dbg !2869
  store i32 %10, ptr %bitset11, align 8, !dbg !2870
  %rt_waiter12 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 5, !dbg !2871
  store ptr %rt_waiter, ptr %rt_waiter12, align 8, !dbg !2872
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 6, !dbg !2873
  store ptr %key2, ptr %requeue_pi_key, align 8, !dbg !2874
  %11 = load ptr, ptr %uaddr.addr, align 8, !dbg !2875
  %12 = load i32, ptr %val.addr, align 4, !dbg !2876
  %13 = load i32, ptr %flags.addr, align 4, !dbg !2877
  %call13 = call i32 @futex_wait_setup(ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %q, ptr noundef %hb) #14, !dbg !2878
  store i32 %call13, ptr %ret, align 4, !dbg !2879
  %14 = load i32, ptr %ret, align 4, !dbg !2880
  %tobool14 = icmp ne i32 %14, 0, !dbg !2880
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2882

if.then15:                                        ; preds = %if.end10
  br label %out, !dbg !2883

if.end16:                                         ; preds = %if.end10
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, !dbg !2884
  %call17 = call i32 @futex_match(ptr noundef %key, ptr noundef %key2) #14, !dbg !2886
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2886
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2887

if.then19:                                        ; preds = %if.end16
  %15 = load ptr, ptr %hb, align 8, !dbg !2888
  call void @futex_q_unlock(ptr noundef %15) #14, !dbg !2890
  store i32 -22, ptr %ret, align 4, !dbg !2891
  br label %out, !dbg !2892

if.end20:                                         ; preds = %if.end16
  %16 = load ptr, ptr %hb, align 8, !dbg !2893
  %17 = load ptr, ptr %to, align 8, !dbg !2894
  call void @futex_wait_queue(ptr noundef %16, ptr noundef %q, ptr noundef %17) #14, !dbg !2895
  %call21 = call i32 @futex_requeue_pi_wakeup_sync(ptr noundef %q) #14, !dbg !2896
  switch i32 %call21, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb24
    i32 4, label %sw.bb37
  ], !dbg !2897

sw.bb:                                            ; preds = %if.end20
  %18 = load ptr, ptr %hb, align 8, !dbg !2898
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %18, i32 0, i32 1, !dbg !2900
  call void @spin_lock(ptr noundef %lock) #14, !dbg !2901
  %19 = load ptr, ptr %hb, align 8, !dbg !2902
  %20 = load ptr, ptr %to, align 8, !dbg !2903
  %call22 = call i32 @handle_early_requeue_pi_wakeup(ptr noundef %19, ptr noundef %q, ptr noundef %20) #14, !dbg !2904
  store i32 %call22, ptr %ret, align 4, !dbg !2905
  %21 = load ptr, ptr %hb, align 8, !dbg !2906
  %lock23 = getelementptr inbounds %struct.futex_hash_bucket, ptr %21, i32 0, i32 1, !dbg !2907
  call void @spin_unlock(ptr noundef %lock23) #14, !dbg !2908
  br label %sw.epilog, !dbg !2909

sw.bb24:                                          ; preds = %if.end20
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2910
  %22 = load ptr, ptr %pi_state, align 8, !dbg !2910
  %tobool25 = icmp ne ptr %22, null, !dbg !2912
  br i1 %tobool25, label %land.lhs.true, label %if.end36, !dbg !2913

land.lhs.true:                                    ; preds = %sw.bb24
  %pi_state26 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2914
  %23 = load ptr, ptr %pi_state26, align 8, !dbg !2914
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %23, i32 0, i32 2, !dbg !2915
  %24 = load ptr, ptr %owner, align 8, !dbg !2915
  %call27 = call ptr @get_current() #14, !dbg !2916
  %cmp28 = icmp ne ptr %24, %call27, !dbg !2917
  br i1 %cmp28, label %if.then30, label %if.end36, !dbg !2918

if.then30:                                        ; preds = %land.lhs.true
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2919
  %25 = load ptr, ptr %lock_ptr, align 8, !dbg !2919
  call void @spin_lock(ptr noundef %25) #14, !dbg !2921
  %26 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2922
  %call31 = call i32 @fixup_pi_owner(ptr noundef %26, ptr noundef %q, i32 noundef 1) #14, !dbg !2923
  store i32 %call31, ptr %ret, align 4, !dbg !2924
  %pi_state32 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2925
  %27 = load ptr, ptr %pi_state32, align 8, !dbg !2925
  call void @put_pi_state(ptr noundef %27) #14, !dbg !2926
  %lock_ptr33 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2927
  %28 = load ptr, ptr %lock_ptr33, align 8, !dbg !2927
  call void @spin_unlock(ptr noundef %28) #14, !dbg !2928
  %29 = load i32, ptr %ret, align 4, !dbg !2929
  %cmp34 = icmp slt i32 %29, 0, !dbg !2930
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !2929

cond.true:                                        ; preds = %if.then30
  %30 = load i32, ptr %ret, align 4, !dbg !2931
  br label %cond.end, !dbg !2929

cond.false:                                       ; preds = %if.then30
  br label %cond.end, !dbg !2929

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ 0, %cond.false ], !dbg !2929
  store i32 %cond, ptr %ret, align 4, !dbg !2932
  br label %if.end36, !dbg !2933

if.end36:                                         ; preds = %cond.end, %land.lhs.true, %sw.bb24
  br label %sw.epilog, !dbg !2934

sw.bb37:                                          ; preds = %if.end20
  %pi_state38 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2935
  %31 = load ptr, ptr %pi_state38, align 8, !dbg !2935
  %pi_mutex39 = getelementptr inbounds %struct.futex_pi_state, ptr %31, i32 0, i32 1, !dbg !2936
  store ptr %pi_mutex39, ptr %pi_mutex, align 8, !dbg !2937
  %32 = load ptr, ptr %pi_mutex, align 8, !dbg !2938
  %33 = load ptr, ptr %to, align 8, !dbg !2939
  %call40 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %32, ptr noundef %33, ptr noundef %rt_waiter) #14, !dbg !2940
  store i32 %call40, ptr %ret, align 4, !dbg !2941
  %lock_ptr41 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2942
  %34 = load ptr, ptr %lock_ptr41, align 8, !dbg !2942
  call void @spin_lock(ptr noundef %34) #14, !dbg !2943
  %35 = load i32, ptr %ret, align 4, !dbg !2944
  %tobool42 = icmp ne i32 %35, 0, !dbg !2944
  br i1 %tobool42, label %land.lhs.true43, label %if.end46, !dbg !2946

land.lhs.true43:                                  ; preds = %sw.bb37
  %36 = load ptr, ptr %pi_mutex, align 8, !dbg !2947
  %call44 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %36, ptr noundef %rt_waiter) #14, !dbg !2948
  br i1 %call44, label %if.end46, label %if.then45, !dbg !2949

if.then45:                                        ; preds = %land.lhs.true43
  store i32 0, ptr %ret, align 4, !dbg !2950
  br label %if.end46, !dbg !2951

if.end46:                                         ; preds = %if.then45, %land.lhs.true43, %sw.bb37
  call void @debug_rt_mutex_free_waiter(ptr noundef %rt_waiter) #14, !dbg !2952
  %37 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2953
  %38 = load i32, ptr %ret, align 4, !dbg !2954
  %tobool47 = icmp ne i32 %38, 0, !dbg !2955
  %lnot48 = xor i1 %tobool47, true, !dbg !2955
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !2955
  %call50 = call i32 @fixup_pi_owner(ptr noundef %37, ptr noundef %q, i32 noundef %lnot.ext49) #14, !dbg !2956
  store i32 %call50, ptr %res, align 4, !dbg !2957
  %39 = load i32, ptr %res, align 4, !dbg !2958
  %tobool51 = icmp ne i32 %39, 0, !dbg !2958
  br i1 %tobool51, label %if.then52, label %if.end59, !dbg !2960

if.then52:                                        ; preds = %if.end46
  %40 = load i32, ptr %res, align 4, !dbg !2961
  %cmp53 = icmp slt i32 %40, 0, !dbg !2962
  br i1 %cmp53, label %cond.true55, label %cond.false56, !dbg !2963

cond.true55:                                      ; preds = %if.then52
  %41 = load i32, ptr %res, align 4, !dbg !2964
  br label %cond.end57, !dbg !2963

cond.false56:                                     ; preds = %if.then52
  br label %cond.end57, !dbg !2963

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i32 [ %41, %cond.true55 ], [ 0, %cond.false56 ], !dbg !2963
  store i32 %cond58, ptr %ret, align 4, !dbg !2965
  br label %if.end59, !dbg !2966

if.end59:                                         ; preds = %cond.end57, %if.end46
  call void @futex_unqueue_pi(ptr noundef %q) #14, !dbg !2967
  %lock_ptr60 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2968
  %42 = load ptr, ptr %lock_ptr60, align 8, !dbg !2968
  call void @spin_unlock(ptr noundef %42) #14, !dbg !2969
  %43 = load i32, ptr %ret, align 4, !dbg !2970
  %cmp61 = icmp eq i32 %43, -4, !dbg !2972
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !2973

if.then63:                                        ; preds = %if.end59
  store i32 -11, ptr %ret, align 4, !dbg !2974
  br label %if.end64, !dbg !2976

if.end64:                                         ; preds = %if.then63, %if.end59
  br label %sw.epilog, !dbg !2977

sw.default:                                       ; preds = %if.end20
  br label %do.body, !dbg !2978

do.body:                                          ; preds = %sw.default
  br label %do.body65, !dbg !2979

do.body65:                                        ; preds = %do.body
  br label %do.cond, !dbg !2981

do.cond:                                          ; preds = %do.body65
  br label %do.end, !dbg !2981

do.end:                                           ; preds = %do.cond
  br label %do.body66, !dbg !2979

do.body66:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 887, i32 0, i64 12) #13, !dbg !2983, !srcloc !2985
  br label %do.cond67, !dbg !2983

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !2983

do.end68:                                         ; preds = %do.cond67
  unreachable, !dbg !2979

do.cond69:                                        ; No predecessors!
  br label %do.end70, !dbg !2979

do.end70:                                         ; preds = %do.cond69
  br label %sw.epilog, !dbg !2986

sw.epilog:                                        ; preds = %do.end70, %if.end64, %if.end36, %sw.bb
  br label %out, !dbg !2986

out:                                              ; preds = %sw.epilog, %if.then19, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !2819), !dbg !2987
  %44 = load ptr, ptr %to, align 8, !dbg !2988
  %tobool71 = icmp ne ptr %44, null, !dbg !2988
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !2990

if.then72:                                        ; preds = %out
  %45 = load ptr, ptr %to, align 8, !dbg !2991
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, ptr %45, i32 0, i32 0, !dbg !2993
  %call73 = call i32 @hrtimer_cancel(ptr noundef %timer) #14, !dbg !2994
  %46 = load ptr, ptr %to, align 8, !dbg !2995
  %timer74 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %46, i32 0, i32 0, !dbg !2996
  call void @destroy_hrtimer_on_stack(ptr noundef %timer74) #14, !dbg !2997
  br label %if.end75, !dbg !2998

if.end75:                                         ; preds = %if.then72, %out
  %47 = load i32, ptr %ret, align 4, !dbg !2999
  store i32 %47, ptr %retval, align 4, !dbg !3000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3000

cleanup:                                          ; preds = %if.end75, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_mutex) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 112, ptr %q) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 24, ptr %key2) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 112, ptr %rt_waiter) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #13, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 72, ptr %timeout) #13, !dbg !3001
  %48 = load i32, ptr %retval, align 4, !dbg !3001
  ret i32 %48, !dbg !3001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3002 dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !3005 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3010, metadata !DIExpression()), !dbg !3016
  br label %do.body, !dbg !3016

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3017
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3012, metadata !DIExpression()), !dbg !3017
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3017
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3016
  br label %do.cond, !dbg !3017

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3017

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !3018
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3014, metadata !DIExpression()), !dbg !3018
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !3018, !srcloc !3019
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3018
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3018
  %3 = inttoptr i64 %2 to ptr, !dbg !3018
  store ptr %3, ptr %tmp, align 8, !dbg !3018
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !3016
  %4 = load ptr, ptr %tmp, align 8, !dbg !3018
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3016
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3016
  store ptr %5, ptr %tmp1, align 8, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3020
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3016
  ret ptr %6, !dbg !3021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_init_waiter(ptr noundef %waiter) #6 align 16 !dbg !3022 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3026, metadata !DIExpression()), !dbg !3027
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !3028
  call void @debug_rt_mutex_init_waiter(ptr noundef %0) #14, !dbg !3029
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !3030
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, !dbg !3030
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 0, !dbg !3030
  %2 = ptrtoint ptr %entry1 to i64, !dbg !3030
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !3030
  %pi_tree2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 1, !dbg !3030
  %entry3 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree2, i32 0, i32 0, !dbg !3030
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %entry3, i32 0, i32 0, !dbg !3030
  store i64 %2, ptr %__rb_parent_color, align 8, !dbg !3030
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !3031
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %4, i32 0, i32 0, !dbg !3031
  %entry4 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 0, !dbg !3031
  %5 = ptrtoint ptr %entry4 to i64, !dbg !3031
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !3031
  %tree5 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !3031
  %entry6 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree5, i32 0, i32 0, !dbg !3031
  %__rb_parent_color7 = getelementptr inbounds %struct.rb_node, ptr %entry6, i32 0, i32 0, !dbg !3031
  store i64 %5, ptr %__rb_parent_color7, align 8, !dbg !3031
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !3032
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 4, !dbg !3033
  store i32 3, ptr %wake_state, align 8, !dbg !3034
  %8 = load ptr, ptr %waiter.addr, align 8, !dbg !3035
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 2, !dbg !3036
  store ptr null, ptr %task, align 8, !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3039 dso_local i32 @futex_wait_setup(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3043 dso_local void @futex_q_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3044 dso_local void @futex_wait_queue(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_requeue_pi_wakeup_sync(ptr noundef %q) #6 align 16 !dbg !3047 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__PTR = alloca ptr, align 8
  %VAL = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !3051, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3052, metadata !DIExpression()), !dbg !3061
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #13, !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3053, metadata !DIExpression()), !dbg !3062
  %0 = load ptr, ptr %q.addr, align 8, !dbg !3063
  %requeue_state = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 8, !dbg !3064
  %call = call i32 @atomic_read_acquire(ptr noundef %requeue_state) #14, !dbg !3065
  store i32 %call, ptr %old, align 4, !dbg !3066
  br label %do.body, !dbg !3067

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !3068
  %cmp = icmp sge i32 %1, 4, !dbg !3071
  br i1 %cmp, label %if.then, label %if.end, !dbg !3072

if.then:                                          ; preds = %do.body
  %2 = load i32, ptr %old, align 4, !dbg !3073
  store i32 %2, ptr %retval, align 4, !dbg !3074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3074

if.end:                                           ; preds = %do.body
  store i32 3, ptr %new, align 4, !dbg !3075
  %3 = load i32, ptr %old, align 4, !dbg !3076
  %cmp1 = icmp eq i32 %3, 0, !dbg !3078
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3079

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %new, align 4, !dbg !3080
  br label %if.end3, !dbg !3081

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.cond, !dbg !3082

do.cond:                                          ; preds = %if.end3
  %4 = load ptr, ptr %q.addr, align 8, !dbg !3083
  %requeue_state4 = getelementptr inbounds %struct.futex_q, ptr %4, i32 0, i32 8, !dbg !3084
  %5 = load i32, ptr %new, align 4, !dbg !3085
  %call5 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %requeue_state4, ptr noundef %old, i32 noundef %5) #14, !dbg !3086
  %lnot = xor i1 %call5, true, !dbg !3087
  br i1 %lnot, label %do.body, label %do.end, !dbg !3082, !llvm.loop !3088

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %old, align 4, !dbg !3090
  %cmp6 = icmp eq i32 %6, 2, !dbg !3091
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !3092

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR) #13, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %__PTR, metadata !3054, metadata !DIExpression()), !dbg !3093
  %7 = load ptr, ptr %q.addr, align 8, !dbg !3093
  %requeue_state8 = getelementptr inbounds %struct.futex_q, ptr %7, i32 0, i32 8, !dbg !3093
  %counter = getelementptr inbounds %struct.atomic_t, ptr %requeue_state8, i32 0, i32 0, !dbg !3093
  store ptr %counter, ptr %__PTR, align 8, !dbg !3093
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL) #13, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %VAL, metadata !3058, metadata !DIExpression()), !dbg !3093
  br label %for.cond, !dbg !3093

for.cond:                                         ; preds = %if.end14, %if.then7
  br label %do.body9, !dbg !3094

do.body9:                                         ; preds = %for.cond
  br label %do.cond10, !dbg !3099

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3099

do.end11:                                         ; preds = %do.cond10
  %8 = load ptr, ptr %__PTR, align 8, !dbg !3094
  %9 = load volatile i32, ptr %8, align 4, !dbg !3094
  store i32 %9, ptr %tmp, align 4, !dbg !3099
  %10 = load i32, ptr %tmp, align 4, !dbg !3094
  store i32 %10, ptr %VAL, align 4, !dbg !3101
  %11 = load i32, ptr %VAL, align 4, !dbg !3102
  %cmp12 = icmp ne i32 %11, 3, !dbg !3102
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3101

if.then13:                                        ; preds = %do.end11
  br label %for.end, !dbg !3102

if.end14:                                         ; preds = %do.end11
  call void @cpu_relax() #14, !dbg !3101
  br label %for.cond, !dbg !3104, !llvm.loop !3105

for.end:                                          ; preds = %if.then13
  %12 = load i32, ptr %VAL, align 4, !dbg !3093
  store i32 %12, ptr %tmp15, align 4, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL) #13, !dbg !3107
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR) #13, !dbg !3107
  %13 = load i32, ptr %tmp15, align 4, !dbg !3093
  br label %if.end16, !dbg !3108

if.end16:                                         ; preds = %for.end, %do.end
  %14 = load ptr, ptr %q.addr, align 8, !dbg !3109
  %requeue_state17 = getelementptr inbounds %struct.futex_q, ptr %14, i32 0, i32 8, !dbg !3110
  %call18 = call i32 @atomic_read(ptr noundef %requeue_state17) #14, !dbg !3111
  store i32 %call18, ptr %retval, align 4, !dbg !3112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3112

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #13, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !3113
  %15 = load i32, ptr %retval, align 4, !dbg !3113
  ret i32 %15, !dbg !3113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #9 align 16 !dbg !3114 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3121
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3121
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !3121
  ret void, !dbg !3122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_early_requeue_pi_wakeup(ptr noundef %hb, ptr noundef %q, ptr noundef %timeout) #6 align 16 !dbg !3123 {
entry:
  %hb.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %timeout.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !3127, metadata !DIExpression()), !dbg !3136
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !3128, metadata !DIExpression()), !dbg !3137
  store ptr %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !3129, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3130, metadata !DIExpression()), !dbg !3140
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3141
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3131, metadata !DIExpression()), !dbg !3141
  %0 = load ptr, ptr %hb.addr, align 8, !dbg !3141
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 1, !dbg !3141
  %1 = load ptr, ptr %q.addr, align 8, !dbg !3141
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 2, !dbg !3141
  %2 = load ptr, ptr %lock_ptr, align 8, !dbg !3141
  %cmp = icmp ne ptr %lock, %2, !dbg !3141
  %lnot = xor i1 %cmp, true, !dbg !3141
  %lnot1 = xor i1 %lnot, true, !dbg !3141
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3141
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3141
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3142
  %tobool = icmp ne i32 %3, 0, !dbg !3142
  %lnot2 = xor i1 %tobool, true, !dbg !3142
  %lnot4 = xor i1 %lnot2, true, !dbg !3142
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3142
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3142
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3142
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3142
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3141

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3142

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3143
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3133, metadata !DIExpression()), !dbg !3143
  store i32 2307, ptr %__flags, align 4, !dbg !3143
  br label %do.body7, !dbg !3143

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3144

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3144

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3143

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3146
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 704, i32 %4, i64 12) #13, !dbg !3146, !srcloc !3148
  br label %do.cond9, !dbg !3146

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3146

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3143

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3149

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3149

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3142
  br label %do.cond14, !dbg !3143

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3143

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3143

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3141
  %tobool16 = icmp ne i32 %5, 0, !dbg !3141
  %lnot17 = xor i1 %tobool16, true, !dbg !3141
  %lnot19 = xor i1 %lnot17, true, !dbg !3141
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3141
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3141
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3141
  store i64 %expval22, ptr %tmp, align 8, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3151
  %6 = load i64, ptr %tmp, align 8, !dbg !3141
  %7 = load ptr, ptr %q.addr, align 8, !dbg !3152
  %list = getelementptr inbounds %struct.futex_q, ptr %7, i32 0, i32 0, !dbg !3153
  %8 = load ptr, ptr %hb.addr, align 8, !dbg !3154
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %8, i32 0, i32 2, !dbg !3155
  call void @plist_del(ptr noundef %list, ptr noundef %chain) #14, !dbg !3156
  %9 = load ptr, ptr %hb.addr, align 8, !dbg !3157
  call void @futex_hb_waiters_dec(ptr noundef %9) #14, !dbg !3158
  store i32 -11, ptr %ret, align 4, !dbg !3159
  %10 = load ptr, ptr %timeout.addr, align 8, !dbg !3160
  %tobool23 = icmp ne ptr %10, null, !dbg !3160
  br i1 %tobool23, label %land.lhs.true, label %if.else, !dbg !3162

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %timeout.addr, align 8, !dbg !3163
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %11, i32 0, i32 1, !dbg !3164
  %12 = load ptr, ptr %task, align 8, !dbg !3164
  %tobool24 = icmp ne ptr %12, null, !dbg !3163
  br i1 %tobool24, label %if.else, label %if.then25, !dbg !3165

if.then25:                                        ; preds = %land.lhs.true
  store i32 -110, ptr %ret, align 4, !dbg !3166
  br label %if.end30, !dbg !3167

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call = call ptr @get_current() #14, !dbg !3168
  %call26 = call i32 @signal_pending(ptr noundef %call) #14, !dbg !3170
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3170
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !3171

if.then28:                                        ; preds = %if.else
  store i32 -513, ptr %ret, align 4, !dbg !3172
  br label %if.end29, !dbg !3173

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then25
  %13 = load i32, ptr %ret, align 4, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3175
  ret i32 %13, !dbg !3176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #9 align 16 !dbg !3177 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3179, metadata !DIExpression()), !dbg !3180
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3181
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3181
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !3181
  ret void, !dbg !3182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3183 dso_local i32 @fixup_pi_owner(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3186 dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3189 dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_free_waiter(ptr noundef %waiter) #6 align 16 !dbg !3192 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3194, metadata !DIExpression()), !dbg !3195
  ret void, !dbg !3196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3197 dso_local void @futex_unqueue_pi(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3200 dso_local i32 @hrtimer_cancel(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_hrtimer_on_stack(ptr noundef %timer) #6 align 16 !dbg !3203 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #9 align 16 !dbg !3210 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3216, metadata !DIExpression()), !dbg !3217
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3218
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !3219
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3220
  call void @raw_atomic_inc(ptr noundef %1) #14, !dbg !3221
  ret void, !dbg !3222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !3223 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3231, metadata !DIExpression()), !dbg !3233
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3232, metadata !DIExpression()), !dbg !3234
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3235
  %1 = load i64, ptr %size.addr, align 8, !dbg !3236
  %conv = trunc i64 %1 to i32, !dbg !3236
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !3237
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3238
  %3 = load i64, ptr %size.addr, align 8, !dbg !3238
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !3238
  ret void, !dbg !3239
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #9 align 16 !dbg !3240 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3243, metadata !DIExpression()), !dbg !3244
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3245
  call void @arch_atomic_inc(ptr noundef %0) #14, !dbg !3246
  ret void, !dbg !3247
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3248 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3253, metadata !DIExpression()), !dbg !3255
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3254, metadata !DIExpression()), !dbg !3256
  ret i1 true, !dbg !3257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3258 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3263, metadata !DIExpression()), !dbg !3266
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3264, metadata !DIExpression()), !dbg !3267
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3265, metadata !DIExpression()), !dbg !3268
  ret void, !dbg !3269
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #9 align 16 !dbg !3270 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3275
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3276
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #13, !dbg !3277, !srcloc !3278
  ret void, !dbg !3279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3280 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #9 align 16 !dbg !3285 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3291
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3292
  ret ptr %1, !dbg !3293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #9 align 16 !dbg !3294 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3296, metadata !DIExpression()), !dbg !3297
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3298
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !3299
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3300
  call void @raw_atomic_dec(ptr noundef %1) #14, !dbg !3301
  ret void, !dbg !3302
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #9 align 16 !dbg !3303 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3305, metadata !DIExpression()), !dbg !3306
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3307
  call void @arch_atomic_dec(ptr noundef %0) #14, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #9 align 16 !dbg !3310 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3314
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3315
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #13, !dbg !3316, !srcloc !3317
  ret void, !dbg !3318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_futex(i1 noundef zeroext %fshared) #6 align 16 !dbg !3319 {
entry:
  %fshared.addr = alloca i8, align 1
  %frombool = zext i1 %fshared to i8
  store i8 %frombool, ptr %fshared.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fshared.addr, metadata !3323, metadata !DIExpression()), !dbg !3324
  ret i1 false, !dbg !3325
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3326 dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3329 dso_local i32 @futex_lock_pi_atomic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3332 dso_local void @plist_del(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3337 dso_local void @plist_add(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read_acquire(ptr noundef %v) #9 align 16 !dbg !3338 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3344, metadata !DIExpression()), !dbg !3345
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3346
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !3347
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3348
  %call = call i32 @raw_atomic_read_acquire(ptr noundef %1) #14, !dbg !3349
  ret i32 %call, !dbg !3350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !3351 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3355, metadata !DIExpression()), !dbg !3358
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3356, metadata !DIExpression()), !dbg !3359
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3357, metadata !DIExpression()), !dbg !3360
  br label %do.body, !dbg !3361

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3362

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3364
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !3365
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3366
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #14, !dbg !3367
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3368
  %3 = load ptr, ptr %old.addr, align 8, !dbg !3369
  %4 = load i32, ptr %new.addr, align 4, !dbg !3370
  %call = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %3, i32 noundef %4) #14, !dbg !3371
  ret i1 %call, !dbg !3372
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !3373 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3375, metadata !DIExpression()), !dbg !3377
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3376, metadata !DIExpression()), !dbg !3378
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3379
  %1 = load i64, ptr %size.addr, align 8, !dbg !3380
  %conv = trunc i64 %1 to i32, !dbg !3380
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !3381
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3382
  %3 = load i64, ptr %size.addr, align 8, !dbg !3382
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read_acquire(ptr noundef %v) #9 align 16 !dbg !3384 {
entry:
  %v.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %___p1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3386, metadata !DIExpression()), !dbg !3393
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3394
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3387, metadata !DIExpression()), !dbg !3395
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #13, !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !3388, metadata !DIExpression()), !dbg !3396
  br label %do.body, !dbg !3397

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3399

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3399

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3397
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3397
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3397
  store i32 %1, ptr %tmp, align 4, !dbg !3399
  %2 = load i32, ptr %tmp, align 4, !dbg !3397
  store i32 %2, ptr %___p1, align 4, !dbg !3396
  br label %do.body1, !dbg !3396

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3401

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3401

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !3396, !srcloc !3403
  %3 = load i32, ptr %___p1, align 4, !dbg !3396
  store i32 %3, ptr %tmp4, align 4, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #13, !dbg !3404
  %4 = load i32, ptr %tmp4, align 4, !dbg !3396
  store i32 %4, ptr %ret, align 4, !dbg !3405
  %5 = load i32, ptr %ret, align 4, !dbg !3406
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3407
  ret i32 %5, !dbg !3408
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3409 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3411, metadata !DIExpression()), !dbg !3413
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3412, metadata !DIExpression()), !dbg !3414
  ret i1 true, !dbg !3415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !3416 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3418, metadata !DIExpression()), !dbg !3421
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3419, metadata !DIExpression()), !dbg !3422
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3420, metadata !DIExpression()), !dbg !3423
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3424
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3425
  %2 = load i32, ptr %new.addr, align 4, !dbg !3426
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14, !dbg !3427
  ret i1 %call, !dbg !3428
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #9 align 16 !dbg !3429 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3431, metadata !DIExpression()), !dbg !3440
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3432, metadata !DIExpression()), !dbg !3441
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3433, metadata !DIExpression()), !dbg !3442
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3434, metadata !DIExpression()), !dbg !3443
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3436, metadata !DIExpression()), !dbg !3443
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3443
  store ptr %0, ptr %_old, align 8, !dbg !3443
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3437, metadata !DIExpression()), !dbg !3443
  %1 = load ptr, ptr %_old, align 8, !dbg !3443
  %2 = load i32, ptr %1, align 4, !dbg !3443
  store i32 %2, ptr %__old, align 4, !dbg !3443
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3438, metadata !DIExpression()), !dbg !3443
  %3 = load i32, ptr %new.addr, align 4, !dbg !3443
  store i32 %3, ptr %__new, align 4, !dbg !3443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3439, metadata !DIExpression()), !dbg !3443
  %4 = load ptr, ptr %v.addr, align 8, !dbg !3443
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !3443
  store ptr %counter, ptr %__ptr, align 8, !dbg !3443
  %5 = load ptr, ptr %__ptr, align 8, !dbg !3443
  %6 = load i32, ptr %__old, align 4, !dbg !3443
  %7 = load i32, ptr %__new, align 4, !dbg !3443
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #13, !dbg !3443, !srcloc !3444
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !3443
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !3443
  %9 = icmp ult i8 %asmresult, 2, !dbg !3443
  call void @llvm.assume(i1 %9), !dbg !3443
  store i8 %asmresult, ptr %success, align 1, !dbg !3443
  store i32 %asmresult1, ptr %__old, align 4, !dbg !3443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !3443
  %10 = load i8, ptr %success, align 1, !dbg !3445, !range !3447, !noundef !445
  %tobool = trunc i8 %10 to i1, !dbg !3445
  %lnot = xor i1 %tobool, true, !dbg !3445
  %lnot2 = xor i1 %lnot, true, !dbg !3445
  %lnot3 = xor i1 %lnot2, true, !dbg !3445
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3445
  %conv = sext i32 %lnot.ext to i64, !dbg !3445
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3445
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3445
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3443

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !3445
  %12 = load ptr, ptr %_old, align 8, !dbg !3445
  store i32 %11, ptr %12, align 4, !dbg !3445
  br label %if.end, !dbg !3445

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !3443, !range !3447, !noundef !445
  %tobool5 = trunc i8 %13 to i1, !dbg !3443
  %lnot6 = xor i1 %tobool5, true, !dbg !3443
  %lnot8 = xor i1 %lnot6, true, !dbg !3443
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3443
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3443
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3443
  store i64 %expval11, ptr %tmp, align 8, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #13, !dbg !3448
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #13, !dbg !3448
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #13, !dbg !3448
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #13, !dbg !3448
  %14 = load i64, ptr %tmp, align 8, !dbg !3443
  %tobool12 = icmp ne i64 %14, 0, !dbg !3448
  ret i1 %tobool12, !dbg !3449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3450 dso_local void @__futex_unqueue(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3451 dso_local i32 @wake_up_state(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_init_waiter(ptr noundef %waiter) #6 align 16 !dbg !3454 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  ret void, !dbg !3458
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #9 align 16 !dbg !3459 {
entry:
  call void @rep_nop() #14, !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #9 align 16 !dbg !3463 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3465, metadata !DIExpression()), !dbg !3466
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3467
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !3468
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3469
  %call = call i32 @raw_atomic_read(ptr noundef %1) #14, !dbg !3470
  ret i32 %call, !dbg !3471
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #9 align 16 !dbg !3472 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !3473, !srcloc !3474
  ret void, !dbg !3475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #9 align 16 !dbg !3476 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3480
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !3481
  ret i32 %call, !dbg !3482
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #9 align 16 !dbg !3483 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3487
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3487
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3487
  ret i32 %1, !dbg !3488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #6 align 16 !dbg !3489 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3495
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #14, !dbg !3495
  %tobool = icmp ne i32 %call, 0, !dbg !3495
  %lnot = xor i1 %tobool, true, !dbg !3495
  %lnot1 = xor i1 %lnot, true, !dbg !3495
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3495
  %conv = sext i32 %lnot.ext to i64, !dbg !3495
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3495
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3495
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3497

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3498
  br label %return, !dbg !3498

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3499
  %call3 = call i32 @task_sigpending(ptr noundef %1) #14, !dbg !3500
  store i32 %call3, ptr %retval, align 4, !dbg !3501
  br label %return, !dbg !3501

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3502
  ret i32 %2, !dbg !3502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #6 align 16 !dbg !3503 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3507, metadata !DIExpression()), !dbg !3509
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3508, metadata !DIExpression()), !dbg !3510
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3511
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !3511
  %1 = load i32, ptr %flag.addr, align 4, !dbg !3512
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #14, !dbg !3513
  ret i32 %call, !dbg !3514
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #6 align 16 !dbg !3515 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3517, metadata !DIExpression()), !dbg !3518
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3519
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #14, !dbg !3519
  %tobool = icmp ne i32 %call, 0, !dbg !3519
  %lnot = xor i1 %tobool, true, !dbg !3519
  %lnot1 = xor i1 %lnot, true, !dbg !3519
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3519
  %conv = sext i32 %lnot.ext to i64, !dbg !3519
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3519
  %conv2 = trunc i64 %expval to i32, !dbg !3519
  ret i32 %conv2, !dbg !3520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !3521 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !3527, metadata !DIExpression()), !dbg !3529
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3528, metadata !DIExpression()), !dbg !3530
  %0 = load i32, ptr %flag.addr, align 4, !dbg !3531
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3531
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3531

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !3531
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !3531
  %3 = ptrtoint ptr %flags to i64, !dbg !3531
  %cmp = icmp ne i64 %3, 0, !dbg !3531
  %conv = zext i1 %cmp to i32, !dbg !3531
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3531
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !3531

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !3531
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !3531
  %6 = ptrtoint ptr %flags2 to i64, !dbg !3531
  %cmp3 = icmp ne i64 %6, 0, !dbg !3531
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !3531

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !3531
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !3531
  %8 = load i64, ptr %flags6, align 8, !dbg !3531
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3531
  br i1 %9, label %cond.true, label %cond.false, !dbg !3531

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !3531
  %conv7 = sext i32 %10 to i64, !dbg !3531
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !3531
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !3531
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #14, !dbg !3531
  %conv9 = zext i1 %call to i32, !dbg !3531
  br label %cond.end, !dbg !3531

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !3531
  %conv10 = sext i32 %12 to i64, !dbg !3531
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !3531
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !3531
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #14, !dbg !3531
  %conv13 = zext i1 %call12 to i32, !dbg !3531
  br label %cond.end, !dbg !3531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !3531
  ret i32 %cond, !dbg !3532
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3533 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3541, metadata !DIExpression()), !dbg !3546
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3542, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !3548
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3543, metadata !DIExpression()), !dbg !3549
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3550
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3551
  %div = udiv i64 %1, 64, !dbg !3551
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3552
  store ptr %add.ptr, ptr %p, align 8, !dbg !3549
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3544, metadata !DIExpression()), !dbg !3554
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3555
  %rem = urem i64 %2, 64, !dbg !3555
  %shl = shl i64 1, %rem, !dbg !3555
  store i64 %shl, ptr %mask, align 8, !dbg !3554
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3545, metadata !DIExpression()), !dbg !3557
  %3 = load ptr, ptr %p, align 8, !dbg !3558
  %4 = load i64, ptr %3, align 8, !dbg !3559
  store i64 %4, ptr %val, align 8, !dbg !3557
  %5 = load i64, ptr %val, align 8, !dbg !3560
  %6 = load i64, ptr %mask, align 8, !dbg !3561
  %and = and i64 %5, %6, !dbg !3562
  %tobool = icmp ne i64 %and, 0, !dbg !3563
  %lnot = xor i1 %tobool, true, !dbg !3563
  %lnot1 = xor i1 %lnot, true, !dbg !3564
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !3565
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !3565
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !3565
  ret i1 %lnot1, !dbg !3566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3567 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3570, metadata !DIExpression()), !dbg !3572
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3571, metadata !DIExpression()), !dbg !3573
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3574
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3575
  %div = udiv i64 %1, 64, !dbg !3575
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3576
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3577
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3578
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3579
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3580
  ret i1 %call, !dbg !3581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3582 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3585, metadata !DIExpression()), !dbg !3587
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3586, metadata !DIExpression()), !dbg !3588
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3589
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3590
  br i1 %1, label %cond.true, label %cond.false, !dbg !3590

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3591
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3592
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3593
  %conv = zext i1 %call to i32, !dbg !3593
  br label %cond.end, !dbg !3590

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3594
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3595
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !3596
  %conv2 = zext i1 %call1 to i32, !dbg !3596
  br label %cond.end, !dbg !3590

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3590
  %tobool = icmp ne i32 %cond, 0, !dbg !3590
  ret i1 %tobool, !dbg !3597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3598 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3602, metadata !DIExpression()), !dbg !3604
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3603, metadata !DIExpression()), !dbg !3605
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3606
  %and = and i64 %0, 63, !dbg !3607
  %shl = shl i64 1, %and, !dbg !3608
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3609
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3610
  %shr = ashr i64 %2, 6, !dbg !3611
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3609
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3609
  %and1 = and i64 %shl, %3, !dbg !3612
  %cmp = icmp ne i64 %and1, 0, !dbg !3613
  ret i1 %cmp, !dbg !3614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3615 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3617, metadata !DIExpression()), !dbg !3620
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !3622
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3619, metadata !DIExpression()), !dbg !3623
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3624
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3625
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !3626, !srcloc !3627
  %3 = icmp ult i8 %2, 2, !dbg !3626
  call void @llvm.assume(i1 %3), !dbg !3626
  store i8 %2, ptr %oldbit, align 1, !dbg !3626
  %4 = load i8, ptr %oldbit, align 1, !dbg !3628, !range !3447, !noundef !445
  %tobool = trunc i8 %4 to i1, !dbg !3628
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !3629
  ret i1 %tobool, !dbg !3630
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3631 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1940}
!llvm.module.flags = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!llvm.ident = !{!1949}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "futex_q_init", scope: !2, file: !3, line: 59, type: !1939, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/futex/.requeue.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/futex/requeue\22 -D KBUILD_BASENAME=\22requeue\22 -D KBUILD_MODNAME=\22requeue\22 -D __KBUILD_MODNAME=kmod_requeue -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/futex/requeue.ll kernel/futex/requeue.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !1928, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/futex/requeue.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cb690190896bc37619a38e13da762594")
!4 = !{!5, !11, !17, !24, !29, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "futex_access", file: !25, line: 114, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "kernel/futex/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b31fce36210e902319cec20378aafe08")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FUTEX_READ", value: 0)
!28 = !DIEnumerator(name: "FUTEX_WRITE", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 50, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "Q_REQUEUE_PI_NONE", value: 0)
!32 = !DIEnumerator(name: "Q_REQUEUE_PI_IGNORE", value: 1)
!33 = !DIEnumerator(name: "Q_REQUEUE_PI_IN_PROGRESS", value: 2)
!34 = !DIEnumerator(name: "Q_REQUEUE_PI_WAIT", value: 3)
!35 = !DIEnumerator(name: "Q_REQUEUE_PI_DONE", value: 4)
!36 = !DIEnumerator(name: "Q_REQUEUE_PI_LOCKED", value: 5)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 10, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "false", value: 0)
!41 = !DIEnumerator(name: "true", value: 1)
!42 = !{!43, !48, !49, !54, !56, !1918, !767, !1921, !1923, !74, !82, !64, !1924, !1925, !1926}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !45, line: 735, size: 64, elements: !46)
!45 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 736, baseType: !43, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !50, line: 23, baseType: !51)
!50 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !52, line: 31, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!53 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !50, line: 21, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !52, line: 27, baseType: !7)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_q", file: !25, line: 96, size: 896, elements: !58)
!58 = !{!59, !73, !1909, !1911, !1912, !1913, !1914, !1916, !1917}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !57, file: !25, line: 97, baseType: !60, size: 320)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !61, line: 86, size: 320, elements: !62)
!61 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!62 = !{!63, !65, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !60, file: !61, line: 87, baseType: !64, size: 32)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !60, file: !61, line: 88, baseType: !66, size: 128, offset: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !67, line: 190, size: 128, elements: !68)
!67 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !67, line: 191, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !67, line: 191, baseType: !70, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !60, file: !61, line: 89, baseType: !66, size: 128, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !57, file: !25, line: 99, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !45, line: 746, size: 58368, elements: !76)
!76 = !{!77, !86, !87, !88, !98, !99, !100, !101, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !185, !196, !323, !327, !330, !361, !362, !363, !364, !375, !377, !378, !379, !380, !381, !382, !393, !394, !397, !398, !399, !400, !401, !402, !403, !404, !411, !412, !413, !414, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !694, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !750, !752, !753, !754, !766, !768, !769, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !799, !805, !1005, !1006, !1007, !1008, !1012, !1015, !1022, !1027, !1030, !1033, !1036, !1039, !1184, !1215, !1216, !1217, !1218, !1219, !1220, !1223, !1224, !1225, !1228, !1229, !1230, !1239, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1279, !1280, !1283, !1286, !1289, !1292, !1295, !1296, !1383, !1384, !1385, !1386, !1387, !1393, !1394, !1395, !1396, !1399, !1400, !1412, !1415, !1416, !1450, !1451, !1452, !1455, !1456, !1457, !1460, !1461, !1462, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1494, !1497, !1565, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1577, !1649, !1651, !1652, !1653, !1654, !1655, !1667, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1684, !1685, !1686}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !75, file: !45, line: 752, baseType: !78, size: 192)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !79, line: 56, size: 192, elements: !80)
!79 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!80 = !{!81, !83, !84, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !79, line: 57, baseType: !82, size: 64)
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !78, file: !79, line: 58, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !78, file: !79, line: 59, baseType: !54, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !78, file: !79, line: 61, baseType: !54, size: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !75, file: !45, line: 754, baseType: !7, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !75, file: !45, line: 767, baseType: !48, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !75, file: !45, line: 768, baseType: !89, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !90, line: 113, baseType: !91)
!90 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !90, line: 111, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !91, file: !90, line: 112, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !67, line: 174, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 172, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !95, file: !67, line: 173, baseType: !64, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !45, line: 770, baseType: !7, size: 32, offset: 352)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !75, file: !45, line: 771, baseType: !7, size: 32, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !75, file: !45, line: 774, baseType: !64, size: 32, offset: 416)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !75, file: !45, line: 775, baseType: !102, size: 128, offset: 448)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !103, line: 58, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!104 = !{!105, !111, !116, !120}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !102, file: !103, line: 59, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !107, line: 60, size: 64, elements: !108)
!107 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !107, line: 61, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !103, line: 60, baseType: !112, size: 32, offset: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !103, line: 60, size: 32, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !112, file: !103, line: 61, baseType: !7, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !112, file: !103, line: 62, baseType: !94, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !102, file: !103, line: 65, baseType: !117, size: 16, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !50, line: 19, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !52, line: 24, baseType: !119)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !102, file: !103, line: 65, baseType: !117, size: 16, offset: 112)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !75, file: !45, line: 776, baseType: !7, size: 32, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !75, file: !45, line: 777, baseType: !82, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !75, file: !45, line: 778, baseType: !74, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !75, file: !45, line: 787, baseType: !64, size: 32, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !75, file: !45, line: 788, baseType: !64, size: 32, offset: 800)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !75, file: !45, line: 790, baseType: !64, size: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !75, file: !45, line: 792, baseType: !64, size: 32, offset: 864)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !75, file: !45, line: 793, baseType: !64, size: 32, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !75, file: !45, line: 794, baseType: !64, size: 32, offset: 928)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !75, file: !45, line: 795, baseType: !7, size: 32, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !75, file: !45, line: 797, baseType: !132, size: 2048, offset: 1024)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !45, line: 551, size: 2048, elements: !133)
!133 = !{!134, !139, !147, !148, !149, !150, !151, !152, !153, !154, !155, !159, !160, !161, !162, !164, !167, !168, !169}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !132, file: !45, line: 553, baseType: !135, size: 128)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !45, line: 411, size: 128, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !135, file: !45, line: 412, baseType: !82, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !135, file: !45, line: 413, baseType: !54, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !132, file: !45, line: 554, baseType: !140, size: 192, align: 64, offset: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !141, line: 5, size: 192, align: 64, elements: !142)
!141 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!142 = !{!143, !144, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !140, file: !141, line: 6, baseType: !82, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !140, file: !141, line: 7, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !140, file: !141, line: 8, baseType: !145, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !132, file: !45, line: 555, baseType: !49, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !132, file: !45, line: 556, baseType: !49, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !132, file: !45, line: 558, baseType: !66, size: 128, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !132, file: !45, line: 559, baseType: !7, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !132, file: !45, line: 561, baseType: !49, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !132, file: !45, line: 562, baseType: !49, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !132, file: !45, line: 563, baseType: !49, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !132, file: !45, line: 564, baseType: !49, size: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !132, file: !45, line: 565, baseType: !156, size: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !50, line: 22, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !52, line: 30, baseType: !158)
!158 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !132, file: !45, line: 566, baseType: !49, size: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !132, file: !45, line: 568, baseType: !49, size: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !132, file: !45, line: 571, baseType: !64, size: 32, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !45, line: 572, baseType: !163, size: 64, offset: 1152)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !132, file: !45, line: 574, baseType: !165, size: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !45, line: 49, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !132, file: !45, line: 576, baseType: !165, size: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !132, file: !45, line: 578, baseType: !82, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !132, file: !45, line: 588, baseType: !170, size: 512, align: 512, offset: 1536)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !45, line: 497, size: 512, align: 512, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !170, file: !45, line: 498, baseType: !49, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !170, file: !45, line: 499, baseType: !49, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !170, file: !45, line: 500, baseType: !49, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !170, file: !45, line: 501, baseType: !54, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !170, file: !45, line: 502, baseType: !54, size: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !170, file: !45, line: 503, baseType: !82, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !170, file: !45, line: 504, baseType: !82, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !170, file: !45, line: 505, baseType: !82, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !170, file: !45, line: 506, baseType: !181, size: 64, align: 64, offset: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !45, line: 445, size: 64, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !181, file: !45, line: 446, baseType: !7, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !181, file: !45, line: 447, baseType: !7, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !75, file: !45, line: 798, baseType: !186, size: 384, offset: 3072)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !45, line: 592, size: 384, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !186, file: !45, line: 593, baseType: !66, size: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !186, file: !45, line: 594, baseType: !82, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !186, file: !45, line: 595, baseType: !82, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !186, file: !45, line: 596, baseType: !7, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !186, file: !45, line: 597, baseType: !119, size: 16, offset: 288)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !186, file: !45, line: 598, baseType: !119, size: 16, offset: 304)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !186, file: !45, line: 600, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !75, file: !45, line: 799, baseType: !197, size: 1792, offset: 3456)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !45, line: 610, size: 1792, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !320, !321}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !197, file: !45, line: 611, baseType: !140, size: 192, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !197, file: !45, line: 618, baseType: !49, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !197, file: !45, line: 619, baseType: !49, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !197, file: !45, line: 620, baseType: !49, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !197, file: !45, line: 621, baseType: !49, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !197, file: !45, line: 622, baseType: !49, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !197, file: !45, line: 629, baseType: !156, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !197, file: !45, line: 630, baseType: !49, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !45, line: 631, baseType: !7, size: 32, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !197, file: !45, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !197, file: !45, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !197, file: !45, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !197, file: !45, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !197, file: !45, line: 662, baseType: !213, size: 512, offset: 704)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !214)
!214 = !{!215, !223, !224, !229, !316, !317, !318, !319}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !6, line: 119, baseType: !216, size: 256)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !217, line: 9, size: 256, elements: !218)
!217 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !217, line: 10, baseType: !140, size: 192, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !216, file: !217, line: 11, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !222, line: 29, baseType: !156)
!222 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !213, file: !6, line: 120, baseType: !221, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !213, file: !6, line: 121, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!5, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !213, file: !6, line: 122, baseType: !230, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !232)
!232 = !{!233, !284, !285, !289, !299, !300, !311, !315}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !231, file: !6, line: 160, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !236)
!236 = !{!237, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !235, file: !6, line: 216, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 23, baseType: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !239, line: 14, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !240, file: !239, line: 15, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !244, line: 44, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !244, line: 14, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !244, line: 15, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !244, line: 15, size: 32, elements: !249)
!249 = !{!250, !251, !259}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !248, file: !244, line: 16, baseType: !94, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 24, baseType: !252, size: 16)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 24, size: 16, elements: !253)
!253 = !{!254, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !252, file: !244, line: 25, baseType: !255, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !50, line: 17, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !52, line: 21, baseType: !257)
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !252, file: !244, line: 26, baseType: !255, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 28, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !244, line: 29, baseType: !117, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !244, line: 30, baseType: !117, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !235, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !235, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !235, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !235, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !235, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !235, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !235, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !235, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !235, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !235, file: !6, line: 227, baseType: !119, size: 16, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !235, file: !6, line: 228, baseType: !119, size: 16, offset: 208)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !235, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !235, file: !6, line: 235, baseType: !221, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !235, file: !6, line: 236, baseType: !228, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !235, file: !6, line: 237, baseType: !221, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !235, file: !6, line: 238, baseType: !228, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !235, file: !6, line: 239, baseType: !281, size: 4096, align: 512, offset: 512)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 4096, align: 512, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !231, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !231, file: !6, line: 162, baseType: !286, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !67, line: 32, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !288, line: 96, baseType: !64)
!288 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!289 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !231, file: !6, line: 163, baseType: !290, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !291, line: 274, baseType: !292)
!291 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !291, line: 274, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !292, file: !291, line: 274, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !291, line: 69, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !291, line: 64, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !296, file: !291, line: 65, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !231, file: !6, line: 164, baseType: !228, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !231, file: !6, line: 165, baseType: !301, size: 128, offset: 256)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !217, line: 14, size: 128, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !301, file: !217, line: 15, baseType: !304, size: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !141, line: 26, size: 128, elements: !305)
!305 = !{!306, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !304, file: !141, line: 27, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !141, line: 12, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !307, file: !141, line: 13, baseType: !145, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !304, file: !141, line: 28, baseType: !145, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !231, file: !6, line: 166, baseType: !312, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!221}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !231, file: !6, line: 167, baseType: !221, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !6, line: 123, baseType: !255, size: 8, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !213, file: !6, line: 124, baseType: !255, size: 8, offset: 456)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !213, file: !6, line: 125, baseType: !255, size: 8, offset: 464)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !213, file: !6, line: 126, baseType: !255, size: 8, offset: 472)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !197, file: !45, line: 671, baseType: !213, size: 512, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !197, file: !45, line: 679, baseType: !322, size: 64, offset: 1728)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !75, file: !45, line: 800, baseType: !324, size: 64, offset: 5248)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !45, line: 800, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !75, file: !45, line: 809, baseType: !328, size: 64, offset: 5312)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !45, line: 70, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !75, file: !45, line: 825, baseType: !331, size: 2048, align: 512, offset: 5632)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !45, line: 509, size: 2048, align: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !331, file: !45, line: 511, baseType: !49, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !331, file: !45, line: 512, baseType: !49, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !331, file: !45, line: 513, baseType: !49, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !331, file: !45, line: 514, baseType: !49, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !331, file: !45, line: 515, baseType: !49, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !331, file: !45, line: 516, baseType: !49, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !331, file: !45, line: 518, baseType: !49, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !331, file: !45, line: 519, baseType: !49, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !331, file: !45, line: 520, baseType: !156, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !331, file: !45, line: 522, baseType: !49, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !331, file: !45, line: 523, baseType: !49, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !331, file: !45, line: 524, baseType: !156, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !331, file: !45, line: 526, baseType: !156, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !331, file: !45, line: 527, baseType: !49, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !331, file: !45, line: 529, baseType: !49, size: 64, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !331, file: !45, line: 530, baseType: !49, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !331, file: !45, line: 531, baseType: !49, size: 64, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !331, file: !45, line: 532, baseType: !49, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !331, file: !45, line: 533, baseType: !49, size: 64, offset: 1152)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !331, file: !45, line: 535, baseType: !49, size: 64, offset: 1216)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !331, file: !45, line: 536, baseType: !49, size: 64, offset: 1280)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !331, file: !45, line: 537, baseType: !49, size: 64, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !331, file: !45, line: 538, baseType: !49, size: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !331, file: !45, line: 539, baseType: !49, size: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !331, file: !45, line: 540, baseType: !49, size: 64, offset: 1536)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !331, file: !45, line: 541, baseType: !49, size: 64, offset: 1600)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !331, file: !45, line: 542, baseType: !49, size: 64, offset: 1664)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !331, file: !45, line: 543, baseType: !49, size: 64, offset: 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !75, file: !45, line: 833, baseType: !7, size: 32, offset: 7680)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !75, file: !45, line: 836, baseType: !7, size: 32, offset: 7712)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !75, file: !45, line: 837, baseType: !64, size: 32, offset: 7744)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !75, file: !45, line: 838, baseType: !365, size: 64, offset: 7808)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !368, line: 19, baseType: !369)
!368 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !368, line: 19, size: 64, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !369, file: !368, line: 19, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 1)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !75, file: !45, line: 839, baseType: !376, size: 64, offset: 7872)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !75, file: !45, line: 840, baseType: !367, size: 64, offset: 7936)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !75, file: !45, line: 841, baseType: !48, size: 64, offset: 8000)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !75, file: !45, line: 843, baseType: !119, size: 16, offset: 8064)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !75, file: !45, line: 845, baseType: !119, size: 16, offset: 8080)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !75, file: !45, line: 848, baseType: !64, size: 32, offset: 8096)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !75, file: !45, line: 849, baseType: !383, size: 32, offset: 8128)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !45, line: 718, size: 32, elements: !384)
!384 = !{!385, !392}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !383, file: !45, line: 724, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !45, line: 719, size: 32, elements: !387)
!387 = !{!388, !389, !390, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !386, file: !45, line: 720, baseType: !255, size: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !386, file: !45, line: 721, baseType: !255, size: 8, offset: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !386, file: !45, line: 722, baseType: !255, size: 8, offset: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !386, file: !45, line: 723, baseType: !255, size: 8, offset: 24)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !383, file: !45, line: 725, baseType: !54, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !75, file: !45, line: 850, baseType: !66, size: 128, offset: 8192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !75, file: !45, line: 851, baseType: !395, size: 64, offset: 8320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !45, line: 60, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !75, file: !45, line: 855, baseType: !82, size: 64, offset: 8384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !75, file: !45, line: 856, baseType: !255, size: 8, offset: 8448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !75, file: !45, line: 857, baseType: !255, size: 8, offset: 8456)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !75, file: !45, line: 858, baseType: !64, size: 32, offset: 8480)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !75, file: !45, line: 859, baseType: !66, size: 128, offset: 8512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !75, file: !45, line: 860, baseType: !64, size: 32, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !75, file: !45, line: 861, baseType: !66, size: 128, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !75, file: !45, line: 873, baseType: !405, size: 256, offset: 8832)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !45, line: 376, size: 256, elements: !406)
!406 = !{!407, !408, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !405, file: !45, line: 381, baseType: !82, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !405, file: !45, line: 384, baseType: !53, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !405, file: !45, line: 389, baseType: !53, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !405, file: !45, line: 392, baseType: !53, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !75, file: !45, line: 875, baseType: !66, size: 128, offset: 9088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !75, file: !45, line: 877, baseType: !60, size: 320, offset: 9216)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !75, file: !45, line: 878, baseType: !140, size: 192, align: 64, offset: 9536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !75, file: !45, line: 881, baseType: !415, size: 64, offset: 9728)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !417, line: 733, size: 10240, elements: !418)
!417 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!418 = !{!419, !610}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 734, baseType: !420, size: 10240)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !417, line: 734, size: 10240, elements: !421)
!421 = !{!422, !426, !448, !455, !456, !457, !458, !459, !460, !468, !469, !470, !476, !477, !484, !485, !486, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !527, !541, !544, !576, !577, !578, !581, !585, !586, !589, !590, !591, !597, !598}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !417, line: 739, baseType: !423, size: 512, align: 512)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !417, line: 739, size: 512, align: 512, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !423, file: !417, line: 747, baseType: !94, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !420, file: !417, line: 750, baseType: !427, size: 128, offset: 512)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !428, line: 218, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!429 = !{!430, !446, !447}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !428, line: 219, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 219, size: 32, elements: !432)
!432 = !{!433, !442}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !431, file: !428, line: 220, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !435, line: 29, baseType: !436)
!435 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !435, line: 17, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !435, line: 18, baseType: !439, size: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !435, line: 18, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !439, file: !435, line: 19, baseType: !240, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !431, file: !428, line: 221, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !428, line: 197, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 197, elements: !445)
!445 = !{}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !427, file: !428, line: 223, baseType: !7, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !427, file: !428, line: 224, baseType: !48, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !420, file: !417, line: 752, baseType: !449, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!82, !452, !82, !82, !82, !82}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !454, line: 537, flags: DIFlagFwdDecl)
!454 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !420, file: !417, line: 756, baseType: !82, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !420, file: !417, line: 757, baseType: !82, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !420, file: !417, line: 760, baseType: !82, size: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !420, file: !417, line: 761, baseType: !82, size: 64, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !420, file: !417, line: 763, baseType: !82, size: 64, offset: 960)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !420, file: !417, line: 764, baseType: !461, size: 64, offset: 1024)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !454, line: 299, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 299, size: 64, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !463, file: !454, line: 299, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !467, line: 18, baseType: !82)
!467 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !420, file: !417, line: 773, baseType: !94, size: 32, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !420, file: !417, line: 785, baseType: !94, size: 32, offset: 1120)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !420, file: !417, line: 795, baseType: !471, size: 64, offset: 1152)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !417, line: 726, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !472, file: !417, line: 727, baseType: !49, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !472, file: !417, line: 728, baseType: !64, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !420, file: !417, line: 801, baseType: !82, size: 64, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !420, file: !417, line: 804, baseType: !478, size: 64, offset: 1280)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !479, line: 13, baseType: !480)
!479 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !67, line: 181, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 179, size: 64, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !481, file: !67, line: 180, baseType: !156, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !420, file: !417, line: 806, baseType: !64, size: 32, offset: 1344)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !420, file: !417, line: 808, baseType: !434, size: 32, offset: 1376)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !420, file: !417, line: 823, baseType: !487, size: 320, offset: 1408)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !488, line: 48, size: 320, elements: !489)
!488 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!489 = !{!490, !491, !492, !497, !498}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !488, line: 49, baseType: !478, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !488, line: 55, baseType: !478, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !487, file: !488, line: 57, baseType: !493, size: 32, offset: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !494, line: 15, size: 32, elements: !495)
!494 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !493, file: !494, line: 20, baseType: !94, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !487, file: !488, line: 59, baseType: !238, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !487, file: !488, line: 60, baseType: !66, size: 128, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !420, file: !417, line: 825, baseType: !66, size: 128, offset: 1728)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !420, file: !417, line: 845, baseType: !64, size: 32, offset: 1856)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !420, file: !417, line: 849, baseType: !82, size: 64, offset: 1920)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !420, file: !417, line: 850, baseType: !82, size: 64, offset: 1984)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !420, file: !417, line: 852, baseType: !82, size: 64, offset: 2048)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !420, file: !417, line: 853, baseType: !82, size: 64, offset: 2112)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !420, file: !417, line: 854, baseType: !480, size: 64, offset: 2176)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !420, file: !417, line: 855, baseType: !82, size: 64, offset: 2240)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !420, file: !417, line: 856, baseType: !82, size: 64, offset: 2304)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !420, file: !417, line: 857, baseType: !82, size: 64, offset: 2368)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !420, file: !417, line: 858, baseType: !82, size: 64, offset: 2432)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !420, file: !417, line: 865, baseType: !295, size: 32, offset: 2496)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !420, file: !417, line: 867, baseType: !434, size: 32, offset: 2528)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !420, file: !417, line: 869, baseType: !82, size: 64, offset: 2560)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !420, file: !417, line: 869, baseType: !82, size: 64, offset: 2624)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !420, file: !417, line: 869, baseType: !82, size: 64, offset: 2688)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !420, file: !417, line: 869, baseType: !82, size: 64, offset: 2752)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !420, file: !417, line: 870, baseType: !82, size: 64, offset: 2816)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !420, file: !417, line: 870, baseType: !82, size: 64, offset: 2880)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !420, file: !417, line: 870, baseType: !82, size: 64, offset: 2944)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !420, file: !417, line: 871, baseType: !82, size: 64, offset: 3008)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !420, file: !417, line: 871, baseType: !82, size: 64, offset: 3072)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !420, file: !417, line: 871, baseType: !82, size: 64, offset: 3136)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !420, file: !417, line: 871, baseType: !82, size: 64, offset: 3200)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !420, file: !417, line: 873, baseType: !524, size: 3328, offset: 3264)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 3328, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 52)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !420, file: !417, line: 875, baseType: !528, size: 1280, offset: 6592)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 1280, elements: !539)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !530, line: 22, size: 320, elements: !531)
!530 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !530, line: 23, baseType: !238, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !530, line: 24, baseType: !156, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !529, file: !530, line: 26, baseType: !66, size: 128, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !529, file: !530, line: 28, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !50, line: 20, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !52, line: 26, baseType: !64)
!539 = !{!540}
!540 = !DISubrange(count: 4)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !420, file: !417, line: 877, baseType: !542, size: 64, offset: 7872)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !417, line: 877, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !420, file: !417, line: 880, baseType: !545, size: 1088, offset: 7936)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !546, line: 72, baseType: !547)
!546 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 23, size: 1088, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !556, !557, !565, !566, !570, !571, !572}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !547, file: !546, line: 28, baseType: !49, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !547, file: !546, line: 38, baseType: !480, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !547, file: !546, line: 40, baseType: !82, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !547, file: !546, line: 43, baseType: !487, size: 320, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !547, file: !546, line: 44, baseType: !554, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !546, line: 44, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !546, line: 48, baseType: !82, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !547, file: !546, line: 59, baseType: !558, size: 256, offset: 640)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !559, line: 66, size: 256, elements: !560)
!559 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!560 = !{!561, !562, !563, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !558, file: !559, line: 67, baseType: !478, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !558, file: !559, line: 68, baseType: !238, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !558, file: !559, line: 70, baseType: !493, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !558, file: !559, line: 72, baseType: !66, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !547, file: !546, line: 60, baseType: !48, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !547, file: !546, line: 61, baseType: !567, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !546, line: 61, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !547, file: !546, line: 63, baseType: !94, size: 32, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !547, file: !546, line: 69, baseType: !117, size: 16, offset: 1056)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !547, file: !546, line: 70, baseType: !573, size: 16, offset: 1072)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !50, line: 18, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !52, line: 23, baseType: !575)
!575 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !417, line: 882, baseType: !82, size: 64, offset: 9024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !420, file: !417, line: 885, baseType: !434, size: 32, offset: 9088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !420, file: !417, line: 886, baseType: !579, size: 64, offset: 9152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !417, line: 732, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !420, file: !417, line: 901, baseType: !582, size: 64, offset: 9216)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !584, line: 18, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !420, file: !417, line: 904, baseType: !452, size: 64, offset: 9280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !420, file: !417, line: 906, baseType: !587, size: 64, offset: 9344)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !417, line: 906, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !420, file: !417, line: 930, baseType: !94, size: 32, offset: 9408)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !420, file: !417, line: 933, baseType: !94, size: 32, offset: 9440)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !420, file: !417, line: 935, baseType: !592, size: 64, offset: 9472)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !592, file: !18, line: 104, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !420, file: !417, line: 940, baseType: !478, size: 64, offset: 9536)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !420, file: !417, line: 942, baseType: !599, size: 256, offset: 9600)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !600, line: 98, size: 256, elements: !601)
!600 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !599, file: !600, line: 99, baseType: !478, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !599, file: !600, line: 100, baseType: !66, size: 128, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !599, file: !600, line: 101, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !600, line: 21, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !416, file: !417, line: 986, baseType: !611, offset: 10240)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: -1)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !75, file: !45, line: 882, baseType: !415, size: 64, offset: 9792)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !75, file: !45, line: 884, baseType: !64, size: 32, offset: 9856)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !75, file: !45, line: 885, baseType: !64, size: 32, offset: 9888)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !75, file: !45, line: 886, baseType: !64, size: 32, offset: 9920)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !75, file: !45, line: 888, baseType: !64, size: 32, offset: 9952)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !75, file: !45, line: 890, baseType: !82, size: 64, offset: 9984)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !75, file: !45, line: 893, baseType: !7, size: 32, offset: 10048)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !75, file: !45, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !75, file: !45, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !75, file: !45, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !75, file: !45, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !75, file: !45, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !75, file: !45, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !75, file: !45, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !75, file: !45, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !75, file: !45, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !75, file: !45, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !75, file: !45, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !75, file: !45, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !75, file: !45, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !75, file: !45, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !75, file: !45, line: 969, baseType: !82, size: 64, offset: 10176)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !75, file: !45, line: 971, baseType: !637, size: 448, offset: 10240)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !638)
!638 = !{!639, !640, !646}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !637, file: !12, line: 26, baseType: !82, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !637, file: !12, line: 27, baseType: !641, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !645}
!644 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !12, line: 28, baseType: !647, size: 320, offset: 128)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !12, line: 28, size: 320, elements: !648)
!648 = !{!649, !659, !684}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !647, file: !12, line: 37, baseType: !650, size: 320)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 30, size: 320, elements: !651)
!651 = !{!652, !654, !655, !656, !657, !658}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !650, file: !12, line: 31, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !12, line: 32, baseType: !54, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !12, line: 33, baseType: !54, size: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !650, file: !12, line: 34, baseType: !54, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !650, file: !12, line: 35, baseType: !49, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !650, file: !12, line: 36, baseType: !653, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !647, file: !12, line: 47, baseType: !660, size: 192)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 39, size: 192, elements: !661)
!661 = !{!662, !663, !664, !683}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !660, file: !12, line: 40, baseType: !286, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !12, line: 42, baseType: !665, size: 64, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !12, line: 42, size: 64, elements: !666)
!666 = !{!667, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !665, file: !12, line: 43, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !670, line: 7, size: 128, elements: !671)
!670 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !670, line: 8, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !288, line: 93, baseType: !158)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !670, line: 9, baseType: !158, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !665, file: !12, line: 44, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !678, line: 7, size: 64, elements: !679)
!678 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!679 = !{!680, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !677, file: !678, line: 8, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !678, line: 5, baseType: !537)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !677, file: !678, line: 9, baseType: !537, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !660, file: !12, line: 46, baseType: !49, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !647, file: !12, line: 55, baseType: !685, size: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 49, size: 256, elements: !686)
!686 = !{!687, !690, !691, !692, !693}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !685, file: !12, line: 50, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !685, file: !12, line: 51, baseType: !64, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !685, file: !12, line: 52, baseType: !64, size: 32, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !685, file: !12, line: 53, baseType: !82, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !685, file: !12, line: 54, baseType: !82, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !75, file: !45, line: 973, baseType: !695, size: 32, offset: 10688)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !67, line: 27, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !288, line: 28, baseType: !64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !75, file: !45, line: 974, baseType: !695, size: 32, offset: 10720)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !75, file: !45, line: 978, baseType: !82, size: 64, offset: 10752)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !75, file: !45, line: 987, baseType: !74, size: 64, offset: 10816)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !45, line: 990, baseType: !74, size: 64, offset: 10880)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !45, line: 995, baseType: !66, size: 128, offset: 10944)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !75, file: !45, line: 996, baseType: !66, size: 128, offset: 11072)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !75, file: !45, line: 997, baseType: !74, size: 64, offset: 11200)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !75, file: !45, line: 1005, baseType: !66, size: 128, offset: 11264)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !75, file: !45, line: 1006, baseType: !66, size: 128, offset: 11392)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !75, file: !45, line: 1009, baseType: !707, size: 64, offset: 11520)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !709, line: 59, size: 768, elements: !710)
!709 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!710 = !{!711, !712, !713, !714, !725, !726, !733, !742}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !709, line: 61, baseType: !89, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !708, file: !709, line: 62, baseType: !7, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !709, line: 63, baseType: !434, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !708, file: !709, line: 65, baseType: !715, size: 256, offset: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 256, elements: !539)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !67, line: 194, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !716, file: !67, line: 195, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !67, line: 198, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !67, line: 199, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !720, file: !67, line: 199, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !708, file: !709, line: 66, baseType: !716, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !708, file: !709, line: 68, baseType: !727, size: 192, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !728, line: 41, baseType: !729)
!728 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !728, line: 37, size: 192, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !728, line: 38, baseType: !434, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !729, file: !728, line: 39, baseType: !66, size: 128, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !708, file: !709, line: 69, baseType: !734, size: 128, align: 64, offset: 640)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !67, line: 232, size: 128, align: 64, elements: !735)
!735 = !{!736, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !67, line: 233, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !734, file: !67, line: 234, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !737}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !708, file: !709, line: 70, baseType: !743, offset: 768)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, elements: !612)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !709, line: 54, size: 128, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !744, file: !709, line: 55, baseType: !64, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !744, file: !709, line: 56, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !709, line: 56, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !75, file: !45, line: 1010, baseType: !751, size: 512, offset: 11584)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 512, elements: !539)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !75, file: !45, line: 1011, baseType: !66, size: 128, offset: 12096)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !75, file: !45, line: 1012, baseType: !66, size: 128, offset: 12224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !75, file: !45, line: 1014, baseType: !755, size: 64, offset: 12352)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !757, line: 26, size: 256, elements: !758)
!757 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !756, file: !757, line: 27, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !756, file: !757, line: 28, baseType: !761, size: 192, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !762, line: 43, size: 192, elements: !763)
!762 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !761, file: !762, line: 44, baseType: !238, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !761, file: !762, line: 45, baseType: !66, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !75, file: !45, line: 1017, baseType: !767, size: 64, offset: 12416)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !75, file: !45, line: 1020, baseType: !767, size: 64, offset: 12480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !75, file: !45, line: 1023, baseType: !48, size: 64, offset: 12544)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !75, file: !45, line: 1025, baseType: !49, size: 64, offset: 12608)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !75, file: !45, line: 1026, baseType: !49, size: 64, offset: 12672)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !75, file: !45, line: 1031, baseType: !49, size: 64, offset: 12736)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !75, file: !45, line: 1032, baseType: !774, size: 192, offset: 12800)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !45, line: 324, size: 192, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !774, file: !45, line: 326, baseType: !49, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !774, file: !45, line: 327, baseType: !49, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !45, line: 328, baseType: !238, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !75, file: !45, line: 1041, baseType: !82, size: 64, offset: 12992)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !75, file: !45, line: 1042, baseType: !82, size: 64, offset: 13056)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !75, file: !45, line: 1045, baseType: !49, size: 64, offset: 13120)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !75, file: !45, line: 1048, baseType: !49, size: 64, offset: 13184)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !75, file: !45, line: 1051, baseType: !82, size: 64, offset: 13248)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !75, file: !45, line: 1052, baseType: !82, size: 64, offset: 13312)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !75, file: !45, line: 1055, baseType: !786, size: 640, offset: 13376)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !787, line: 132, size: 640, elements: !788)
!787 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!788 = !{!789, !797, !798}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !786, file: !787, line: 133, baseType: !790, size: 576)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 576, elements: !795)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !787, line: 117, size: 192, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !791, file: !787, line: 118, baseType: !49, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !791, file: !787, line: 119, baseType: !301, size: 128, offset: 64)
!795 = !{!796}
!796 = !DISubrange(count: 3)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !786, file: !787, line: 134, baseType: !7, size: 32, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !786, file: !787, line: 135, baseType: !7, size: 32, offset: 608)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !75, file: !45, line: 1058, baseType: !800, size: 448, offset: 14016)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !787, line: 144, size: 448, elements: !801)
!801 = !{!802, !803, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !800, file: !787, line: 145, baseType: !734, size: 128, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !800, file: !787, line: 146, baseType: !558, size: 256, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !800, file: !787, line: 147, baseType: !7, size: 32, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !75, file: !45, line: 1064, baseType: !806, size: 64, offset: 14464)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !809, line: 110, size: 1472, elements: !810)
!809 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!810 = !{!811, !812, !819, !826, !827, !828, !829, !830, !831, !832, !833, !839, !840, !841, !842, !843, !844, !960, !961, !962, !963, !964, !987, !988, !992, !1000}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !808, file: !809, line: 111, baseType: !478, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !808, file: !809, line: 112, baseType: !813, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !584, line: 23, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 21, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !584, line: 22, baseType: !817, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !67, line: 37, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !288, line: 49, baseType: !7)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !808, file: !809, line: 113, baseType: !820, size: 32, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !584, line: 28, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 26, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !821, file: !584, line: 27, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !67, line: 38, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !288, line: 50, baseType: !7)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !808, file: !809, line: 114, baseType: !813, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !808, file: !809, line: 115, baseType: !820, size: 32, offset: 160)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !808, file: !809, line: 116, baseType: !813, size: 32, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !808, file: !809, line: 117, baseType: !820, size: 32, offset: 224)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !808, file: !809, line: 118, baseType: !813, size: 32, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !808, file: !809, line: 119, baseType: !820, size: 32, offset: 288)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !808, file: !809, line: 120, baseType: !7, size: 32, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !808, file: !809, line: 121, baseType: !834, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !835, line: 24, baseType: !836)
!835 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 24, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !836, file: !835, line: 24, baseType: !49, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !808, file: !809, line: 122, baseType: !834, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !808, file: !809, line: 123, baseType: !834, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !808, file: !809, line: 124, baseType: !834, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !808, file: !809, line: 125, baseType: !834, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !808, file: !809, line: 127, baseType: !257, size: 8, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !808, file: !809, line: 129, baseType: !845, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !847, line: 195, size: 1728, elements: !848)
!847 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!848 = !{!849, !850, !853, !858, !859, !862, !863, !870, !871, !872, !873, !876, !877, !878, !879, !880, !924, !945}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !846, file: !847, line: 196, baseType: !89, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !846, file: !847, line: 197, baseType: !851, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !847, line: 28, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !67, line: 104, baseType: !537)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 198, baseType: !854, size: 192, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 198, size: 192, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !854, file: !847, line: 199, baseType: !66, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !854, file: !847, line: 200, baseType: !140, size: 192, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !846, file: !847, line: 205, baseType: !487, size: 320, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !846, file: !847, line: 206, baseType: !860, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !847, line: 206, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !846, file: !847, line: 207, baseType: !48, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 208, baseType: !864, size: 64, offset: 704)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 208, size: 64, elements: !865)
!865 = !{!866, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !864, file: !847, line: 209, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !868, line: 8, baseType: !157)
!868 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !864, file: !847, line: 210, baseType: !867, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !846, file: !847, line: 212, baseType: !867, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !847, line: 213, baseType: !813, size: 32, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !846, file: !847, line: 214, baseType: !820, size: 32, offset: 864)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !846, file: !847, line: 215, baseType: !874, size: 32, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !847, line: 31, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !67, line: 110, baseType: !54)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !846, file: !847, line: 216, baseType: !119, size: 16, offset: 928)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !846, file: !847, line: 217, baseType: !119, size: 16, offset: 944)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !846, file: !847, line: 221, baseType: !575, size: 16, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !847, line: 228, baseType: !82, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 245, baseType: !881, size: 320, offset: 1088)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 245, size: 320, elements: !882)
!882 = !{!883, !915}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !881, file: !847, line: 246, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !847, line: 114, size: 320, elements: !885)
!885 = !{!886, !887, !900, !903, !912}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !884, file: !847, line: 116, baseType: !82, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !847, line: 117, baseType: !888, size: 64, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !847, line: 117, size: 64, elements: !889)
!889 = !{!890, !899}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !847, line: 118, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !847, line: 118, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !891, file: !847, line: 120, baseType: !117, size: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !891, file: !847, line: 121, baseType: !895, size: 48, offset: 16)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 48, elements: !897)
!896 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!897 = !{!898}
!898 = !DISubrange(count: 6)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !888, file: !847, line: 127, baseType: !82, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !847, line: 129, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !847, line: 102, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !884, file: !847, line: 130, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !847, line: 108, size: 192, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !905, file: !847, line: 109, baseType: !734, size: 128, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !905, file: !847, line: 110, baseType: !89, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !905, file: !847, line: 111, baseType: !910, size: 8, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !67, line: 35, baseType: !911)
!911 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !884, file: !847, line: 131, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !847, line: 247, baseType: !916, size: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !847, line: 247, size: 320, elements: !917)
!917 = !{!918, !919, !920, !921, !922}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !916, file: !847, line: 248, baseType: !82, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !916, file: !847, line: 249, baseType: !82, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !916, file: !847, line: 250, baseType: !901, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !916, file: !847, line: 251, baseType: !904, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !916, file: !847, line: 252, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 260, baseType: !925, size: 256, offset: 1408)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 260, size: 256, elements: !926)
!926 = !{!927, !933}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !925, file: !847, line: 261, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !847, line: 134, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !928, file: !847, line: 135, baseType: !48, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !928, file: !847, line: 136, baseType: !932, size: 256)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !539)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !847, line: 262, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !847, line: 262, size: 256, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !934, file: !847, line: 264, baseType: !66, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !934, file: !847, line: 265, baseType: !938, size: 128, offset: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !939, line: 22, size: 128, elements: !940)
!939 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!940 = !{!941, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !938, file: !939, line: 23, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !939, line: 23, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !938, file: !939, line: 24, baseType: !82, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !846, file: !847, line: 280, baseType: !946, size: 64, offset: 1664)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !847, line: 176, size: 192, elements: !948)
!948 = !{!949, !958, !959}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !947, file: !847, line: 177, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !847, line: 171, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!64, !845, !954, !956, !845}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !947, file: !847, line: 178, baseType: !845, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !947, file: !847, line: 179, baseType: !901, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !808, file: !809, line: 130, baseType: !845, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !808, file: !809, line: 131, baseType: !845, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !808, file: !809, line: 132, baseType: !845, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !808, file: !809, line: 135, baseType: !48, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !808, file: !809, line: 137, baseType: !965, size: 64, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !967, line: 14, size: 1088, elements: !968)
!967 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !966, file: !967, line: 15, baseType: !89, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !966, file: !967, line: 17, baseType: !529, size: 320, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !966, file: !967, line: 19, baseType: !82, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !966, file: !967, line: 20, baseType: !478, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !966, file: !967, line: 23, baseType: !720, size: 128, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !967, line: 24, baseType: !813, size: 32, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !966, file: !967, line: 29, baseType: !478, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !966, file: !967, line: 36, baseType: !977, size: 320, offset: 768)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !978, line: 15, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!979 = !{!980, !981, !982, !983, !984, !985, !986}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !977, file: !978, line: 16, baseType: !238, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !977, file: !978, line: 18, baseType: !64, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !977, file: !978, line: 19, baseType: !64, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !977, file: !978, line: 20, baseType: !64, size: 32, offset: 96)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !977, file: !978, line: 21, baseType: !64, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !977, file: !978, line: 22, baseType: !82, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 23, baseType: !82, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !808, file: !809, line: 138, baseType: !582, size: 64, offset: 1152)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !808, file: !809, line: 139, baseType: !989, size: 64, offset: 1216)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !991, line: 16, flags: DIFlagFwdDecl)
!991 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !808, file: !809, line: 140, baseType: !993, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !809, line: 25, size: 64, elements: !995)
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !994, file: !809, line: 26, baseType: !94, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !994, file: !809, line: 27, baseType: !64, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !994, file: !809, line: 28, baseType: !999, offset: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, elements: !612)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 142, baseType: !1001, size: 128, offset: 1344)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 142, size: 128, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1001, file: !809, line: 143, baseType: !64, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1001, file: !809, line: 144, baseType: !734, size: 128, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !75, file: !45, line: 1067, baseType: !806, size: 64, offset: 14528)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !75, file: !45, line: 1070, baseType: !806, size: 64, offset: 14592)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !75, file: !45, line: 1074, baseType: !845, size: 64, offset: 14656)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !75, file: !45, line: 1084, baseType: !1009, size: 128, offset: 14720)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 128, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 16)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !75, file: !45, line: 1086, baseType: !1013, size: 64, offset: 14848)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !45, line: 55, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !75, file: !45, line: 1089, baseType: !1016, size: 64, offset: 14912)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1017, line: 12, size: 64, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1016, file: !1017, line: 13, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1017, line: 8, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !75, file: !45, line: 1090, baseType: !1023, size: 128, offset: 14976)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1024, line: 13, size: 128, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1023, file: !1024, line: 14, baseType: !66, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !75, file: !45, line: 1097, baseType: !1028, size: 64, offset: 15104)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !45, line: 50, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !75, file: !45, line: 1100, baseType: !1031, size: 64, offset: 15168)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !45, line: 1100, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !75, file: !45, line: 1103, baseType: !1034, size: 64, offset: 15232)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !45, line: 53, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !75, file: !45, line: 1107, baseType: !1037, size: 64, offset: 15296)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !45, line: 56, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !75, file: !45, line: 1110, baseType: !1040, size: 64, offset: 15360)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1042, line: 93, size: 8768, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1093, !1102, !1103, !1105, !1106, !1107, !1110, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1152, !1153, !1161, !1171, !1174, !1175, !1178, !1179, !1180, !1181, !1182, !1183}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1041, file: !1042, line: 94, baseType: !89, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1041, file: !1042, line: 95, baseType: !94, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1041, file: !1042, line: 96, baseType: !64, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1041, file: !1042, line: 97, baseType: !64, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1041, file: !1042, line: 98, baseType: !66, size: 128, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1041, file: !1042, line: 100, baseType: !727, size: 192, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1041, file: !1042, line: 103, baseType: !74, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1041, file: !1042, line: 106, baseType: !1052, size: 192, offset: 512)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !991, line: 32, size: 192, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1052, file: !991, line: 33, baseType: !66, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1052, file: !991, line: 34, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1057, line: 25, baseType: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 23, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1058, file: !1057, line: 24, baseType: !372, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1041, file: !1042, line: 109, baseType: !716, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1041, file: !1042, line: 112, baseType: !64, size: 32, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1041, file: !1042, line: 114, baseType: !64, size: 32, offset: 800)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1041, file: !1042, line: 115, baseType: !74, size: 64, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1041, file: !1042, line: 118, baseType: !64, size: 32, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !1042, line: 119, baseType: !7, size: 32, offset: 928)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1041, file: !1042, line: 121, baseType: !1068, size: 64, offset: 960)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1042, line: 80, size: 448, elements: !1070)
!1070 = !{!1071, !1072, !1078}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1069, file: !1042, line: 81, baseType: !94, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1069, file: !1042, line: 82, baseType: !1073, size: 128, offset: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1042, line: 75, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1073, file: !1042, line: 76, baseType: !74, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !1042, line: 77, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1069, file: !1042, line: 83, baseType: !756, size: 256, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1041, file: !1042, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1041, file: !1042, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1041, file: !1042, line: 138, baseType: !7, size: 32, offset: 1056)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1041, file: !1042, line: 139, baseType: !66, size: 128, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1041, file: !1042, line: 142, baseType: !213, size: 512, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1041, file: !1042, line: 143, baseType: !221, size: 64, offset: 1728)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1041, file: !1042, line: 150, baseType: !1086, size: 256, offset: 1792)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 256, elements: !1091)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1042, line: 38, size: 128, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1087, file: !1042, line: 39, baseType: !49, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1087, file: !1042, line: 40, baseType: !49, size: 64, offset: 64)
!1091 = !{!1092}
!1092 = !DISubrange(count: 2)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1041, file: !1042, line: 156, baseType: !1094, size: 192, offset: 2048)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1042, line: 66, size: 192, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1094, file: !1042, line: 67, baseType: !1097, size: 192)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1042, line: 47, size: 192, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1097, file: !1042, line: 48, baseType: !480, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1097, file: !1042, line: 49, baseType: !480, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1097, file: !1042, line: 50, baseType: !480, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1041, file: !1042, line: 160, baseType: !786, size: 640, offset: 2240)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1041, file: !1042, line: 163, baseType: !1104, size: 256, offset: 2880)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !539)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1041, file: !1042, line: 169, baseType: !707, size: 64, offset: 3136)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1041, file: !1042, line: 172, baseType: !64, size: 32, offset: 3200)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1041, file: !1042, line: 174, baseType: !1108, size: 64, offset: 3264)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1042, line: 174, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1041, file: !1042, line: 185, baseType: !1111, size: 64, offset: 3328)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !291, line: 860, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 853, size: 64, elements: !1113)
!1113 = !{!1114, !1119}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1112, file: !291, line: 858, baseType: !1115, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !291, line: 275, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !291, line: 275, size: 32, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1116, file: !291, line: 275, baseType: !295, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1112, file: !291, line: 859, baseType: !434, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1041, file: !1042, line: 186, baseType: !49, size: 64, offset: 3392)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1041, file: !1042, line: 186, baseType: !49, size: 64, offset: 3456)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1041, file: !1042, line: 186, baseType: !49, size: 64, offset: 3520)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1041, file: !1042, line: 186, baseType: !49, size: 64, offset: 3584)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1041, file: !1042, line: 187, baseType: !49, size: 64, offset: 3648)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1041, file: !1042, line: 188, baseType: !49, size: 64, offset: 3712)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1041, file: !1042, line: 189, baseType: !774, size: 192, offset: 3776)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1041, file: !1042, line: 190, baseType: !82, size: 64, offset: 3968)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1041, file: !1042, line: 190, baseType: !82, size: 64, offset: 4032)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1041, file: !1042, line: 190, baseType: !82, size: 64, offset: 4096)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1041, file: !1042, line: 190, baseType: !82, size: 64, offset: 4160)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1041, file: !1042, line: 191, baseType: !82, size: 64, offset: 4224)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1041, file: !1042, line: 191, baseType: !82, size: 64, offset: 4288)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1041, file: !1042, line: 191, baseType: !82, size: 64, offset: 4352)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1041, file: !1042, line: 191, baseType: !82, size: 64, offset: 4416)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1041, file: !1042, line: 192, baseType: !82, size: 64, offset: 4480)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1041, file: !1042, line: 192, baseType: !82, size: 64, offset: 4544)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1041, file: !1042, line: 192, baseType: !82, size: 64, offset: 4608)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1041, file: !1042, line: 192, baseType: !82, size: 64, offset: 4672)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1041, file: !1042, line: 193, baseType: !82, size: 64, offset: 4736)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1041, file: !1042, line: 193, baseType: !82, size: 64, offset: 4800)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1041, file: !1042, line: 194, baseType: !1142, size: 448, offset: 4864)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1143, line: 12, size: 448, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1142, file: !1143, line: 15, baseType: !49, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1142, file: !1143, line: 17, baseType: !49, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1142, file: !1143, line: 19, baseType: !49, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1142, file: !1143, line: 21, baseType: !49, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1142, file: !1143, line: 29, baseType: !49, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1142, file: !1143, line: 35, baseType: !49, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1142, file: !1143, line: 44, baseType: !49, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1041, file: !1042, line: 202, baseType: !53, size: 64, offset: 5312)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1041, file: !1042, line: 213, baseType: !1154, size: 2048, offset: 5376)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1155, size: 2048, elements: !1010)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1156, line: 43, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1157 = !{!1158, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1155, file: !1156, line: 44, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !288, line: 16, baseType: !82)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1155, file: !1156, line: 45, baseType: !1159, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1041, file: !1042, line: 216, baseType: !1162, size: 448, offset: 7424)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1042, line: 30, size: 448, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1162, file: !1042, line: 31, baseType: !64, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1162, file: !1042, line: 32, baseType: !644, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1162, file: !1042, line: 33, baseType: !82, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1162, file: !1042, line: 34, baseType: !49, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1162, file: !1042, line: 34, baseType: !49, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1162, file: !1042, line: 35, baseType: !82, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1162, file: !1042, line: 35, baseType: !82, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1041, file: !1042, line: 219, baseType: !1172, size: 64, offset: 7872)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1042, line: 219, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1041, file: !1042, line: 222, baseType: !7, size: 32, offset: 7936)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1041, file: !1042, line: 223, baseType: !1176, size: 64, offset: 8000)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1042, line: 223, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1041, file: !1042, line: 230, baseType: !910, size: 8, offset: 8064)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1041, file: !1042, line: 231, baseType: !575, size: 16, offset: 8080)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1041, file: !1042, line: 232, baseType: !575, size: 16, offset: 8096)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1041, file: !1042, line: 234, baseType: !415, size: 64, offset: 8128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1041, file: !1042, line: 237, baseType: !558, size: 256, offset: 8192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1041, file: !1042, line: 243, baseType: !487, size: 320, offset: 8448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !75, file: !45, line: 1111, baseType: !1185, size: 64, offset: 15424)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1042, line: 20, size: 16640, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1186, file: !1042, line: 21, baseType: !434, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1186, file: !1042, line: 22, baseType: !89, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1186, file: !1042, line: 23, baseType: !727, size: 192, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1186, file: !1042, line: 24, baseType: !1192, size: 16384, offset: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 16384, elements: !1213)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !991, line: 51, size: 256, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1193, file: !991, line: 52, baseType: !1196, size: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !991, line: 37, size: 256, elements: !1197)
!1197 = !{!1198, !1205, !1206, !1212}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1196, file: !991, line: 39, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1200, line: 83, baseType: !1201)
!1200 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1200, line: 82, baseType: !1203)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !64}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1196, file: !991, line: 40, baseType: !82, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1196, file: !991, line: 46, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1200, line: 86, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1200, line: 85, baseType: !1210)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1196, file: !991, line: 48, baseType: !1056, size: 64, offset: 192)
!1213 = !{!1214}
!1214 = !DISubrange(count: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !75, file: !45, line: 1112, baseType: !1056, size: 64, offset: 15488)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !75, file: !45, line: 1113, baseType: !1056, size: 64, offset: 15552)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !75, file: !45, line: 1115, baseType: !1056, size: 64, offset: 15616)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !75, file: !45, line: 1116, baseType: !1052, size: 192, offset: 15680)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !75, file: !45, line: 1117, baseType: !82, size: 64, offset: 15872)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !75, file: !45, line: 1118, baseType: !1221, size: 64, offset: 15936)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 61, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !288, line: 72, baseType: !1159)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !75, file: !45, line: 1119, baseType: !7, size: 32, offset: 16000)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !75, file: !45, line: 1121, baseType: !737, size: 64, offset: 16064)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !75, file: !45, line: 1125, baseType: !1226, size: 64, offset: 16128)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !45, line: 43, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !75, file: !45, line: 1127, baseType: !813, size: 32, offset: 16192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !75, file: !45, line: 1128, baseType: !7, size: 32, offset: 16224)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !75, file: !45, line: 1130, baseType: !1231, size: 128, offset: 16256)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1232, line: 37, size: 128, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1231, file: !1232, line: 38, baseType: !64, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1231, file: !1232, line: 39, baseType: !94, size: 32, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1231, file: !1232, line: 40, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1232, line: 24, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !75, file: !45, line: 1131, baseType: !1240, size: 256, offset: 16384)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1241, line: 12, size: 256, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1240, file: !1241, line: 13, baseType: !923, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1240, file: !1241, line: 14, baseType: !82, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1240, file: !1241, line: 15, baseType: !82, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1240, file: !1241, line: 16, baseType: !910, size: 8, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !75, file: !45, line: 1134, baseType: !49, size: 64, offset: 16640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !75, file: !45, line: 1135, baseType: !49, size: 64, offset: 16704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !75, file: !45, line: 1138, baseType: !434, size: 32, offset: 16768)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !75, file: !45, line: 1141, baseType: !238, size: 32, offset: 16800)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !75, file: !45, line: 1143, baseType: !44, size: 64, offset: 16832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !75, file: !45, line: 1147, baseType: !304, size: 128, offset: 16896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !75, file: !45, line: 1149, baseType: !74, size: 64, offset: 17024)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !75, file: !45, line: 1151, baseType: !1255, size: 64, offset: 17088)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1257, line: 52, size: 896, elements: !1258)
!1257 = !DIFile(filename: "kernel/futex/../locking/rtmutex_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c615e119c487e73c2bc04a1b58a3742e")
!1258 = !{!1259, !1265, !1266, !1267, !1275, !1276}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1256, file: !1257, line: 53, baseType: !1260, size: 320)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_waiter_node", file: !1257, line: 32, size: 320, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1260, file: !1257, line: 33, baseType: !140, size: 192, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1260, file: !1257, line: 34, baseType: !64, size: 32, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1260, file: !1257, line: 35, baseType: !49, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_tree", scope: !1256, file: !1257, line: 54, baseType: !1260, size: 320, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1256, file: !1257, line: 55, baseType: !74, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1256, file: !1257, line: 56, baseType: !1268, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !1270, line: 23, size: 256, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1269, file: !1270, line: 24, baseType: !238, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1269, file: !1270, line: 25, baseType: !304, size: 128, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1269, file: !1270, line: 26, baseType: !74, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "wake_state", scope: !1256, file: !1257, line: 57, baseType: !7, size: 32, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !1256, file: !1257, line: 58, baseType: !1277, size: 64, offset: 832)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !1257, line: 58, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !75, file: !45, line: 1188, baseType: !48, size: 64, offset: 17152)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !75, file: !45, line: 1191, baseType: !1281, size: 64, offset: 17216)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !45, line: 44, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !75, file: !45, line: 1194, baseType: !1284, size: 64, offset: 17280)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !45, line: 45, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !75, file: !45, line: 1197, baseType: !1287, size: 64, offset: 17344)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !45, line: 61, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !75, file: !45, line: 1199, baseType: !1290, size: 64, offset: 17408)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !45, line: 52, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !75, file: !45, line: 1202, baseType: !1293, size: 64, offset: 17472)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !45, line: 48, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !75, file: !45, line: 1205, baseType: !82, size: 64, offset: 17536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !75, file: !45, line: 1206, baseType: !1297, size: 64, offset: 17600)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !991, line: 14, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !991, line: 12, size: 384, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !991, line: 13, baseType: !1302, size: 384)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !991, line: 13, size: 384, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1302, file: !991, line: 13, baseType: !64, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1302, file: !991, line: 13, baseType: !64, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1302, file: !991, line: 13, baseType: !64, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1302, file: !991, line: 13, baseType: !1308, size: 256, offset: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1309, line: 37, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1310 = !{!1311, !1316, !1329, !1335, !1345, !1372, !1377}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1308, file: !1309, line: 42, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 39, size: 64, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1312, file: !1309, line: 40, baseType: !696, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1312, file: !1309, line: 41, baseType: !818, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1308, file: !1309, line: 50, baseType: !1317, size: 192)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 45, size: 192, elements: !1318)
!1318 = !{!1319, !1321, !1322, !1328}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1317, file: !1309, line: 46, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !288, line: 95, baseType: !64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1317, file: !1309, line: 47, baseType: !64, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1317, file: !1309, line: 48, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1309, line: 11, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1309, line: 8, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1324, file: !1309, line: 9, baseType: !64, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1324, file: !1309, line: 10, baseType: !48, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1317, file: !1309, line: 49, baseType: !64, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1308, file: !1309, line: 57, baseType: !1330, size: 128)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 53, size: 128, elements: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1330, file: !1309, line: 54, baseType: !696, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1330, file: !1309, line: 55, baseType: !818, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1330, file: !1309, line: 56, baseType: !1323, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1308, file: !1309, line: 66, baseType: !1336, size: 256)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 60, size: 256, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1344}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1336, file: !1309, line: 61, baseType: !696, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1336, file: !1309, line: 62, baseType: !818, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1336, file: !1309, line: 63, baseType: !64, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1336, file: !1309, line: 64, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !288, line: 94, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !288, line: 15, baseType: !644)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1336, file: !1309, line: 65, baseType: !1342, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1308, file: !1309, line: 105, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 69, size: 256, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1346, file: !1309, line: 70, baseType: !48, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1309, line: 79, baseType: !1350, size: 192, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1309, line: 79, size: 192, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1361, !1366}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1350, file: !1309, line: 81, baseType: !64, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1350, file: !1309, line: 86, baseType: !575, size: 16)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1350, file: !1309, line: 92, baseType: !1355, size: 192)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1309, line: 88, size: 192, elements: !1356)
!1356 = !{!1357, !1359, !1360}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1355, file: !1309, line: 89, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 64, elements: !282)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1355, file: !1309, line: 90, baseType: !48, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1355, file: !1309, line: 91, baseType: !48, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1350, file: !1309, line: 97, baseType: !1362, size: 96)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1309, line: 94, size: 96, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1362, file: !1309, line: 95, baseType: !1358, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1362, file: !1309, line: 96, baseType: !55, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1350, file: !1309, line: 103, baseType: !1367, size: 128)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1309, line: 99, size: 128, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1367, file: !1309, line: 100, baseType: !82, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1367, file: !1309, line: 101, baseType: !55, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1367, file: !1309, line: 102, baseType: !55, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1308, file: !1309, line: 111, baseType: !1373, size: 128)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 108, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1373, file: !1309, line: 109, baseType: !644, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1373, file: !1309, line: 110, baseType: !64, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1308, file: !1309, line: 118, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1309, line: 114, size: 128, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1378, file: !1309, line: 115, baseType: !48, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1378, file: !1309, line: 116, baseType: !64, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1378, file: !1309, line: 117, baseType: !7, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !75, file: !45, line: 1208, baseType: !1142, size: 448, offset: 17664)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !75, file: !45, line: 1215, baseType: !49, size: 64, offset: 18112)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !75, file: !45, line: 1217, baseType: !49, size: 64, offset: 18176)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !75, file: !45, line: 1219, baseType: !49, size: 64, offset: 18240)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !75, file: !45, line: 1223, baseType: !1388, size: 64, offset: 18304)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1389, line: 99, baseType: !1390)
!1389 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1389, line: 99, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1390, file: !1389, line: 99, baseType: !372, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !75, file: !45, line: 1225, baseType: !1115, size: 32, offset: 18368)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !75, file: !45, line: 1226, baseType: !64, size: 32, offset: 18400)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !75, file: !45, line: 1227, baseType: !64, size: 32, offset: 18432)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !75, file: !45, line: 1231, baseType: !1397, size: 64, offset: 18496)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !45, line: 1231, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !75, file: !45, line: 1233, baseType: !66, size: 128, offset: 18560)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !75, file: !45, line: 1240, baseType: !1401, size: 64, offset: 18688)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1403, line: 97, size: 192, elements: !1404)
!1403 = !DIFile(filename: "./include/uapi/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84a6875ed19116fa53fb0213593793f9")
!1404 = !{!1405, !1410, !1411}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1402, file: !1403, line: 101, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list", file: !1403, line: 85, size: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1406, file: !1403, line: 86, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !1402, file: !1403, line: 109, baseType: !644, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !1402, file: !1403, line: 121, baseType: !1409, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !75, file: !45, line: 1242, baseType: !1413, size: 64, offset: 18752)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !45, line: 1242, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !75, file: !45, line: 1244, baseType: !66, size: 128, offset: 18816)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !75, file: !45, line: 1245, baseType: !1417, size: 64, offset: 18944)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !25, line: 54, size: 704, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1418, file: !25, line: 59, baseType: !66, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pi_mutex", scope: !1418, file: !25, line: 64, baseType: !1269, size: 256, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1418, file: !25, line: 66, baseType: !74, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1418, file: !25, line: 67, baseType: !89, size: 32, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1418, file: !25, line: 69, baseType: !1425, size: 192, offset: 512)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "futex_key", file: !1426, line: 32, size: 192, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aa02e7d322e20d7feefbd4fcf13a2f0")
!1427 = !{!1428, !1434, !1444}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1425, file: !1426, line: 37, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1426, line: 33, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "i_seq", scope: !1429, file: !1426, line: 34, baseType: !49, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1429, file: !1426, line: 35, baseType: !82, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1429, file: !1426, line: 36, baseType: !7, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1425, file: !1426, line: 45, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1426, line: 38, size: 192, elements: !1436)
!1436 = !{!1437, !1442, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1426, line: 39, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1426, line: 39, size: 64, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1438, file: !1426, line: 40, baseType: !415, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "__tmp", scope: !1438, file: !1426, line: 41, baseType: !49, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1435, file: !1426, line: 43, baseType: !82, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1435, file: !1426, line: 44, baseType: !7, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "both", scope: !1425, file: !1426, line: 50, baseType: !1445, size: 192)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1426, line: 46, size: 192, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1445, file: !1426, line: 47, baseType: !49, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1445, file: !1426, line: 48, baseType: !82, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1445, file: !1426, line: 49, baseType: !7, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !75, file: !45, line: 1246, baseType: !558, size: 256, offset: 19008)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !75, file: !45, line: 1247, baseType: !7, size: 32, offset: 19264)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !75, file: !45, line: 1250, baseType: !1453, size: 64, offset: 19328)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !45, line: 57, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !75, file: !45, line: 1251, baseType: !558, size: 256, offset: 19392)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !75, file: !45, line: 1252, baseType: !66, size: 128, offset: 19648)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !75, file: !45, line: 1259, baseType: !1458, size: 64, offset: 19776)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !45, line: 54, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !75, file: !45, line: 1260, baseType: !575, size: 16, offset: 19840)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !75, file: !45, line: 1261, baseType: !575, size: 16, offset: 19856)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !75, file: !45, line: 1314, baseType: !1463, size: 64, offset: 19904)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1465, line: 62, size: 256, align: 256, elements: !1466)
!1465 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1464, file: !1465, line: 75, baseType: !55, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1464, file: !1465, line: 90, baseType: !55, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1464, file: !1465, line: 112, baseType: !51, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !1465, line: 132, baseType: !55, size: 32, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1464, file: !1465, line: 140, baseType: !55, size: 32, offset: 160)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1464, file: !1465, line: 149, baseType: !55, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1464, file: !1465, line: 154, baseType: !1474, offset: 224)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, elements: !612)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !75, file: !45, line: 1315, baseType: !54, size: 32, offset: 19968)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !75, file: !45, line: 1316, baseType: !54, size: 32, offset: 20000)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !75, file: !45, line: 1321, baseType: !82, size: 64, offset: 20032)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !75, file: !45, line: 1325, baseType: !64, size: 32, offset: 20096)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !75, file: !45, line: 1326, baseType: !64, size: 32, offset: 20128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !75, file: !45, line: 1327, baseType: !64, size: 32, offset: 20160)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !75, file: !45, line: 1328, baseType: !64, size: 32, offset: 20192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !75, file: !45, line: 1329, baseType: !734, size: 128, align: 64, offset: 20224)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !75, file: !45, line: 1332, baseType: !1484, size: 128, offset: 20352)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1485, line: 51, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1486 = !{!1487, !1492, !1493}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1484, file: !1485, line: 60, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1489, line: 7, size: 64, elements: !1490)
!1489 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1488, file: !1489, line: 12, baseType: !369, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1484, file: !1485, line: 63, baseType: !910, size: 8, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1484, file: !1485, line: 70, baseType: !910, size: 8, offset: 72)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !75, file: !45, line: 1335, baseType: !1495, size: 64, offset: 20480)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !45, line: 59, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !75, file: !45, line: 1337, baseType: !1498, size: 128, offset: 20544)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1485, line: 39, size: 128, elements: !1499)
!1499 = !{!1500, !1563, !1564}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1498, file: !1485, line: 40, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !417, line: 74, size: 512, align: 128, elements: !1503)
!1503 = !{!1504, !1505, !1557, !1562}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !417, line: 75, baseType: !82, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !417, line: 83, baseType: !1506, size: 320, offset: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !417, line: 83, size: 320, elements: !1507)
!1507 = !{!1508, !1531, !1545, !1549, !1556}
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !417, line: 84, baseType: !1509, size: 320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !417, line: 84, size: 320, elements: !1510)
!1510 = !{!1511, !1522, !1525, !1530}
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !417, line: 90, baseType: !1512, size: 128)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !417, line: 90, size: 128, elements: !1513)
!1513 = !{!1514, !1515, !1520, !1521}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1512, file: !417, line: 91, baseType: !66, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !417, line: 94, baseType: !1516, size: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !417, line: 94, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1516, file: !417, line: 96, baseType: !48, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1516, file: !417, line: 98, baseType: !7, size: 32, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1512, file: !417, line: 102, baseType: !66, size: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1512, file: !417, line: 103, baseType: !66, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1509, file: !417, line: 106, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !417, line: 32, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !417, line: 107, baseType: !1526, size: 64, offset: 192)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !417, line: 107, size: 64, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1526, file: !417, line: 108, baseType: !82, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1526, file: !417, line: 109, baseType: !82, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1509, file: !417, line: 117, baseType: !82, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !417, line: 119, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !417, line: 119, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1538, !1539, !1540}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1532, file: !417, line: 124, baseType: !82, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1532, file: !417, line: 125, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !417, line: 125, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1532, file: !417, line: 126, baseType: !82, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1532, file: !417, line: 127, baseType: !82, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !417, line: 128, baseType: !1541, size: 64, offset: 256)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !417, line: 128, size: 64, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1541, file: !417, line: 133, baseType: !82, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1541, file: !417, line: 138, baseType: !478, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !417, line: 141, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !417, line: 141, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1546, file: !417, line: 142, baseType: !82, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !417, line: 144, baseType: !1550, size: 128)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !417, line: 144, size: 128, elements: !1551)
!1551 = !{!1552, !1555}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1550, file: !417, line: 146, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !417, line: 146, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1550, file: !417, line: 147, baseType: !48, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1506, file: !417, line: 161, baseType: !734, size: 128, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !417, line: 164, baseType: !1558, size: 32, offset: 384)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !417, line: 164, size: 32, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1558, file: !417, line: 169, baseType: !94, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1558, file: !417, line: 177, baseType: !7, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1502, file: !417, line: 181, baseType: !94, size: 32, offset: 416)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1498, file: !1485, line: 42, baseType: !55, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1498, file: !1485, line: 43, baseType: !55, size: 32, offset: 96)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !75, file: !45, line: 1340, baseType: !1566, size: 64, offset: 20672)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !45, line: 69, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !75, file: !45, line: 1351, baseType: !64, size: 32, offset: 20736)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !75, file: !45, line: 1352, baseType: !64, size: 32, offset: 20768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !75, file: !45, line: 1354, baseType: !82, size: 64, offset: 20800)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !75, file: !45, line: 1364, baseType: !49, size: 64, offset: 20864)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !75, file: !45, line: 1365, baseType: !49, size: 64, offset: 20928)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !75, file: !45, line: 1412, baseType: !82, size: 64, offset: 20992)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !75, file: !45, line: 1453, baseType: !1575, size: 64, offset: 21056)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !45, line: 1453, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !75, file: !45, line: 1457, baseType: !1578, size: 64, offset: 21120)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1580)
!1580 = !{!1581, !1582, !1601, !1604, !1605, !1638, !1648}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1579, file: !18, line: 62, baseType: !17, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !18, line: 64, baseType: !1583, size: 192, offset: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !18, line: 64, size: 192, elements: !1584)
!1584 = !{!1585, !1596}
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !18, line: 65, baseType: !1586, size: 192)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1583, file: !18, line: 65, size: 192, elements: !1587)
!1587 = !{!1588, !1595}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1586, file: !18, line: 66, baseType: !1589, size: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1590, line: 50, size: 128, elements: !1591)
!1590 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1591 = !{!1592, !1593, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1589, file: !1590, line: 52, baseType: !82, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1589, file: !1590, line: 54, baseType: !7, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1589, file: !1590, line: 55, baseType: !7, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1586, file: !18, line: 67, baseType: !82, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !18, line: 70, baseType: !1597, size: 192)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1583, file: !18, line: 70, size: 192, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1597, file: !18, line: 71, baseType: !734, size: 128, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1597, file: !18, line: 72, baseType: !82, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1579, file: !18, line: 76, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1579, file: !18, line: 77, baseType: !82, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1579, file: !18, line: 79, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1590, line: 25, size: 256, elements: !1608)
!1608 = !{!1609, !1615, !1619}
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1590, line: 26, baseType: !1610, size: 128)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1590, line: 26, size: 128, elements: !1611)
!1611 = !{!1612, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1610, file: !1590, line: 27, baseType: !1613, size: 128)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 128, elements: !1010)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1610, file: !1590, line: 28, baseType: !1613, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1607, file: !1590, line: 31, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1590, line: 23, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1590, line: 33, baseType: !1620, size: 64, offset: 192)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1590, line: 33, size: 64, elements: !1621)
!1621 = !{!1622, !1628, !1633}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1620, file: !1590, line: 38, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1590, line: 34, size: 64, elements: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1623, file: !1590, line: 35, baseType: !537, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1623, file: !1590, line: 36, baseType: !255, size: 8, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1623, file: !1590, line: 37, baseType: !255, size: 8, offset: 40)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1620, file: !1590, line: 42, baseType: !1629, size: 16)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1590, line: 39, size: 16, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1629, file: !1590, line: 40, baseType: !255, size: 8)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1629, file: !1590, line: 41, baseType: !255, size: 8, offset: 8)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1620, file: !1590, line: 46, baseType: !1634, size: 16)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1590, line: 43, size: 16, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1634, file: !1590, line: 44, baseType: !255, size: 8)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1634, file: !1590, line: 45, baseType: !255, size: 8, offset: 8)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1579, file: !18, line: 81, baseType: !1639, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1640, file: !18, line: 86, baseType: !1602, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1640, file: !18, line: 87, baseType: !82, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1640, file: !18, line: 88, baseType: !82, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1640, file: !18, line: 89, baseType: !82, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1640, file: !18, line: 90, baseType: !910, size: 8, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1640, file: !18, line: 92, baseType: !1639, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1579, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !75, file: !45, line: 1463, baseType: !1650, offset: 21184)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !45, line: 739, elements: !445)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !75, file: !45, line: 1470, baseType: !734, size: 128, align: 64, offset: 21184)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !75, file: !45, line: 1471, baseType: !89, size: 32, offset: 21312)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !75, file: !45, line: 1472, baseType: !64, size: 32, offset: 21344)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !75, file: !45, line: 1474, baseType: !74, size: 64, offset: 21376)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !75, file: !45, line: 1475, baseType: !1656, size: 320, offset: 21440)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1657, line: 11, size: 320, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1658 = !{!1659, !1660, !1661, !1666}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1656, file: !1657, line: 16, baseType: !720, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1656, file: !1657, line: 17, baseType: !82, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1656, file: !1657, line: 18, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !1657, line: 19, baseType: !54, size: 32, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !75, file: !45, line: 1478, baseType: !1668, size: 64, offset: 21760)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !45, line: 1478, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !75, file: !45, line: 1482, baseType: !89, size: 32, offset: 21824)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !75, file: !45, line: 1489, baseType: !48, size: 64, offset: 21888)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !75, file: !45, line: 1504, baseType: !48, size: 64, offset: 21952)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !75, file: !45, line: 1505, baseType: !51, size: 64, offset: 22016)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !75, file: !45, line: 1506, baseType: !49, size: 64, offset: 22080)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !75, file: !45, line: 1507, baseType: !51, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !75, file: !45, line: 1508, baseType: !51, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !75, file: !45, line: 1509, baseType: !51, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !75, file: !45, line: 1510, baseType: !734, size: 128, align: 64, offset: 22208)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !75, file: !45, line: 1511, baseType: !64, size: 32, offset: 22336)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !75, file: !45, line: 1515, baseType: !1681, size: 64, offset: 22400)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !107, line: 56, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1681, file: !107, line: 57, baseType: !110, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !75, file: !45, line: 1518, baseType: !1681, size: 64, offset: 22464)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !75, file: !45, line: 1528, baseType: !734, size: 128, align: 64, offset: 22528)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !75, file: !45, line: 1552, baseType: !1687, size: 35328, offset: 23040)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1688, line: 430, size: 35328, elements: !1689)
!1688 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1689 = !{!1690, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1719, !1720, !1721, !1722, !1723, !1724, !1727, !1728, !1729, !1730}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1687, file: !1688, line: 432, baseType: !1691, size: 192)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 192, elements: !795)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1693, line: 16, size: 64, elements: !1694)
!1693 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1692, file: !1693, line: 17, baseType: !117, size: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1692, file: !1693, line: 18, baseType: !117, size: 16, offset: 16)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1692, file: !1693, line: 19, baseType: !117, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1692, file: !1693, line: 19, baseType: !117, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1692, file: !1693, line: 19, baseType: !117, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1692, file: !1693, line: 19, baseType: !117, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1692, file: !1693, line: 19, baseType: !117, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1692, file: !1693, line: 20, baseType: !117, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1692, file: !1693, line: 20, baseType: !117, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1692, file: !1693, line: 20, baseType: !117, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1692, file: !1693, line: 20, baseType: !117, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1692, file: !1693, line: 20, baseType: !117, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1692, file: !1693, line: 20, baseType: !117, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1687, file: !1688, line: 436, baseType: !82, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1687, file: !1688, line: 440, baseType: !119, size: 16, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1687, file: !1688, line: 441, baseType: !119, size: 16, offset: 272)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1687, file: !1688, line: 442, baseType: !119, size: 16, offset: 288)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1687, file: !1688, line: 443, baseType: !119, size: 16, offset: 304)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1687, file: !1688, line: 447, baseType: !82, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1687, file: !1688, line: 448, baseType: !82, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1687, file: !1688, line: 459, baseType: !1716, size: 256, offset: 448)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1717, size: 256, elements: !539)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1688, line: 428, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1687, file: !1688, line: 461, baseType: !82, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1687, file: !1688, line: 463, baseType: !82, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1687, file: !1688, line: 465, baseType: !82, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1687, file: !1688, line: 466, baseType: !82, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1687, file: !1688, line: 467, baseType: !82, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1687, file: !1688, line: 473, baseType: !1725, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1688, line: 10, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1687, file: !1688, line: 480, baseType: !82, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1687, file: !1688, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1687, file: !1688, line: 491, baseType: !54, size: 32, offset: 1184)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1687, file: !1688, line: 501, baseType: !1731, size: 33792, offset: 1536)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1732, line: 448, size: 33792, elements: !1733)
!1732 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1733 = !{!1734, !1735, !1736, !1900, !1901, !1907, !1908}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1731, file: !1732, line: 461, baseType: !7, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1731, file: !1732, line: 468, baseType: !82, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1731, file: !1732, line: 476, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1732, line: 356, size: 33280, align: 512, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1738, file: !1732, line: 358, baseType: !7, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1738, file: !1732, line: 361, baseType: !7, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1738, file: !1732, line: 364, baseType: !49, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1738, file: !1732, line: 367, baseType: !49, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1738, file: !1732, line: 370, baseType: !49, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1738, file: !1732, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1738, file: !1732, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1738, file: !1732, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1738, file: !1732, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1738, file: !1732, line: 397, baseType: !1750, size: 32768, offset: 512)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1732, line: 348, size: 32768, elements: !1751)
!1751 = !{!1752, !1767, !1806, !1883, !1896}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1750, file: !1732, line: 349, baseType: !1753, size: 896)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1732, line: 12, size: 896, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1766}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1753, file: !1732, line: 13, baseType: !54, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1753, file: !1732, line: 14, baseType: !54, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1753, file: !1732, line: 15, baseType: !54, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1753, file: !1732, line: 16, baseType: !54, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1753, file: !1732, line: 17, baseType: !54, size: 32, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1753, file: !1732, line: 18, baseType: !54, size: 32, offset: 160)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1753, file: !1732, line: 19, baseType: !54, size: 32, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1753, file: !1732, line: 22, baseType: !1763, size: 640, offset: 224)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 20)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1753, file: !1732, line: 25, baseType: !54, size: 32, offset: 864)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1750, file: !1732, line: 350, baseType: !1768, size: 4096, align: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1732, line: 34, size: 4096, align: 128, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1789, !1790, !1791, !1795, !1797, !1801}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1768, file: !1732, line: 35, baseType: !117, size: 16)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1768, file: !1732, line: 36, baseType: !117, size: 16, offset: 16)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1768, file: !1732, line: 37, baseType: !117, size: 16, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1768, file: !1732, line: 38, baseType: !117, size: 16, offset: 48)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1732, line: 39, baseType: !1775, size: 128, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1732, line: 39, size: 128, elements: !1776)
!1776 = !{!1777, !1782}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1732, line: 40, baseType: !1778, size: 128)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !1732, line: 40, size: 128, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1778, file: !1732, line: 41, baseType: !49, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1778, file: !1732, line: 42, baseType: !49, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1732, line: 44, baseType: !1783, size: 128)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !1732, line: 44, size: 128, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1783, file: !1732, line: 45, baseType: !54, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1783, file: !1732, line: 46, baseType: !54, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1783, file: !1732, line: 47, baseType: !54, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1783, file: !1732, line: 48, baseType: !54, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1768, file: !1732, line: 51, baseType: !54, size: 32, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1768, file: !1732, line: 52, baseType: !54, size: 32, offset: 224)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1768, file: !1732, line: 55, baseType: !1792, size: 1024, offset: 256)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1024, elements: !1793)
!1793 = !{!1794}
!1794 = !DISubrange(count: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1768, file: !1732, line: 58, baseType: !1796, size: 2048, offset: 1280)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !1213)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1768, file: !1732, line: 60, baseType: !1798, size: 384, offset: 3328)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 384, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 12)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1732, line: 62, baseType: !1802, size: 384, offset: 3712)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1732, line: 62, size: 384, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1802, file: !1732, line: 63, baseType: !1798, size: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1802, file: !1732, line: 64, baseType: !1798, size: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1750, file: !1732, line: 351, baseType: !1807, size: 1088)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1732, line: 79, size: 1088, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1882}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1807, file: !1732, line: 80, baseType: !54, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1807, file: !1732, line: 81, baseType: !54, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1807, file: !1732, line: 82, baseType: !54, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1807, file: !1732, line: 83, baseType: !54, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1807, file: !1732, line: 84, baseType: !54, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1807, file: !1732, line: 85, baseType: !54, size: 32, offset: 160)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1807, file: !1732, line: 86, baseType: !54, size: 32, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1807, file: !1732, line: 88, baseType: !1763, size: 640, offset: 224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1807, file: !1732, line: 89, baseType: !255, size: 8, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1807, file: !1732, line: 90, baseType: !255, size: 8, offset: 872)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1807, file: !1732, line: 91, baseType: !255, size: 8, offset: 880)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1807, file: !1732, line: 92, baseType: !255, size: 8, offset: 888)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1807, file: !1732, line: 93, baseType: !255, size: 8, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1807, file: !1732, line: 94, baseType: !255, size: 8, offset: 904)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1807, file: !1732, line: 95, baseType: !1824, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1826, line: 11, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1825, file: !1826, line: 12, baseType: !644, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1825, file: !1826, line: 13, baseType: !1830, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1832, line: 103, size: 1344, elements: !1833)
!1832 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1862, !1863, !1864}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1831, file: !1832, line: 109, baseType: !82, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1831, file: !1832, line: 110, baseType: !82, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1831, file: !1832, line: 111, baseType: !82, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1831, file: !1832, line: 112, baseType: !82, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1831, file: !1832, line: 113, baseType: !82, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1831, file: !1832, line: 114, baseType: !82, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1831, file: !1832, line: 117, baseType: !82, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1831, file: !1832, line: 118, baseType: !82, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1831, file: !1832, line: 119, baseType: !82, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1831, file: !1832, line: 120, baseType: !82, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1831, file: !1832, line: 121, baseType: !82, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1831, file: !1832, line: 122, baseType: !82, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1831, file: !1832, line: 123, baseType: !82, size: 64, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1831, file: !1832, line: 124, baseType: !82, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1831, file: !1832, line: 125, baseType: !82, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1831, file: !1832, line: 139, baseType: !82, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1831, file: !1832, line: 142, baseType: !82, size: 64, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1832, line: 144, baseType: !1852, size: 64, offset: 1088)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1832, line: 144, size: 64, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1852, file: !1832, line: 146, baseType: !117, size: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1852, file: !1832, line: 148, baseType: !49, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1852, file: !1832, line: 150, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1832, line: 59, size: 64, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1857, file: !1832, line: 61, baseType: !49, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1857, file: !1832, line: 63, baseType: !49, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1857, file: !1832, line: 65, baseType: !49, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1832, line: 153, baseType: !82, size: 64, offset: 1152)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1831, file: !1832, line: 154, baseType: !82, size: 64, offset: 1216)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1832, line: 156, baseType: !1865, size: 64, offset: 1280)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1832, line: 156, size: 64, elements: !1866)
!1866 = !{!1867, !1868, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1865, file: !1832, line: 158, baseType: !117, size: 16)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1865, file: !1832, line: 160, baseType: !49, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1865, file: !1832, line: 162, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1832, line: 69, size: 64, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1870, file: !1832, line: 71, baseType: !49, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1870, file: !1832, line: 73, baseType: !49, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1870, file: !1832, line: 75, baseType: !49, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1870, file: !1832, line: 77, baseType: !49, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1870, file: !1832, line: 80, baseType: !49, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1870, file: !1832, line: 83, baseType: !49, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1870, file: !1832, line: 86, baseType: !49, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1870, file: !1832, line: 88, baseType: !49, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1870, file: !1832, line: 93, baseType: !49, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1870, file: !1832, line: 100, baseType: !49, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1807, file: !1732, line: 96, baseType: !54, size: 32, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1750, file: !1732, line: 352, baseType: !1884, size: 4608, align: 512)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1732, line: 333, size: 4608, align: 512, elements: !1885)
!1885 = !{!1886, !1887, !1894}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1884, file: !1732, line: 334, baseType: !1768, size: 4096, align: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1884, file: !1732, line: 335, baseType: !1888, size: 512, offset: 4096)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1732, line: 312, size: 512, elements: !1889)
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1888, file: !1732, line: 313, baseType: !49, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1888, file: !1732, line: 314, baseType: !49, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1888, file: !1732, line: 315, baseType: !1893, size: 384, offset: 128)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 384, elements: !897)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1884, file: !1732, line: 336, baseType: !1895, offset: 4608)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !612)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1750, file: !1732, line: 353, baseType: !1897, size: 32768)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 32768, elements: !1898)
!1898 = !{!1899}
!1899 = !DISubrange(count: 4096)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1731, file: !1732, line: 484, baseType: !1737, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1731, file: !1732, line: 491, baseType: !1902, size: 128, offset: 256)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1732, line: 404, size: 128, elements: !1903)
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1902, file: !1732, line: 424, baseType: !49, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1902, file: !1732, line: 432, baseType: !7, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1902, file: !1732, line: 440, baseType: !7, size: 32, offset: 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1731, file: !1732, line: 498, baseType: !1902, size: 128, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1731, file: !1732, line: 508, baseType: !1738, size: 33280, align: 512, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ptr", scope: !57, file: !25, line: 100, baseType: !1910, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !57, file: !25, line: 101, baseType: !1425, size: 192, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state", scope: !57, file: !25, line: 102, baseType: !1417, size: 64, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rt_waiter", scope: !57, file: !25, line: 103, baseType: !1255, size: 64, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_pi_key", scope: !57, file: !25, line: 104, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !57, file: !25, line: 105, baseType: !54, size: 32, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_state", scope: !57, file: !25, line: 106, baseType: !94, size: 32, offset: 864)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !67, line: 42, baseType: !82)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1928 = !{!0, !1929, !1934}
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !1931, isLocal: true, isDefinition: true)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 184, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 23)
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched149", scope: !1936, file: !45, line: 2104, type: !48, isLocal: true, isDefinition: true)
!1936 = distinct !DISubprogram(name: "_cond_resched", scope: !45, file: !45, line: 2102, type: !1937, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!64}
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!1940 = !{!"rsp"}
!1941 = !{i32 7, !"Dwarf Version", i32 5}
!1942 = !{i32 2, !"Debug Info Version", i32 3}
!1943 = !{i32 1, !"wchar_size", i32 2}
!1944 = !{i32 8, !"cf-protection-branch", i32 1}
!1945 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1946 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1947 = !{i32 1, !"Code Model", i32 2}
!1948 = !{i32 1, !"override-stack-alignment", i32 8}
!1949 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1950 = distinct !DISubprogram(name: "futex_requeue", scope: !3, file: !3, line: 364, type: !1951, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!64, !653, !7, !653, !64, !64, !653, !64}
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1976, !1977, !1978, !1979, !1986, !1987, !1988, !1991, !1996, !1997, !1999, !2002, !2005, !2007, !2010}
!1954 = !DILocalVariable(name: "uaddr1", arg: 1, scope: !1950, file: !3, line: 364, type: !653)
!1955 = !DILocalVariable(name: "flags", arg: 2, scope: !1950, file: !3, line: 364, type: !7)
!1956 = !DILocalVariable(name: "uaddr2", arg: 3, scope: !1950, file: !3, line: 364, type: !653)
!1957 = !DILocalVariable(name: "nr_wake", arg: 4, scope: !1950, file: !3, line: 365, type: !64)
!1958 = !DILocalVariable(name: "nr_requeue", arg: 5, scope: !1950, file: !3, line: 365, type: !64)
!1959 = !DILocalVariable(name: "cmpval", arg: 6, scope: !1950, file: !3, line: 365, type: !653)
!1960 = !DILocalVariable(name: "requeue_pi", arg: 7, scope: !1950, file: !3, line: 365, type: !64)
!1961 = !DILocalVariable(name: "key1", scope: !1950, file: !3, line: 367, type: !1425)
!1962 = !DILocalVariable(name: "key2", scope: !1950, file: !3, line: 367, type: !1425)
!1963 = !DILocalVariable(name: "task_count", scope: !1950, file: !3, line: 368, type: !64)
!1964 = !DILocalVariable(name: "ret", scope: !1950, file: !3, line: 368, type: !64)
!1965 = !DILocalVariable(name: "pi_state", scope: !1950, file: !3, line: 369, type: !1417)
!1966 = !DILocalVariable(name: "hb1", scope: !1950, file: !3, line: 370, type: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_hash_bucket", file: !25, line: 45, size: 512, align: 512, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1968, file: !25, line: 46, baseType: !94, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1968, file: !25, line: 47, baseType: !434, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1968, file: !25, line: 48, baseType: !1973, size: 128, offset: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !61, line: 82, size: 128, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1973, file: !61, line: 83, baseType: !66, size: 128)
!1976 = !DILocalVariable(name: "hb2", scope: !1950, file: !3, line: 370, type: !1967)
!1977 = !DILocalVariable(name: "this", scope: !1950, file: !3, line: 371, type: !56)
!1978 = !DILocalVariable(name: "next", scope: !1950, file: !3, line: 371, type: !56)
!1979 = !DILocalVariable(name: "wake_q", scope: !1950, file: !3, line: 372, type: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !1981, line: 38, size: 128, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1980, file: !1981, line: 39, baseType: !43, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !1980, file: !1981, line: 40, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1986 = !DILabel(scope: !1950, name: "retry", file: !3, line: 426)
!1987 = !DILabel(scope: !1950, name: "retry_private", file: !3, line: 445)
!1988 = !DILocalVariable(name: "curval", scope: !1989, file: !3, line: 450, type: !54)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 449, column: 30)
!1990 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 449, column: 6)
!1991 = !DILocalVariable(name: "__ret_gu", scope: !1992, file: !3, line: 458, type: !64)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 458, column: 10)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 458, column: 10)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 454, column: 22)
!1995 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 454, column: 7)
!1996 = !DILocalVariable(name: "__val_gu", scope: !1992, file: !3, line: 458, type: !7)
!1997 = !DILocalVariable(name: "__tmp", scope: !1998, file: !3, line: 458, type: !49)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 458, column: 10)
!1999 = !DILocalVariable(name: "exiting", scope: !2000, file: !3, line: 474, type: !74)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 473, column: 18)
!2001 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 473, column: 6)
!2002 = !DILocalVariable(name: "__mptr", scope: !2003, file: !3, line: 570, type: !48)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 570, column: 2)
!2004 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 570, column: 2)
!2005 = !DILocalVariable(name: "__mptr", scope: !2006, file: !3, line: 570, type: !48)
!2006 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 570, column: 2)
!2007 = !DILocalVariable(name: "__mptr", scope: !2008, file: !3, line: 570, type: !48)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 570, column: 2)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 570, column: 2)
!2010 = !DILabel(scope: !1950, name: "out_unlock", file: !3, line: 672)
!2011 = !DILocation(line: 364, column: 31, scope: !1950)
!2012 = !DILocation(line: 364, column: 52, scope: !1950)
!2013 = !DILocation(line: 364, column: 71, scope: !1950)
!2014 = !DILocation(line: 365, column: 9, scope: !1950)
!2015 = !DILocation(line: 365, column: 22, scope: !1950)
!2016 = !DILocation(line: 365, column: 39, scope: !1950)
!2017 = !DILocation(line: 365, column: 51, scope: !1950)
!2018 = !DILocation(line: 367, column: 2, scope: !1950)
!2019 = !DILocation(line: 367, column: 18, scope: !1950)
!2020 = !DILocation(line: 367, column: 41, scope: !1950)
!2021 = !DILocation(line: 368, column: 2, scope: !1950)
!2022 = !DILocation(line: 368, column: 6, scope: !1950)
!2023 = !DILocation(line: 368, column: 22, scope: !1950)
!2024 = !DILocation(line: 369, column: 2, scope: !1950)
!2025 = !DILocation(line: 369, column: 25, scope: !1950)
!2026 = !DILocation(line: 370, column: 2, scope: !1950)
!2027 = !DILocation(line: 370, column: 28, scope: !1950)
!2028 = !DILocation(line: 370, column: 34, scope: !1950)
!2029 = !DILocation(line: 371, column: 2, scope: !1950)
!2030 = !DILocation(line: 371, column: 18, scope: !1950)
!2031 = !DILocation(line: 371, column: 25, scope: !1950)
!2032 = !DILocation(line: 372, column: 2, scope: !1950)
!2033 = !DILocation(line: 374, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 374, column: 6)
!2035 = !DILocation(line: 374, column: 14, scope: !2034)
!2036 = !DILocation(line: 374, column: 18, scope: !2034)
!2037 = !DILocation(line: 374, column: 21, scope: !2034)
!2038 = !DILocation(line: 374, column: 32, scope: !2034)
!2039 = !DILocation(line: 374, column: 6, scope: !1950)
!2040 = !DILocation(line: 375, column: 3, scope: !2034)
!2041 = !DILocation(line: 386, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 386, column: 6)
!2043 = !DILocation(line: 386, column: 6, scope: !1950)
!2044 = !DILocation(line: 391, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 391, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 386, column: 18)
!2047 = !DILocation(line: 391, column: 17, scope: !2045)
!2048 = !DILocation(line: 391, column: 14, scope: !2045)
!2049 = !DILocation(line: 391, column: 7, scope: !2046)
!2050 = !DILocation(line: 392, column: 4, scope: !2045)
!2051 = !DILocation(line: 415, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 415, column: 7)
!2053 = !DILocation(line: 415, column: 15, scope: !2052)
!2054 = !DILocation(line: 415, column: 7, scope: !2046)
!2055 = !DILocation(line: 416, column: 4, scope: !2052)
!2056 = !DILocation(line: 422, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 422, column: 7)
!2058 = !DILocation(line: 422, column: 7, scope: !2046)
!2059 = !DILocation(line: 423, column: 4, scope: !2057)
!2060 = !DILocation(line: 424, column: 2, scope: !2046)
!2061 = !DILocation(line: 426, column: 1, scope: !1950)
!2062 = !DILocation(line: 427, column: 22, scope: !1950)
!2063 = !DILocation(line: 427, column: 30, scope: !1950)
!2064 = !DILocation(line: 427, column: 36, scope: !1950)
!2065 = !DILocation(line: 427, column: 8, scope: !1950)
!2066 = !DILocation(line: 427, column: 6, scope: !1950)
!2067 = !DILocation(line: 428, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 428, column: 6)
!2069 = !DILocation(line: 428, column: 6, scope: !1950)
!2070 = !DILocation(line: 429, column: 10, scope: !2068)
!2071 = !DILocation(line: 429, column: 3, scope: !2068)
!2072 = !DILocation(line: 430, column: 22, scope: !1950)
!2073 = !DILocation(line: 430, column: 30, scope: !1950)
!2074 = !DILocation(line: 430, column: 36, scope: !1950)
!2075 = !DILocation(line: 431, column: 8, scope: !1950)
!2076 = !DILocation(line: 430, column: 8, scope: !1950)
!2077 = !DILocation(line: 430, column: 6, scope: !1950)
!2078 = !DILocation(line: 432, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 432, column: 6)
!2080 = !DILocation(line: 432, column: 6, scope: !1950)
!2081 = !DILocation(line: 433, column: 10, scope: !2079)
!2082 = !DILocation(line: 433, column: 3, scope: !2079)
!2083 = !DILocation(line: 439, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 439, column: 6)
!2085 = !DILocation(line: 439, column: 17, scope: !2084)
!2086 = !DILocation(line: 439, column: 20, scope: !2084)
!2087 = !DILocation(line: 439, column: 6, scope: !1950)
!2088 = !DILocation(line: 440, column: 3, scope: !2084)
!2089 = !DILocation(line: 442, column: 8, scope: !1950)
!2090 = !DILocation(line: 442, column: 6, scope: !1950)
!2091 = !DILocation(line: 443, column: 8, scope: !1950)
!2092 = !DILocation(line: 443, column: 6, scope: !1950)
!2093 = !DILocation(line: 443, column: 2, scope: !1950)
!2094 = !DILocation(line: 445, column: 1, scope: !1950)
!2095 = !DILocation(line: 446, column: 23, scope: !1950)
!2096 = !DILocation(line: 446, column: 2, scope: !1950)
!2097 = !DILocation(line: 447, column: 17, scope: !1950)
!2098 = !DILocation(line: 447, column: 22, scope: !1950)
!2099 = !DILocation(line: 447, column: 2, scope: !1950)
!2100 = !DILocation(line: 449, column: 6, scope: !1990)
!2101 = !DILocation(line: 449, column: 6, scope: !1950)
!2102 = !DILocation(line: 450, column: 3, scope: !1989)
!2103 = !DILocation(line: 450, column: 7, scope: !1989)
!2104 = !DILocation(line: 452, column: 41, scope: !1989)
!2105 = !DILocation(line: 452, column: 9, scope: !1989)
!2106 = !DILocation(line: 452, column: 7, scope: !1989)
!2107 = !DILocation(line: 454, column: 7, scope: !1995)
!2108 = !DILocation(line: 454, column: 7, scope: !1989)
!2109 = !DILocation(line: 455, column: 21, scope: !1994)
!2110 = !DILocation(line: 455, column: 26, scope: !1994)
!2111 = !DILocation(line: 455, column: 4, scope: !1994)
!2112 = !DILocation(line: 456, column: 25, scope: !1994)
!2113 = !DILocation(line: 456, column: 4, scope: !1994)
!2114 = !DILocation(line: 458, column: 10, scope: !1993)
!2115 = !DILocation(line: 458, column: 10, scope: !1992)
!2116 = !{i64 2151990023}
!2117 = !DILocation(line: 458, column: 10, scope: !1998)
!2118 = !DILocation(line: 458, column: 10, scope: !1994)
!2119 = !DILocation(line: 458, column: 8, scope: !1994)
!2120 = !DILocation(line: 459, column: 8, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 459, column: 8)
!2122 = !DILocation(line: 459, column: 8, scope: !1994)
!2123 = !DILocation(line: 460, column: 12, scope: !2121)
!2124 = !DILocation(line: 460, column: 5, scope: !2121)
!2125 = !DILocation(line: 462, column: 10, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 462, column: 8)
!2127 = !DILocation(line: 462, column: 16, scope: !2126)
!2128 = !DILocation(line: 462, column: 8, scope: !1994)
!2129 = !DILocation(line: 463, column: 5, scope: !2126)
!2130 = !DILocation(line: 465, column: 4, scope: !1994)
!2131 = !DILocation(line: 467, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 467, column: 7)
!2133 = !DILocation(line: 467, column: 18, scope: !2132)
!2134 = !DILocation(line: 467, column: 17, scope: !2132)
!2135 = !DILocation(line: 467, column: 14, scope: !2132)
!2136 = !DILocation(line: 467, column: 7, scope: !1989)
!2137 = !DILocation(line: 468, column: 8, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 467, column: 26)
!2139 = !DILocation(line: 469, column: 4, scope: !2138)
!2140 = !DILocation(line: 471, column: 2, scope: !1990)
!2141 = !DILocation(line: 471, column: 2, scope: !1989)
!2142 = !DILocation(line: 473, column: 6, scope: !2001)
!2143 = !DILocation(line: 473, column: 6, scope: !1950)
!2144 = !DILocation(line: 474, column: 3, scope: !2000)
!2145 = !DILocation(line: 474, column: 23, scope: !2000)
!2146 = !DILocation(line: 484, column: 36, scope: !2000)
!2147 = !DILocation(line: 484, column: 44, scope: !2000)
!2148 = !DILocation(line: 484, column: 49, scope: !2000)
!2149 = !DILocation(line: 486, column: 18, scope: !2000)
!2150 = !DILocation(line: 484, column: 9, scope: !2000)
!2151 = !DILocation(line: 484, column: 7, scope: !2000)
!2152 = !DILocation(line: 522, column: 11, scope: !2000)
!2153 = !DILocation(line: 522, column: 3, scope: !2000)
!2154 = !DILocation(line: 532, column: 14, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 522, column: 16)
!2156 = !DILocation(line: 533, column: 8, scope: !2155)
!2157 = !DILocation(line: 534, column: 4, scope: !2155)
!2158 = !DILocation(line: 541, column: 21, scope: !2155)
!2159 = !DILocation(line: 541, column: 26, scope: !2155)
!2160 = !DILocation(line: 541, column: 4, scope: !2155)
!2161 = !DILocation(line: 542, column: 25, scope: !2155)
!2162 = !DILocation(line: 542, column: 4, scope: !2155)
!2163 = !DILocation(line: 543, column: 34, scope: !2155)
!2164 = !DILocation(line: 543, column: 10, scope: !2155)
!2165 = !DILocation(line: 543, column: 8, scope: !2155)
!2166 = !DILocation(line: 544, column: 9, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 544, column: 8)
!2168 = !DILocation(line: 544, column: 8, scope: !2155)
!2169 = !DILocation(line: 545, column: 5, scope: !2167)
!2170 = !DILocation(line: 546, column: 11, scope: !2155)
!2171 = !DILocation(line: 546, column: 4, scope: !2155)
!2172 = !DILocation(line: 555, column: 21, scope: !2155)
!2173 = !DILocation(line: 555, column: 26, scope: !2155)
!2174 = !DILocation(line: 555, column: 4, scope: !2155)
!2175 = !DILocation(line: 556, column: 25, scope: !2155)
!2176 = !DILocation(line: 556, column: 4, scope: !2155)
!2177 = !DILocation(line: 562, column: 27, scope: !2155)
!2178 = !DILocation(line: 562, column: 32, scope: !2155)
!2179 = !DILocation(line: 562, column: 4, scope: !2155)
!2180 = !DILocation(line: 563, column: 4, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 563, column: 4)
!2182 = !DILocation(line: 564, column: 4, scope: !2155)
!2183 = !DILocation(line: 566, column: 4, scope: !2155)
!2184 = !DILocation(line: 568, column: 2, scope: !2001)
!2185 = !DILocation(line: 568, column: 2, scope: !2000)
!2186 = !DILocation(line: 570, column: 2, scope: !2003)
!2187 = !DILocation(line: 570, column: 2, scope: !2004)
!2188 = !DILocation(line: 570, column: 2, scope: !2006)
!2189 = !DILocation(line: 570, column: 2, scope: !2009)
!2190 = !DILocation(line: 571, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 571, column: 7)
!2192 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 570, column: 59)
!2193 = !DILocation(line: 571, column: 20, scope: !2191)
!2194 = !DILocation(line: 571, column: 18, scope: !2191)
!2195 = !DILocation(line: 571, column: 31, scope: !2191)
!2196 = !DILocation(line: 571, column: 28, scope: !2191)
!2197 = !DILocation(line: 571, column: 7, scope: !2192)
!2198 = !DILocation(line: 572, column: 4, scope: !2191)
!2199 = !DILocation(line: 574, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 574, column: 7)
!2201 = !DILocation(line: 574, column: 27, scope: !2200)
!2202 = !DILocation(line: 574, column: 8, scope: !2200)
!2203 = !DILocation(line: 574, column: 7, scope: !2192)
!2204 = !DILocation(line: 575, column: 4, scope: !2200)
!2205 = !DILocation(line: 584, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 584, column: 7)
!2207 = !DILocation(line: 584, column: 19, scope: !2206)
!2208 = !DILocation(line: 584, column: 23, scope: !2206)
!2209 = !DILocation(line: 584, column: 29, scope: !2206)
!2210 = !DILocation(line: 584, column: 40, scope: !2206)
!2211 = !DILocation(line: 585, column: 9, scope: !2206)
!2212 = !DILocation(line: 585, column: 20, scope: !2206)
!2213 = !DILocation(line: 585, column: 23, scope: !2206)
!2214 = !DILocation(line: 585, column: 29, scope: !2206)
!2215 = !DILocation(line: 585, column: 40, scope: !2206)
!2216 = !DILocation(line: 586, column: 7, scope: !2206)
!2217 = !DILocation(line: 586, column: 13, scope: !2206)
!2218 = !DILocation(line: 584, column: 7, scope: !2192)
!2219 = !DILocation(line: 587, column: 8, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 586, column: 23)
!2221 = !DILocation(line: 588, column: 4, scope: !2220)
!2222 = !DILocation(line: 592, column: 8, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 592, column: 7)
!2224 = !DILocation(line: 592, column: 7, scope: !2192)
!2225 = !DILocation(line: 593, column: 8, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 593, column: 8)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 592, column: 20)
!2228 = !DILocation(line: 593, column: 24, scope: !2226)
!2229 = !DILocation(line: 593, column: 21, scope: !2226)
!2230 = !DILocation(line: 593, column: 8, scope: !2227)
!2231 = !DILocation(line: 594, column: 30, scope: !2226)
!2232 = !DILocation(line: 594, column: 5, scope: !2226)
!2233 = !DILocation(line: 596, column: 19, scope: !2226)
!2234 = !DILocation(line: 596, column: 25, scope: !2226)
!2235 = !DILocation(line: 596, column: 30, scope: !2226)
!2236 = !DILocation(line: 596, column: 5, scope: !2226)
!2237 = !DILocation(line: 597, column: 4, scope: !2227)
!2238 = !DILocation(line: 601, column: 20, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 601, column: 7)
!2240 = !DILocation(line: 601, column: 26, scope: !2239)
!2241 = !DILocation(line: 601, column: 8, scope: !2239)
!2242 = !DILocation(line: 601, column: 7, scope: !2192)
!2243 = !DILocation(line: 602, column: 8, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 601, column: 50)
!2245 = !DILocation(line: 603, column: 4, scope: !2244)
!2246 = !DILocation(line: 614, column: 16, scope: !2192)
!2247 = !DILocation(line: 614, column: 3, scope: !2192)
!2248 = !DILocation(line: 617, column: 33, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 617, column: 7)
!2250 = !DILocation(line: 617, column: 39, scope: !2249)
!2251 = !DILocation(line: 617, column: 8, scope: !2249)
!2252 = !DILocation(line: 617, column: 7, scope: !2192)
!2253 = !DILocation(line: 623, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 617, column: 50)
!2255 = !DILocation(line: 623, column: 4, scope: !2254)
!2256 = !DILocation(line: 624, column: 4, scope: !2254)
!2257 = !DILocation(line: 627, column: 36, scope: !2192)
!2258 = !DILocation(line: 627, column: 46, scope: !2192)
!2259 = !DILocation(line: 628, column: 7, scope: !2192)
!2260 = !DILocation(line: 628, column: 13, scope: !2192)
!2261 = !DILocation(line: 629, column: 7, scope: !2192)
!2262 = !DILocation(line: 629, column: 13, scope: !2192)
!2263 = !DILocation(line: 627, column: 9, scope: !2192)
!2264 = !DILocation(line: 627, column: 7, scope: !2192)
!2265 = !DILocation(line: 631, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 631, column: 7)
!2267 = !DILocation(line: 631, column: 11, scope: !2266)
!2268 = !DILocation(line: 631, column: 7, scope: !2192)
!2269 = !DILocation(line: 640, column: 26, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 631, column: 17)
!2271 = !DILocation(line: 640, column: 39, scope: !2270)
!2272 = !DILocation(line: 640, column: 4, scope: !2270)
!2273 = !DILocation(line: 641, column: 14, scope: !2270)
!2274 = !DILocation(line: 642, column: 3, scope: !2270)
!2275 = !DILocation(line: 642, column: 15, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 642, column: 14)
!2277 = !DILocation(line: 642, column: 14, scope: !2266)
!2278 = !DILocation(line: 644, column: 18, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 642, column: 20)
!2280 = !DILocation(line: 644, column: 24, scope: !2279)
!2281 = !DILocation(line: 644, column: 29, scope: !2279)
!2282 = !DILocation(line: 644, column: 4, scope: !2279)
!2283 = !DILocation(line: 645, column: 30, scope: !2279)
!2284 = !DILocation(line: 645, column: 4, scope: !2279)
!2285 = !DILocation(line: 646, column: 14, scope: !2279)
!2286 = !DILocation(line: 647, column: 3, scope: !2279)
!2287 = !DILocation(line: 655, column: 4, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 647, column: 10)
!2289 = !DILocation(line: 655, column: 10, scope: !2288)
!2290 = !DILocation(line: 655, column: 19, scope: !2288)
!2291 = !DILocation(line: 656, column: 17, scope: !2288)
!2292 = !DILocation(line: 656, column: 4, scope: !2288)
!2293 = !DILocation(line: 657, column: 30, scope: !2288)
!2294 = !DILocation(line: 657, column: 36, scope: !2288)
!2295 = !DILocation(line: 657, column: 4, scope: !2288)
!2296 = !DILocation(line: 662, column: 4, scope: !2288)
!2297 = !DILocation(line: 664, column: 2, scope: !2192)
!2298 = !DILocation(line: 570, column: 2, scope: !2008)
!2299 = distinct !{!2299, !2187, !2300, !2301, !2302}
!2300 = !DILocation(line: 664, column: 2, scope: !2004)
!2301 = !{!"llvm.loop.mustprogress"}
!2302 = !{!"llvm.loop.unroll.disable"}
!2303 = !DILocation(line: 670, column: 15, scope: !1950)
!2304 = !DILocation(line: 670, column: 2, scope: !1950)
!2305 = !DILocation(line: 672, column: 1, scope: !1950)
!2306 = !DILocation(line: 673, column: 19, scope: !1950)
!2307 = !DILocation(line: 673, column: 24, scope: !1950)
!2308 = !DILocation(line: 673, column: 2, scope: !1950)
!2309 = !DILocation(line: 674, column: 2, scope: !1950)
!2310 = !DILocation(line: 675, column: 23, scope: !1950)
!2311 = !DILocation(line: 675, column: 2, scope: !1950)
!2312 = !DILocation(line: 676, column: 9, scope: !1950)
!2313 = !DILocation(line: 676, column: 15, scope: !1950)
!2314 = !DILocation(line: 676, column: 21, scope: !1950)
!2315 = !DILocation(line: 676, column: 2, scope: !1950)
!2316 = !DILocation(line: 677, column: 1, scope: !1950)
!2317 = !DISubprogram(name: "refill_pi_state_cache", scope: !25, file: !25, line: 230, type: !1937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2318 = !DISubprogram(name: "get_futex_key", scope: !25, file: !25, line: 119, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!64, !653, !910, !1915, !24}
!2321 = distinct !DISubprogram(name: "futex_match", scope: !25, file: !25, line: 135, type: !2322, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!64, !1915, !1915}
!2324 = !{!2325, !2326}
!2325 = !DILocalVariable(name: "key1", arg: 1, scope: !2321, file: !25, line: 135, type: !1915)
!2326 = !DILocalVariable(name: "key2", arg: 2, scope: !2321, file: !25, line: 135, type: !1915)
!2327 = !DILocation(line: 135, column: 48, scope: !2321)
!2328 = !DILocation(line: 135, column: 71, scope: !2321)
!2329 = !DILocation(line: 137, column: 10, scope: !2321)
!2330 = !DILocation(line: 137, column: 15, scope: !2321)
!2331 = !DILocation(line: 137, column: 18, scope: !2321)
!2332 = !DILocation(line: 138, column: 3, scope: !2321)
!2333 = !DILocation(line: 138, column: 6, scope: !2321)
!2334 = !DILocation(line: 138, column: 17, scope: !2321)
!2335 = !DILocation(line: 138, column: 25, scope: !2321)
!2336 = !DILocation(line: 138, column: 36, scope: !2321)
!2337 = !DILocation(line: 138, column: 22, scope: !2321)
!2338 = !DILocation(line: 139, column: 3, scope: !2321)
!2339 = !DILocation(line: 139, column: 6, scope: !2321)
!2340 = !DILocation(line: 139, column: 17, scope: !2321)
!2341 = !DILocation(line: 139, column: 24, scope: !2321)
!2342 = !DILocation(line: 139, column: 35, scope: !2321)
!2343 = !DILocation(line: 139, column: 21, scope: !2321)
!2344 = !DILocation(line: 140, column: 3, scope: !2321)
!2345 = !DILocation(line: 140, column: 6, scope: !2321)
!2346 = !DILocation(line: 140, column: 17, scope: !2321)
!2347 = !DILocation(line: 140, column: 27, scope: !2321)
!2348 = !DILocation(line: 140, column: 38, scope: !2321)
!2349 = !DILocation(line: 140, column: 24, scope: !2321)
!2350 = !DILocation(line: 0, scope: !2321)
!2351 = !DILocation(line: 137, column: 2, scope: !2321)
!2352 = !DISubprogram(name: "futex_hash", scope: !25, file: !25, line: 126, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!1967, !1915}
!2355 = distinct !DISubprogram(name: "futex_hb_waiters_inc", scope: !25, file: !25, line: 184, type: !2356, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !1967}
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "hb", arg: 1, scope: !2355, file: !25, line: 184, type: !1967)
!2360 = !DILocation(line: 184, column: 67, scope: !2355)
!2361 = !DILocation(line: 187, column: 14, scope: !2355)
!2362 = !DILocation(line: 187, column: 18, scope: !2355)
!2363 = !DILocation(line: 187, column: 2, scope: !2355)
!2364 = !DILocation(line: 191, column: 2, scope: !2355)
!2365 = !DILocation(line: 191, column: 2, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2355, file: !25, line: 191, column: 2)
!2367 = !DILocation(line: 191, column: 2, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !25, line: 191, column: 2)
!2369 = !DILocation(line: 191, column: 2, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !25, line: 191, column: 2)
!2371 = !DILocation(line: 193, column: 1, scope: !2355)
!2372 = distinct !DISubprogram(name: "double_lock_hb", scope: !25, file: !25, line: 239, type: !2373, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !1967, !1967}
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "hb1", arg: 1, scope: !2372, file: !25, line: 239, type: !1967)
!2377 = !DILocalVariable(name: "hb2", arg: 2, scope: !2372, file: !25, line: 239, type: !1967)
!2378 = !DILocalVariable(name: "__tmp", scope: !2379, file: !25, line: 242, type: !1967)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !25, line: 242, column: 3)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !25, line: 241, column: 6)
!2381 = !DILocation(line: 239, column: 42, scope: !2372)
!2382 = !DILocation(line: 239, column: 73, scope: !2372)
!2383 = !DILocation(line: 241, column: 6, scope: !2380)
!2384 = !DILocation(line: 241, column: 12, scope: !2380)
!2385 = !DILocation(line: 241, column: 10, scope: !2380)
!2386 = !DILocation(line: 241, column: 6, scope: !2372)
!2387 = !DILocation(line: 242, column: 3, scope: !2380)
!2388 = !DILocation(line: 242, column: 3, scope: !2379)
!2389 = !DILocation(line: 244, column: 13, scope: !2372)
!2390 = !DILocation(line: 244, column: 18, scope: !2372)
!2391 = !DILocation(line: 244, column: 2, scope: !2372)
!2392 = !DILocation(line: 245, column: 6, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2372, file: !25, line: 245, column: 6)
!2394 = !DILocation(line: 245, column: 13, scope: !2393)
!2395 = !DILocation(line: 245, column: 10, scope: !2393)
!2396 = !DILocation(line: 245, column: 6, scope: !2372)
!2397 = !DILocation(line: 246, column: 3, scope: !2393)
!2398 = !DILocation(line: 246, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !25, line: 246, column: 3)
!2400 = !DILocation(line: 247, column: 1, scope: !2372)
!2401 = !DISubprogram(name: "futex_get_value_locked", scope: !25, file: !25, line: 151, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!64, !653, !653}
!2404 = distinct !DISubprogram(name: "double_unlock_hb", scope: !25, file: !25, line: 250, type: !2373, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "hb1", arg: 1, scope: !2404, file: !25, line: 250, type: !1967)
!2407 = !DILocalVariable(name: "hb2", arg: 2, scope: !2404, file: !25, line: 250, type: !1967)
!2408 = !DILocation(line: 250, column: 44, scope: !2404)
!2409 = !DILocation(line: 250, column: 75, scope: !2404)
!2410 = !DILocation(line: 252, column: 15, scope: !2404)
!2411 = !DILocation(line: 252, column: 20, scope: !2404)
!2412 = !DILocation(line: 252, column: 2, scope: !2404)
!2413 = !DILocation(line: 253, column: 6, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !25, line: 253, column: 6)
!2415 = !DILocation(line: 253, column: 13, scope: !2414)
!2416 = !DILocation(line: 253, column: 10, scope: !2414)
!2417 = !DILocation(line: 253, column: 6, scope: !2404)
!2418 = !DILocation(line: 254, column: 16, scope: !2414)
!2419 = !DILocation(line: 254, column: 21, scope: !2414)
!2420 = !DILocation(line: 254, column: 3, scope: !2414)
!2421 = !DILocation(line: 255, column: 1, scope: !2404)
!2422 = distinct !DISubprogram(name: "futex_hb_waiters_dec", scope: !25, file: !25, line: 199, type: !2356, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "hb", arg: 1, scope: !2422, file: !25, line: 199, type: !1967)
!2425 = !DILocation(line: 199, column: 67, scope: !2422)
!2426 = !DILocation(line: 202, column: 14, scope: !2422)
!2427 = !DILocation(line: 202, column: 18, scope: !2422)
!2428 = !DILocation(line: 202, column: 2, scope: !2422)
!2429 = !DILocation(line: 204, column: 1, scope: !2422)
!2430 = distinct !DISubprogram(name: "might_fault", scope: !2431, file: !2431, line: 202, type: !1210, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2431 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2432 = !DILocation(line: 202, column: 40, scope: !2430)
!2433 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !2434, file: !2434, line: 70, type: !2435, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2434 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !2437, !1221}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "address", arg: 1, scope: !2433, file: !2434, line: 70, type: !2437)
!2441 = !DILocalVariable(name: "size", arg: 2, scope: !2433, file: !2434, line: 70, type: !1221)
!2442 = !DILocation(line: 70, column: 54, scope: !2433)
!2443 = !DILocation(line: 70, column: 70, scope: !2433)
!2444 = !DILocation(line: 72, column: 1, scope: !2433)
!2445 = distinct !DISubprogram(name: "futex_proxy_trylock_atomic", scope: !3, file: !3, line: 267, type: !2446, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!64, !653, !1967, !1967, !1915, !1915, !2448, !1923, !64}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2450 = !DILocalVariable(name: "pifutex", arg: 1, scope: !2445, file: !3, line: 267, type: !653)
!2451 = !DILocalVariable(name: "hb1", arg: 2, scope: !2445, file: !3, line: 267, type: !1967)
!2452 = !DILocalVariable(name: "hb2", arg: 3, scope: !2445, file: !3, line: 268, type: !1967)
!2453 = !DILocalVariable(name: "key1", arg: 4, scope: !2445, file: !3, line: 268, type: !1915)
!2454 = !DILocalVariable(name: "key2", arg: 5, scope: !2445, file: !3, line: 269, type: !1915)
!2455 = !DILocalVariable(name: "ps", arg: 6, scope: !2445, file: !3, line: 269, type: !2448)
!2456 = !DILocalVariable(name: "exiting", arg: 7, scope: !2445, file: !3, line: 270, type: !1923)
!2457 = !DILocalVariable(name: "set_waiters", arg: 8, scope: !2445, file: !3, line: 270, type: !64)
!2458 = !DILocalVariable(name: "top_waiter", scope: !2445, file: !3, line: 272, type: !56)
!2459 = !DILocalVariable(name: "curval", scope: !2445, file: !3, line: 273, type: !54)
!2460 = !DILocalVariable(name: "ret", scope: !2445, file: !3, line: 274, type: !64)
!2461 = !DILocation(line: 267, column: 40, scope: !2445)
!2462 = !DILocation(line: 267, column: 75, scope: !2445)
!2463 = !DILocation(line: 268, column: 33, scope: !2445)
!2464 = !DILocation(line: 268, column: 55, scope: !2445)
!2465 = !DILocation(line: 269, column: 24, scope: !2445)
!2466 = !DILocation(line: 269, column: 54, scope: !2445)
!2467 = !DILocation(line: 270, column: 28, scope: !2445)
!2468 = !DILocation(line: 270, column: 41, scope: !2445)
!2469 = !DILocation(line: 272, column: 2, scope: !2445)
!2470 = !DILocation(line: 272, column: 18, scope: !2445)
!2471 = !DILocation(line: 273, column: 2, scope: !2445)
!2472 = !DILocation(line: 273, column: 6, scope: !2445)
!2473 = !DILocation(line: 274, column: 2, scope: !2445)
!2474 = !DILocation(line: 274, column: 6, scope: !2445)
!2475 = !DILocation(line: 276, column: 38, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 276, column: 6)
!2477 = !DILocation(line: 276, column: 6, scope: !2476)
!2478 = !DILocation(line: 276, column: 6, scope: !2445)
!2479 = !DILocation(line: 277, column: 3, scope: !2476)
!2480 = !DILocation(line: 279, column: 6, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 279, column: 6)
!2482 = !DILocation(line: 279, column: 6, scope: !2445)
!2483 = !DILocation(line: 280, column: 3, scope: !2481)
!2484 = !DILocation(line: 290, column: 32, scope: !2445)
!2485 = !DILocation(line: 290, column: 37, scope: !2445)
!2486 = !DILocation(line: 290, column: 15, scope: !2445)
!2487 = !DILocation(line: 290, column: 13, scope: !2445)
!2488 = !DILocation(line: 293, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 293, column: 6)
!2490 = !DILocation(line: 293, column: 6, scope: !2445)
!2491 = !DILocation(line: 294, column: 3, scope: !2489)
!2492 = !DILocation(line: 300, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 300, column: 6)
!2494 = !DILocation(line: 300, column: 19, scope: !2493)
!2495 = !DILocation(line: 300, column: 29, scope: !2493)
!2496 = !DILocation(line: 300, column: 32, scope: !2493)
!2497 = !DILocation(line: 300, column: 44, scope: !2493)
!2498 = !DILocation(line: 300, column: 6, scope: !2445)
!2499 = !DILocation(line: 301, column: 3, scope: !2493)
!2500 = !DILocation(line: 304, column: 19, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 304, column: 6)
!2502 = !DILocation(line: 304, column: 31, scope: !2501)
!2503 = !DILocation(line: 304, column: 47, scope: !2501)
!2504 = !DILocation(line: 304, column: 7, scope: !2501)
!2505 = !DILocation(line: 304, column: 6, scope: !2445)
!2506 = !DILocation(line: 305, column: 3, scope: !2501)
!2507 = !DILocation(line: 308, column: 32, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 308, column: 6)
!2509 = !DILocation(line: 308, column: 7, scope: !2508)
!2510 = !DILocation(line: 308, column: 6, scope: !2445)
!2511 = !DILocation(line: 309, column: 3, scope: !2508)
!2512 = !DILocation(line: 319, column: 29, scope: !2445)
!2513 = !DILocation(line: 319, column: 38, scope: !2445)
!2514 = !DILocation(line: 319, column: 43, scope: !2445)
!2515 = !DILocation(line: 319, column: 49, scope: !2445)
!2516 = !DILocation(line: 319, column: 53, scope: !2445)
!2517 = !DILocation(line: 319, column: 65, scope: !2445)
!2518 = !DILocation(line: 320, column: 8, scope: !2445)
!2519 = !DILocation(line: 320, column: 17, scope: !2445)
!2520 = !DILocation(line: 319, column: 8, scope: !2445)
!2521 = !DILocation(line: 319, column: 6, scope: !2445)
!2522 = !DILocation(line: 321, column: 6, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 321, column: 6)
!2524 = !DILocation(line: 321, column: 10, scope: !2523)
!2525 = !DILocation(line: 321, column: 6, scope: !2445)
!2526 = !DILocation(line: 328, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 321, column: 16)
!2528 = !DILocation(line: 328, column: 37, scope: !2527)
!2529 = !DILocation(line: 328, column: 43, scope: !2527)
!2530 = !DILocation(line: 328, column: 3, scope: !2527)
!2531 = !DILocation(line: 329, column: 2, scope: !2527)
!2532 = !DILocation(line: 329, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 329, column: 13)
!2534 = !DILocation(line: 329, column: 17, scope: !2533)
!2535 = !DILocation(line: 329, column: 13, scope: !2523)
!2536 = !DILocation(line: 331, column: 29, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 329, column: 22)
!2538 = !DILocation(line: 331, column: 41, scope: !2537)
!2539 = !DILocation(line: 331, column: 3, scope: !2537)
!2540 = !DILocation(line: 332, column: 2, scope: !2537)
!2541 = !DILocation(line: 343, column: 9, scope: !2445)
!2542 = !DILocation(line: 343, column: 2, scope: !2445)
!2543 = !DILocation(line: 344, column: 1, scope: !2445)
!2544 = !DISubprogram(name: "fault_in_user_writeable", scope: !25, file: !25, line: 149, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!64, !653}
!2547 = !DISubprogram(name: "wait_for_owner_exiting", scope: !25, file: !25, line: 179, type: !2548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !64, !74}
!2550 = distinct !DISubprogram(name: "__might_resched", scope: !2431, file: !2431, line: 184, type: !2551, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !913, !64, !7}
!2553 = !{!2554, !2555, !2556}
!2554 = !DILocalVariable(name: "file", arg: 1, scope: !2550, file: !2431, line: 184, type: !913)
!2555 = !DILocalVariable(name: "line", arg: 2, scope: !2550, file: !2431, line: 184, type: !64)
!2556 = !DILocalVariable(name: "offsets", arg: 3, scope: !2550, file: !2431, line: 185, type: !7)
!2557 = !DILocation(line: 184, column: 50, scope: !2550)
!2558 = !DILocation(line: 184, column: 60, scope: !2550)
!2559 = !DILocation(line: 185, column: 23, scope: !2550)
!2560 = !DILocation(line: 185, column: 34, scope: !2550)
!2561 = !DILocation(line: 2104, column: 9, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !1936, file: !45, line: 2104, column: 9)
!2563 = !DILocation(line: 2104, column: 9, scope: !1936)
!2564 = !DILocation(line: 2104, column: 2, scope: !1936)
!2565 = !DISubprogram(name: "futex_wake_mark", scope: !25, file: !25, line: 147, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !2568, !56}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!2569 = distinct !DISubprogram(name: "requeue_futex", scope: !3, file: !3, line: 74, type: !2570, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !56, !1967, !1967, !1915}
!2572 = !{!2573, !2574, !2575, !2576}
!2573 = !DILocalVariable(name: "q", arg: 1, scope: !2569, file: !3, line: 74, type: !56)
!2574 = !DILocalVariable(name: "hb1", arg: 2, scope: !2569, file: !3, line: 74, type: !1967)
!2575 = !DILocalVariable(name: "hb2", arg: 3, scope: !2569, file: !3, line: 75, type: !1967)
!2576 = !DILocalVariable(name: "key2", arg: 4, scope: !2569, file: !3, line: 75, type: !1915)
!2577 = !DILocation(line: 74, column: 36, scope: !2569)
!2578 = !DILocation(line: 74, column: 65, scope: !2569)
!2579 = !DILocation(line: 75, column: 32, scope: !2569)
!2580 = !DILocation(line: 75, column: 54, scope: !2569)
!2581 = !DILocation(line: 82, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 82, column: 6)
!2583 = !DILocation(line: 82, column: 6, scope: !2569)
!2584 = !DILocation(line: 83, column: 14, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 82, column: 42)
!2586 = !DILocation(line: 83, column: 17, scope: !2585)
!2587 = !DILocation(line: 83, column: 24, scope: !2585)
!2588 = !DILocation(line: 83, column: 29, scope: !2585)
!2589 = !DILocation(line: 83, column: 3, scope: !2585)
!2590 = !DILocation(line: 84, column: 24, scope: !2585)
!2591 = !DILocation(line: 84, column: 3, scope: !2585)
!2592 = !DILocation(line: 85, column: 24, scope: !2585)
!2593 = !DILocation(line: 85, column: 3, scope: !2585)
!2594 = !DILocation(line: 86, column: 14, scope: !2585)
!2595 = !DILocation(line: 86, column: 17, scope: !2585)
!2596 = !DILocation(line: 86, column: 24, scope: !2585)
!2597 = !DILocation(line: 86, column: 29, scope: !2585)
!2598 = !DILocation(line: 86, column: 3, scope: !2585)
!2599 = !DILocation(line: 87, column: 18, scope: !2585)
!2600 = !DILocation(line: 87, column: 23, scope: !2585)
!2601 = !DILocation(line: 87, column: 3, scope: !2585)
!2602 = !DILocation(line: 87, column: 6, scope: !2585)
!2603 = !DILocation(line: 87, column: 15, scope: !2585)
!2604 = !DILocation(line: 88, column: 2, scope: !2585)
!2605 = !DILocation(line: 89, column: 2, scope: !2569)
!2606 = !DILocation(line: 89, column: 5, scope: !2569)
!2607 = !DILocation(line: 89, column: 12, scope: !2569)
!2608 = !DILocation(line: 89, column: 11, scope: !2569)
!2609 = !DILocation(line: 90, column: 1, scope: !2569)
!2610 = !DISubprogram(name: "get_pi_state", scope: !25, file: !25, line: 231, type: !2611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !1417}
!2613 = distinct !DISubprogram(name: "futex_requeue_pi_prepare", scope: !3, file: !3, line: 92, type: !2614, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!910, !56, !1417}
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "q", arg: 1, scope: !2613, file: !3, line: 92, type: !56)
!2618 = !DILocalVariable(name: "pi_state", arg: 2, scope: !2613, file: !3, line: 93, type: !1417)
!2619 = !DILocalVariable(name: "old", scope: !2613, file: !3, line: 95, type: !64)
!2620 = !DILocalVariable(name: "new", scope: !2613, file: !3, line: 95, type: !64)
!2621 = !DILocation(line: 92, column: 61, scope: !2613)
!2622 = !DILocation(line: 93, column: 33, scope: !2613)
!2623 = !DILocation(line: 95, column: 2, scope: !2613)
!2624 = !DILocation(line: 95, column: 6, scope: !2613)
!2625 = !DILocation(line: 95, column: 11, scope: !2613)
!2626 = !DILocation(line: 102, column: 29, scope: !2613)
!2627 = !DILocation(line: 102, column: 32, scope: !2613)
!2628 = !DILocation(line: 102, column: 8, scope: !2613)
!2629 = !DILocation(line: 102, column: 6, scope: !2613)
!2630 = !DILocation(line: 103, column: 2, scope: !2613)
!2631 = !DILocation(line: 104, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 104, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 103, column: 5)
!2634 = !DILocation(line: 104, column: 11, scope: !2632)
!2635 = !DILocation(line: 104, column: 7, scope: !2633)
!2636 = !DILocation(line: 105, column: 4, scope: !2632)
!2637 = !DILocation(line: 115, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 115, column: 7)
!2639 = !DILocation(line: 115, column: 11, scope: !2638)
!2640 = !DILocation(line: 115, column: 7, scope: !2633)
!2641 = !DILocation(line: 116, column: 4, scope: !2638)
!2642 = !DILocation(line: 118, column: 7, scope: !2633)
!2643 = !DILocation(line: 119, column: 2, scope: !2633)
!2644 = !DILocation(line: 119, column: 32, scope: !2613)
!2645 = !DILocation(line: 119, column: 35, scope: !2613)
!2646 = !DILocation(line: 119, column: 56, scope: !2613)
!2647 = !DILocation(line: 119, column: 12, scope: !2613)
!2648 = !DILocation(line: 119, column: 11, scope: !2613)
!2649 = distinct !{!2649, !2630, !2650, !2301, !2302}
!2650 = !DILocation(line: 119, column: 60, scope: !2613)
!2651 = !DILocation(line: 121, column: 16, scope: !2613)
!2652 = !DILocation(line: 121, column: 2, scope: !2613)
!2653 = !DILocation(line: 121, column: 5, scope: !2613)
!2654 = !DILocation(line: 121, column: 14, scope: !2613)
!2655 = !DILocation(line: 122, column: 2, scope: !2613)
!2656 = !DILocation(line: 123, column: 1, scope: !2613)
!2657 = !DISubprogram(name: "put_pi_state", scope: !25, file: !25, line: 232, type: !2611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2658 = !DISubprogram(name: "rt_mutex_start_proxy_lock", scope: !1257, file: !1257, line: 87, type: !2659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!64, !1268, !1255, !74}
!2661 = distinct !DISubprogram(name: "requeue_pi_wake_futex", scope: !3, file: !3, line: 223, type: !2662, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !56, !1915, !1967}
!2664 = !{!2665, !2666, !2667, !2668, !2670}
!2665 = !DILocalVariable(name: "q", arg: 1, scope: !2661, file: !3, line: 223, type: !56)
!2666 = !DILocalVariable(name: "key", arg: 2, scope: !2661, file: !3, line: 223, type: !1915)
!2667 = !DILocalVariable(name: "hb", arg: 3, scope: !2661, file: !3, line: 224, type: !1967)
!2668 = !DILocalVariable(name: "__ret_warn_on", scope: !2669, file: !3, line: 230, type: !64)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 230, column: 2)
!2670 = !DILocalVariable(name: "__flags", scope: !2671, file: !3, line: 230, type: !64)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 230, column: 2)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 230, column: 2)
!2673 = !DILocation(line: 223, column: 44, scope: !2661)
!2674 = !DILocation(line: 223, column: 64, scope: !2661)
!2675 = !DILocation(line: 224, column: 33, scope: !2661)
!2676 = !DILocation(line: 226, column: 2, scope: !2661)
!2677 = !DILocation(line: 226, column: 5, scope: !2661)
!2678 = !DILocation(line: 226, column: 12, scope: !2661)
!2679 = !DILocation(line: 226, column: 11, scope: !2661)
!2680 = !DILocation(line: 228, column: 18, scope: !2661)
!2681 = !DILocation(line: 228, column: 2, scope: !2661)
!2682 = !DILocation(line: 230, column: 2, scope: !2669)
!2683 = !DILocation(line: 230, column: 2, scope: !2672)
!2684 = !DILocation(line: 230, column: 2, scope: !2671)
!2685 = !DILocation(line: 230, column: 2, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 230, column: 2)
!2687 = !DILocation(line: 230, column: 2, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 230, column: 2)
!2689 = !{i64 2151987640, i64 2151987669, i64 2151987715, i64 2151987773, i64 2151987827, i64 2151987881, i64 2151987936, i64 2151987967, i64 2151988275, i64 2151988281, i64 2151988328, i64 2151988351, i64 2151988377}
!2690 = !DILocation(line: 230, column: 2, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 230, column: 2)
!2692 = !DILocation(line: 230, column: 2, scope: !2661)
!2693 = !DILocation(line: 231, column: 2, scope: !2661)
!2694 = !DILocation(line: 231, column: 5, scope: !2661)
!2695 = !DILocation(line: 231, column: 15, scope: !2661)
!2696 = !DILocation(line: 233, column: 17, scope: !2661)
!2697 = !DILocation(line: 233, column: 21, scope: !2661)
!2698 = !DILocation(line: 233, column: 2, scope: !2661)
!2699 = !DILocation(line: 233, column: 5, scope: !2661)
!2700 = !DILocation(line: 233, column: 14, scope: !2661)
!2701 = !DILocation(line: 236, column: 28, scope: !2661)
!2702 = !DILocation(line: 236, column: 2, scope: !2661)
!2703 = !DILocation(line: 237, column: 16, scope: !2661)
!2704 = !DILocation(line: 237, column: 19, scope: !2661)
!2705 = !DILocation(line: 237, column: 2, scope: !2661)
!2706 = !DILocation(line: 238, column: 1, scope: !2661)
!2707 = distinct !DISubprogram(name: "futex_requeue_pi_complete", scope: !3, file: !3, line: 125, type: !2708, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !56, !64}
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2720, !2723, !2727}
!2711 = !DILocalVariable(name: "q", arg: 1, scope: !2707, file: !3, line: 125, type: !56)
!2712 = !DILocalVariable(name: "locked", arg: 2, scope: !2707, file: !3, line: 125, type: !64)
!2713 = !DILocalVariable(name: "old", scope: !2707, file: !3, line: 127, type: !64)
!2714 = !DILocalVariable(name: "new", scope: !2707, file: !3, line: 127, type: !64)
!2715 = !DILocalVariable(name: "__ret_warn_on", scope: !2716, file: !3, line: 136, type: !64)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 136, column: 4)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 134, column: 20)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 134, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 130, column: 5)
!2720 = !DILocalVariable(name: "__flags", scope: !2721, file: !3, line: 136, type: !64)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 136, column: 4)
!2722 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 136, column: 4)
!2723 = !DILocalVariable(name: "__ret_warn_on", scope: !2724, file: !3, line: 144, type: !64)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 144, column: 4)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 142, column: 10)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 139, column: 14)
!2727 = !DILocalVariable(name: "__flags", scope: !2728, file: !3, line: 144, type: !64)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 144, column: 4)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 144, column: 4)
!2730 = !DILocation(line: 125, column: 62, scope: !2707)
!2731 = !DILocation(line: 125, column: 69, scope: !2707)
!2732 = !DILocation(line: 127, column: 2, scope: !2707)
!2733 = !DILocation(line: 127, column: 6, scope: !2707)
!2734 = !DILocation(line: 127, column: 11, scope: !2707)
!2735 = !DILocation(line: 129, column: 29, scope: !2707)
!2736 = !DILocation(line: 129, column: 32, scope: !2707)
!2737 = !DILocation(line: 129, column: 8, scope: !2707)
!2738 = !DILocation(line: 129, column: 6, scope: !2707)
!2739 = !DILocation(line: 130, column: 2, scope: !2707)
!2740 = !DILocation(line: 131, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 131, column: 7)
!2742 = !DILocation(line: 131, column: 11, scope: !2741)
!2743 = !DILocation(line: 131, column: 7, scope: !2719)
!2744 = !DILocation(line: 132, column: 4, scope: !2741)
!2745 = !DILocation(line: 134, column: 7, scope: !2718)
!2746 = !DILocation(line: 134, column: 14, scope: !2718)
!2747 = !DILocation(line: 134, column: 7, scope: !2719)
!2748 = !DILocation(line: 136, column: 4, scope: !2716)
!2749 = !DILocation(line: 0, scope: !2716)
!2750 = !DILocation(line: 136, column: 4, scope: !2722)
!2751 = !DILocation(line: 136, column: 4, scope: !2721)
!2752 = !DILocation(line: 136, column: 4, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 136, column: 4)
!2754 = !DILocation(line: 136, column: 4, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 136, column: 4)
!2756 = !{i64 2151980327, i64 2151980356, i64 2151980402, i64 2151980460, i64 2151980514, i64 2151980568, i64 2151980623, i64 2151980654, i64 2151980962, i64 2151980968, i64 2151981015, i64 2151981038, i64 2151981064}
!2757 = !DILocation(line: 136, column: 4, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 136, column: 4)
!2759 = !DILocation(line: 136, column: 4, scope: !2717)
!2760 = !DILocation(line: 138, column: 30, scope: !2717)
!2761 = !DILocation(line: 138, column: 28, scope: !2717)
!2762 = !DILocation(line: 138, column: 8, scope: !2717)
!2763 = !DILocation(line: 139, column: 3, scope: !2717)
!2764 = !DILocation(line: 139, column: 14, scope: !2726)
!2765 = !DILocation(line: 139, column: 18, scope: !2726)
!2766 = !DILocation(line: 139, column: 14, scope: !2718)
!2767 = !DILocation(line: 141, column: 8, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 139, column: 47)
!2769 = !DILocation(line: 142, column: 3, scope: !2768)
!2770 = !DILocation(line: 144, column: 4, scope: !2724)
!2771 = !DILocation(line: 144, column: 4, scope: !2729)
!2772 = !DILocation(line: 144, column: 4, scope: !2728)
!2773 = !DILocation(line: 144, column: 4, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 144, column: 4)
!2775 = !DILocation(line: 144, column: 4, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 144, column: 4)
!2777 = !{i64 2151981865, i64 2151981894, i64 2151981940, i64 2151981998, i64 2151982052, i64 2151982106, i64 2151982161, i64 2151982192, i64 2151982500, i64 2151982506, i64 2151982553, i64 2151982576, i64 2151982602}
!2778 = !DILocation(line: 144, column: 4, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 144, column: 4)
!2780 = !DILocation(line: 144, column: 4, scope: !2725)
!2781 = !DILocation(line: 145, column: 8, scope: !2725)
!2782 = !DILocation(line: 147, column: 2, scope: !2719)
!2783 = !DILocation(line: 147, column: 32, scope: !2707)
!2784 = !DILocation(line: 147, column: 35, scope: !2707)
!2785 = !DILocation(line: 147, column: 56, scope: !2707)
!2786 = !DILocation(line: 147, column: 12, scope: !2707)
!2787 = !DILocation(line: 147, column: 11, scope: !2707)
!2788 = distinct !{!2788, !2739, !2789, !2301, !2302}
!2789 = !DILocation(line: 147, column: 60, scope: !2707)
!2790 = !DILocation(line: 154, column: 1, scope: !2707)
!2791 = !DISubprogram(name: "wake_up_q", scope: !1981, file: !1981, line: 64, type: !2792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2568}
!2794 = distinct !DISubprogram(name: "futex_wait_requeue_pi", scope: !3, file: !3, line: 762, type: !2795, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2798)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!64, !653, !7, !54, !2797, !54, !653}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2810, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2799 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2794, file: !3, line: 762, type: !653)
!2800 = !DILocalVariable(name: "flags", arg: 2, scope: !2794, file: !3, line: 762, type: !7)
!2801 = !DILocalVariable(name: "val", arg: 3, scope: !2794, file: !3, line: 763, type: !54)
!2802 = !DILocalVariable(name: "abs_time", arg: 4, scope: !2794, file: !3, line: 763, type: !2797)
!2803 = !DILocalVariable(name: "bitset", arg: 5, scope: !2794, file: !3, line: 763, type: !54)
!2804 = !DILocalVariable(name: "uaddr2", arg: 6, scope: !2794, file: !3, line: 764, type: !653)
!2805 = !DILocalVariable(name: "timeout", scope: !2794, file: !3, line: 766, type: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_sleeper", file: !6, line: 136, size: 576, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2806, file: !6, line: 137, baseType: !213, size: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2806, file: !6, line: 138, baseType: !74, size: 64, offset: 512)
!2810 = !DILocalVariable(name: "to", scope: !2794, file: !3, line: 766, type: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2812 = !DILocalVariable(name: "rt_waiter", scope: !2794, file: !3, line: 767, type: !1256)
!2813 = !DILocalVariable(name: "hb", scope: !2794, file: !3, line: 768, type: !1967)
!2814 = !DILocalVariable(name: "key2", scope: !2794, file: !3, line: 769, type: !1425)
!2815 = !DILocalVariable(name: "q", scope: !2794, file: !3, line: 770, type: !57)
!2816 = !DILocalVariable(name: "pi_mutex", scope: !2794, file: !3, line: 771, type: !1268)
!2817 = !DILocalVariable(name: "res", scope: !2794, file: !3, line: 772, type: !64)
!2818 = !DILocalVariable(name: "ret", scope: !2794, file: !3, line: 772, type: !64)
!2819 = !DILabel(scope: !2794, name: "out", file: !3, line: 890)
!2820 = !DILocation(line: 762, column: 39, scope: !2794)
!2821 = !DILocation(line: 762, column: 59, scope: !2794)
!2822 = !DILocation(line: 763, column: 10, scope: !2794)
!2823 = !DILocation(line: 763, column: 24, scope: !2794)
!2824 = !DILocation(line: 763, column: 38, scope: !2794)
!2825 = !DILocation(line: 764, column: 18, scope: !2794)
!2826 = !DILocation(line: 766, column: 2, scope: !2794)
!2827 = !DILocation(line: 766, column: 25, scope: !2794)
!2828 = !DILocation(line: 766, column: 35, scope: !2794)
!2829 = !DILocation(line: 767, column: 2, scope: !2794)
!2830 = !DILocation(line: 767, column: 25, scope: !2794)
!2831 = !DILocation(line: 768, column: 2, scope: !2794)
!2832 = !DILocation(line: 768, column: 28, scope: !2794)
!2833 = !DILocation(line: 769, column: 2, scope: !2794)
!2834 = !DILocation(line: 769, column: 18, scope: !2794)
!2835 = !DILocation(line: 770, column: 2, scope: !2794)
!2836 = !DILocation(line: 770, column: 17, scope: !2794)
!2837 = !DILocation(line: 771, column: 2, scope: !2794)
!2838 = !DILocation(line: 771, column: 24, scope: !2794)
!2839 = !DILocation(line: 772, column: 2, scope: !2794)
!2840 = !DILocation(line: 772, column: 6, scope: !2794)
!2841 = !DILocation(line: 772, column: 11, scope: !2794)
!2842 = !DILocation(line: 777, column: 6, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 777, column: 6)
!2844 = !DILocation(line: 777, column: 15, scope: !2843)
!2845 = !DILocation(line: 777, column: 12, scope: !2843)
!2846 = !DILocation(line: 777, column: 6, scope: !2794)
!2847 = !DILocation(line: 778, column: 3, scope: !2843)
!2848 = !DILocation(line: 780, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 780, column: 6)
!2850 = !DILocation(line: 780, column: 6, scope: !2794)
!2851 = !DILocation(line: 781, column: 3, scope: !2849)
!2852 = !DILocation(line: 783, column: 25, scope: !2794)
!2853 = !DILocation(line: 783, column: 45, scope: !2794)
!2854 = !DILocation(line: 784, column: 11, scope: !2794)
!2855 = !DILocation(line: 784, column: 20, scope: !2794)
!2856 = !DILocation(line: 783, column: 7, scope: !2794)
!2857 = !DILocation(line: 783, column: 5, scope: !2794)
!2858 = !DILocation(line: 790, column: 2, scope: !2794)
!2859 = !DILocation(line: 792, column: 22, scope: !2794)
!2860 = !DILocation(line: 792, column: 30, scope: !2794)
!2861 = !DILocation(line: 792, column: 36, scope: !2794)
!2862 = !DILocation(line: 792, column: 8, scope: !2794)
!2863 = !DILocation(line: 792, column: 6, scope: !2794)
!2864 = !DILocation(line: 793, column: 6, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 793, column: 6)
!2866 = !DILocation(line: 793, column: 6, scope: !2794)
!2867 = !DILocation(line: 794, column: 3, scope: !2865)
!2868 = !DILocation(line: 796, column: 13, scope: !2794)
!2869 = !DILocation(line: 796, column: 4, scope: !2794)
!2870 = !DILocation(line: 796, column: 11, scope: !2794)
!2871 = !DILocation(line: 797, column: 4, scope: !2794)
!2872 = !DILocation(line: 797, column: 14, scope: !2794)
!2873 = !DILocation(line: 798, column: 4, scope: !2794)
!2874 = !DILocation(line: 798, column: 19, scope: !2794)
!2875 = !DILocation(line: 804, column: 25, scope: !2794)
!2876 = !DILocation(line: 804, column: 32, scope: !2794)
!2877 = !DILocation(line: 804, column: 37, scope: !2794)
!2878 = !DILocation(line: 804, column: 8, scope: !2794)
!2879 = !DILocation(line: 804, column: 6, scope: !2794)
!2880 = !DILocation(line: 805, column: 6, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 805, column: 6)
!2882 = !DILocation(line: 805, column: 6, scope: !2794)
!2883 = !DILocation(line: 806, column: 3, scope: !2881)
!2884 = !DILocation(line: 812, column: 21, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 812, column: 6)
!2886 = !DILocation(line: 812, column: 6, scope: !2885)
!2887 = !DILocation(line: 812, column: 6, scope: !2794)
!2888 = !DILocation(line: 813, column: 18, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 812, column: 34)
!2890 = !DILocation(line: 813, column: 3, scope: !2889)
!2891 = !DILocation(line: 814, column: 7, scope: !2889)
!2892 = !DILocation(line: 815, column: 3, scope: !2889)
!2893 = !DILocation(line: 819, column: 19, scope: !2794)
!2894 = !DILocation(line: 819, column: 27, scope: !2794)
!2895 = !DILocation(line: 819, column: 2, scope: !2794)
!2896 = !DILocation(line: 821, column: 10, scope: !2794)
!2897 = !DILocation(line: 821, column: 2, scope: !2794)
!2898 = !DILocation(line: 824, column: 14, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 821, column: 44)
!2900 = !DILocation(line: 824, column: 18, scope: !2899)
!2901 = !DILocation(line: 824, column: 3, scope: !2899)
!2902 = !DILocation(line: 825, column: 40, scope: !2899)
!2903 = !DILocation(line: 825, column: 48, scope: !2899)
!2904 = !DILocation(line: 825, column: 9, scope: !2899)
!2905 = !DILocation(line: 825, column: 7, scope: !2899)
!2906 = !DILocation(line: 826, column: 16, scope: !2899)
!2907 = !DILocation(line: 826, column: 20, scope: !2899)
!2908 = !DILocation(line: 826, column: 3, scope: !2899)
!2909 = !DILocation(line: 827, column: 3, scope: !2899)
!2910 = !DILocation(line: 831, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 831, column: 7)
!2912 = !DILocation(line: 831, column: 7, scope: !2911)
!2913 = !DILocation(line: 831, column: 18, scope: !2911)
!2914 = !DILocation(line: 831, column: 24, scope: !2911)
!2915 = !DILocation(line: 831, column: 34, scope: !2911)
!2916 = !DILocation(line: 831, column: 43, scope: !2911)
!2917 = !DILocation(line: 831, column: 40, scope: !2911)
!2918 = !DILocation(line: 831, column: 7, scope: !2899)
!2919 = !DILocation(line: 832, column: 16, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 831, column: 53)
!2921 = !DILocation(line: 832, column: 4, scope: !2920)
!2922 = !DILocation(line: 833, column: 25, scope: !2920)
!2923 = !DILocation(line: 833, column: 10, scope: !2920)
!2924 = !DILocation(line: 833, column: 8, scope: !2920)
!2925 = !DILocation(line: 838, column: 19, scope: !2920)
!2926 = !DILocation(line: 838, column: 4, scope: !2920)
!2927 = !DILocation(line: 839, column: 18, scope: !2920)
!2928 = !DILocation(line: 839, column: 4, scope: !2920)
!2929 = !DILocation(line: 844, column: 10, scope: !2920)
!2930 = !DILocation(line: 844, column: 14, scope: !2920)
!2931 = !DILocation(line: 844, column: 20, scope: !2920)
!2932 = !DILocation(line: 844, column: 8, scope: !2920)
!2933 = !DILocation(line: 845, column: 3, scope: !2920)
!2934 = !DILocation(line: 846, column: 3, scope: !2899)
!2935 = !DILocation(line: 850, column: 17, scope: !2899)
!2936 = !DILocation(line: 850, column: 27, scope: !2899)
!2937 = !DILocation(line: 850, column: 12, scope: !2899)
!2938 = !DILocation(line: 851, column: 34, scope: !2899)
!2939 = !DILocation(line: 851, column: 44, scope: !2899)
!2940 = !DILocation(line: 851, column: 9, scope: !2899)
!2941 = !DILocation(line: 851, column: 7, scope: !2899)
!2942 = !DILocation(line: 854, column: 15, scope: !2899)
!2943 = !DILocation(line: 854, column: 3, scope: !2899)
!2944 = !DILocation(line: 855, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 855, column: 7)
!2946 = !DILocation(line: 855, column: 11, scope: !2945)
!2947 = !DILocation(line: 855, column: 43, scope: !2945)
!2948 = !DILocation(line: 855, column: 15, scope: !2945)
!2949 = !DILocation(line: 855, column: 7, scope: !2899)
!2950 = !DILocation(line: 856, column: 8, scope: !2945)
!2951 = !DILocation(line: 856, column: 4, scope: !2945)
!2952 = !DILocation(line: 858, column: 3, scope: !2899)
!2953 = !DILocation(line: 863, column: 24, scope: !2899)
!2954 = !DILocation(line: 863, column: 37, scope: !2899)
!2955 = !DILocation(line: 863, column: 36, scope: !2899)
!2956 = !DILocation(line: 863, column: 9, scope: !2899)
!2957 = !DILocation(line: 863, column: 7, scope: !2899)
!2958 = !DILocation(line: 868, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 868, column: 7)
!2960 = !DILocation(line: 868, column: 7, scope: !2899)
!2961 = !DILocation(line: 869, column: 11, scope: !2959)
!2962 = !DILocation(line: 869, column: 15, scope: !2959)
!2963 = !DILocation(line: 869, column: 10, scope: !2959)
!2964 = !DILocation(line: 869, column: 22, scope: !2959)
!2965 = !DILocation(line: 869, column: 8, scope: !2959)
!2966 = !DILocation(line: 869, column: 4, scope: !2959)
!2967 = !DILocation(line: 871, column: 3, scope: !2899)
!2968 = !DILocation(line: 872, column: 17, scope: !2899)
!2969 = !DILocation(line: 872, column: 3, scope: !2899)
!2970 = !DILocation(line: 874, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 874, column: 7)
!2972 = !DILocation(line: 874, column: 11, scope: !2971)
!2973 = !DILocation(line: 874, column: 7, scope: !2899)
!2974 = !DILocation(line: 883, column: 8, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 874, column: 22)
!2976 = !DILocation(line: 884, column: 3, scope: !2975)
!2977 = !DILocation(line: 885, column: 3, scope: !2899)
!2978 = !DILocation(line: 887, column: 3, scope: !2899)
!2979 = !DILocation(line: 887, column: 3, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 887, column: 3)
!2981 = !DILocation(line: 887, column: 3, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 887, column: 3)
!2983 = !DILocation(line: 887, column: 3, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 887, column: 3)
!2985 = !{i64 2152000097, i64 2152000126, i64 2152000172, i64 2152000230, i64 2152000284, i64 2152000338, i64 2152000393, i64 2152000424}
!2986 = !DILocation(line: 888, column: 2, scope: !2899)
!2987 = !DILocation(line: 890, column: 1, scope: !2794)
!2988 = !DILocation(line: 891, column: 6, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 891, column: 6)
!2990 = !DILocation(line: 891, column: 6, scope: !2794)
!2991 = !DILocation(line: 892, column: 19, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 891, column: 10)
!2993 = !DILocation(line: 892, column: 23, scope: !2992)
!2994 = !DILocation(line: 892, column: 3, scope: !2992)
!2995 = !DILocation(line: 893, column: 29, scope: !2992)
!2996 = !DILocation(line: 893, column: 33, scope: !2992)
!2997 = !DILocation(line: 893, column: 3, scope: !2992)
!2998 = !DILocation(line: 894, column: 2, scope: !2992)
!2999 = !DILocation(line: 895, column: 9, scope: !2794)
!3000 = !DILocation(line: 895, column: 2, scope: !2794)
!3001 = !DILocation(line: 896, column: 1, scope: !2794)
!3002 = !DISubprogram(name: "futex_setup_timer", scope: !25, file: !25, line: 123, type: !3003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2811, !2797, !2811, !64, !49}
!3005 = distinct !DISubprogram(name: "get_current", scope: !3006, file: !3006, line: 39, type: !3007, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3009)
!3006 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!74}
!3009 = !{!3010, !3012, !3014}
!3010 = !DILocalVariable(name: "pscr_ret__", scope: !3011, file: !3006, line: 41, type: !74)
!3011 = distinct !DILexicalBlock(scope: !3005, file: !3006, line: 41, column: 9)
!3012 = !DILocalVariable(name: "__vpp_verify", scope: !3013, file: !3006, line: 41, type: !2437)
!3013 = distinct !DILexicalBlock(scope: !3011, file: !3006, line: 41, column: 9)
!3014 = !DILocalVariable(name: "pfo_val__", scope: !3015, file: !3006, line: 41, type: !49)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !3006, line: 41, column: 9)
!3016 = !DILocation(line: 41, column: 9, scope: !3011)
!3017 = !DILocation(line: 41, column: 9, scope: !3013)
!3018 = !DILocation(line: 41, column: 9, scope: !3015)
!3019 = !{i64 2148989390}
!3020 = !DILocation(line: 41, column: 9, scope: !3005)
!3021 = !DILocation(line: 41, column: 2, scope: !3005)
!3022 = distinct !DISubprogram(name: "rt_mutex_init_waiter", scope: !1257, file: !1257, line: 211, type: !3023, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !1255}
!3025 = !{!3026}
!3026 = !DILocalVariable(name: "waiter", arg: 1, scope: !3022, file: !1257, line: 211, type: !1255)
!3027 = !DILocation(line: 211, column: 65, scope: !3022)
!3028 = !DILocation(line: 213, column: 29, scope: !3022)
!3029 = !DILocation(line: 213, column: 2, scope: !3022)
!3030 = !DILocation(line: 214, column: 2, scope: !3022)
!3031 = !DILocation(line: 215, column: 2, scope: !3022)
!3032 = !DILocation(line: 216, column: 2, scope: !3022)
!3033 = !DILocation(line: 216, column: 10, scope: !3022)
!3034 = !DILocation(line: 216, column: 21, scope: !3022)
!3035 = !DILocation(line: 217, column: 2, scope: !3022)
!3036 = !DILocation(line: 217, column: 10, scope: !3022)
!3037 = !DILocation(line: 217, column: 15, scope: !3022)
!3038 = !DILocation(line: 218, column: 1, scope: !3022)
!3039 = !DISubprogram(name: "futex_wait_setup", scope: !25, file: !25, line: 143, type: !3040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!64, !653, !54, !7, !56, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!3043 = !DISubprogram(name: "futex_q_unlock", scope: !25, file: !25, line: 220, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3044 = !DISubprogram(name: "futex_wait_queue", scope: !25, file: !25, line: 145, type: !3045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !1967, !56, !2811}
!3047 = distinct !DISubprogram(name: "futex_requeue_pi_wakeup_sync", scope: !3, file: !3, line: 156, type: !3048, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!64, !56}
!3050 = !{!3051, !3052, !3053, !3054, !3058}
!3051 = !DILocalVariable(name: "q", arg: 1, scope: !3047, file: !3, line: 156, type: !56)
!3052 = !DILocalVariable(name: "old", scope: !3047, file: !3, line: 158, type: !64)
!3053 = !DILocalVariable(name: "new", scope: !3047, file: !3, line: 158, type: !64)
!3054 = !DILocalVariable(name: "__PTR", scope: !3055, file: !3, line: 182, type: !767)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 182, column: 9)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 176, column: 39)
!3057 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 176, column: 6)
!3058 = !DILocalVariable(name: "VAL", scope: !3055, file: !3, line: 182, type: !64)
!3059 = !DILocation(line: 156, column: 64, scope: !3047)
!3060 = !DILocation(line: 158, column: 2, scope: !3047)
!3061 = !DILocation(line: 158, column: 6, scope: !3047)
!3062 = !DILocation(line: 158, column: 11, scope: !3047)
!3063 = !DILocation(line: 160, column: 29, scope: !3047)
!3064 = !DILocation(line: 160, column: 32, scope: !3047)
!3065 = !DILocation(line: 160, column: 8, scope: !3047)
!3066 = !DILocation(line: 160, column: 6, scope: !3047)
!3067 = !DILocation(line: 161, column: 2, scope: !3047)
!3068 = !DILocation(line: 163, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 163, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 161, column: 5)
!3071 = !DILocation(line: 163, column: 11, scope: !3069)
!3072 = !DILocation(line: 163, column: 7, scope: !3070)
!3073 = !DILocation(line: 164, column: 11, scope: !3069)
!3074 = !DILocation(line: 164, column: 4, scope: !3069)
!3075 = !DILocation(line: 170, column: 7, scope: !3070)
!3076 = !DILocation(line: 171, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 171, column: 7)
!3078 = !DILocation(line: 171, column: 11, scope: !3077)
!3079 = !DILocation(line: 171, column: 7, scope: !3070)
!3080 = !DILocation(line: 172, column: 8, scope: !3077)
!3081 = !DILocation(line: 172, column: 4, scope: !3077)
!3082 = !DILocation(line: 173, column: 2, scope: !3070)
!3083 = !DILocation(line: 173, column: 32, scope: !3047)
!3084 = !DILocation(line: 173, column: 35, scope: !3047)
!3085 = !DILocation(line: 173, column: 56, scope: !3047)
!3086 = !DILocation(line: 173, column: 12, scope: !3047)
!3087 = !DILocation(line: 173, column: 11, scope: !3047)
!3088 = distinct !{!3088, !3067, !3089, !2301, !2302}
!3089 = !DILocation(line: 173, column: 60, scope: !3047)
!3090 = !DILocation(line: 176, column: 6, scope: !3057)
!3091 = !DILocation(line: 176, column: 10, scope: !3057)
!3092 = !DILocation(line: 176, column: 6, scope: !3047)
!3093 = !DILocation(line: 182, column: 9, scope: !3055)
!3094 = !DILocation(line: 182, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 182, column: 9)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 182, column: 9)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 182, column: 9)
!3098 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 182, column: 9)
!3099 = !DILocation(line: 182, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 182, column: 9)
!3101 = !DILocation(line: 182, column: 9, scope: !3096)
!3102 = !DILocation(line: 182, column: 9, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 182, column: 9)
!3104 = !DILocation(line: 182, column: 9, scope: !3097)
!3105 = distinct !{!3105, !3106, !3106, !2302}
!3106 = !DILocation(line: 182, column: 9, scope: !3098)
!3107 = !DILocation(line: 182, column: 9, scope: !3056)
!3108 = !DILocation(line: 184, column: 2, scope: !3056)
!3109 = !DILocation(line: 191, column: 22, scope: !3047)
!3110 = !DILocation(line: 191, column: 25, scope: !3047)
!3111 = !DILocation(line: 191, column: 9, scope: !3047)
!3112 = !DILocation(line: 191, column: 2, scope: !3047)
!3113 = !DILocation(line: 192, column: 1, scope: !3047)
!3114 = distinct !DISubprogram(name: "spin_lock", scope: !3115, file: !3115, line: 349, type: !3116, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3118)
!3115 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !1910}
!3118 = !{!3119}
!3119 = !DILocalVariable(name: "lock", arg: 1, scope: !3114, file: !3115, line: 349, type: !1910)
!3120 = !DILocation(line: 349, column: 51, scope: !3114)
!3121 = !DILocation(line: 351, column: 2, scope: !3114)
!3122 = !DILocation(line: 352, column: 1, scope: !3114)
!3123 = distinct !DISubprogram(name: "handle_early_requeue_pi_wakeup", scope: !3, file: !3, line: 691, type: !3124, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!64, !1967, !56, !2811}
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3133}
!3127 = !DILocalVariable(name: "hb", arg: 1, scope: !3123, file: !3, line: 691, type: !1967)
!3128 = !DILocalVariable(name: "q", arg: 2, scope: !3123, file: !3, line: 692, type: !56)
!3129 = !DILocalVariable(name: "timeout", arg: 3, scope: !3123, file: !3, line: 693, type: !2811)
!3130 = !DILocalVariable(name: "ret", scope: !3123, file: !3, line: 695, type: !64)
!3131 = !DILocalVariable(name: "__ret_warn_on", scope: !3132, file: !3, line: 704, type: !64)
!3132 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 704, column: 2)
!3133 = !DILocalVariable(name: "__flags", scope: !3134, file: !3, line: 704, type: !64)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 704, column: 2)
!3135 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 704, column: 2)
!3136 = !DILocation(line: 691, column: 62, scope: !3123)
!3137 = !DILocation(line: 692, column: 24, scope: !3123)
!3138 = !DILocation(line: 693, column: 32, scope: !3123)
!3139 = !DILocation(line: 695, column: 2, scope: !3123)
!3140 = !DILocation(line: 695, column: 6, scope: !3123)
!3141 = !DILocation(line: 704, column: 2, scope: !3132)
!3142 = !DILocation(line: 704, column: 2, scope: !3135)
!3143 = !DILocation(line: 704, column: 2, scope: !3134)
!3144 = !DILocation(line: 704, column: 2, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 704, column: 2)
!3146 = !DILocation(line: 704, column: 2, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 704, column: 2)
!3148 = !{i64 2151998191, i64 2151998220, i64 2151998266, i64 2151998324, i64 2151998378, i64 2151998432, i64 2151998487, i64 2151998518, i64 2151998826, i64 2151998832, i64 2151998879, i64 2151998902, i64 2151998928}
!3149 = !DILocation(line: 704, column: 2, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 704, column: 2)
!3151 = !DILocation(line: 704, column: 2, scope: !3123)
!3152 = !DILocation(line: 710, column: 13, scope: !3123)
!3153 = !DILocation(line: 710, column: 16, scope: !3123)
!3154 = !DILocation(line: 710, column: 23, scope: !3123)
!3155 = !DILocation(line: 710, column: 27, scope: !3123)
!3156 = !DILocation(line: 710, column: 2, scope: !3123)
!3157 = !DILocation(line: 711, column: 23, scope: !3123)
!3158 = !DILocation(line: 711, column: 2, scope: !3123)
!3159 = !DILocation(line: 714, column: 6, scope: !3123)
!3160 = !DILocation(line: 715, column: 6, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 715, column: 6)
!3162 = !DILocation(line: 715, column: 14, scope: !3161)
!3163 = !DILocation(line: 715, column: 18, scope: !3161)
!3164 = !DILocation(line: 715, column: 27, scope: !3161)
!3165 = !DILocation(line: 715, column: 6, scope: !3123)
!3166 = !DILocation(line: 716, column: 7, scope: !3161)
!3167 = !DILocation(line: 716, column: 3, scope: !3161)
!3168 = !DILocation(line: 717, column: 26, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 717, column: 11)
!3170 = !DILocation(line: 717, column: 11, scope: !3169)
!3171 = !DILocation(line: 717, column: 11, scope: !3161)
!3172 = !DILocation(line: 718, column: 7, scope: !3169)
!3173 = !DILocation(line: 718, column: 3, scope: !3169)
!3174 = !DILocation(line: 719, column: 9, scope: !3123)
!3175 = !DILocation(line: 720, column: 1, scope: !3123)
!3176 = !DILocation(line: 719, column: 2, scope: !3123)
!3177 = distinct !DISubprogram(name: "spin_unlock", scope: !3115, file: !3115, line: 389, type: !3116, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3178)
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "lock", arg: 1, scope: !3177, file: !3115, line: 389, type: !1910)
!3180 = !DILocation(line: 389, column: 53, scope: !3177)
!3181 = !DILocation(line: 391, column: 2, scope: !3177)
!3182 = !DILocation(line: 392, column: 1, scope: !3177)
!3183 = !DISubprogram(name: "fixup_pi_owner", scope: !25, file: !25, line: 233, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!64, !653, !56, !64}
!3186 = !DISubprogram(name: "rt_mutex_wait_proxy_lock", scope: !1257, file: !1257, line: 90, type: !3187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!64, !1268, !2811, !1255}
!3189 = !DISubprogram(name: "rt_mutex_cleanup_proxy_lock", scope: !1257, file: !1257, line: 93, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!910, !1268, !1255}
!3192 = distinct !DISubprogram(name: "debug_rt_mutex_free_waiter", scope: !1257, file: !1257, line: 205, type: !3023, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3193)
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "waiter", arg: 1, scope: !3192, file: !1257, line: 205, type: !1255)
!3195 = !DILocation(line: 205, column: 71, scope: !3192)
!3196 = !DILocation(line: 209, column: 1, scope: !3192)
!3197 = !DISubprogram(name: "futex_unqueue_pi", scope: !25, file: !25, line: 177, type: !3198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !56}
!3200 = !DISubprogram(name: "hrtimer_cancel", scope: !6, file: !6, line: 423, type: !3201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!64, !228}
!3203 = distinct !DISubprogram(name: "destroy_hrtimer_on_stack", scope: !6, file: !6, line: 402, type: !3204, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !228}
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "timer", arg: 1, scope: !3203, file: !6, line: 402, type: !228)
!3208 = !DILocation(line: 402, column: 61, scope: !3203)
!3209 = !DILocation(line: 402, column: 70, scope: !3203)
!3210 = distinct !DISubprogram(name: "atomic_inc", scope: !3211, file: !3211, line: 433, type: !3212, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3211 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3214}
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "v", arg: 1, scope: !3210, file: !3211, line: 433, type: !3214)
!3217 = !DILocation(line: 433, column: 22, scope: !3210)
!3218 = !DILocation(line: 435, column: 31, scope: !3210)
!3219 = !DILocation(line: 435, column: 2, scope: !3210)
!3220 = !DILocation(line: 436, column: 17, scope: !3210)
!3221 = !DILocation(line: 436, column: 2, scope: !3210)
!3222 = !DILocation(line: 437, column: 1, scope: !3210)
!3223 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3224, file: !3224, line: 94, type: !3225, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3224 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !3227, !1221}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3230 = !{!3231, !3232}
!3231 = !DILocalVariable(name: "v", arg: 1, scope: !3223, file: !3224, line: 94, type: !3227)
!3232 = !DILocalVariable(name: "size", arg: 2, scope: !3223, file: !3224, line: 94, type: !1221)
!3233 = !DILocation(line: 94, column: 79, scope: !3223)
!3234 = !DILocation(line: 94, column: 89, scope: !3223)
!3235 = !DILocation(line: 96, column: 20, scope: !3223)
!3236 = !DILocation(line: 96, column: 23, scope: !3223)
!3237 = !DILocation(line: 96, column: 2, scope: !3223)
!3238 = !DILocation(line: 97, column: 2, scope: !3223)
!3239 = !DILocation(line: 98, column: 1, scope: !3223)
!3240 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !3241, file: !3241, line: 976, type: !3212, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3241 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "v", arg: 1, scope: !3240, file: !3241, line: 976, type: !3214)
!3244 = !DILocation(line: 976, column: 26, scope: !3240)
!3245 = !DILocation(line: 979, column: 18, scope: !3240)
!3246 = !DILocation(line: 979, column: 2, scope: !3240)
!3247 = !DILocation(line: 983, column: 1, scope: !3240)
!3248 = distinct !DISubprogram(name: "kasan_check_write", scope: !3249, file: !3249, line: 44, type: !3250, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3252)
!3249 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!910, !3227, !7}
!3252 = !{!3253, !3254}
!3253 = !DILocalVariable(name: "p", arg: 1, scope: !3248, file: !3249, line: 44, type: !3227)
!3254 = !DILocalVariable(name: "size", arg: 2, scope: !3248, file: !3249, line: 44, type: !7)
!3255 = !DILocation(line: 44, column: 59, scope: !3248)
!3256 = !DILocation(line: 44, column: 75, scope: !3248)
!3257 = !DILocation(line: 46, column: 2, scope: !3248)
!3258 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3259, file: !3259, line: 229, type: !3260, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3259 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3227, !1221, !64}
!3262 = !{!3263, !3264, !3265}
!3263 = !DILocalVariable(name: "ptr", arg: 1, scope: !3258, file: !3259, line: 229, type: !3227)
!3264 = !DILocalVariable(name: "size", arg: 2, scope: !3258, file: !3259, line: 229, type: !1221)
!3265 = !DILocalVariable(name: "type", arg: 3, scope: !3258, file: !3259, line: 230, type: !64)
!3266 = !DILocation(line: 229, column: 60, scope: !3258)
!3267 = !DILocation(line: 229, column: 72, scope: !3258)
!3268 = !DILocation(line: 230, column: 15, scope: !3258)
!3269 = !DILocation(line: 230, column: 23, scope: !3258)
!3270 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3271, file: !3271, line: 51, type: !3212, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3272)
!3271 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3272 = !{!3273}
!3273 = !DILocalVariable(name: "v", arg: 1, scope: !3270, file: !3271, line: 51, type: !3214)
!3274 = !DILocation(line: 51, column: 55, scope: !3270)
!3275 = !DILocation(line: 54, column: 16, scope: !3270)
!3276 = !DILocation(line: 54, column: 19, scope: !3270)
!3277 = !DILocation(line: 53, column: 2, scope: !3270)
!3278 = !{i64 2147991391, i64 2147991430, i64 2147991451, i64 2147991488, i64 2147991511, i64 2147991381}
!3279 = !DILocation(line: 55, column: 1, scope: !3270)
!3280 = !DISubprogram(name: "_raw_spin_lock", scope: !3281, file: !3281, line: 22, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3281 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!3285 = distinct !DISubprogram(name: "spinlock_check", scope: !3115, file: !3115, line: 324, type: !3286, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!3284, !1910}
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "lock", arg: 1, scope: !3285, file: !3115, line: 324, type: !1910)
!3290 = !DILocation(line: 324, column: 67, scope: !3285)
!3291 = !DILocation(line: 326, column: 10, scope: !3285)
!3292 = !DILocation(line: 326, column: 16, scope: !3285)
!3293 = !DILocation(line: 326, column: 2, scope: !3285)
!3294 = distinct !DISubprogram(name: "atomic_dec", scope: !3211, file: !3211, line: 590, type: !3212, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "v", arg: 1, scope: !3294, file: !3211, line: 590, type: !3214)
!3297 = !DILocation(line: 590, column: 22, scope: !3294)
!3298 = !DILocation(line: 592, column: 31, scope: !3294)
!3299 = !DILocation(line: 592, column: 2, scope: !3294)
!3300 = !DILocation(line: 593, column: 17, scope: !3294)
!3301 = !DILocation(line: 593, column: 2, scope: !3294)
!3302 = !DILocation(line: 594, column: 1, scope: !3294)
!3303 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !3241, file: !3241, line: 1194, type: !3212, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "v", arg: 1, scope: !3303, file: !3241, line: 1194, type: !3214)
!3306 = !DILocation(line: 1194, column: 26, scope: !3303)
!3307 = !DILocation(line: 1197, column: 18, scope: !3303)
!3308 = !DILocation(line: 1197, column: 2, scope: !3303)
!3309 = !DILocation(line: 1201, column: 1, scope: !3303)
!3310 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !3271, file: !3271, line: 58, type: !3212, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "v", arg: 1, scope: !3310, file: !3271, line: 58, type: !3214)
!3313 = !DILocation(line: 58, column: 55, scope: !3310)
!3314 = !DILocation(line: 61, column: 16, scope: !3310)
!3315 = !DILocation(line: 61, column: 19, scope: !3310)
!3316 = !DILocation(line: 60, column: 2, scope: !3310)
!3317 = !{i64 2147991758, i64 2147991797, i64 2147991818, i64 2147991855, i64 2147991878, i64 2147991748}
!3318 = !DILocation(line: 62, column: 1, scope: !3310)
!3319 = distinct !DISubprogram(name: "should_fail_futex", scope: !25, file: !25, line: 34, type: !3320, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!910, !910}
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "fshared", arg: 1, scope: !3319, file: !25, line: 34, type: !910)
!3324 = !DILocation(line: 34, column: 43, scope: !3319)
!3325 = !DILocation(line: 36, column: 2, scope: !3319)
!3326 = !DISubprogram(name: "futex_top_waiter", scope: !25, file: !25, line: 152, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!56, !1967, !1915}
!3329 = !DISubprogram(name: "futex_lock_pi_atomic", scope: !25, file: !25, line: 223, type: !3330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!64, !653, !1967, !1915, !2448, !74, !1923, !64}
!3332 = !DISubprogram(name: "plist_del", scope: !61, file: !61, line: 143, type: !3333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!3337 = !DISubprogram(name: "plist_add", scope: !61, file: !61, line: 142, type: !3333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3338 = distinct !DISubprogram(name: "atomic_read_acquire", scope: !3211, file: !3211, line: 47, type: !3339, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!64, !3341}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "v", arg: 1, scope: !3338, file: !3211, line: 47, type: !3341)
!3345 = !DILocation(line: 47, column: 37, scope: !3338)
!3346 = !DILocation(line: 49, column: 25, scope: !3338)
!3347 = !DILocation(line: 49, column: 2, scope: !3338)
!3348 = !DILocation(line: 50, column: 33, scope: !3338)
!3349 = !DILocation(line: 50, column: 9, scope: !3338)
!3350 = !DILocation(line: 50, column: 2, scope: !3338)
!3351 = distinct !DISubprogram(name: "atomic_try_cmpxchg", scope: !3211, file: !3211, line: 1270, type: !3352, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!910, !3214, !767, !64}
!3354 = !{!3355, !3356, !3357}
!3355 = !DILocalVariable(name: "v", arg: 1, scope: !3351, file: !3211, line: 1270, type: !3214)
!3356 = !DILocalVariable(name: "old", arg: 2, scope: !3351, file: !3211, line: 1270, type: !767)
!3357 = !DILocalVariable(name: "new", arg: 3, scope: !3351, file: !3211, line: 1270, type: !64)
!3358 = !DILocation(line: 1270, column: 30, scope: !3351)
!3359 = !DILocation(line: 1270, column: 38, scope: !3351)
!3360 = !DILocation(line: 1270, column: 47, scope: !3351)
!3361 = !DILocation(line: 1272, column: 2, scope: !3351)
!3362 = !DILocation(line: 1272, column: 2, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3351, file: !3211, line: 1272, column: 2)
!3364 = !DILocation(line: 1273, column: 31, scope: !3351)
!3365 = !DILocation(line: 1273, column: 2, scope: !3351)
!3366 = !DILocation(line: 1274, column: 31, scope: !3351)
!3367 = !DILocation(line: 1274, column: 2, scope: !3351)
!3368 = !DILocation(line: 1275, column: 32, scope: !3351)
!3369 = !DILocation(line: 1275, column: 35, scope: !3351)
!3370 = !DILocation(line: 1275, column: 40, scope: !3351)
!3371 = !DILocation(line: 1275, column: 9, scope: !3351)
!3372 = !DILocation(line: 1275, column: 2, scope: !3351)
!3373 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3224, file: !3224, line: 66, type: !3225, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "v", arg: 1, scope: !3373, file: !3224, line: 66, type: !3227)
!3376 = !DILocalVariable(name: "size", arg: 2, scope: !3373, file: !3224, line: 66, type: !1221)
!3377 = !DILocation(line: 66, column: 73, scope: !3373)
!3378 = !DILocation(line: 66, column: 83, scope: !3373)
!3379 = !DILocation(line: 68, column: 19, scope: !3373)
!3380 = !DILocation(line: 68, column: 22, scope: !3373)
!3381 = !DILocation(line: 68, column: 2, scope: !3373)
!3382 = !DILocation(line: 69, column: 2, scope: !3373)
!3383 = !DILocation(line: 70, column: 1, scope: !3373)
!3384 = distinct !DISubprogram(name: "raw_atomic_read_acquire", scope: !3241, file: !3241, line: 458, type: !3339, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3385 = !{!3386, !3387, !3388}
!3386 = !DILocalVariable(name: "v", arg: 1, scope: !3384, file: !3241, line: 458, type: !3341)
!3387 = !DILocalVariable(name: "ret", scope: !3384, file: !3241, line: 463, type: !64)
!3388 = !DILocalVariable(name: "___p1", scope: !3389, file: !3241, line: 466, type: !3392)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3241, line: 466, column: 9)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3241, line: 465, column: 31)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !3241, line: 465, column: 6)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3393 = !DILocation(line: 458, column: 41, scope: !3384)
!3394 = !DILocation(line: 463, column: 2, scope: !3384)
!3395 = !DILocation(line: 463, column: 6, scope: !3384)
!3396 = !DILocation(line: 466, column: 9, scope: !3389)
!3397 = !DILocation(line: 466, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3389, file: !3241, line: 466, column: 9)
!3399 = !DILocation(line: 466, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3398, file: !3241, line: 466, column: 9)
!3401 = !DILocation(line: 466, column: 9, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3389, file: !3241, line: 466, column: 9)
!3403 = !{i64 2148177123}
!3404 = !DILocation(line: 466, column: 9, scope: !3390)
!3405 = !DILocation(line: 466, column: 7, scope: !3390)
!3406 = !DILocation(line: 472, column: 9, scope: !3384)
!3407 = !DILocation(line: 474, column: 1, scope: !3384)
!3408 = !DILocation(line: 472, column: 2, scope: !3384)
!3409 = distinct !DISubprogram(name: "kasan_check_read", scope: !3249, file: !3249, line: 40, type: !3250, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "p", arg: 1, scope: !3409, file: !3249, line: 40, type: !3227)
!3412 = !DILocalVariable(name: "size", arg: 2, scope: !3409, file: !3249, line: 40, type: !7)
!3413 = !DILocation(line: 40, column: 58, scope: !3409)
!3414 = !DILocation(line: 40, column: 74, scope: !3409)
!3415 = !DILocation(line: 42, column: 2, scope: !3409)
!3416 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !3241, file: !3241, line: 2109, type: !3352, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DILocalVariable(name: "v", arg: 1, scope: !3416, file: !3241, line: 2109, type: !3214)
!3419 = !DILocalVariable(name: "old", arg: 2, scope: !3416, file: !3241, line: 2109, type: !767)
!3420 = !DILocalVariable(name: "new", arg: 3, scope: !3416, file: !3241, line: 2109, type: !64)
!3421 = !DILocation(line: 2109, column: 34, scope: !3416)
!3422 = !DILocation(line: 2109, column: 42, scope: !3416)
!3423 = !DILocation(line: 2109, column: 51, scope: !3416)
!3424 = !DILocation(line: 2112, column: 33, scope: !3416)
!3425 = !DILocation(line: 2112, column: 36, scope: !3416)
!3426 = !DILocation(line: 2112, column: 41, scope: !3416)
!3427 = !DILocation(line: 2112, column: 9, scope: !3416)
!3428 = !DILocation(line: 2112, column: 2, scope: !3416)
!3429 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !3271, file: !3271, line: 113, type: !3352, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3436, !3437, !3438, !3439}
!3431 = !DILocalVariable(name: "v", arg: 1, scope: !3429, file: !3271, line: 113, type: !3214)
!3432 = !DILocalVariable(name: "old", arg: 2, scope: !3429, file: !3271, line: 113, type: !767)
!3433 = !DILocalVariable(name: "new", arg: 3, scope: !3429, file: !3271, line: 113, type: !64)
!3434 = !DILocalVariable(name: "success", scope: !3435, file: !3271, line: 115, type: !910)
!3435 = distinct !DILexicalBlock(scope: !3429, file: !3271, line: 115, column: 9)
!3436 = !DILocalVariable(name: "_old", scope: !3435, file: !3271, line: 115, type: !767)
!3437 = !DILocalVariable(name: "__old", scope: !3435, file: !3271, line: 115, type: !64)
!3438 = !DILocalVariable(name: "__new", scope: !3435, file: !3271, line: 115, type: !64)
!3439 = !DILocalVariable(name: "__ptr", scope: !3435, file: !3271, line: 115, type: !1921)
!3440 = !DILocation(line: 113, column: 63, scope: !3429)
!3441 = !DILocation(line: 113, column: 71, scope: !3429)
!3442 = !DILocation(line: 113, column: 80, scope: !3429)
!3443 = !DILocation(line: 115, column: 9, scope: !3435)
!3444 = !{i64 2148009811, i64 2148009850, i64 2148009871, i64 2148009908, i64 2148009931, i64 2148009940, i64 2148010238}
!3445 = !DILocation(line: 115, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3435, file: !3271, line: 115, column: 9)
!3447 = !{i8 0, i8 2}
!3448 = !DILocation(line: 115, column: 9, scope: !3429)
!3449 = !DILocation(line: 115, column: 2, scope: !3429)
!3450 = !DISubprogram(name: "__futex_unqueue", scope: !25, file: !25, line: 154, type: !3198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3451 = !DISubprogram(name: "wake_up_state", scope: !45, file: !45, line: 1997, type: !3452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!64, !74, !7}
!3454 = distinct !DISubprogram(name: "debug_rt_mutex_init_waiter", scope: !1257, file: !1257, line: 199, type: !3023, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3455)
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "waiter", arg: 1, scope: !3454, file: !1257, line: 199, type: !1255)
!3457 = !DILocation(line: 199, column: 71, scope: !3454)
!3458 = !DILocation(line: 203, column: 1, scope: !3454)
!3459 = distinct !DISubprogram(name: "cpu_relax", scope: !3460, file: !3460, line: 16, type: !1210, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3460 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!3461 = !DILocation(line: 18, column: 2, scope: !3459)
!3462 = !DILocation(line: 19, column: 1, scope: !3459)
!3463 = distinct !DISubprogram(name: "atomic_read", scope: !3211, file: !3211, line: 30, type: !3339, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3464)
!3464 = !{!3465}
!3465 = !DILocalVariable(name: "v", arg: 1, scope: !3463, file: !3211, line: 30, type: !3341)
!3466 = !DILocation(line: 30, column: 29, scope: !3463)
!3467 = !DILocation(line: 32, column: 25, scope: !3463)
!3468 = !DILocation(line: 32, column: 2, scope: !3463)
!3469 = !DILocation(line: 33, column: 25, scope: !3463)
!3470 = !DILocation(line: 33, column: 9, scope: !3463)
!3471 = !DILocation(line: 33, column: 2, scope: !3463)
!3472 = distinct !DISubprogram(name: "rep_nop", scope: !3460, file: !3460, line: 11, type: !1210, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3473 = !DILocation(line: 13, column: 2, scope: !3472)
!3474 = !{i64 2023465}
!3475 = !DILocation(line: 14, column: 1, scope: !3472)
!3476 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3241, file: !3241, line: 442, type: !3339, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3477)
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "v", arg: 1, scope: !3476, file: !3241, line: 442, type: !3341)
!3479 = !DILocation(line: 442, column: 33, scope: !3476)
!3480 = !DILocation(line: 444, column: 26, scope: !3476)
!3481 = !DILocation(line: 444, column: 9, scope: !3476)
!3482 = !DILocation(line: 444, column: 2, scope: !3476)
!3483 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3271, file: !3271, line: 17, type: !3339, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3484)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "v", arg: 1, scope: !3483, file: !3271, line: 17, type: !3341)
!3486 = !DILocation(line: 17, column: 61, scope: !3483)
!3487 = !DILocation(line: 23, column: 9, scope: !3483)
!3488 = !DILocation(line: 23, column: 2, scope: !3483)
!3489 = distinct !DISubprogram(name: "signal_pending", scope: !1042, file: !1042, line: 392, type: !3490, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!64, !74}
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "p", arg: 1, scope: !3489, file: !1042, line: 392, type: !74)
!3494 = !DILocation(line: 392, column: 54, scope: !3489)
!3495 = !DILocation(line: 399, column: 6, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !1042, line: 399, column: 6)
!3497 = !DILocation(line: 399, column: 6, scope: !3489)
!3498 = !DILocation(line: 400, column: 3, scope: !3496)
!3499 = !DILocation(line: 401, column: 25, scope: !3489)
!3500 = !DILocation(line: 401, column: 9, scope: !3489)
!3501 = !DILocation(line: 401, column: 2, scope: !3489)
!3502 = !DILocation(line: 402, column: 1, scope: !3489)
!3503 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !45, file: !45, line: 2066, type: !3504, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!64, !74, !64}
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "tsk", arg: 1, scope: !3503, file: !45, line: 2066, type: !74)
!3508 = !DILocalVariable(name: "flag", arg: 2, scope: !3503, file: !45, line: 2066, type: !64)
!3509 = !DILocation(line: 2066, column: 60, scope: !3503)
!3510 = !DILocation(line: 2066, column: 69, scope: !3503)
!3511 = !DILocation(line: 2068, column: 29, scope: !3503)
!3512 = !DILocation(line: 2068, column: 52, scope: !3503)
!3513 = !DILocation(line: 2068, column: 9, scope: !3503)
!3514 = !DILocation(line: 2068, column: 2, scope: !3503)
!3515 = distinct !DISubprogram(name: "task_sigpending", scope: !1042, file: !1042, line: 387, type: !3490, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3516)
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "p", arg: 1, scope: !3515, file: !1042, line: 387, type: !74)
!3518 = !DILocation(line: 387, column: 55, scope: !3515)
!3519 = !DILocation(line: 389, column: 9, scope: !3515)
!3520 = !DILocation(line: 389, column: 2, scope: !3515)
!3521 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !3522, file: !3522, line: 116, type: !3523, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3522 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!64, !3525, !64}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "ti", arg: 1, scope: !3521, file: !3522, line: 116, type: !3525)
!3528 = !DILocalVariable(name: "flag", arg: 2, scope: !3521, file: !3522, line: 116, type: !64)
!3529 = !DILocation(line: 116, column: 59, scope: !3521)
!3530 = !DILocation(line: 116, column: 67, scope: !3521)
!3531 = !DILocation(line: 118, column: 9, scope: !3521)
!3532 = !DILocation(line: 118, column: 2, scope: !3521)
!3533 = distinct !DISubprogram(name: "const_test_bit", scope: !3534, file: !3534, line: 166, type: !3535, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3540)
!3534 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!910, !82, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!3540 = !{!3541, !3542, !3543, !3544, !3545}
!3541 = !DILocalVariable(name: "nr", arg: 1, scope: !3533, file: !3534, line: 166, type: !82)
!3542 = !DILocalVariable(name: "addr", arg: 2, scope: !3533, file: !3534, line: 166, type: !3537)
!3543 = !DILocalVariable(name: "p", scope: !3533, file: !3534, line: 168, type: !1926)
!3544 = !DILocalVariable(name: "mask", scope: !3533, file: !3534, line: 169, type: !82)
!3545 = !DILocalVariable(name: "val", scope: !3533, file: !3534, line: 170, type: !82)
!3546 = !DILocation(line: 166, column: 30, scope: !3533)
!3547 = !DILocation(line: 166, column: 64, scope: !3533)
!3548 = !DILocation(line: 168, column: 2, scope: !3533)
!3549 = !DILocation(line: 168, column: 23, scope: !3533)
!3550 = !DILocation(line: 168, column: 50, scope: !3533)
!3551 = !DILocation(line: 168, column: 57, scope: !3533)
!3552 = !DILocation(line: 168, column: 55, scope: !3533)
!3553 = !DILocation(line: 169, column: 2, scope: !3533)
!3554 = !DILocation(line: 169, column: 16, scope: !3533)
!3555 = !DILocation(line: 169, column: 23, scope: !3533)
!3556 = !DILocation(line: 170, column: 2, scope: !3533)
!3557 = !DILocation(line: 170, column: 16, scope: !3533)
!3558 = !DILocation(line: 170, column: 23, scope: !3533)
!3559 = !DILocation(line: 170, column: 22, scope: !3533)
!3560 = !DILocation(line: 172, column: 12, scope: !3533)
!3561 = !DILocation(line: 172, column: 18, scope: !3533)
!3562 = !DILocation(line: 172, column: 16, scope: !3533)
!3563 = !DILocation(line: 172, column: 10, scope: !3533)
!3564 = !DILocation(line: 172, column: 9, scope: !3533)
!3565 = !DILocation(line: 173, column: 1, scope: !3533)
!3566 = !DILocation(line: 172, column: 2, scope: !3533)
!3567 = distinct !DISubprogram(name: "_test_bit", scope: !3568, file: !3568, line: 139, type: !3535, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3568 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "nr", arg: 1, scope: !3567, file: !3568, line: 139, type: !82)
!3571 = !DILocalVariable(name: "addr", arg: 2, scope: !3567, file: !3568, line: 139, type: !3537)
!3572 = !DILocation(line: 139, column: 25, scope: !3567)
!3573 = !DILocation(line: 139, column: 59, scope: !3567)
!3574 = !DILocation(line: 141, column: 25, scope: !3567)
!3575 = !DILocation(line: 141, column: 32, scope: !3567)
!3576 = !DILocation(line: 141, column: 30, scope: !3567)
!3577 = !DILocation(line: 141, column: 2, scope: !3567)
!3578 = !DILocation(line: 142, column: 23, scope: !3567)
!3579 = !DILocation(line: 142, column: 27, scope: !3567)
!3580 = !DILocation(line: 142, column: 9, scope: !3567)
!3581 = !DILocation(line: 142, column: 2, scope: !3567)
!3582 = distinct !DISubprogram(name: "arch_test_bit", scope: !3583, file: !3583, line: 237, type: !3535, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3584)
!3583 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "nr", arg: 1, scope: !3582, file: !3583, line: 237, type: !82)
!3586 = !DILocalVariable(name: "addr", arg: 2, scope: !3582, file: !3583, line: 237, type: !3537)
!3587 = !DILocation(line: 237, column: 29, scope: !3582)
!3588 = !DILocation(line: 237, column: 63, scope: !3582)
!3589 = !DILocation(line: 239, column: 30, scope: !3582)
!3590 = !DILocation(line: 239, column: 9, scope: !3582)
!3591 = !DILocation(line: 239, column: 54, scope: !3582)
!3592 = !DILocation(line: 239, column: 58, scope: !3582)
!3593 = !DILocation(line: 239, column: 36, scope: !3582)
!3594 = !DILocation(line: 240, column: 26, scope: !3582)
!3595 = !DILocation(line: 240, column: 30, scope: !3582)
!3596 = !DILocation(line: 240, column: 8, scope: !3582)
!3597 = !DILocation(line: 239, column: 2, scope: !3582)
!3598 = distinct !DISubprogram(name: "constant_test_bit", scope: !3583, file: !3583, line: 204, type: !3599, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!910, !644, !3537}
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "nr", arg: 1, scope: !3598, file: !3583, line: 204, type: !644)
!3603 = !DILocalVariable(name: "addr", arg: 2, scope: !3598, file: !3583, line: 204, type: !3537)
!3604 = !DILocation(line: 204, column: 52, scope: !3598)
!3605 = !DILocation(line: 204, column: 86, scope: !3598)
!3606 = !DILocation(line: 206, column: 19, scope: !3598)
!3607 = !DILocation(line: 206, column: 22, scope: !3598)
!3608 = !DILocation(line: 206, column: 15, scope: !3598)
!3609 = !DILocation(line: 207, column: 4, scope: !3598)
!3610 = !DILocation(line: 207, column: 9, scope: !3598)
!3611 = !DILocation(line: 207, column: 12, scope: !3598)
!3612 = !DILocation(line: 206, column: 44, scope: !3598)
!3613 = !DILocation(line: 207, column: 37, scope: !3598)
!3614 = !DILocation(line: 206, column: 2, scope: !3598)
!3615 = distinct !DISubprogram(name: "variable_test_bit", scope: !3583, file: !3583, line: 224, type: !3599, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3616)
!3616 = !{!3617, !3618, !3619}
!3617 = !DILocalVariable(name: "nr", arg: 1, scope: !3615, file: !3583, line: 224, type: !644)
!3618 = !DILocalVariable(name: "addr", arg: 2, scope: !3615, file: !3583, line: 224, type: !3537)
!3619 = !DILocalVariable(name: "oldbit", scope: !3615, file: !3583, line: 226, type: !910)
!3620 = !DILocation(line: 224, column: 52, scope: !3615)
!3621 = !DILocation(line: 224, column: 86, scope: !3615)
!3622 = !DILocation(line: 226, column: 2, scope: !3615)
!3623 = !DILocation(line: 226, column: 7, scope: !3615)
!3624 = !DILocation(line: 231, column: 33, scope: !3615)
!3625 = !DILocation(line: 231, column: 46, scope: !3615)
!3626 = !DILocation(line: 228, column: 2, scope: !3615)
!3627 = !{i64 2148788119, i64 2148788193}
!3628 = !DILocation(line: 233, column: 9, scope: !3615)
!3629 = !DILocation(line: 234, column: 1, scope: !3615)
!3630 = !DILocation(line: 233, column: 2, scope: !3615)
!3631 = !DISubprogram(name: "_raw_spin_unlock", scope: !3281, file: !3281, line: 39, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
