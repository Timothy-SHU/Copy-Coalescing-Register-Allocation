; ModuleID = 'ipc/mq_sysctl.c'
source_filename = "ipc/mq_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, i64, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, %struct.ctl_table_set, ptr, %struct.ctl_table_set, ptr, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
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
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.17 }
%struct.kernel_cap_t = type { i64 }
%union.anon.17 = type { %struct.callback_head }

@set_root = internal global %struct.ctl_table_root { %struct.ctl_table_set zeroinitializer, ptr @set_lookup, ptr @mq_set_ownership, ptr @mq_permissions }, align 8, !dbg !0
@mq_sysctls = internal global [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_ipc_ns, i64 828), i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @init_ipc_ns, i64 832), i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @msg_max_limit_min, ptr @msg_max_limit_max }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @init_ipc_ns, i64 836), i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @msg_maxsize_limit_min, ptr @msg_maxsize_limit_max }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_ipc_ns, i64 840), i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @msg_max_limit_min, ptr @msg_max_limit_max }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_ipc_ns, i64 844), i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @msg_maxsize_limit_min, ptr @msg_maxsize_limit_max }, %struct.ctl_table zeroinitializer], align 16, !dbg !1939
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 8
@.str = private unnamed_addr constant [10 x i8] c"fs/mqueue\00", align 1, !dbg !1920
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"queues_max\00", align 1, !dbg !1925
@.str.2 = private unnamed_addr constant [8 x i8] c"msg_max\00", align 1, !dbg !1930
@msg_max_limit_min = internal global i32 1, align 4, !dbg !1942
@msg_max_limit_max = internal global i32 65536, align 4, !dbg !1944
@.str.3 = private unnamed_addr constant [12 x i8] c"msgsize_max\00", align 1, !dbg !1932
@msg_maxsize_limit_min = internal global i32 128, align 4, !dbg !1946
@msg_maxsize_limit_max = internal global i32 16777216, align 4, !dbg !1948
@.str.4 = private unnamed_addr constant [12 x i8] c"msg_default\00", align 1, !dbg !1935
@.str.5 = private unnamed_addr constant [16 x i8] c"msgsize_default\00", align 1, !dbg !1937

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @setup_mq_sysctls(ptr noundef %ns) #0 align 16 !dbg !1959 {
entry:
  %retval = alloca i1, align 1
  %ns.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !1963, metadata !DIExpression()), !dbg !1968
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #8, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !1964, metadata !DIExpression()), !dbg !1970
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !1971
  %mq_set = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 21, !dbg !1972
  call void @setup_sysctl_set(ptr noundef %mq_set, ptr noundef @set_root, ptr noundef @set_is_seen) #9, !dbg !1973
  %call = call ptr @kmemdup(ptr noundef @mq_sysctls, i64 noundef 384, i32 noundef 3264) #10, !dbg !1974
  store ptr %call, ptr %tbl, align 8, !dbg !1975
  %1 = load ptr, ptr %tbl, align 8, !dbg !1976
  %tobool = icmp ne ptr %1, null, !dbg !1976
  br i1 %tobool, label %if.then, label %if.end57, !dbg !1977

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !1978
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1965, metadata !DIExpression()), !dbg !1979
  store i32 0, ptr %i, align 4, !dbg !1980
  br label %for.cond, !dbg !1982

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !1983
  %conv = sext i32 %2 to i64, !dbg !1983
  %cmp = icmp ult i64 %conv, 6, !dbg !1985
  br i1 %cmp, label %for.body, label %for.end, !dbg !1986

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tbl, align 8, !dbg !1987
  %4 = load i32, ptr %i, align 4, !dbg !1990
  %idxprom = sext i32 %4 to i64, !dbg !1987
  %arrayidx = getelementptr %struct.ctl_table, ptr %3, i64 %idxprom, !dbg !1987
  %data = getelementptr inbounds %struct.ctl_table, ptr %arrayidx, i32 0, i32 1, !dbg !1991
  %5 = load ptr, ptr %data, align 8, !dbg !1991
  %cmp2 = icmp eq ptr %5, getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 16), !dbg !1992
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !1993

if.then4:                                         ; preds = %for.body
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !1994
  %mq_queues_max = getelementptr inbounds %struct.ipc_namespace, ptr %6, i32 0, i32 16, !dbg !1995
  %7 = load ptr, ptr %tbl, align 8, !dbg !1996
  %8 = load i32, ptr %i, align 4, !dbg !1997
  %idxprom5 = sext i32 %8 to i64, !dbg !1996
  %arrayidx6 = getelementptr %struct.ctl_table, ptr %7, i64 %idxprom5, !dbg !1996
  %data7 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx6, i32 0, i32 1, !dbg !1998
  store ptr %mq_queues_max, ptr %data7, align 8, !dbg !1999
  br label %if.end54, !dbg !1996

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr %tbl, align 8, !dbg !2000
  %10 = load i32, ptr %i, align 4, !dbg !2002
  %idxprom8 = sext i32 %10 to i64, !dbg !2000
  %arrayidx9 = getelementptr %struct.ctl_table, ptr %9, i64 %idxprom8, !dbg !2000
  %data10 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx9, i32 0, i32 1, !dbg !2003
  %11 = load ptr, ptr %data10, align 8, !dbg !2003
  %cmp11 = icmp eq ptr %11, getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 17), !dbg !2004
  br i1 %cmp11, label %if.then13, label %if.else17, !dbg !2005

if.then13:                                        ; preds = %if.else
  %12 = load ptr, ptr %ns.addr, align 8, !dbg !2006
  %mq_msg_max = getelementptr inbounds %struct.ipc_namespace, ptr %12, i32 0, i32 17, !dbg !2007
  %13 = load ptr, ptr %tbl, align 8, !dbg !2008
  %14 = load i32, ptr %i, align 4, !dbg !2009
  %idxprom14 = sext i32 %14 to i64, !dbg !2008
  %arrayidx15 = getelementptr %struct.ctl_table, ptr %13, i64 %idxprom14, !dbg !2008
  %data16 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx15, i32 0, i32 1, !dbg !2010
  store ptr %mq_msg_max, ptr %data16, align 8, !dbg !2011
  br label %if.end53, !dbg !2008

if.else17:                                        ; preds = %if.else
  %15 = load ptr, ptr %tbl, align 8, !dbg !2012
  %16 = load i32, ptr %i, align 4, !dbg !2014
  %idxprom18 = sext i32 %16 to i64, !dbg !2012
  %arrayidx19 = getelementptr %struct.ctl_table, ptr %15, i64 %idxprom18, !dbg !2012
  %data20 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx19, i32 0, i32 1, !dbg !2015
  %17 = load ptr, ptr %data20, align 8, !dbg !2015
  %cmp21 = icmp eq ptr %17, getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 18), !dbg !2016
  br i1 %cmp21, label %if.then23, label %if.else27, !dbg !2017

if.then23:                                        ; preds = %if.else17
  %18 = load ptr, ptr %ns.addr, align 8, !dbg !2018
  %mq_msgsize_max = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 18, !dbg !2019
  %19 = load ptr, ptr %tbl, align 8, !dbg !2020
  %20 = load i32, ptr %i, align 4, !dbg !2021
  %idxprom24 = sext i32 %20 to i64, !dbg !2020
  %arrayidx25 = getelementptr %struct.ctl_table, ptr %19, i64 %idxprom24, !dbg !2020
  %data26 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx25, i32 0, i32 1, !dbg !2022
  store ptr %mq_msgsize_max, ptr %data26, align 8, !dbg !2023
  br label %if.end52, !dbg !2020

if.else27:                                        ; preds = %if.else17
  %21 = load ptr, ptr %tbl, align 8, !dbg !2024
  %22 = load i32, ptr %i, align 4, !dbg !2026
  %idxprom28 = sext i32 %22 to i64, !dbg !2024
  %arrayidx29 = getelementptr %struct.ctl_table, ptr %21, i64 %idxprom28, !dbg !2024
  %data30 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx29, i32 0, i32 1, !dbg !2027
  %23 = load ptr, ptr %data30, align 8, !dbg !2027
  %cmp31 = icmp eq ptr %23, getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 19), !dbg !2028
  br i1 %cmp31, label %if.then33, label %if.else37, !dbg !2029

if.then33:                                        ; preds = %if.else27
  %24 = load ptr, ptr %ns.addr, align 8, !dbg !2030
  %mq_msg_default = getelementptr inbounds %struct.ipc_namespace, ptr %24, i32 0, i32 19, !dbg !2031
  %25 = load ptr, ptr %tbl, align 8, !dbg !2032
  %26 = load i32, ptr %i, align 4, !dbg !2033
  %idxprom34 = sext i32 %26 to i64, !dbg !2032
  %arrayidx35 = getelementptr %struct.ctl_table, ptr %25, i64 %idxprom34, !dbg !2032
  %data36 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx35, i32 0, i32 1, !dbg !2034
  store ptr %mq_msg_default, ptr %data36, align 8, !dbg !2035
  br label %if.end51, !dbg !2032

if.else37:                                        ; preds = %if.else27
  %27 = load ptr, ptr %tbl, align 8, !dbg !2036
  %28 = load i32, ptr %i, align 4, !dbg !2038
  %idxprom38 = sext i32 %28 to i64, !dbg !2036
  %arrayidx39 = getelementptr %struct.ctl_table, ptr %27, i64 %idxprom38, !dbg !2036
  %data40 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx39, i32 0, i32 1, !dbg !2039
  %29 = load ptr, ptr %data40, align 8, !dbg !2039
  %cmp41 = icmp eq ptr %29, getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 20), !dbg !2040
  br i1 %cmp41, label %if.then43, label %if.else47, !dbg !2041

if.then43:                                        ; preds = %if.else37
  %30 = load ptr, ptr %ns.addr, align 8, !dbg !2042
  %mq_msgsize_default = getelementptr inbounds %struct.ipc_namespace, ptr %30, i32 0, i32 20, !dbg !2043
  %31 = load ptr, ptr %tbl, align 8, !dbg !2044
  %32 = load i32, ptr %i, align 4, !dbg !2045
  %idxprom44 = sext i32 %32 to i64, !dbg !2044
  %arrayidx45 = getelementptr %struct.ctl_table, ptr %31, i64 %idxprom44, !dbg !2044
  %data46 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx45, i32 0, i32 1, !dbg !2046
  store ptr %mq_msgsize_default, ptr %data46, align 8, !dbg !2047
  br label %if.end, !dbg !2044

if.else47:                                        ; preds = %if.else37
  %33 = load ptr, ptr %tbl, align 8, !dbg !2048
  %34 = load i32, ptr %i, align 4, !dbg !2049
  %idxprom48 = sext i32 %34 to i64, !dbg !2048
  %arrayidx49 = getelementptr %struct.ctl_table, ptr %33, i64 %idxprom48, !dbg !2048
  %data50 = getelementptr inbounds %struct.ctl_table, ptr %arrayidx49, i32 0, i32 1, !dbg !2050
  store ptr null, ptr %data50, align 8, !dbg !2051
  br label %if.end

if.end:                                           ; preds = %if.else47, %if.then43
  br label %if.end51

if.end51:                                         ; preds = %if.end, %if.then33
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then23
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then13
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then4
  br label %for.inc, !dbg !2052

for.inc:                                          ; preds = %if.end54
  %35 = load i32, ptr %i, align 4, !dbg !2053
  %inc = add i32 %35, 1, !dbg !2053
  store i32 %inc, ptr %i, align 4, !dbg !2053
  br label %for.cond, !dbg !2054, !llvm.loop !2055

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %ns.addr, align 8, !dbg !2059
  %mq_set55 = getelementptr inbounds %struct.ipc_namespace, ptr %36, i32 0, i32 21, !dbg !2060
  %37 = load ptr, ptr %tbl, align 8, !dbg !2061
  %call56 = call ptr @__register_sysctl_table(ptr noundef %mq_set55, ptr noundef @.str, ptr noundef %37, i64 noundef 6) #9, !dbg !2062
  %38 = load ptr, ptr %ns.addr, align 8, !dbg !2063
  %mq_sysctls = getelementptr inbounds %struct.ipc_namespace, ptr %38, i32 0, i32 22, !dbg !2064
  store ptr %call56, ptr %mq_sysctls, align 8, !dbg !2065
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !2066
  br label %if.end57, !dbg !2067

if.end57:                                         ; preds = %for.end, %entry
  %39 = load ptr, ptr %ns.addr, align 8, !dbg !2068
  %mq_sysctls58 = getelementptr inbounds %struct.ipc_namespace, ptr %39, i32 0, i32 22, !dbg !2070
  %40 = load ptr, ptr %mq_sysctls58, align 8, !dbg !2070
  %tobool59 = icmp ne ptr %40, null, !dbg !2068
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !2071

if.then60:                                        ; preds = %if.end57
  %41 = load ptr, ptr %tbl, align 8, !dbg !2072
  call void @kfree(ptr noundef %41) #9, !dbg !2074
  %42 = load ptr, ptr %ns.addr, align 8, !dbg !2075
  %mq_set61 = getelementptr inbounds %struct.ipc_namespace, ptr %42, i32 0, i32 21, !dbg !2076
  call void @retire_sysctl_set(ptr noundef %mq_set61) #9, !dbg !2077
  store i1 false, ptr %retval, align 1, !dbg !2078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2078

if.end62:                                         ; preds = %if.end57
  store i1 true, ptr %retval, align 1, !dbg !2079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2079

cleanup:                                          ; preds = %if.end62, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #8, !dbg !2080
  %43 = load i1, ptr %retval, align 1, !dbg !2080
  ret i1 %43, !dbg !2080
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2081 dso_local void @setup_sysctl_set(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_is_seen(ptr noundef %set) #0 align 16 !dbg !2084 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2086, metadata !DIExpression()), !dbg !2087
  %call = call ptr @get_current() #9, !dbg !2088
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !2089
  %0 = load ptr, ptr %nsproxy, align 8, !dbg !2089
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 2, !dbg !2090
  %1 = load ptr, ptr %ipc_ns, align 8, !dbg !2090
  %mq_set = getelementptr inbounds %struct.ipc_namespace, ptr %1, i32 0, i32 21, !dbg !2091
  %2 = load ptr, ptr %set.addr, align 8, !dbg !2092
  %cmp = icmp eq ptr %mq_set, %2, !dbg !2093
  %conv = zext i1 %cmp to i32, !dbg !2093
  ret i32 %conv, !dbg !2094
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2095 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2099 dso_local ptr @__register_sysctl_table(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2102 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2106 dso_local void @retire_sysctl_set(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @retire_mq_sysctls(ptr noundef %ns) #0 align 16 !dbg !2109 {
entry:
  %ns.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2113, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #8, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !2114, metadata !DIExpression()), !dbg !2117
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2118
  %mq_sysctls = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 22, !dbg !2119
  %1 = load ptr, ptr %mq_sysctls, align 8, !dbg !2119
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2, !dbg !2120
  %2 = load ptr, ptr %ctl_table_arg, align 8, !dbg !2120
  store ptr %2, ptr %tbl, align 8, !dbg !2121
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !2122
  %mq_sysctls1 = getelementptr inbounds %struct.ipc_namespace, ptr %3, i32 0, i32 22, !dbg !2123
  %4 = load ptr, ptr %mq_sysctls1, align 8, !dbg !2123
  call void @unregister_sysctl_table(ptr noundef %4) #9, !dbg !2124
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !2125
  %mq_set = getelementptr inbounds %struct.ipc_namespace, ptr %5, i32 0, i32 21, !dbg !2126
  call void @retire_sysctl_set(ptr noundef %mq_set) #9, !dbg !2127
  %6 = load ptr, ptr %tbl, align 8, !dbg !2128
  call void @kfree(ptr noundef %6) #9, !dbg !2129
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #8, !dbg !2130
  ret void, !dbg !2130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2131 dso_local void @unregister_sysctl_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @set_lookup(ptr noundef %root) #0 align 16 !dbg !2134 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2136, metadata !DIExpression()), !dbg !2137
  %call = call ptr @get_current() #9, !dbg !2138
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !2139
  %0 = load ptr, ptr %nsproxy, align 8, !dbg !2139
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 2, !dbg !2140
  %1 = load ptr, ptr %ipc_ns, align 8, !dbg !2140
  %mq_set = getelementptr inbounds %struct.ipc_namespace, ptr %1, i32 0, i32 21, !dbg !2141
  ret ptr %mq_set, !dbg !2142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mq_set_ownership(ptr noundef %head, ptr noundef %uid, ptr noundef %gid) #0 align 16 !dbg !2143 {
entry:
  %head.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %gid.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ns_root_uid = alloca %struct.kuid_t, align 4
  %ns_root_gid = alloca %struct.kgid_t, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral10 = alloca %struct.kgid_t, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2145, metadata !DIExpression()), !dbg !2153
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !2146, metadata !DIExpression()), !dbg !2154
  store ptr %gid, ptr %gid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !2147, metadata !DIExpression()), !dbg !2155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #8, !dbg !2156
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2148, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !2158
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2149, metadata !DIExpression()), !dbg !2158
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2158
  %set = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 4, !dbg !2158
  %1 = load ptr, ptr %set, align 8, !dbg !2158
  store ptr %1, ptr %__mptr, align 8, !dbg !2158
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2158
  %add.ptr = getelementptr i8, ptr %2, i64 -848, !dbg !2158
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !2159
  %3 = load ptr, ptr %tmp, align 8, !dbg !2158
  store ptr %3, ptr %ns, align 8, !dbg !2157
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns_root_uid) #8, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %ns_root_uid, metadata !2151, metadata !DIExpression()), !dbg !2161
  %4 = load ptr, ptr %ns, align 8, !dbg !2162
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %4, i32 0, i32 25, !dbg !2163
  %5 = load ptr, ptr %user_ns, align 8, !dbg !2163
  %call = call i32 @make_kuid(ptr noundef %5, i32 noundef 0) #9, !dbg !2164
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %ns_root_uid, i32 0, i32 0, !dbg !2164
  store i32 %call, ptr %coerce.dive, align 4, !dbg !2164
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns_root_gid) #8, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %ns_root_gid, metadata !2152, metadata !DIExpression()), !dbg !2166
  %6 = load ptr, ptr %ns, align 8, !dbg !2167
  %user_ns1 = getelementptr inbounds %struct.ipc_namespace, ptr %6, i32 0, i32 25, !dbg !2168
  %7 = load ptr, ptr %user_ns1, align 8, !dbg !2168
  %call2 = call i32 @make_kgid(ptr noundef %7, i32 noundef 0) #9, !dbg !2169
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %ns_root_gid, i32 0, i32 0, !dbg !2169
  store i32 %call2, ptr %coerce.dive3, align 4, !dbg !2169
  %8 = load ptr, ptr %uid.addr, align 8, !dbg !2170
  %coerce.dive4 = getelementptr inbounds %struct.kuid_t, ptr %ns_root_uid, i32 0, i32 0, !dbg !2171
  %9 = load i32, ptr %coerce.dive4, align 4, !dbg !2171
  %call5 = call zeroext i1 @uid_valid(i32 %9) #9, !dbg !2171
  br i1 %call5, label %cond.true, label %cond.false, !dbg !2171

cond.true:                                        ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %ns_root_uid, i64 4, i1 false), !dbg !2172
  br label %cond.end, !dbg !2171

cond.false:                                       ; preds = %entry
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2173
  store i32 0, ptr %val, align 4, !dbg !2173
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2173
  br label %cond.end, !dbg !2171

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %gid.addr, align 8, !dbg !2174
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %ns_root_gid, i32 0, i32 0, !dbg !2175
  %11 = load i32, ptr %coerce.dive6, align 4, !dbg !2175
  %call7 = call zeroext i1 @gid_valid(i32 %11) #9, !dbg !2175
  br i1 %call7, label %cond.true8, label %cond.false9, !dbg !2175

cond.true8:                                       ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %ns_root_gid, i64 4, i1 false), !dbg !2176
  br label %cond.end12, !dbg !2175

cond.false9:                                      ; preds = %cond.end
  %val11 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral10, i32 0, i32 0, !dbg !2177
  store i32 0, ptr %val11, align 4, !dbg !2177
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %.compoundliteral10, i64 4, i1 false), !dbg !2177
  br label %cond.end12, !dbg !2175

cond.end12:                                       ; preds = %cond.false9, %cond.true8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns_root_gid) #8, !dbg !2178
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns_root_uid) #8, !dbg !2178
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #8, !dbg !2178
  ret void, !dbg !2178
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mq_permissions(ptr noundef %head, ptr noundef %table) #0 align 16 !dbg !2179 {
entry:
  %head.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  %ns_root_uid = alloca %struct.kuid_t, align 4
  %ns_root_gid = alloca %struct.kgid_t, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2181, metadata !DIExpression()), !dbg !2186
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #8, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !2183, metadata !DIExpression()), !dbg !2189
  %0 = load ptr, ptr %table.addr, align 8, !dbg !2190
  %mode1 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3, !dbg !2191
  %1 = load i16, ptr %mode1, align 4, !dbg !2191
  %conv = zext i16 %1 to i32, !dbg !2190
  store i32 %conv, ptr %mode, align 4, !dbg !2189
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns_root_uid) #8, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %ns_root_uid, metadata !2184, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns_root_gid) #8, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %ns_root_gid, metadata !2185, metadata !DIExpression()), !dbg !2195
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2196
  call void @mq_set_ownership(ptr noundef %2, ptr noundef %ns_root_uid, ptr noundef %ns_root_gid) #9, !dbg !2197
  br label %do.body, !dbg !2198

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2202

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2202

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #9, !dbg !2198
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !2198
  %3 = load ptr, ptr %cred, align 32, !dbg !2198
  store ptr %3, ptr %tmp, align 8, !dbg !2202
  %4 = load ptr, ptr %tmp, align 8, !dbg !2198
  %euid = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5, !dbg !2204
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !2204
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !2205
  %5 = load i32, ptr %coerce.dive, align 4, !dbg !2205
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %ns_root_uid, i32 0, i32 0, !dbg !2205
  %6 = load i32, ptr %coerce.dive2, align 4, !dbg !2205
  %call3 = call zeroext i1 @uid_eq(i32 %5, i32 %6) #9, !dbg !2205
  br i1 %call3, label %if.then, label %if.else, !dbg !2206

if.then:                                          ; preds = %do.end
  %7 = load i32, ptr %mode, align 4, !dbg !2207
  %shr = ashr i32 %7, 6, !dbg !2207
  store i32 %shr, ptr %mode, align 4, !dbg !2207
  br label %if.end8, !dbg !2208

if.else:                                          ; preds = %do.end
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %ns_root_gid, i32 0, i32 0, !dbg !2209
  %8 = load i32, ptr %coerce.dive4, align 4, !dbg !2209
  %call5 = call i32 @in_egroup_p(i32 %8) #9, !dbg !2209
  %tobool = icmp ne i32 %call5, 0, !dbg !2209
  br i1 %tobool, label %if.then6, label %if.end, !dbg !2211

if.then6:                                         ; preds = %if.else
  %9 = load i32, ptr %mode, align 4, !dbg !2212
  %shr7 = ashr i32 %9, 3, !dbg !2212
  store i32 %shr7, ptr %mode, align 4, !dbg !2212
  br label %if.end, !dbg !2213

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %mode, align 4, !dbg !2214
  %and = and i32 %10, 7, !dbg !2214
  store i32 %and, ptr %mode, align 4, !dbg !2214
  %11 = load i32, ptr %mode, align 4, !dbg !2215
  %shl = shl i32 %11, 6, !dbg !2216
  %12 = load i32, ptr %mode, align 4, !dbg !2217
  %shl9 = shl i32 %12, 3, !dbg !2218
  %or = or i32 %shl, %shl9, !dbg !2219
  %13 = load i32, ptr %mode, align 4, !dbg !2220
  %or10 = or i32 %or, %13, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns_root_gid) #8, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns_root_uid) #8, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #8, !dbg !2222
  ret i32 %or10, !dbg !2223
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !2224 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2229, metadata !DIExpression()), !dbg !2235
  br label %do.body, !dbg !2235

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2231, metadata !DIExpression()), !dbg !2236
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2236
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2236
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !2235
  br label %do.cond, !dbg !2236

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2236

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2233, metadata !DIExpression()), !dbg !2237
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !2237, !srcloc !2238
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2237
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2237
  %3 = inttoptr i64 %2 to ptr, !dbg !2237
  store ptr %3, ptr %tmp, align 8, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !2235
  %4 = load ptr, ptr %tmp, align 8, !dbg !2237
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2235
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2235
  store ptr %5, ptr %tmp1, align 8, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !2239
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2235
  ret ptr %6, !dbg !2240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #6 align 16 !dbg !2241 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !2246, metadata !DIExpression()), !dbg !2248
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !2249
  %0 = load i32, ptr %uid.addr, align 4, !dbg !2249
  store i32 %0, ptr %val, align 4, !dbg !2249
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !2250
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2250
  ret i32 %1, !dbg !2250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #6 align 16 !dbg !2251 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !2255, metadata !DIExpression()), !dbg !2257
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !2256, metadata !DIExpression()), !dbg !2258
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !2259
  %0 = load i32, ptr %gid.addr, align 4, !dbg !2259
  store i32 %0, ptr %val, align 4, !dbg !2259
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !2260
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2260
  ret i32 %1, !dbg !2260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #6 align 16 !dbg !2261 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !2265, metadata !DIExpression()), !dbg !2266
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2267
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !2267
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !2267
  %cmp = icmp ne i32 %call, -1, !dbg !2268
  ret i1 %cmp, !dbg !2269
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #6 align 16 !dbg !2270 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !2274, metadata !DIExpression()), !dbg !2275
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !2276
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !2276
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !2276
  %cmp = icmp ne i32 %call, -1, !dbg !2277
  ret i1 %cmp, !dbg !2278
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #6 align 16 !dbg !2279 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !2283, metadata !DIExpression()), !dbg !2284
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2285
  %0 = load i32, ptr %val, align 4, !dbg !2285
  ret i32 %0, !dbg !2286
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #6 align 16 !dbg !2287 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !2291, metadata !DIExpression()), !dbg !2292
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !2293
  %0 = load i32, ptr %val, align 4, !dbg !2293
  ret i32 %0, !dbg !2294
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #6 align 16 !dbg !2295 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.declare(metadata ptr %right, metadata !2300, metadata !DIExpression()), !dbg !2302
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !2303
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !2303
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !2303
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !2304
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !2304
  %call4 = call i32 @__kuid_val(i32 %1) #9, !dbg !2304
  %cmp = icmp eq i32 %call, %call4, !dbg !2305
  ret i1 %cmp, !dbg !2306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2307 dso_local i32 @in_egroup_p(i32) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone allocsize(1) }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957}
!llvm.ident = !{!1958}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "set_root", scope: !2, file: !3, line: 112, type: !1194, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF ipc/.mq_sysctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22ipc/mq_sysctl\22 -D KBUILD_BASENAME=\22mq_sysctl\22 -D KBUILD_MODNAME=\22mq_sysctl\22 -D __KBUILD_MODNAME=kmod_mq_sysctl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o ipc/mq_sysctl.ll ipc/mq_sysctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !1919, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ipc/mq_sysctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85787e6ac484b94f83554671e527b61c")
!4 = !{!5, !102, !107, !112, !118}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0)
!106 = !DIEnumerator(name: "true", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !108, line: 65, baseType: !98, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!111 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !98, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !119, line: 51, baseType: !98, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!122 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!123 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!124 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!125 = !{!126, !16, !14, !127, !128, !33, !1060, !834, !841, !823}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !130, line: 746, size: 58368, elements: !131)
!130 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!131 = !{!132, !142, !143, !144, !150, !151, !152, !153, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !236, !247, !348, !352, !355, !386, !387, !388, !389, !400, !402, !403, !404, !405, !406, !407, !418, !419, !422, !423, !424, !425, !426, !427, !428, !429, !436, !437, !444, !445, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !717, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !767, !769, !770, !771, !783, !785, !786, !787, !788, !789, !790, !796, !797, !798, !799, !800, !801, !802, !816, !822, !1019, !1020, !1021, !1022, !1026, !1029, !1036, !1041, !1044, !1047, !1050, !1254, !1257, !1260, !1266, !1267, !1268, !1273, !1274, !1275, !1276, !1277, !1280, !1281, !1282, !1291, !1299, !1300, !1301, !1302, !1303, !1308, !1309, !1310, !1313, !1314, !1317, !1320, !1323, !1326, !1329, !1330, !1417, !1428, !1429, !1430, !1431, !1437, !1442, !1443, !1444, !1447, !1448, !1451, !1454, !1455, !1458, !1459, !1460, !1463, !1464, !1465, !1468, !1469, !1470, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1502, !1505, !1573, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1585, !1657, !1659, !1660, !1661, !1662, !1663, !1675, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1692, !1693, !1694}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !129, file: !130, line: 752, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !134, line: 56, size: 192, elements: !135)
!134 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!135 = !{!136, !137, !138, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !134, line: 57, baseType: !33, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !133, file: !134, line: 58, baseType: !33, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !133, file: !134, line: 59, baseType: !139, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !133, file: !134, line: 61, baseType: !139, size: 32, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !129, file: !130, line: 754, baseType: !98, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !129, file: !130, line: 767, baseType: !14, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !129, file: !130, line: 768, baseType: !145, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !146, line: 113, baseType: !147)
!146 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !146, line: 111, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !147, file: !146, line: 112, baseType: !43, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !130, line: 770, baseType: !98, size: 32, offset: 352)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !129, file: !130, line: 771, baseType: !98, size: 32, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !129, file: !130, line: 774, baseType: !16, size: 32, offset: 416)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !129, file: !130, line: 775, baseType: !154, size: 128, offset: 448)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !155, line: 58, size: 128, elements: !156)
!155 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!156 = !{!157, !163, !168, !169}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !154, file: !155, line: 59, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !159, line: 60, size: 64, elements: !160)
!159 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !159, line: 61, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !155, line: 60, baseType: !164, size: 32, offset: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !155, line: 60, size: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !164, file: !155, line: 61, baseType: !98, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !164, file: !155, line: 62, baseType: !43, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !154, file: !155, line: 65, baseType: !87, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !154, file: !155, line: 65, baseType: !87, size: 16, offset: 112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !129, file: !130, line: 776, baseType: !98, size: 32, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !129, file: !130, line: 777, baseType: !33, size: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !129, file: !130, line: 778, baseType: !128, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !129, file: !130, line: 787, baseType: !16, size: 32, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !129, file: !130, line: 788, baseType: !16, size: 32, offset: 800)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !129, file: !130, line: 790, baseType: !16, size: 32, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !129, file: !130, line: 792, baseType: !16, size: 32, offset: 864)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !129, file: !130, line: 793, baseType: !16, size: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !129, file: !130, line: 794, baseType: !16, size: 32, offset: 928)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !129, file: !130, line: 795, baseType: !98, size: 32, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !129, file: !130, line: 797, baseType: !181, size: 2048, offset: 1024)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !130, line: 551, size: 2048, elements: !182)
!182 = !{!183, !188, !196, !200, !201, !202, !203, !204, !205, !206, !207, !210, !211, !212, !213, !215, !218, !219, !220}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !181, file: !130, line: 553, baseType: !184, size: 128)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !130, line: 411, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !184, file: !130, line: 412, baseType: !33, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !184, file: !130, line: 413, baseType: !139, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !181, file: !130, line: 554, baseType: !189, size: 192, align: 64, offset: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !190, line: 5, size: 192, align: 64, elements: !191)
!190 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!191 = !{!192, !193, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !189, file: !190, line: 6, baseType: !33, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !189, file: !190, line: 7, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !189, file: !190, line: 8, baseType: !194, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !181, file: !130, line: 555, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !199)
!199 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !181, file: !130, line: 556, baseType: !197, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !181, file: !130, line: 558, baseType: !91, size: 128, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !181, file: !130, line: 559, baseType: !98, size: 32, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !181, file: !130, line: 561, baseType: !197, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !181, file: !130, line: 562, baseType: !197, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !181, file: !130, line: 563, baseType: !197, size: 64, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !181, file: !130, line: 564, baseType: !197, size: 64, offset: 832)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !181, file: !130, line: 565, baseType: !208, size: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !181, file: !130, line: 566, baseType: !197, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !181, file: !130, line: 568, baseType: !197, size: 64, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !181, file: !130, line: 571, baseType: !16, size: 32, offset: 1088)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !130, line: 572, baseType: !214, size: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !181, file: !130, line: 574, baseType: !216, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !130, line: 49, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !181, file: !130, line: 576, baseType: !216, size: 64, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !181, file: !130, line: 578, baseType: !33, size: 64, offset: 1344)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !181, file: !130, line: 588, baseType: !221, size: 512, align: 512, offset: 1536)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !130, line: 497, size: 512, align: 512, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !221, file: !130, line: 498, baseType: !197, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !221, file: !130, line: 499, baseType: !197, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !221, file: !130, line: 500, baseType: !197, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !221, file: !130, line: 501, baseType: !139, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !221, file: !130, line: 502, baseType: !139, size: 32, offset: 224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !221, file: !130, line: 503, baseType: !33, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !221, file: !130, line: 504, baseType: !33, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !221, file: !130, line: 505, baseType: !33, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !221, file: !130, line: 506, baseType: !232, size: 64, align: 64, offset: 448)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !130, line: 445, size: 64, align: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !232, file: !130, line: 446, baseType: !98, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !232, file: !130, line: 447, baseType: !98, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !129, file: !130, line: 798, baseType: !237, size: 384, offset: 3072)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !130, line: 592, size: 384, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !237, file: !130, line: 593, baseType: !91, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !237, file: !130, line: 594, baseType: !33, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !237, file: !130, line: 595, baseType: !33, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !237, file: !130, line: 596, baseType: !98, size: 32, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !237, file: !130, line: 597, baseType: !20, size: 16, offset: 288)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !237, file: !130, line: 598, baseType: !20, size: 16, offset: 304)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !237, file: !130, line: 600, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !129, file: !130, line: 799, baseType: !248, size: 1792, offset: 3456)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !130, line: 610, size: 1792, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !345, !346}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !248, file: !130, line: 611, baseType: !189, size: 192, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !248, file: !130, line: 618, baseType: !197, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !248, file: !130, line: 619, baseType: !197, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !248, file: !130, line: 620, baseType: !197, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !248, file: !130, line: 621, baseType: !197, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !248, file: !130, line: 622, baseType: !197, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !248, file: !130, line: 629, baseType: !208, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !248, file: !130, line: 630, baseType: !197, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !130, line: 631, baseType: !98, size: 32, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !248, file: !130, line: 653, baseType: !98, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !248, file: !130, line: 654, baseType: !98, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !248, file: !130, line: 655, baseType: !98, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !248, file: !130, line: 656, baseType: !98, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !248, file: !130, line: 662, baseType: !264, size: 512, offset: 704)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !108, line: 118, size: 512, elements: !265)
!265 = !{!266, !274, !275, !280, !341, !342, !343, !344}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !264, file: !108, line: 119, baseType: !267, size: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !268, line: 9, size: 256, elements: !269)
!268 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !267, file: !268, line: 10, baseType: !189, size: 192, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !267, file: !268, line: 11, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !273, line: 29, baseType: !208)
!273 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !264, file: !108, line: 120, baseType: !272, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !264, file: !108, line: 121, baseType: !276, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!107, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !264, file: !108, line: 122, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !108, line: 159, size: 512, align: 512, elements: !283)
!283 = !{!284, !310, !311, !314, !324, !325, !336, !340}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !282, file: !108, line: 160, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !108, line: 215, size: 4608, align: 512, elements: !287)
!287 = !{!288, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !286, file: !108, line: 216, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !286, file: !108, line: 217, baseType: !98, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !286, file: !108, line: 218, baseType: !98, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !286, file: !108, line: 219, baseType: !98, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !286, file: !108, line: 220, baseType: !98, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !286, file: !108, line: 221, baseType: !98, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !286, file: !108, line: 222, baseType: !98, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !286, file: !108, line: 223, baseType: !98, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !286, file: !108, line: 224, baseType: !98, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !286, file: !108, line: 226, baseType: !98, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !286, file: !108, line: 227, baseType: !20, size: 16, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !286, file: !108, line: 228, baseType: !20, size: 16, offset: 208)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !286, file: !108, line: 229, baseType: !98, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !286, file: !108, line: 235, baseType: !272, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !286, file: !108, line: 236, baseType: !279, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !286, file: !108, line: 237, baseType: !272, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !286, file: !108, line: 238, baseType: !279, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !286, file: !108, line: 239, baseType: !307, size: 4096, align: 512, offset: 512)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 4096, align: 512, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !282, file: !108, line: 161, baseType: !98, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !282, file: !108, line: 162, baseType: !312, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !19, line: 32, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !31, line: 96, baseType: !16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !282, file: !108, line: 163, baseType: !315, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !316, line: 274, baseType: !317)
!316 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !316, line: 274, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !317, file: !316, line: 274, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !316, line: 69, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !316, line: 64, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !321, file: !316, line: 65, baseType: !98, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !282, file: !108, line: 164, baseType: !279, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !282, file: !108, line: 165, baseType: !326, size: 128, offset: 256)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !268, line: 14, size: 128, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !326, file: !268, line: 15, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !190, line: 26, size: 128, elements: !330)
!330 = !{!331, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !329, file: !190, line: 27, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !190, line: 12, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !332, file: !190, line: 13, baseType: !194, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !329, file: !190, line: 28, baseType: !194, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !282, file: !108, line: 166, baseType: !337, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!272}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !282, file: !108, line: 167, baseType: !272, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !108, line: 123, baseType: !77, size: 8, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !264, file: !108, line: 124, baseType: !77, size: 8, offset: 456)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !264, file: !108, line: 125, baseType: !77, size: 8, offset: 464)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !264, file: !108, line: 126, baseType: !77, size: 8, offset: 472)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !248, file: !130, line: 671, baseType: !264, size: 512, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !248, file: !130, line: 679, baseType: !347, size: 64, offset: 1728)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !129, file: !130, line: 800, baseType: !349, size: 64, offset: 5248)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !130, line: 800, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !129, file: !130, line: 809, baseType: !353, size: 64, offset: 5312)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !130, line: 70, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !129, file: !130, line: 825, baseType: !356, size: 2048, align: 512, offset: 5632)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !130, line: 509, size: 2048, align: 512, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !356, file: !130, line: 511, baseType: !197, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !356, file: !130, line: 512, baseType: !197, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !356, file: !130, line: 513, baseType: !197, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !356, file: !130, line: 514, baseType: !197, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !356, file: !130, line: 515, baseType: !197, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !356, file: !130, line: 516, baseType: !197, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !356, file: !130, line: 518, baseType: !197, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !356, file: !130, line: 519, baseType: !197, size: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !356, file: !130, line: 520, baseType: !208, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !356, file: !130, line: 522, baseType: !197, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !356, file: !130, line: 523, baseType: !197, size: 64, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !356, file: !130, line: 524, baseType: !208, size: 64, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !356, file: !130, line: 526, baseType: !208, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !356, file: !130, line: 527, baseType: !197, size: 64, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !356, file: !130, line: 529, baseType: !197, size: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !356, file: !130, line: 530, baseType: !197, size: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !356, file: !130, line: 531, baseType: !197, size: 64, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !356, file: !130, line: 532, baseType: !197, size: 64, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !356, file: !130, line: 533, baseType: !197, size: 64, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !356, file: !130, line: 535, baseType: !197, size: 64, offset: 1216)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !356, file: !130, line: 536, baseType: !197, size: 64, offset: 1280)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !356, file: !130, line: 537, baseType: !197, size: 64, offset: 1344)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !356, file: !130, line: 538, baseType: !197, size: 64, offset: 1408)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !356, file: !130, line: 539, baseType: !197, size: 64, offset: 1472)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !356, file: !130, line: 540, baseType: !197, size: 64, offset: 1536)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !356, file: !130, line: 541, baseType: !197, size: 64, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !356, file: !130, line: 542, baseType: !197, size: 64, offset: 1664)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !356, file: !130, line: 543, baseType: !197, size: 64, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !129, file: !130, line: 833, baseType: !98, size: 32, offset: 7680)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !129, file: !130, line: 836, baseType: !98, size: 32, offset: 7712)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !129, file: !130, line: 837, baseType: !16, size: 32, offset: 7744)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !129, file: !130, line: 838, baseType: !390, size: 64, offset: 7808)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !393, line: 19, baseType: !394)
!393 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !393, line: 19, size: 64, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !394, file: !393, line: 19, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 1)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !129, file: !130, line: 839, baseType: !401, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !129, file: !130, line: 840, baseType: !392, size: 64, offset: 7936)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !129, file: !130, line: 841, baseType: !14, size: 64, offset: 8000)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !129, file: !130, line: 843, baseType: !20, size: 16, offset: 8064)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !129, file: !130, line: 845, baseType: !20, size: 16, offset: 8080)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !129, file: !130, line: 848, baseType: !16, size: 32, offset: 8096)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !129, file: !130, line: 849, baseType: !408, size: 32, offset: 8128)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !130, line: 718, size: 32, elements: !409)
!409 = !{!410, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !408, file: !130, line: 724, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !130, line: 719, size: 32, elements: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !411, file: !130, line: 720, baseType: !77, size: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !411, file: !130, line: 721, baseType: !77, size: 8, offset: 8)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !411, file: !130, line: 722, baseType: !77, size: 8, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !411, file: !130, line: 723, baseType: !77, size: 8, offset: 24)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !408, file: !130, line: 725, baseType: !139, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !129, file: !130, line: 850, baseType: !91, size: 128, offset: 8192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !129, file: !130, line: 851, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !130, line: 60, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !129, file: !130, line: 855, baseType: !33, size: 64, offset: 8384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !129, file: !130, line: 856, baseType: !77, size: 8, offset: 8448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !129, file: !130, line: 857, baseType: !77, size: 8, offset: 8456)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !129, file: !130, line: 858, baseType: !16, size: 32, offset: 8480)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !129, file: !130, line: 859, baseType: !91, size: 128, offset: 8512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !129, file: !130, line: 860, baseType: !16, size: 32, offset: 8640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !129, file: !130, line: 861, baseType: !91, size: 128, offset: 8704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !129, file: !130, line: 873, baseType: !430, size: 256, offset: 8832)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !130, line: 376, size: 256, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !430, file: !130, line: 381, baseType: !33, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !430, file: !130, line: 384, baseType: !199, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !430, file: !130, line: 389, baseType: !199, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !430, file: !130, line: 392, baseType: !199, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !129, file: !130, line: 875, baseType: !91, size: 128, offset: 9088)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !129, file: !130, line: 877, baseType: !438, size: 320, offset: 9216)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !439, line: 86, size: 320, elements: !440)
!439 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!440 = !{!441, !442, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !438, file: !439, line: 87, baseType: !16, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !438, file: !439, line: 88, baseType: !91, size: 128, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !438, file: !439, line: 89, baseType: !91, size: 128, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !129, file: !130, line: 878, baseType: !189, size: 192, align: 64, offset: 9536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !129, file: !130, line: 881, baseType: !446, size: 64, offset: 9728)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !448, line: 733, size: 10240, elements: !449)
!448 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!449 = !{!450, !633}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !448, line: 734, baseType: !451, size: 10240)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !448, line: 734, size: 10240, elements: !452)
!452 = !{!453, !457, !471, !478, !479, !480, !481, !482, !483, !491, !492, !493, !499, !500, !507, !508, !509, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !550, !564, !567, !599, !600, !601, !604, !608, !609, !612, !613, !614, !620, !621}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !448, line: 739, baseType: !454, size: 512, align: 512)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !448, line: 739, size: 512, align: 512, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !454, file: !448, line: 747, baseType: !43, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !451, file: !448, line: 750, baseType: !458, size: 128, offset: 512)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !459, line: 218, size: 128, elements: !460)
!459 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!460 = !{!461, !469, !470}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !459, line: 219, baseType: !462, size: 32)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !459, line: 219, size: 32, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !462, file: !459, line: 220, baseType: !53, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !462, file: !459, line: 221, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !459, line: 197, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 197, elements: !468)
!468 = !{}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !458, file: !459, line: 223, baseType: !98, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !458, file: !459, line: 224, baseType: !14, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !451, file: !448, line: 752, baseType: !472, size: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!33, !475, !33, !33, !33, !33}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !477, line: 537, flags: DIFlagFwdDecl)
!477 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !451, file: !448, line: 756, baseType: !33, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !451, file: !448, line: 757, baseType: !33, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !451, file: !448, line: 760, baseType: !33, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !451, file: !448, line: 761, baseType: !33, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !451, file: !448, line: 763, baseType: !33, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !451, file: !448, line: 764, baseType: !484, size: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !477, line: 299, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 299, size: 64, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !486, file: !477, line: 299, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !490, line: 18, baseType: !33)
!490 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !451, file: !448, line: 773, baseType: !43, size: 32, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !451, file: !448, line: 785, baseType: !43, size: 32, offset: 1120)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !451, file: !448, line: 795, baseType: !494, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !448, line: 726, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !495, file: !448, line: 727, baseType: !197, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !495, file: !448, line: 728, baseType: !16, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !451, file: !448, line: 801, baseType: !33, size: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !451, file: !448, line: 804, baseType: !501, size: 64, offset: 1280)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !502, line: 13, baseType: !503)
!502 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !504, file: !19, line: 180, baseType: !208, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !451, file: !448, line: 806, baseType: !16, size: 32, offset: 1344)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !451, file: !448, line: 808, baseType: !53, size: 32, offset: 1376)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !451, file: !448, line: 823, baseType: !510, size: 320, offset: 1408)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !511, line: 48, size: 320, elements: !512)
!511 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!512 = !{!513, !514, !515, !520, !521}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !510, file: !511, line: 49, baseType: !501, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !510, file: !511, line: 55, baseType: !501, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !510, file: !511, line: 57, baseType: !516, size: 32, offset: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !517, line: 15, size: 32, elements: !518)
!517 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !516, file: !517, line: 20, baseType: !43, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !510, file: !511, line: 59, baseType: !289, size: 32, offset: 160)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !510, file: !511, line: 60, baseType: !91, size: 128, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !451, file: !448, line: 825, baseType: !91, size: 128, offset: 1728)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !451, file: !448, line: 845, baseType: !16, size: 32, offset: 1856)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !451, file: !448, line: 849, baseType: !33, size: 64, offset: 1920)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !451, file: !448, line: 850, baseType: !33, size: 64, offset: 1984)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !451, file: !448, line: 852, baseType: !33, size: 64, offset: 2048)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !451, file: !448, line: 853, baseType: !33, size: 64, offset: 2112)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !451, file: !448, line: 854, baseType: !503, size: 64, offset: 2176)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !451, file: !448, line: 855, baseType: !33, size: 64, offset: 2240)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !451, file: !448, line: 856, baseType: !33, size: 64, offset: 2304)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !451, file: !448, line: 857, baseType: !33, size: 64, offset: 2368)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !451, file: !448, line: 858, baseType: !33, size: 64, offset: 2432)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !451, file: !448, line: 865, baseType: !320, size: 32, offset: 2496)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !451, file: !448, line: 867, baseType: !53, size: 32, offset: 2528)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !451, file: !448, line: 869, baseType: !33, size: 64, offset: 2560)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !451, file: !448, line: 869, baseType: !33, size: 64, offset: 2624)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !451, file: !448, line: 869, baseType: !33, size: 64, offset: 2688)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !451, file: !448, line: 869, baseType: !33, size: 64, offset: 2752)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !451, file: !448, line: 870, baseType: !33, size: 64, offset: 2816)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !451, file: !448, line: 870, baseType: !33, size: 64, offset: 2880)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !451, file: !448, line: 870, baseType: !33, size: 64, offset: 2944)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !451, file: !448, line: 871, baseType: !33, size: 64, offset: 3008)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !451, file: !448, line: 871, baseType: !33, size: 64, offset: 3072)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !451, file: !448, line: 871, baseType: !33, size: 64, offset: 3136)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !451, file: !448, line: 871, baseType: !33, size: 64, offset: 3200)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !451, file: !448, line: 873, baseType: !547, size: 3328, offset: 3264)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 52)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !451, file: !448, line: 875, baseType: !551, size: 1280, offset: 6592)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 1280, elements: !562)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !553, line: 22, size: 320, elements: !554)
!553 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!554 = !{!555, !556, !557, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !552, file: !553, line: 23, baseType: !289, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !552, file: !553, line: 24, baseType: !208, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !552, file: !553, line: 26, baseType: !91, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !552, file: !553, line: 28, baseType: !559, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!562 = !{!563}
!563 = !DISubrange(count: 4)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !451, file: !448, line: 877, baseType: !565, size: 64, offset: 7872)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !448, line: 877, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !451, file: !448, line: 880, baseType: !568, size: 1088, offset: 7936)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !569, line: 72, baseType: !570)
!569 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 23, size: 1088, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !579, !580, !588, !589, !593, !594, !595}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !570, file: !569, line: 28, baseType: !197, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !570, file: !569, line: 38, baseType: !503, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !570, file: !569, line: 40, baseType: !33, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !570, file: !569, line: 43, baseType: !510, size: 320, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !570, file: !569, line: 44, baseType: !577, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !569, line: 44, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !569, line: 48, baseType: !33, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !569, line: 59, baseType: !581, size: 256, offset: 640)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !582, line: 66, size: 256, elements: !583)
!582 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!583 = !{!584, !585, !586, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !581, file: !582, line: 67, baseType: !501, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !581, file: !582, line: 68, baseType: !289, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !581, file: !582, line: 70, baseType: !516, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !581, file: !582, line: 72, baseType: !91, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !570, file: !569, line: 60, baseType: !14, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !570, file: !569, line: 61, baseType: !590, size: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !569, line: 61, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !570, file: !569, line: 63, baseType: !43, size: 32, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !570, file: !569, line: 69, baseType: !87, size: 16, offset: 1056)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !570, file: !569, line: 70, baseType: !596, size: 16, offset: 1072)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !78, line: 18, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !80, line: 23, baseType: !598)
!598 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !448, line: 882, baseType: !33, size: 64, offset: 9024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !451, file: !448, line: 885, baseType: !53, size: 32, offset: 9088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !451, file: !448, line: 886, baseType: !602, size: 64, offset: 9152)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !448, line: 732, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !451, file: !448, line: 901, baseType: !605, size: 64, offset: 9216)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !607, line: 18, flags: DIFlagFwdDecl)
!607 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !451, file: !448, line: 904, baseType: !475, size: 64, offset: 9280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !451, file: !448, line: 906, baseType: !610, size: 64, offset: 9344)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !448, line: 906, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !451, file: !448, line: 930, baseType: !43, size: 32, offset: 9408)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !451, file: !448, line: 933, baseType: !43, size: 32, offset: 9440)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !451, file: !448, line: 935, baseType: !615, size: 64, offset: 9472)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !119, line: 103, size: 64, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !615, file: !119, line: 104, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !119, line: 101, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !451, file: !448, line: 940, baseType: !501, size: 64, offset: 9536)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !451, file: !448, line: 942, baseType: !622, size: 256, offset: 9600)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !623, line: 98, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!624 = !{!625, !626, !627}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !622, file: !623, line: 99, baseType: !501, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !622, file: !623, line: 100, baseType: !91, size: 128, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !622, file: !623, line: 101, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !623, line: 21, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !447, file: !448, line: 986, baseType: !634, offset: 10240)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: -1)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !129, file: !130, line: 882, baseType: !446, size: 64, offset: 9792)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !129, file: !130, line: 884, baseType: !16, size: 32, offset: 9856)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !129, file: !130, line: 885, baseType: !16, size: 32, offset: 9888)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !129, file: !130, line: 886, baseType: !16, size: 32, offset: 9920)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !129, file: !130, line: 888, baseType: !16, size: 32, offset: 9952)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !129, file: !130, line: 890, baseType: !33, size: 64, offset: 9984)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !129, file: !130, line: 893, baseType: !98, size: 32, offset: 10048)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !129, file: !130, line: 896, baseType: !98, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !129, file: !130, line: 897, baseType: !98, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !129, file: !130, line: 898, baseType: !98, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !129, file: !130, line: 899, baseType: !98, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !129, file: !130, line: 919, baseType: !98, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !129, file: !130, line: 922, baseType: !98, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !129, file: !130, line: 923, baseType: !98, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !129, file: !130, line: 925, baseType: !98, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !129, file: !130, line: 939, baseType: !98, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !129, file: !130, line: 941, baseType: !98, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !129, file: !130, line: 944, baseType: !98, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !129, file: !130, line: 956, baseType: !98, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !129, file: !130, line: 962, baseType: !98, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !129, file: !130, line: 966, baseType: !98, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !129, file: !130, line: 969, baseType: !33, size: 64, offset: 10176)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !129, file: !130, line: 971, baseType: !660, size: 448, offset: 10240)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !661)
!661 = !{!662, !663, !669}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !660, file: !113, line: 26, baseType: !33, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !660, file: !113, line: 27, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !668}
!667 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !113, line: 28, baseType: !670, size: 320, offset: 128)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !113, line: 28, size: 320, elements: !671)
!671 = !{!672, !682, !707}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !670, file: !113, line: 37, baseType: !673, size: 320)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !113, line: 30, size: 320, elements: !674)
!674 = !{!675, !677, !678, !679, !680, !681}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !673, file: !113, line: 31, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !113, line: 32, baseType: !139, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !113, line: 33, baseType: !139, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !673, file: !113, line: 34, baseType: !139, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !673, file: !113, line: 35, baseType: !197, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !673, file: !113, line: 36, baseType: !676, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !670, file: !113, line: 47, baseType: !683, size: 192)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !113, line: 39, size: 192, elements: !684)
!684 = !{!685, !686, !687, !706}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !683, file: !113, line: 40, baseType: !312, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !113, line: 42, baseType: !688, size: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !113, line: 42, size: 64, elements: !689)
!689 = !{!690, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !688, file: !113, line: 43, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !693, line: 7, size: 128, elements: !694)
!693 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !693, line: 8, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !31, line: 93, baseType: !37)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !693, line: 9, baseType: !37, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !688, file: !113, line: 44, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !701, line: 7, size: 64, elements: !702)
!701 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !701, line: 8, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !701, line: 5, baseType: !560)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !701, line: 9, baseType: !560, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !683, file: !113, line: 46, baseType: !197, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !670, file: !113, line: 55, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !113, line: 49, size: 256, elements: !709)
!709 = !{!710, !713, !714, !715, !716}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !708, file: !113, line: 50, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !113, line: 14, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !708, file: !113, line: 51, baseType: !16, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !708, file: !113, line: 52, baseType: !16, size: 32, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !113, line: 53, baseType: !33, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !113, line: 54, baseType: !33, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !129, file: !130, line: 973, baseType: !718, size: 32, offset: 10688)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !19, line: 27, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !31, line: 28, baseType: !16)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !129, file: !130, line: 974, baseType: !718, size: 32, offset: 10720)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !129, file: !130, line: 978, baseType: !33, size: 64, offset: 10752)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !129, file: !130, line: 987, baseType: !128, size: 64, offset: 10816)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !130, line: 990, baseType: !128, size: 64, offset: 10880)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !129, file: !130, line: 995, baseType: !91, size: 128, offset: 10944)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !129, file: !130, line: 996, baseType: !91, size: 128, offset: 11072)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !129, file: !130, line: 997, baseType: !128, size: 64, offset: 11200)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !129, file: !130, line: 1005, baseType: !91, size: 128, offset: 11264)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !129, file: !130, line: 1006, baseType: !91, size: 128, offset: 11392)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !129, file: !130, line: 1009, baseType: !730, size: 64, offset: 11520)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !732, line: 59, size: 768, elements: !733)
!732 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!733 = !{!734, !735, !736, !737, !748, !749, !750, !759}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 61, baseType: !145, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !731, file: !732, line: 62, baseType: !98, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !732, line: 63, baseType: !53, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !731, file: !732, line: 65, baseType: !738, size: 256, offset: 128)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 256, elements: !562)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !739, file: !19, line: 195, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !19, line: 199, baseType: !742, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !743, file: !19, line: 199, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !731, file: !732, line: 66, baseType: !739, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !731, file: !732, line: 68, baseType: !48, size: 192, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !732, line: 69, baseType: !751, size: 128, align: 64, offset: 640)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !752)
!752 = !{!753, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !19, line: 233, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !751, file: !19, line: 234, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !754}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !731, file: !732, line: 70, baseType: !760, offset: 768)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, elements: !635)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !732, line: 54, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !761, file: !732, line: 55, baseType: !16, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !761, file: !732, line: 56, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !732, line: 56, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !129, file: !130, line: 1010, baseType: !768, size: 512, offset: 11584)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 512, elements: !562)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !129, file: !130, line: 1011, baseType: !91, size: 128, offset: 12096)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !129, file: !130, line: 1012, baseType: !91, size: 128, offset: 12224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !129, file: !130, line: 1014, baseType: !772, size: 64, offset: 12352)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !774, line: 26, size: 256, elements: !775)
!774 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !773, file: !774, line: 27, baseType: !98, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !773, file: !774, line: 28, baseType: !778, size: 192, offset: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !779, line: 43, size: 192, elements: !780)
!779 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !779, line: 44, baseType: !289, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !778, file: !779, line: 45, baseType: !91, size: 128, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !129, file: !130, line: 1017, baseType: !784, size: 64, offset: 12416)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !129, file: !130, line: 1020, baseType: !784, size: 64, offset: 12480)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !129, file: !130, line: 1023, baseType: !14, size: 64, offset: 12544)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !129, file: !130, line: 1025, baseType: !197, size: 64, offset: 12608)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !129, file: !130, line: 1026, baseType: !197, size: 64, offset: 12672)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !129, file: !130, line: 1031, baseType: !197, size: 64, offset: 12736)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !129, file: !130, line: 1032, baseType: !791, size: 192, offset: 12800)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !130, line: 324, size: 192, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !791, file: !130, line: 326, baseType: !197, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !791, file: !130, line: 327, baseType: !197, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !130, line: 328, baseType: !289, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !129, file: !130, line: 1041, baseType: !33, size: 64, offset: 12992)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !129, file: !130, line: 1042, baseType: !33, size: 64, offset: 13056)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !129, file: !130, line: 1045, baseType: !197, size: 64, offset: 13120)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !129, file: !130, line: 1048, baseType: !197, size: 64, offset: 13184)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !129, file: !130, line: 1051, baseType: !33, size: 64, offset: 13248)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !129, file: !130, line: 1052, baseType: !33, size: 64, offset: 13312)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !129, file: !130, line: 1055, baseType: !803, size: 640, offset: 13376)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !804, line: 132, size: 640, elements: !805)
!804 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!805 = !{!806, !814, !815}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !803, file: !804, line: 133, baseType: !807, size: 576)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 576, elements: !812)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !804, line: 117, size: 192, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !808, file: !804, line: 118, baseType: !197, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !808, file: !804, line: 119, baseType: !326, size: 128, offset: 64)
!812 = !{!813}
!813 = !DISubrange(count: 3)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !803, file: !804, line: 134, baseType: !98, size: 32, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !803, file: !804, line: 135, baseType: !98, size: 32, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !129, file: !130, line: 1058, baseType: !817, size: 448, offset: 14016)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !804, line: 144, size: 448, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !817, file: !804, line: 145, baseType: !751, size: 128, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !817, file: !804, line: 146, baseType: !581, size: 256, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !817, file: !804, line: 147, baseType: !98, size: 32, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !129, file: !130, line: 1064, baseType: !823, size: 64, offset: 14464)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !826, line: 110, size: 1472, elements: !827)
!826 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!827 = !{!828, !829, !836, !843, !844, !845, !846, !847, !848, !849, !850, !856, !857, !858, !859, !860, !861, !974, !975, !976, !977, !978, !1001, !1002, !1006, !1014}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !825, file: !826, line: 111, baseType: !501, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !825, file: !826, line: 112, baseType: !830, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !607, line: 23, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 21, size: 32, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !607, line: 22, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !825, file: !826, line: 113, baseType: !837, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !607, line: 28, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 26, size: 32, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !838, file: !607, line: 27, baseType: !841, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !825, file: !826, line: 114, baseType: !830, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !825, file: !826, line: 115, baseType: !837, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !825, file: !826, line: 116, baseType: !830, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !825, file: !826, line: 117, baseType: !837, size: 32, offset: 224)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !825, file: !826, line: 118, baseType: !830, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !825, file: !826, line: 119, baseType: !837, size: 32, offset: 288)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !825, file: !826, line: 120, baseType: !98, size: 32, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !825, file: !826, line: 121, baseType: !851, size: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !852, line: 24, baseType: !853)
!852 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 24, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !853, file: !852, line: 24, baseType: !197, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !825, file: !826, line: 122, baseType: !851, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !825, file: !826, line: 123, baseType: !851, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !825, file: !826, line: 124, baseType: !851, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !825, file: !826, line: 125, baseType: !851, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !825, file: !826, line: 127, baseType: !81, size: 8, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !825, file: !826, line: 129, baseType: !862, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !864, line: 195, size: 1728, elements: !865)
!864 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!865 = !{!866, !867, !870, !875, !876, !879, !880, !887, !888, !889, !890, !893, !894, !895, !896, !897, !938, !959}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !863, file: !864, line: 196, baseType: !145, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !863, file: !864, line: 197, baseType: !868, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !864, line: 28, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !560)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !864, line: 198, baseType: !871, size: 192, offset: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !864, line: 198, size: 192, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !871, file: !864, line: 199, baseType: !91, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !871, file: !864, line: 200, baseType: !189, size: 192, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !863, file: !864, line: 205, baseType: !510, size: 320, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !863, file: !864, line: 206, baseType: !877, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !864, line: 206, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !863, file: !864, line: 207, baseType: !14, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !864, line: 208, baseType: !881, size: 64, offset: 704)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !864, line: 208, size: 64, elements: !882)
!882 = !{!883, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !881, file: !864, line: 209, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !885, line: 8, baseType: !209)
!885 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!886 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !881, file: !864, line: 210, baseType: !884, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !863, file: !864, line: 212, baseType: !884, size: 64, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !863, file: !864, line: 213, baseType: !830, size: 32, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !863, file: !864, line: 214, baseType: !837, size: 32, offset: 864)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !863, file: !864, line: 215, baseType: !891, size: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !864, line: 31, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !139)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !863, file: !864, line: 216, baseType: !20, size: 16, offset: 928)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !863, file: !864, line: 217, baseType: !20, size: 16, offset: 944)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !863, file: !864, line: 221, baseType: !598, size: 16, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !864, line: 228, baseType: !33, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !864, line: 245, baseType: !898, size: 320, offset: 1088)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !864, line: 245, size: 320, elements: !899)
!899 = !{!900, !929}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !898, file: !864, line: 246, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !864, line: 114, size: 320, elements: !902)
!902 = !{!903, !904, !916, !919, !928}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !901, file: !864, line: 116, baseType: !33, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !864, line: 117, baseType: !905, size: 64, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !864, line: 117, size: 64, elements: !906)
!906 = !{!907, !915}
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !864, line: 118, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !905, file: !864, line: 118, size: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !908, file: !864, line: 120, baseType: !87, size: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !908, file: !864, line: 121, baseType: !912, size: 48, offset: 16)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 6)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !905, file: !864, line: 127, baseType: !33, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !901, file: !864, line: 129, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !864, line: 102, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !901, file: !864, line: 130, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !864, line: 108, size: 192, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !921, file: !864, line: 109, baseType: !751, size: 128, align: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !921, file: !864, line: 110, baseType: !145, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !921, file: !864, line: 111, baseType: !926, size: 8, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !927)
!927 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !901, file: !864, line: 131, baseType: !10, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !864, line: 247, baseType: !930, size: 320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !864, line: 247, size: 320, elements: !931)
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !930, file: !864, line: 248, baseType: !33, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !930, file: !864, line: 249, baseType: !33, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !930, file: !864, line: 250, baseType: !917, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !930, file: !864, line: 251, baseType: !920, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !930, file: !864, line: 252, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !864, line: 260, baseType: !939, size: 256, offset: 1408)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !864, line: 260, size: 256, elements: !940)
!940 = !{!941, !947}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !939, file: !864, line: 261, baseType: !942, size: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !864, line: 134, size: 256, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !942, file: !864, line: 135, baseType: !14, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !942, file: !864, line: 136, baseType: !946, size: 256)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !562)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !864, line: 262, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !864, line: 262, size: 256, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !948, file: !864, line: 264, baseType: !91, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !948, file: !864, line: 265, baseType: !952, size: 128, offset: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !953, line: 22, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!954 = !{!955, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !952, file: !953, line: 23, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !953, line: 23, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !952, file: !953, line: 24, baseType: !33, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !863, file: !864, line: 280, baseType: !960, size: 64, offset: 1664)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !864, line: 176, size: 192, elements: !962)
!962 = !{!963, !972, !973}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !961, file: !864, line: 177, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !864, line: 171, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!16, !862, !968, !970, !862}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !961, file: !864, line: 178, baseType: !862, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !961, file: !864, line: 179, baseType: !917, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !825, file: !826, line: 130, baseType: !862, size: 64, offset: 832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !825, file: !826, line: 131, baseType: !862, size: 64, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !825, file: !826, line: 132, baseType: !862, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !825, file: !826, line: 135, baseType: !14, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !825, file: !826, line: 137, baseType: !979, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !981, line: 14, size: 1088, elements: !982)
!981 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !980, file: !981, line: 15, baseType: !145, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !980, file: !981, line: 17, baseType: !552, size: 320, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !980, file: !981, line: 19, baseType: !33, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !980, file: !981, line: 20, baseType: !501, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !980, file: !981, line: 23, baseType: !743, size: 128, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !980, file: !981, line: 24, baseType: !830, size: 32, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !980, file: !981, line: 29, baseType: !501, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !980, file: !981, line: 36, baseType: !991, size: 320, offset: 768)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !992, line: 15, size: 320, elements: !993)
!992 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!993 = !{!994, !995, !996, !997, !998, !999, !1000}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !991, file: !992, line: 16, baseType: !289, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !991, file: !992, line: 18, baseType: !16, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !991, file: !992, line: 19, baseType: !16, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !991, file: !992, line: 20, baseType: !16, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !991, file: !992, line: 21, baseType: !16, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !991, file: !992, line: 22, baseType: !33, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !992, line: 23, baseType: !33, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !825, file: !826, line: 138, baseType: !605, size: 64, offset: 1152)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !825, file: !826, line: 139, baseType: !1003, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1005, line: 16, flags: DIFlagFwdDecl)
!1005 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !825, file: !826, line: 140, baseType: !1007, size: 64, offset: 1280)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !826, line: 25, size: 64, elements: !1009)
!1009 = !{!1010, !1011, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1008, file: !826, line: 26, baseType: !43, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1008, file: !826, line: 27, baseType: !16, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1008, file: !826, line: 28, baseType: !1013, offset: 64)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, elements: !635)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 142, baseType: !1015, size: 128, offset: 1344)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 142, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1015, file: !826, line: 143, baseType: !16, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1015, file: !826, line: 144, baseType: !751, size: 128, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !129, file: !130, line: 1067, baseType: !823, size: 64, offset: 14528)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !129, file: !130, line: 1070, baseType: !823, size: 64, offset: 14592)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !129, file: !130, line: 1074, baseType: !862, size: 64, offset: 14656)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !129, file: !130, line: 1084, baseType: !1023, size: 128, offset: 14720)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 16)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !129, file: !130, line: 1086, baseType: !1027, size: 64, offset: 14848)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !130, line: 55, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !129, file: !130, line: 1089, baseType: !1030, size: 64, offset: 14912)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1031, line: 12, size: 64, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1030, file: !1031, line: 13, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1031, line: 8, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !129, file: !130, line: 1090, baseType: !1037, size: 128, offset: 14976)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1038, line: 13, size: 128, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1037, file: !1038, line: 14, baseType: !91, size: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !129, file: !130, line: 1097, baseType: !1042, size: 64, offset: 15104)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !130, line: 50, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !129, file: !130, line: 1100, baseType: !1045, size: 64, offset: 15168)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !130, line: 1100, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !129, file: !130, line: 1103, baseType: !1048, size: 64, offset: 15232)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !130, line: 53, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !129, file: !130, line: 1107, baseType: !1051, size: 64, offset: 15296)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1053, line: 31, size: 576, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1054 = !{!1055, !1056, !1059, !1240, !1243, !1244, !1247, !1250, !1251}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1052, file: !1053, line: 32, baseType: !145, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1052, file: !1053, line: 33, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1053, line: 9, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1052, file: !1053, line: 34, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1062, line: 31, size: 8832, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/ipc_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b41e274c4c0ae39d94ad49bb38518e4e")
!1063 = !{!1064, !1130, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1155, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1061, file: !1062, line: 32, baseType: !1065, size: 5184)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 5184, elements: !812)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_ids", file: !1062, line: 18, size: 1728, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1084, !1085, !1086}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1066, file: !1062, line: 19, baseType: !16, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1066, file: !1062, line: 20, baseType: !20, size: 16, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1066, file: !1062, line: 21, baseType: !510, size: 320, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ipcs_idr", scope: !1066, file: !1062, line: 22, baseType: !1072, size: 192, offset: 384)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1073, line: 19, size: 192, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1074 = !{!1075, !1082, !1083}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1072, file: !1073, line: 20, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1077, line: 296, size: 128, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1076, file: !1077, line: 297, baseType: !53, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1076, file: !1077, line: 299, baseType: !126, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1076, file: !1077, line: 300, baseType: !14, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1072, file: !1073, line: 21, baseType: !98, size: 32, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1072, file: !1073, line: 22, baseType: !98, size: 32, offset: 160)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "max_idx", scope: !1066, file: !1062, line: 23, baseType: !16, size: 32, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "last_idx", scope: !1066, file: !1062, line: 24, baseType: !16, size: 32, offset: 608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "key_ht", scope: !1066, file: !1062, line: 28, baseType: !1087, size: 1088, offset: 640)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !1088, line: 81, size: 1088, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!1089 = !{!1090, !1093, !1094, !1095, !1125, !1126, !1127, !1128, !1129}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !1087, file: !1088, line: 82, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !1088, line: 26, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1087, file: !1088, line: 83, baseType: !98, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !1087, file: !1088, line: 84, baseType: !98, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1087, file: !1088, line: 85, baseType: !1096, size: 320, offset: 128)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !1088, line: 56, size: 320, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1112, !1114}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !1096, file: !1088, line: 57, baseType: !87, size: 16)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1096, file: !1088, line: 58, baseType: !87, size: 16, offset: 16)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !1096, file: !1088, line: 59, baseType: !87, size: 16, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !1096, file: !1088, line: 60, baseType: !87, size: 16, offset: 48)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1096, file: !1088, line: 61, baseType: !98, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !1096, file: !1088, line: 62, baseType: !87, size: 16, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !1096, file: !1088, line: 63, baseType: !926, size: 8, offset: 112)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !1096, file: !1088, line: 64, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !1088, line: 38, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!139, !1110, !139, !139}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !1096, file: !1088, line: 65, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !1088, line: 39, baseType: !1107)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !1096, file: !1088, line: 66, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !1088, line: 40, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!16, !1119, !1110}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !1088, line: 33, size: 128, elements: !1121)
!1121 = !{!1122, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1120, file: !1088, line: 34, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1120, file: !1088, line: 35, baseType: !1110, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !1087, file: !1088, line: 86, baseType: !926, size: 8, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1087, file: !1088, line: 87, baseType: !622, size: 256, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1087, file: !1088, line: 88, baseType: !581, size: 256, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1087, file: !1088, line: 89, baseType: !53, size: 32, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !1087, file: !1088, line: 90, baseType: !43, size: 32, offset: 1056)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sem_ctls", scope: !1061, file: !1062, line: 34, baseType: !1131, size: 128, offset: 5184)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !562)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "used_sems", scope: !1061, file: !1062, line: 35, baseType: !16, size: 32, offset: 5312)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmax", scope: !1061, file: !1062, line: 37, baseType: !98, size: 32, offset: 5344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmnb", scope: !1061, file: !1062, line: 38, baseType: !98, size: 32, offset: 5376)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmni", scope: !1061, file: !1062, line: 39, baseType: !98, size: 32, offset: 5408)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_bytes", scope: !1061, file: !1062, line: 40, baseType: !552, size: 320, offset: 5440)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_hdrs", scope: !1061, file: !1062, line: 41, baseType: !552, size: 320, offset: 5760)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmax", scope: !1061, file: !1062, line: 43, baseType: !29, size: 64, offset: 6080)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlall", scope: !1061, file: !1062, line: 44, baseType: !29, size: 64, offset: 6144)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "shm_tot", scope: !1061, file: !1062, line: 45, baseType: !33, size: 64, offset: 6208)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmni", scope: !1061, file: !1062, line: 46, baseType: !16, size: 32, offset: 6272)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "shm_rmid_forced", scope: !1061, file: !1062, line: 51, baseType: !16, size: 32, offset: 6304)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ipcns_nb", scope: !1061, file: !1062, line: 53, baseType: !1144, size: 192, offset: 6336)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1145, line: 54, size: 192, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1146 = !{!1147, !1153, !1154}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1144, file: !1145, line: 55, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1145, line: 51, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!16, !1152, !33, !14}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1144, file: !1145, line: 56, baseType: !1152, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1144, file: !1145, line: 57, baseType: !16, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mq_mnt", scope: !1061, file: !1062, line: 56, baseType: !1156, size: 64, offset: 6528)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1062, line: 56, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_count", scope: !1061, file: !1062, line: 59, baseType: !98, size: 32, offset: 6592)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_max", scope: !1061, file: !1062, line: 62, baseType: !98, size: 32, offset: 6624)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_max", scope: !1061, file: !1062, line: 63, baseType: !98, size: 32, offset: 6656)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_max", scope: !1061, file: !1062, line: 64, baseType: !98, size: 32, offset: 6688)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_default", scope: !1061, file: !1062, line: 65, baseType: !98, size: 32, offset: 6720)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_default", scope: !1061, file: !1062, line: 66, baseType: !98, size: 32, offset: 6752)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mq_set", scope: !1061, file: !1062, line: 68, baseType: !1165, size: 768, offset: 6784)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !1166)
!1166 = !{!1167, !1172}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1165, file: !6, line: 200, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!16, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1165, file: !6, line: 201, baseType: !1173, size: 704, offset: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !1174)
!1174 = !{!1175, !1222}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1173, file: !6, line: 195, baseType: !1176, size: 640)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !1177)
!1177 = !{!1178, !1190, !1191, !1192, !1212, !1213, !1215, !1221}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !6, line: 174, baseType: !1179, size: 192)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !6, line: 174, size: 192, elements: !1180)
!1180 = !{!1181, !1189}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !6, line: 175, baseType: !1182, size: 192)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !6, line: 175, size: 192, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1182, file: !6, line: 176, baseType: !27, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1182, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1182, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1182, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1182, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1179, file: !6, line: 182, baseType: !751, size: 128, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1176, file: !6, line: 184, baseType: !772, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1176, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1176, file: !6, line: 186, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !1195)
!1195 = !{!1196, !1197, !1201, !1208}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1194, file: !6, line: 205, baseType: !1165, size: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1194, file: !6, line: 206, baseType: !1198, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1171, !1193}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1194, file: !6, line: 207, baseType: !1202, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1194, file: !6, line: 209, baseType: !1209, size: 64, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!16, !1205, !27}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1176, file: !6, line: 187, baseType: !1171, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1176, file: !6, line: 188, baseType: !1214, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1176, file: !6, line: 189, baseType: !1216, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1217, file: !6, line: 158, baseType: !189, size: 192, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1217, file: !6, line: 159, baseType: !1205, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1176, file: !6, line: 190, baseType: !739, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1173, file: !6, line: 196, baseType: !332, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysctls", scope: !1061, file: !1062, line: 69, baseType: !1205, size: 64, offset: 7552)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_set", scope: !1061, file: !1062, line: 71, baseType: !1165, size: 768, offset: 7616)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_sysctls", scope: !1061, file: !1062, line: 72, baseType: !1205, size: 64, offset: 8384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1061, file: !1062, line: 75, baseType: !605, size: 64, offset: 8448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1061, file: !1062, line: 76, baseType: !1003, size: 64, offset: 8512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !1061, file: !1062, line: 78, baseType: !158, size: 64, offset: 8576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1061, file: !1062, line: 80, baseType: !1230, size: 192, offset: 8640)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1231, line: 9, size: 192, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1232 = !{!1233, !1234, !1238, !1239}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1230, file: !1231, line: 10, baseType: !501, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1230, file: !1231, line: 11, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1231, line: 7, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1230, file: !1231, line: 12, baseType: !98, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1230, file: !1231, line: 13, baseType: !145, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1052, file: !1053, line: 35, baseType: !1241, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1053, line: 8, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1052, file: !1053, line: 36, baseType: !765, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1052, file: !1053, line: 37, baseType: !1245, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1053, line: 37, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1052, file: !1053, line: 38, baseType: !1248, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1053, line: 38, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1052, file: !1053, line: 39, baseType: !1248, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1052, file: !1053, line: 40, baseType: !1252, size: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1053, line: 12, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !129, file: !130, line: 1110, baseType: !1255, size: 64, offset: 15360)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !804, line: 236, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !129, file: !130, line: 1111, baseType: !1258, size: 64, offset: 15424)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !130, line: 67, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !129, file: !130, line: 1112, baseType: !1261, size: 64, offset: 15488)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1262, line: 25, baseType: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 23, size: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1263, file: !1262, line: 24, baseType: !397, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !129, file: !130, line: 1113, baseType: !1261, size: 64, offset: 15552)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !129, file: !130, line: 1115, baseType: !1261, size: 64, offset: 15616)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !129, file: !130, line: 1116, baseType: !1269, size: 192, offset: 15680)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1005, line: 32, size: 192, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1269, file: !1005, line: 33, baseType: !91, size: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1269, file: !1005, line: 34, baseType: !1261, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !129, file: !130, line: 1117, baseType: !33, size: 64, offset: 15872)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !129, file: !130, line: 1118, baseType: !29, size: 64, offset: 15936)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !129, file: !130, line: 1119, baseType: !98, size: 32, offset: 16000)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !129, file: !130, line: 1121, baseType: !754, size: 64, offset: 16064)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !129, file: !130, line: 1125, baseType: !1278, size: 64, offset: 16128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !130, line: 43, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !129, file: !130, line: 1127, baseType: !830, size: 32, offset: 16192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !129, file: !130, line: 1128, baseType: !98, size: 32, offset: 16224)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !129, file: !130, line: 1130, baseType: !1283, size: 128, offset: 16256)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1284, line: 37, size: 128, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1283, file: !1284, line: 38, baseType: !16, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1283, file: !1284, line: 39, baseType: !43, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1283, file: !1284, line: 40, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1284, line: 24, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !129, file: !130, line: 1131, baseType: !1292, size: 256, offset: 16384)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1293, line: 12, size: 256, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1292, file: !1293, line: 13, baseType: !937, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1292, file: !1293, line: 14, baseType: !33, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1292, file: !1293, line: 15, baseType: !33, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1292, file: !1293, line: 16, baseType: !926, size: 8, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !129, file: !130, line: 1134, baseType: !197, size: 64, offset: 16640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !129, file: !130, line: 1135, baseType: !197, size: 64, offset: 16704)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !129, file: !130, line: 1138, baseType: !53, size: 32, offset: 16768)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !129, file: !130, line: 1141, baseType: !289, size: 32, offset: 16800)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !129, file: !130, line: 1143, baseType: !1304, size: 64, offset: 16832)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !130, line: 735, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1304, file: !130, line: 736, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !129, file: !130, line: 1147, baseType: !329, size: 128, offset: 16896)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !129, file: !130, line: 1149, baseType: !128, size: 64, offset: 17024)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !129, file: !130, line: 1151, baseType: !1311, size: 64, offset: 17088)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !130, line: 1151, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !129, file: !130, line: 1188, baseType: !14, size: 64, offset: 17152)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !129, file: !130, line: 1191, baseType: !1315, size: 64, offset: 17216)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !130, line: 44, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !129, file: !130, line: 1194, baseType: !1318, size: 64, offset: 17280)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !130, line: 45, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !129, file: !130, line: 1197, baseType: !1321, size: 64, offset: 17344)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !130, line: 61, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !129, file: !130, line: 1199, baseType: !1324, size: 64, offset: 17408)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !130, line: 52, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !129, file: !130, line: 1202, baseType: !1327, size: 64, offset: 17472)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !130, line: 48, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !129, file: !130, line: 1205, baseType: !33, size: 64, offset: 17536)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !129, file: !130, line: 1206, baseType: !1331, size: 64, offset: 17600)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1005, line: 14, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1005, line: 12, size: 384, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1005, line: 13, baseType: !1336, size: 384)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1005, line: 13, size: 384, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1336, file: !1005, line: 13, baseType: !16, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1336, file: !1005, line: 13, baseType: !16, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1336, file: !1005, line: 13, baseType: !16, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1336, file: !1005, line: 13, baseType: !1342, size: 256, offset: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1343, line: 37, size: 256, elements: !1344)
!1343 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1344 = !{!1345, !1350, !1363, !1369, !1379, !1406, !1411}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1342, file: !1343, line: 42, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 39, size: 64, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1346, file: !1343, line: 40, baseType: !719, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1346, file: !1343, line: 41, baseType: !835, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1342, file: !1343, line: 50, baseType: !1351, size: 192)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 45, size: 192, elements: !1352)
!1352 = !{!1353, !1355, !1356, !1362}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1351, file: !1343, line: 46, baseType: !1354, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !31, line: 95, baseType: !16)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1351, file: !1343, line: 47, baseType: !16, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1351, file: !1343, line: 48, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1343, line: 11, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1343, line: 8, size: 64, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1358, file: !1343, line: 9, baseType: !16, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1358, file: !1343, line: 10, baseType: !14, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1351, file: !1343, line: 49, baseType: !16, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1342, file: !1343, line: 57, baseType: !1364, size: 128)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 53, size: 128, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1364, file: !1343, line: 54, baseType: !719, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1364, file: !1343, line: 55, baseType: !835, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1364, file: !1343, line: 56, baseType: !1357, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1342, file: !1343, line: 66, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 60, size: 256, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1378}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1370, file: !1343, line: 61, baseType: !719, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1370, file: !1343, line: 62, baseType: !835, size: 32, offset: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1370, file: !1343, line: 63, baseType: !16, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1370, file: !1343, line: 64, baseType: !1376, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !31, line: 94, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !31, line: 15, baseType: !667)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1370, file: !1343, line: 65, baseType: !1376, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1342, file: !1343, line: 105, baseType: !1380, size: 256)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 69, size: 256, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1380, file: !1343, line: 70, baseType: !14, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !1343, line: 79, baseType: !1384, size: 192, offset: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !1343, line: 79, size: 192, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1395, !1400}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1384, file: !1343, line: 81, baseType: !16, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1384, file: !1343, line: 86, baseType: !598, size: 16)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1384, file: !1343, line: 92, baseType: !1389, size: 192)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1343, line: 88, size: 192, elements: !1390)
!1390 = !{!1391, !1393, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1389, file: !1343, line: 89, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !308)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1389, file: !1343, line: 90, baseType: !14, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1389, file: !1343, line: 91, baseType: !14, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1384, file: !1343, line: 97, baseType: !1396, size: 96)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1343, line: 94, size: 96, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1396, file: !1343, line: 95, baseType: !1392, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1396, file: !1343, line: 96, baseType: !140, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1384, file: !1343, line: 103, baseType: !1401, size: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1343, line: 99, size: 128, elements: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1401, file: !1343, line: 100, baseType: !33, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1401, file: !1343, line: 101, baseType: !140, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1401, file: !1343, line: 102, baseType: !140, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1342, file: !1343, line: 111, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 108, size: 128, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1407, file: !1343, line: 109, baseType: !667, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1407, file: !1343, line: 110, baseType: !16, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1342, file: !1343, line: 118, baseType: !1412, size: 128)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1343, line: 114, size: 128, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1412, file: !1343, line: 115, baseType: !14, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1412, file: !1343, line: 116, baseType: !16, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1412, file: !1343, line: 117, baseType: !98, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !129, file: !130, line: 1208, baseType: !1418, size: 448, offset: 17664)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1419, line: 12, size: 448, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1418, file: !1419, line: 15, baseType: !197, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1418, file: !1419, line: 17, baseType: !197, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1418, file: !1419, line: 19, baseType: !197, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1418, file: !1419, line: 21, baseType: !197, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1418, file: !1419, line: 29, baseType: !197, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1418, file: !1419, line: 35, baseType: !197, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1418, file: !1419, line: 44, baseType: !197, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !129, file: !130, line: 1215, baseType: !197, size: 64, offset: 18112)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !129, file: !130, line: 1217, baseType: !197, size: 64, offset: 18176)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !129, file: !130, line: 1219, baseType: !197, size: 64, offset: 18240)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !129, file: !130, line: 1223, baseType: !1432, size: 64, offset: 18304)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1433, line: 99, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1433, line: 99, size: 64, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1434, file: !1433, line: 99, baseType: !397, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !129, file: !130, line: 1225, baseType: !1438, size: 32, offset: 18368)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !316, line: 275, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !316, line: 275, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1439, file: !316, line: 275, baseType: !320, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !129, file: !130, line: 1226, baseType: !16, size: 32, offset: 18400)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !129, file: !130, line: 1227, baseType: !16, size: 32, offset: 18432)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !129, file: !130, line: 1231, baseType: !1445, size: 64, offset: 18496)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !130, line: 1231, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !129, file: !130, line: 1233, baseType: !91, size: 128, offset: 18560)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !129, file: !130, line: 1240, baseType: !1449, size: 64, offset: 18688)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !130, line: 62, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !129, file: !130, line: 1242, baseType: !1452, size: 64, offset: 18752)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !130, line: 1242, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !129, file: !130, line: 1244, baseType: !91, size: 128, offset: 18816)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !129, file: !130, line: 1245, baseType: !1456, size: 64, offset: 18944)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !130, line: 51, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !129, file: !130, line: 1246, baseType: !581, size: 256, offset: 19008)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !129, file: !130, line: 1247, baseType: !98, size: 32, offset: 19264)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !129, file: !130, line: 1250, baseType: !1461, size: 64, offset: 19328)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !130, line: 57, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !129, file: !130, line: 1251, baseType: !581, size: 256, offset: 19392)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !129, file: !130, line: 1252, baseType: !91, size: 128, offset: 19648)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !129, file: !130, line: 1259, baseType: !1466, size: 64, offset: 19776)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !130, line: 54, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !129, file: !130, line: 1260, baseType: !598, size: 16, offset: 19840)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !129, file: !130, line: 1261, baseType: !598, size: 16, offset: 19856)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !129, file: !130, line: 1314, baseType: !1471, size: 64, offset: 19904)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1473, line: 62, size: 256, align: 256, elements: !1474)
!1473 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1472, file: !1473, line: 75, baseType: !140, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1472, file: !1473, line: 90, baseType: !140, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1472, file: !1473, line: 112, baseType: !198, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1473, line: 132, baseType: !140, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1472, file: !1473, line: 140, baseType: !140, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1472, file: !1473, line: 149, baseType: !140, size: 32, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1472, file: !1473, line: 154, baseType: !1482, offset: 224)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !635)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !129, file: !130, line: 1315, baseType: !139, size: 32, offset: 19968)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !129, file: !130, line: 1316, baseType: !139, size: 32, offset: 20000)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !129, file: !130, line: 1321, baseType: !33, size: 64, offset: 20032)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !129, file: !130, line: 1325, baseType: !16, size: 32, offset: 20096)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !129, file: !130, line: 1326, baseType: !16, size: 32, offset: 20128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !129, file: !130, line: 1327, baseType: !16, size: 32, offset: 20160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !129, file: !130, line: 1328, baseType: !16, size: 32, offset: 20192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !129, file: !130, line: 1329, baseType: !751, size: 128, align: 64, offset: 20224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !129, file: !130, line: 1332, baseType: !1492, size: 128, offset: 20352)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1493, line: 51, size: 128, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1494 = !{!1495, !1500, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1492, file: !1493, line: 60, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1497, line: 7, size: 64, elements: !1498)
!1497 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1496, file: !1497, line: 12, baseType: !394, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1492, file: !1493, line: 63, baseType: !926, size: 8, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1492, file: !1493, line: 70, baseType: !926, size: 8, offset: 72)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !129, file: !130, line: 1335, baseType: !1503, size: 64, offset: 20480)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !130, line: 59, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !129, file: !130, line: 1337, baseType: !1506, size: 128, offset: 20544)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1493, line: 39, size: 128, elements: !1507)
!1507 = !{!1508, !1571, !1572}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1506, file: !1493, line: 40, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !448, line: 74, size: 512, align: 128, elements: !1511)
!1511 = !{!1512, !1513, !1565, !1570}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1510, file: !448, line: 75, baseType: !33, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !448, line: 83, baseType: !1514, size: 320, offset: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !448, line: 83, size: 320, elements: !1515)
!1515 = !{!1516, !1539, !1553, !1557, !1564}
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !448, line: 84, baseType: !1517, size: 320)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !448, line: 84, size: 320, elements: !1518)
!1518 = !{!1519, !1530, !1533, !1538}
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !448, line: 90, baseType: !1520, size: 128)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !448, line: 90, size: 128, elements: !1521)
!1521 = !{!1522, !1523, !1528, !1529}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1520, file: !448, line: 91, baseType: !91, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !448, line: 94, baseType: !1524, size: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !448, line: 94, size: 128, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1524, file: !448, line: 96, baseType: !14, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1524, file: !448, line: 98, baseType: !98, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1520, file: !448, line: 102, baseType: !91, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1520, file: !448, line: 103, baseType: !91, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1517, file: !448, line: 106, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !448, line: 32, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !448, line: 107, baseType: !1534, size: 64, offset: 192)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !448, line: 107, size: 64, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1534, file: !448, line: 108, baseType: !33, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1534, file: !448, line: 109, baseType: !33, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1517, file: !448, line: 117, baseType: !33, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !448, line: 119, baseType: !1540, size: 320)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !448, line: 119, size: 320, elements: !1541)
!1541 = !{!1542, !1543, !1546, !1547, !1548}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1540, file: !448, line: 124, baseType: !33, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1540, file: !448, line: 125, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !448, line: 125, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1540, file: !448, line: 126, baseType: !33, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1540, file: !448, line: 127, baseType: !33, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !448, line: 128, baseType: !1549, size: 64, offset: 256)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !448, line: 128, size: 64, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1549, file: !448, line: 133, baseType: !33, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1549, file: !448, line: 138, baseType: !501, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !448, line: 141, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !448, line: 141, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1554, file: !448, line: 142, baseType: !33, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !448, line: 144, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !448, line: 144, size: 128, elements: !1559)
!1559 = !{!1560, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1558, file: !448, line: 146, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !448, line: 146, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1558, file: !448, line: 147, baseType: !14, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1514, file: !448, line: 161, baseType: !751, size: 128, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !448, line: 164, baseType: !1566, size: 32, offset: 384)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !448, line: 164, size: 32, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1566, file: !448, line: 169, baseType: !43, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1566, file: !448, line: 177, baseType: !98, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1510, file: !448, line: 181, baseType: !43, size: 32, offset: 416)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1506, file: !1493, line: 42, baseType: !140, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1506, file: !1493, line: 43, baseType: !140, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !129, file: !130, line: 1340, baseType: !1574, size: 64, offset: 20672)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !130, line: 69, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !129, file: !130, line: 1351, baseType: !16, size: 32, offset: 20736)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !129, file: !130, line: 1352, baseType: !16, size: 32, offset: 20768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !129, file: !130, line: 1354, baseType: !33, size: 64, offset: 20800)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !129, file: !130, line: 1364, baseType: !197, size: 64, offset: 20864)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !129, file: !130, line: 1365, baseType: !197, size: 64, offset: 20928)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !129, file: !130, line: 1412, baseType: !33, size: 64, offset: 20992)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !129, file: !130, line: 1453, baseType: !1583, size: 64, offset: 21056)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !130, line: 1453, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !129, file: !130, line: 1457, baseType: !1586, size: 64, offset: 21120)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !119, line: 61, size: 576, elements: !1588)
!1588 = !{!1589, !1590, !1609, !1612, !1613, !1646, !1656}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1587, file: !119, line: 62, baseType: !118, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !119, line: 64, baseType: !1591, size: 192, offset: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !119, line: 64, size: 192, elements: !1592)
!1592 = !{!1593, !1604}
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !119, line: 65, baseType: !1594, size: 192)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !119, line: 65, size: 192, elements: !1595)
!1595 = !{!1596, !1603}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1594, file: !119, line: 66, baseType: !1597, size: 128)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1598, line: 50, size: 128, elements: !1599)
!1598 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1597, file: !1598, line: 52, baseType: !33, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1597, file: !1598, line: 54, baseType: !98, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1597, file: !1598, line: 55, baseType: !98, size: 32, offset: 96)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1594, file: !119, line: 67, baseType: !33, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !119, line: 70, baseType: !1605, size: 192)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !119, line: 70, size: 192, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1605, file: !119, line: 71, baseType: !751, size: 128, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1605, file: !119, line: 72, baseType: !33, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1587, file: !119, line: 76, baseType: !1610, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !119, line: 76, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1587, file: !119, line: 77, baseType: !33, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1587, file: !119, line: 79, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1598, line: 25, size: 256, elements: !1616)
!1616 = !{!1617, !1623, !1627}
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1598, line: 26, baseType: !1618, size: 128)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1598, line: 26, size: 128, elements: !1619)
!1619 = !{!1620, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1618, file: !1598, line: 27, baseType: !1621, size: 128)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1618, file: !1598, line: 28, baseType: !1621, size: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1615, file: !1598, line: 31, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1598, line: 23, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1598, line: 33, baseType: !1628, size: 64, offset: 192)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1598, line: 33, size: 64, elements: !1629)
!1629 = !{!1630, !1636, !1641}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1628, file: !1598, line: 38, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1628, file: !1598, line: 34, size: 64, elements: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1631, file: !1598, line: 35, baseType: !560, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1631, file: !1598, line: 36, baseType: !77, size: 8, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1631, file: !1598, line: 37, baseType: !77, size: 8, offset: 40)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1628, file: !1598, line: 42, baseType: !1637, size: 16)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1628, file: !1598, line: 39, size: 16, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1637, file: !1598, line: 40, baseType: !77, size: 8)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1637, file: !1598, line: 41, baseType: !77, size: 8, offset: 8)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1628, file: !1598, line: 46, baseType: !1642, size: 16)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1628, file: !1598, line: 43, size: 16, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1642, file: !1598, line: 44, baseType: !77, size: 8)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1642, file: !1598, line: 45, baseType: !77, size: 8, offset: 8)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1587, file: !119, line: 81, baseType: !1647, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !119, line: 85, size: 384, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1648, file: !119, line: 86, baseType: !1610, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1648, file: !119, line: 87, baseType: !33, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1648, file: !119, line: 88, baseType: !33, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1648, file: !119, line: 89, baseType: !33, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1648, file: !119, line: 90, baseType: !926, size: 8, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1648, file: !119, line: 92, baseType: !1647, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1587, file: !119, line: 82, baseType: !98, size: 32, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !129, file: !130, line: 1463, baseType: !1658, offset: 21184)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !130, line: 739, elements: !468)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !129, file: !130, line: 1470, baseType: !751, size: 128, align: 64, offset: 21184)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !129, file: !130, line: 1471, baseType: !145, size: 32, offset: 21312)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !129, file: !130, line: 1472, baseType: !16, size: 32, offset: 21344)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !129, file: !130, line: 1474, baseType: !128, size: 64, offset: 21376)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !129, file: !130, line: 1475, baseType: !1664, size: 320, offset: 21440)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1665, line: 11, size: 320, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1666 = !{!1667, !1668, !1669, !1674}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1664, file: !1665, line: 16, baseType: !743, size: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1664, file: !1665, line: 17, baseType: !33, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1664, file: !1665, line: 18, baseType: !1670, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !1665, line: 19, baseType: !139, size: 32, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !129, file: !130, line: 1478, baseType: !1676, size: 64, offset: 21760)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !130, line: 1478, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !129, file: !130, line: 1482, baseType: !145, size: 32, offset: 21824)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !129, file: !130, line: 1489, baseType: !14, size: 64, offset: 21888)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !129, file: !130, line: 1504, baseType: !14, size: 64, offset: 21952)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !129, file: !130, line: 1505, baseType: !198, size: 64, offset: 22016)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !129, file: !130, line: 1506, baseType: !197, size: 64, offset: 22080)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !129, file: !130, line: 1507, baseType: !198, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !129, file: !130, line: 1508, baseType: !198, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !129, file: !130, line: 1509, baseType: !198, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !129, file: !130, line: 1510, baseType: !751, size: 128, align: 64, offset: 22208)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !129, file: !130, line: 1511, baseType: !16, size: 32, offset: 22336)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !129, file: !130, line: 1515, baseType: !1689, size: 64, offset: 22400)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !159, line: 56, size: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1689, file: !159, line: 57, baseType: !162, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !129, file: !130, line: 1518, baseType: !1689, size: 64, offset: 22464)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !129, file: !130, line: 1528, baseType: !751, size: 128, align: 64, offset: 22528)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !129, file: !130, line: 1552, baseType: !1695, size: 35328, offset: 23040)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1696, line: 430, size: 35328, elements: !1697)
!1696 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1697 = !{!1698, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1727, !1728, !1729, !1730, !1731, !1732, !1735, !1736, !1737, !1738}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1695, file: !1696, line: 432, baseType: !1699, size: 192)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1700, size: 192, elements: !812)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1701, line: 16, size: 64, elements: !1702)
!1701 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1700, file: !1701, line: 17, baseType: !87, size: 16)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1700, file: !1701, line: 18, baseType: !87, size: 16, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1700, file: !1701, line: 19, baseType: !87, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1700, file: !1701, line: 19, baseType: !87, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1700, file: !1701, line: 19, baseType: !87, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1700, file: !1701, line: 19, baseType: !87, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1700, file: !1701, line: 19, baseType: !87, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1700, file: !1701, line: 20, baseType: !87, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1700, file: !1701, line: 20, baseType: !87, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1700, file: !1701, line: 20, baseType: !87, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1700, file: !1701, line: 20, baseType: !87, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1700, file: !1701, line: 20, baseType: !87, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1700, file: !1701, line: 20, baseType: !87, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1695, file: !1696, line: 436, baseType: !33, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1695, file: !1696, line: 440, baseType: !20, size: 16, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1695, file: !1696, line: 441, baseType: !20, size: 16, offset: 272)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1695, file: !1696, line: 442, baseType: !20, size: 16, offset: 288)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1695, file: !1696, line: 443, baseType: !20, size: 16, offset: 304)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1695, file: !1696, line: 447, baseType: !33, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1695, file: !1696, line: 448, baseType: !33, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1695, file: !1696, line: 459, baseType: !1724, size: 256, offset: 448)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 256, elements: !562)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1696, line: 428, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1695, file: !1696, line: 461, baseType: !33, size: 64, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1695, file: !1696, line: 463, baseType: !33, size: 64, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1695, file: !1696, line: 465, baseType: !33, size: 64, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1695, file: !1696, line: 466, baseType: !33, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1695, file: !1696, line: 467, baseType: !33, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1695, file: !1696, line: 473, baseType: !1733, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1696, line: 10, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1695, file: !1696, line: 480, baseType: !33, size: 64, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1695, file: !1696, line: 482, baseType: !98, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1695, file: !1696, line: 491, baseType: !139, size: 32, offset: 1184)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1695, file: !1696, line: 501, baseType: !1739, size: 33792, offset: 1536)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1740, line: 448, size: 33792, elements: !1741)
!1740 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1741 = !{!1742, !1743, !1744, !1910, !1911, !1917, !1918}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1739, file: !1740, line: 461, baseType: !98, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1739, file: !1740, line: 468, baseType: !33, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1739, file: !1740, line: 476, baseType: !1745, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1740, line: 356, size: 33280, align: 512, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1746, file: !1740, line: 358, baseType: !98, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1746, file: !1740, line: 361, baseType: !98, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1746, file: !1740, line: 364, baseType: !197, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1746, file: !1740, line: 367, baseType: !197, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1746, file: !1740, line: 370, baseType: !197, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1746, file: !1740, line: 373, baseType: !98, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1746, file: !1740, line: 376, baseType: !98, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1746, file: !1740, line: 391, baseType: !98, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1746, file: !1740, line: 394, baseType: !98, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1746, file: !1740, line: 397, baseType: !1758, size: 32768, offset: 512)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1740, line: 348, size: 32768, elements: !1759)
!1759 = !{!1760, !1775, !1816, !1893, !1906}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1758, file: !1740, line: 349, baseType: !1761, size: 896)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1740, line: 12, size: 896, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1774}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1761, file: !1740, line: 13, baseType: !139, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1761, file: !1740, line: 14, baseType: !139, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1761, file: !1740, line: 15, baseType: !139, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1761, file: !1740, line: 16, baseType: !139, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1761, file: !1740, line: 17, baseType: !139, size: 32, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1761, file: !1740, line: 18, baseType: !139, size: 32, offset: 160)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1761, file: !1740, line: 19, baseType: !139, size: 32, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1761, file: !1740, line: 22, baseType: !1771, size: 640, offset: 224)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 640, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 20)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1761, file: !1740, line: 25, baseType: !139, size: 32, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1758, file: !1740, line: 350, baseType: !1776, size: 4096, align: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1740, line: 34, size: 4096, align: 128, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1797, !1798, !1799, !1803, !1807, !1811}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1776, file: !1740, line: 35, baseType: !87, size: 16)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1776, file: !1740, line: 36, baseType: !87, size: 16, offset: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1776, file: !1740, line: 37, baseType: !87, size: 16, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1776, file: !1740, line: 38, baseType: !87, size: 16, offset: 48)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1740, line: 39, baseType: !1783, size: 128, offset: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !1740, line: 39, size: 128, elements: !1784)
!1784 = !{!1785, !1790}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1740, line: 40, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !1740, line: 40, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1786, file: !1740, line: 41, baseType: !197, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1786, file: !1740, line: 42, baseType: !197, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1740, line: 44, baseType: !1791, size: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !1740, line: 44, size: 128, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1791, file: !1740, line: 45, baseType: !139, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1791, file: !1740, line: 46, baseType: !139, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1791, file: !1740, line: 47, baseType: !139, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1791, file: !1740, line: 48, baseType: !139, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1776, file: !1740, line: 51, baseType: !139, size: 32, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1776, file: !1740, line: 52, baseType: !139, size: 32, offset: 224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1776, file: !1740, line: 55, baseType: !1800, size: 1024, offset: 256)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1776, file: !1740, line: 58, baseType: !1804, size: 2048, offset: 1280)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 2048, elements: !1805)
!1805 = !{!1806}
!1806 = !DISubrange(count: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1776, file: !1740, line: 60, baseType: !1808, size: 384, offset: 3328)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 384, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 12)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1740, line: 62, baseType: !1812, size: 384, offset: 3712)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !1740, line: 62, size: 384, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1812, file: !1740, line: 63, baseType: !1808, size: 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1812, file: !1740, line: 64, baseType: !1808, size: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1758, file: !1740, line: 351, baseType: !1817, size: 1088)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1740, line: 79, size: 1088, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1892}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1817, file: !1740, line: 80, baseType: !139, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1817, file: !1740, line: 81, baseType: !139, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1817, file: !1740, line: 82, baseType: !139, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1817, file: !1740, line: 83, baseType: !139, size: 32, offset: 96)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1817, file: !1740, line: 84, baseType: !139, size: 32, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1817, file: !1740, line: 85, baseType: !139, size: 32, offset: 160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1817, file: !1740, line: 86, baseType: !139, size: 32, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1817, file: !1740, line: 88, baseType: !1771, size: 640, offset: 224)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1817, file: !1740, line: 89, baseType: !77, size: 8, offset: 864)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1817, file: !1740, line: 90, baseType: !77, size: 8, offset: 872)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1817, file: !1740, line: 91, baseType: !77, size: 8, offset: 880)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1817, file: !1740, line: 92, baseType: !77, size: 8, offset: 888)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1817, file: !1740, line: 93, baseType: !77, size: 8, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1817, file: !1740, line: 94, baseType: !77, size: 8, offset: 904)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1817, file: !1740, line: 95, baseType: !1834, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1836, line: 11, size: 128, elements: !1837)
!1836 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1835, file: !1836, line: 12, baseType: !667, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1835, file: !1836, line: 13, baseType: !1840, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1842, line: 103, size: 1344, elements: !1843)
!1842 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1872, !1873, !1874}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1841, file: !1842, line: 109, baseType: !33, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1841, file: !1842, line: 110, baseType: !33, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1841, file: !1842, line: 111, baseType: !33, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1841, file: !1842, line: 112, baseType: !33, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1841, file: !1842, line: 113, baseType: !33, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1841, file: !1842, line: 114, baseType: !33, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1841, file: !1842, line: 117, baseType: !33, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1841, file: !1842, line: 118, baseType: !33, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1841, file: !1842, line: 119, baseType: !33, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1841, file: !1842, line: 120, baseType: !33, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1841, file: !1842, line: 121, baseType: !33, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1841, file: !1842, line: 122, baseType: !33, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1841, file: !1842, line: 123, baseType: !33, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1841, file: !1842, line: 124, baseType: !33, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1841, file: !1842, line: 125, baseType: !33, size: 64, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1841, file: !1842, line: 139, baseType: !33, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1841, file: !1842, line: 142, baseType: !33, size: 64, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1842, line: 144, baseType: !1862, size: 64, offset: 1088)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !1842, line: 144, size: 64, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1862, file: !1842, line: 146, baseType: !87, size: 16)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1862, file: !1842, line: 148, baseType: !197, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1862, file: !1842, line: 150, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1842, line: 59, size: 64, elements: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1867, file: !1842, line: 61, baseType: !197, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1867, file: !1842, line: 63, baseType: !197, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1867, file: !1842, line: 65, baseType: !197, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 153, baseType: !33, size: 64, offset: 1152)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1841, file: !1842, line: 154, baseType: !33, size: 64, offset: 1216)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1842, line: 156, baseType: !1875, size: 64, offset: 1280)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !1842, line: 156, size: 64, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1875, file: !1842, line: 158, baseType: !87, size: 16)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1875, file: !1842, line: 160, baseType: !197, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1875, file: !1842, line: 162, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1842, line: 69, size: 64, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1880, file: !1842, line: 71, baseType: !197, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1880, file: !1842, line: 73, baseType: !197, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1880, file: !1842, line: 75, baseType: !197, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1880, file: !1842, line: 77, baseType: !197, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1880, file: !1842, line: 80, baseType: !197, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !1842, line: 83, baseType: !197, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1880, file: !1842, line: 86, baseType: !197, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1880, file: !1842, line: 88, baseType: !197, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1880, file: !1842, line: 93, baseType: !197, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1880, file: !1842, line: 100, baseType: !197, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1817, file: !1740, line: 96, baseType: !139, size: 32, offset: 1024)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1758, file: !1740, line: 352, baseType: !1894, size: 4608, align: 512)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1740, line: 333, size: 4608, align: 512, elements: !1895)
!1895 = !{!1896, !1897, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1894, file: !1740, line: 334, baseType: !1776, size: 4096, align: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1894, file: !1740, line: 335, baseType: !1898, size: 512, offset: 4096)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1740, line: 312, size: 512, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1898, file: !1740, line: 313, baseType: !197, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1898, file: !1740, line: 314, baseType: !197, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1898, file: !1740, line: 315, baseType: !1903, size: 384, offset: 128)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !913)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1894, file: !1740, line: 336, baseType: !1905, offset: 4608)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !635)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1758, file: !1740, line: 353, baseType: !1907, size: 32768)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32768, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 4096)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1739, file: !1740, line: 484, baseType: !1745, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1739, file: !1740, line: 491, baseType: !1912, size: 128, offset: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1740, line: 404, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1912, file: !1740, line: 424, baseType: !197, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1912, file: !1740, line: 432, baseType: !98, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1912, file: !1740, line: 440, baseType: !98, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1739, file: !1740, line: 498, baseType: !1912, size: 128, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1739, file: !1740, line: 508, baseType: !1746, size: 33280, align: 512, offset: 512)
!1919 = !{!1920, !0, !1925, !1930, !1932, !1935, !1937, !1939, !1942, !1944, !1946, !1948}
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !1922, isLocal: true, isDefinition: true)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 80, elements: !1923)
!1923 = !{!1924}
!1924 = !DISubrange(count: 10)
!1925 = !DIGlobalVariableExpression(var: !1926, expr: !DIExpression())
!1926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !1927, isLocal: true, isDefinition: true)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !1928)
!1928 = !{!1929}
!1929 = !DISubrange(count: 11)
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !1392, isLocal: true, isDefinition: true)
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !1934, isLocal: true, isDefinition: true)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !1809)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !1934, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !1023, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(name: "mq_sysctls", scope: !2, file: !3, line: 23, type: !1941, isLocal: true, isDefinition: true)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !913)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "msg_max_limit_min", scope: !2, file: !3, line: 17, type: !16, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "msg_max_limit_max", scope: !2, file: !3, line: 18, type: !16, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "msg_maxsize_limit_min", scope: !2, file: !3, line: 20, type: !16, isLocal: true, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(name: "msg_maxsize_limit_max", scope: !2, file: !3, line: 21, type: !16, isLocal: true, isDefinition: true)
!1950 = !{i32 7, !"Dwarf Version", i32 5}
!1951 = !{i32 2, !"Debug Info Version", i32 3}
!1952 = !{i32 1, !"wchar_size", i32 2}
!1953 = !{i32 8, !"cf-protection-branch", i32 1}
!1954 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1955 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1956 = !{i32 1, !"Code Model", i32 2}
!1957 = !{i32 1, !"override-stack-alignment", i32 8}
!1958 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1959 = distinct !DISubprogram(name: "setup_mq_sysctls", scope: !3, file: !3, line: 118, type: !1960, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!926, !1060}
!1962 = !{!1963, !1964, !1965}
!1963 = !DILocalVariable(name: "ns", arg: 1, scope: !1959, file: !3, line: 118, type: !1060)
!1964 = !DILocalVariable(name: "tbl", scope: !1959, file: !3, line: 120, type: !27)
!1965 = !DILocalVariable(name: "i", scope: !1966, file: !3, line: 126, type: !16)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 125, column: 11)
!1967 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 125, column: 6)
!1968 = !DILocation(line: 118, column: 45, scope: !1959)
!1969 = !DILocation(line: 120, column: 2, scope: !1959)
!1970 = !DILocation(line: 120, column: 20, scope: !1959)
!1971 = !DILocation(line: 122, column: 20, scope: !1959)
!1972 = !DILocation(line: 122, column: 24, scope: !1959)
!1973 = !DILocation(line: 122, column: 2, scope: !1959)
!1974 = !DILocation(line: 124, column: 8, scope: !1959)
!1975 = !DILocation(line: 124, column: 6, scope: !1959)
!1976 = !DILocation(line: 125, column: 6, scope: !1967)
!1977 = !DILocation(line: 125, column: 6, scope: !1959)
!1978 = !DILocation(line: 126, column: 3, scope: !1966)
!1979 = !DILocation(line: 126, column: 7, scope: !1966)
!1980 = !DILocation(line: 128, column: 10, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 128, column: 3)
!1982 = !DILocation(line: 128, column: 8, scope: !1981)
!1983 = !DILocation(line: 128, column: 15, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 128, column: 3)
!1985 = !DILocation(line: 128, column: 17, scope: !1984)
!1986 = !DILocation(line: 128, column: 3, scope: !1981)
!1987 = !DILocation(line: 129, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 129, column: 8)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 128, column: 48)
!1990 = !DILocation(line: 129, column: 12, scope: !1988)
!1991 = !DILocation(line: 129, column: 15, scope: !1988)
!1992 = !DILocation(line: 129, column: 20, scope: !1988)
!1993 = !DILocation(line: 129, column: 8, scope: !1989)
!1994 = !DILocation(line: 130, column: 20, scope: !1988)
!1995 = !DILocation(line: 130, column: 24, scope: !1988)
!1996 = !DILocation(line: 130, column: 5, scope: !1988)
!1997 = !DILocation(line: 130, column: 9, scope: !1988)
!1998 = !DILocation(line: 130, column: 12, scope: !1988)
!1999 = !DILocation(line: 130, column: 17, scope: !1988)
!2000 = !DILocation(line: 132, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 132, column: 13)
!2002 = !DILocation(line: 132, column: 17, scope: !2001)
!2003 = !DILocation(line: 132, column: 20, scope: !2001)
!2004 = !DILocation(line: 132, column: 25, scope: !2001)
!2005 = !DILocation(line: 132, column: 13, scope: !1988)
!2006 = !DILocation(line: 133, column: 20, scope: !2001)
!2007 = !DILocation(line: 133, column: 24, scope: !2001)
!2008 = !DILocation(line: 133, column: 5, scope: !2001)
!2009 = !DILocation(line: 133, column: 9, scope: !2001)
!2010 = !DILocation(line: 133, column: 12, scope: !2001)
!2011 = !DILocation(line: 133, column: 17, scope: !2001)
!2012 = !DILocation(line: 135, column: 13, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 135, column: 13)
!2014 = !DILocation(line: 135, column: 17, scope: !2013)
!2015 = !DILocation(line: 135, column: 20, scope: !2013)
!2016 = !DILocation(line: 135, column: 25, scope: !2013)
!2017 = !DILocation(line: 135, column: 13, scope: !2001)
!2018 = !DILocation(line: 136, column: 20, scope: !2013)
!2019 = !DILocation(line: 136, column: 24, scope: !2013)
!2020 = !DILocation(line: 136, column: 5, scope: !2013)
!2021 = !DILocation(line: 136, column: 9, scope: !2013)
!2022 = !DILocation(line: 136, column: 12, scope: !2013)
!2023 = !DILocation(line: 136, column: 17, scope: !2013)
!2024 = !DILocation(line: 138, column: 13, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 138, column: 13)
!2026 = !DILocation(line: 138, column: 17, scope: !2025)
!2027 = !DILocation(line: 138, column: 20, scope: !2025)
!2028 = !DILocation(line: 138, column: 25, scope: !2025)
!2029 = !DILocation(line: 138, column: 13, scope: !2013)
!2030 = !DILocation(line: 139, column: 20, scope: !2025)
!2031 = !DILocation(line: 139, column: 24, scope: !2025)
!2032 = !DILocation(line: 139, column: 5, scope: !2025)
!2033 = !DILocation(line: 139, column: 9, scope: !2025)
!2034 = !DILocation(line: 139, column: 12, scope: !2025)
!2035 = !DILocation(line: 139, column: 17, scope: !2025)
!2036 = !DILocation(line: 141, column: 13, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 141, column: 13)
!2038 = !DILocation(line: 141, column: 17, scope: !2037)
!2039 = !DILocation(line: 141, column: 20, scope: !2037)
!2040 = !DILocation(line: 141, column: 25, scope: !2037)
!2041 = !DILocation(line: 141, column: 13, scope: !2025)
!2042 = !DILocation(line: 142, column: 20, scope: !2037)
!2043 = !DILocation(line: 142, column: 24, scope: !2037)
!2044 = !DILocation(line: 142, column: 5, scope: !2037)
!2045 = !DILocation(line: 142, column: 9, scope: !2037)
!2046 = !DILocation(line: 142, column: 12, scope: !2037)
!2047 = !DILocation(line: 142, column: 17, scope: !2037)
!2048 = !DILocation(line: 144, column: 5, scope: !2037)
!2049 = !DILocation(line: 144, column: 9, scope: !2037)
!2050 = !DILocation(line: 144, column: 12, scope: !2037)
!2051 = !DILocation(line: 144, column: 17, scope: !2037)
!2052 = !DILocation(line: 145, column: 3, scope: !1989)
!2053 = !DILocation(line: 128, column: 44, scope: !1984)
!2054 = !DILocation(line: 128, column: 3, scope: !1984)
!2055 = distinct !{!2055, !1986, !2056, !2057, !2058}
!2056 = !DILocation(line: 145, column: 3, scope: !1981)
!2057 = !{!"llvm.loop.mustprogress"}
!2058 = !{!"llvm.loop.unroll.disable"}
!2059 = !DILocation(line: 147, column: 45, scope: !1966)
!2060 = !DILocation(line: 147, column: 49, scope: !1966)
!2061 = !DILocation(line: 148, column: 22, scope: !1966)
!2062 = !DILocation(line: 147, column: 20, scope: !1966)
!2063 = !DILocation(line: 147, column: 3, scope: !1966)
!2064 = !DILocation(line: 147, column: 7, scope: !1966)
!2065 = !DILocation(line: 147, column: 18, scope: !1966)
!2066 = !DILocation(line: 150, column: 2, scope: !1967)
!2067 = !DILocation(line: 150, column: 2, scope: !1966)
!2068 = !DILocation(line: 151, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 151, column: 6)
!2070 = !DILocation(line: 151, column: 11, scope: !2069)
!2071 = !DILocation(line: 151, column: 6, scope: !1959)
!2072 = !DILocation(line: 152, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 151, column: 23)
!2074 = !DILocation(line: 152, column: 3, scope: !2073)
!2075 = !DILocation(line: 153, column: 22, scope: !2073)
!2076 = !DILocation(line: 153, column: 26, scope: !2073)
!2077 = !DILocation(line: 153, column: 3, scope: !2073)
!2078 = !DILocation(line: 154, column: 3, scope: !2073)
!2079 = !DILocation(line: 157, column: 2, scope: !1959)
!2080 = !DILocation(line: 158, column: 1, scope: !1959)
!2081 = !DISubprogram(name: "setup_sysctl_set", scope: !6, file: !6, line: 224, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !1171, !1193, !1168}
!2084 = distinct !DISubprogram(name: "set_is_seen", scope: !3, file: !3, line: 75, type: !1169, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2085 = !{!2086}
!2086 = !DILocalVariable(name: "set", arg: 1, scope: !2084, file: !3, line: 75, type: !1171)
!2087 = !DILocation(line: 75, column: 46, scope: !2084)
!2088 = !DILocation(line: 77, column: 10, scope: !2084)
!2089 = !DILocation(line: 77, column: 19, scope: !2084)
!2090 = !DILocation(line: 77, column: 28, scope: !2084)
!2091 = !DILocation(line: 77, column: 36, scope: !2084)
!2092 = !DILocation(line: 77, column: 46, scope: !2084)
!2093 = !DILocation(line: 77, column: 43, scope: !2084)
!2094 = !DILocation(line: 77, column: 2, scope: !2084)
!2095 = !DISubprogram(name: "kmemdup", scope: !2096, file: !2096, line: 219, type: !2097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2096 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!14, !1110, !29, !126}
!2099 = !DISubprogram(name: "__register_sysctl_table", scope: !6, file: !6, line: 229, type: !2100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!1205, !1171, !10, !27, !29}
!2102 = !DISubprogram(name: "kfree", scope: !2103, file: !2103, line: 227, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !1110}
!2106 = !DISubprogram(name: "retire_sysctl_set", scope: !6, file: !6, line: 227, type: !2107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !1171}
!2109 = distinct !DISubprogram(name: "retire_mq_sysctls", scope: !3, file: !3, line: 160, type: !2110, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !1060}
!2112 = !{!2113, !2114}
!2113 = !DILocalVariable(name: "ns", arg: 1, scope: !2109, file: !3, line: 160, type: !1060)
!2114 = !DILocalVariable(name: "tbl", scope: !2109, file: !3, line: 162, type: !27)
!2115 = !DILocation(line: 160, column: 46, scope: !2109)
!2116 = !DILocation(line: 162, column: 2, scope: !2109)
!2117 = !DILocation(line: 162, column: 20, scope: !2109)
!2118 = !DILocation(line: 164, column: 8, scope: !2109)
!2119 = !DILocation(line: 164, column: 12, scope: !2109)
!2120 = !DILocation(line: 164, column: 24, scope: !2109)
!2121 = !DILocation(line: 164, column: 6, scope: !2109)
!2122 = !DILocation(line: 165, column: 26, scope: !2109)
!2123 = !DILocation(line: 165, column: 30, scope: !2109)
!2124 = !DILocation(line: 165, column: 2, scope: !2109)
!2125 = !DILocation(line: 166, column: 21, scope: !2109)
!2126 = !DILocation(line: 166, column: 25, scope: !2109)
!2127 = !DILocation(line: 166, column: 2, scope: !2109)
!2128 = !DILocation(line: 167, column: 8, scope: !2109)
!2129 = !DILocation(line: 167, column: 2, scope: !2109)
!2130 = !DILocation(line: 168, column: 1, scope: !2109)
!2131 = !DISubprogram(name: "unregister_sysctl_table", scope: !6, file: !6, line: 234, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !1205}
!2134 = distinct !DISubprogram(name: "set_lookup", scope: !3, file: !3, line: 70, type: !1199, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "root", arg: 1, scope: !2134, file: !3, line: 70, type: !1193)
!2137 = !DILocation(line: 70, column: 64, scope: !2134)
!2138 = !DILocation(line: 72, column: 10, scope: !2134)
!2139 = !DILocation(line: 72, column: 19, scope: !2134)
!2140 = !DILocation(line: 72, column: 28, scope: !2134)
!2141 = !DILocation(line: 72, column: 36, scope: !2134)
!2142 = !DILocation(line: 72, column: 2, scope: !2134)
!2143 = distinct !DISubprogram(name: "mq_set_ownership", scope: !3, file: !3, line: 80, type: !1203, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2151, !2152}
!2145 = !DILocalVariable(name: "head", arg: 1, scope: !2143, file: !3, line: 80, type: !1205)
!2146 = !DILocalVariable(name: "uid", arg: 2, scope: !2143, file: !3, line: 81, type: !1206)
!2147 = !DILocalVariable(name: "gid", arg: 3, scope: !2143, file: !3, line: 81, type: !1207)
!2148 = !DILocalVariable(name: "ns", scope: !2143, file: !3, line: 83, type: !1060)
!2149 = !DILocalVariable(name: "__mptr", scope: !2150, file: !3, line: 84, type: !14)
!2150 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 84, column: 3)
!2151 = !DILocalVariable(name: "ns_root_uid", scope: !2143, file: !3, line: 86, type: !830)
!2152 = !DILocalVariable(name: "ns_root_gid", scope: !2143, file: !3, line: 87, type: !837)
!2153 = !DILocation(line: 80, column: 55, scope: !2143)
!2154 = !DILocation(line: 81, column: 17, scope: !2143)
!2155 = !DILocation(line: 81, column: 30, scope: !2143)
!2156 = !DILocation(line: 83, column: 2, scope: !2143)
!2157 = !DILocation(line: 83, column: 24, scope: !2143)
!2158 = !DILocation(line: 84, column: 3, scope: !2150)
!2159 = !DILocation(line: 84, column: 3, scope: !2143)
!2160 = !DILocation(line: 86, column: 2, scope: !2143)
!2161 = !DILocation(line: 86, column: 9, scope: !2143)
!2162 = !DILocation(line: 86, column: 33, scope: !2143)
!2163 = !DILocation(line: 86, column: 37, scope: !2143)
!2164 = !DILocation(line: 86, column: 23, scope: !2143)
!2165 = !DILocation(line: 87, column: 2, scope: !2143)
!2166 = !DILocation(line: 87, column: 9, scope: !2143)
!2167 = !DILocation(line: 87, column: 33, scope: !2143)
!2168 = !DILocation(line: 87, column: 37, scope: !2143)
!2169 = !DILocation(line: 87, column: 23, scope: !2143)
!2170 = !DILocation(line: 89, column: 3, scope: !2143)
!2171 = !DILocation(line: 89, column: 9, scope: !2143)
!2172 = !DILocation(line: 89, column: 34, scope: !2143)
!2173 = !DILocation(line: 89, column: 48, scope: !2143)
!2174 = !DILocation(line: 90, column: 3, scope: !2143)
!2175 = !DILocation(line: 90, column: 9, scope: !2143)
!2176 = !DILocation(line: 90, column: 34, scope: !2143)
!2177 = !DILocation(line: 90, column: 48, scope: !2143)
!2178 = !DILocation(line: 91, column: 1, scope: !2143)
!2179 = distinct !DISubprogram(name: "mq_permissions", scope: !3, file: !3, line: 93, type: !1210, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185}
!2181 = !DILocalVariable(name: "head", arg: 1, scope: !2179, file: !3, line: 93, type: !1205)
!2182 = !DILocalVariable(name: "table", arg: 2, scope: !2179, file: !3, line: 93, type: !27)
!2183 = !DILocalVariable(name: "mode", scope: !2179, file: !3, line: 95, type: !16)
!2184 = !DILocalVariable(name: "ns_root_uid", scope: !2179, file: !3, line: 96, type: !830)
!2185 = !DILocalVariable(name: "ns_root_gid", scope: !2179, file: !3, line: 97, type: !837)
!2186 = !DILocation(line: 93, column: 52, scope: !2179)
!2187 = !DILocation(line: 93, column: 76, scope: !2179)
!2188 = !DILocation(line: 95, column: 2, scope: !2179)
!2189 = !DILocation(line: 95, column: 6, scope: !2179)
!2190 = !DILocation(line: 95, column: 13, scope: !2179)
!2191 = !DILocation(line: 95, column: 20, scope: !2179)
!2192 = !DILocation(line: 96, column: 2, scope: !2179)
!2193 = !DILocation(line: 96, column: 9, scope: !2179)
!2194 = !DILocation(line: 97, column: 2, scope: !2179)
!2195 = !DILocation(line: 97, column: 9, scope: !2179)
!2196 = !DILocation(line: 99, column: 19, scope: !2179)
!2197 = !DILocation(line: 99, column: 2, scope: !2179)
!2198 = !DILocation(line: 101, column: 13, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 101, column: 13)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 101, column: 13)
!2201 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 101, column: 6)
!2202 = !DILocation(line: 101, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 101, column: 13)
!2204 = !DILocation(line: 101, column: 13, scope: !2200)
!2205 = !DILocation(line: 101, column: 6, scope: !2201)
!2206 = !DILocation(line: 101, column: 6, scope: !2179)
!2207 = !DILocation(line: 102, column: 8, scope: !2201)
!2208 = !DILocation(line: 102, column: 3, scope: !2201)
!2209 = !DILocation(line: 104, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 104, column: 11)
!2211 = !DILocation(line: 104, column: 11, scope: !2201)
!2212 = !DILocation(line: 105, column: 8, scope: !2210)
!2213 = !DILocation(line: 105, column: 3, scope: !2210)
!2214 = !DILocation(line: 107, column: 7, scope: !2179)
!2215 = !DILocation(line: 109, column: 10, scope: !2179)
!2216 = !DILocation(line: 109, column: 15, scope: !2179)
!2217 = !DILocation(line: 109, column: 24, scope: !2179)
!2218 = !DILocation(line: 109, column: 29, scope: !2179)
!2219 = !DILocation(line: 109, column: 21, scope: !2179)
!2220 = !DILocation(line: 109, column: 37, scope: !2179)
!2221 = !DILocation(line: 109, column: 35, scope: !2179)
!2222 = !DILocation(line: 110, column: 1, scope: !2179)
!2223 = !DILocation(line: 109, column: 2, scope: !2179)
!2224 = distinct !DISubprogram(name: "get_current", scope: !2225, file: !2225, line: 39, type: !2226, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2225 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!128}
!2228 = !{!2229, !2231, !2233}
!2229 = !DILocalVariable(name: "pscr_ret__", scope: !2230, file: !2225, line: 41, type: !128)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !2225, line: 41, column: 9)
!2231 = !DILocalVariable(name: "__vpp_verify", scope: !2232, file: !2225, line: 41, type: !1110)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !2225, line: 41, column: 9)
!2233 = !DILocalVariable(name: "pfo_val__", scope: !2234, file: !2225, line: 41, type: !197)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !2225, line: 41, column: 9)
!2235 = !DILocation(line: 41, column: 9, scope: !2230)
!2236 = !DILocation(line: 41, column: 9, scope: !2232)
!2237 = !DILocation(line: 41, column: 9, scope: !2234)
!2238 = !{i64 2148268070}
!2239 = !DILocation(line: 41, column: 9, scope: !2224)
!2240 = !DILocation(line: 41, column: 2, scope: !2224)
!2241 = distinct !DISubprogram(name: "make_kuid", scope: !607, file: !607, line: 143, type: !2242, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!830, !605, !834}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "from", arg: 1, scope: !2241, file: !607, line: 143, type: !605)
!2246 = !DILocalVariable(name: "uid", arg: 2, scope: !2241, file: !607, line: 143, type: !834)
!2247 = !DILocation(line: 143, column: 55, scope: !2241)
!2248 = !DILocation(line: 143, column: 67, scope: !2241)
!2249 = !DILocation(line: 145, column: 9, scope: !2241)
!2250 = !DILocation(line: 145, column: 2, scope: !2241)
!2251 = distinct !DISubprogram(name: "make_kgid", scope: !607, file: !607, line: 148, type: !2252, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!837, !605, !841}
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "from", arg: 1, scope: !2251, file: !607, line: 148, type: !605)
!2256 = !DILocalVariable(name: "gid", arg: 2, scope: !2251, file: !607, line: 148, type: !841)
!2257 = !DILocation(line: 148, column: 55, scope: !2251)
!2258 = !DILocation(line: 148, column: 67, scope: !2251)
!2259 = !DILocation(line: 150, column: 9, scope: !2251)
!2260 = !DILocation(line: 150, column: 2, scope: !2251)
!2261 = distinct !DISubprogram(name: "uid_valid", scope: !607, file: !607, line: 111, type: !2262, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!926, !830}
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "uid", arg: 1, scope: !2261, file: !607, line: 111, type: !830)
!2266 = !DILocation(line: 111, column: 37, scope: !2261)
!2267 = !DILocation(line: 113, column: 9, scope: !2261)
!2268 = !DILocation(line: 113, column: 25, scope: !2261)
!2269 = !DILocation(line: 113, column: 2, scope: !2261)
!2270 = distinct !DISubprogram(name: "gid_valid", scope: !607, file: !607, line: 116, type: !2271, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!926, !837}
!2273 = !{!2274}
!2274 = !DILocalVariable(name: "gid", arg: 1, scope: !2270, file: !607, line: 116, type: !837)
!2275 = !DILocation(line: 116, column: 37, scope: !2270)
!2276 = !DILocation(line: 118, column: 9, scope: !2270)
!2277 = !DILocation(line: 118, column: 25, scope: !2270)
!2278 = !DILocation(line: 118, column: 2, scope: !2270)
!2279 = distinct !DISubprogram(name: "__kuid_val", scope: !607, file: !607, line: 34, type: !2280, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!834, !830}
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "uid", arg: 1, scope: !2279, file: !607, line: 34, type: !830)
!2284 = !DILocation(line: 34, column: 39, scope: !2279)
!2285 = !DILocation(line: 36, column: 13, scope: !2279)
!2286 = !DILocation(line: 36, column: 2, scope: !2279)
!2287 = distinct !DISubprogram(name: "__kgid_val", scope: !607, file: !607, line: 39, type: !2288, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!841, !837}
!2290 = !{!2291}
!2291 = !DILocalVariable(name: "gid", arg: 1, scope: !2287, file: !607, line: 39, type: !837)
!2292 = !DILocation(line: 39, column: 39, scope: !2287)
!2293 = !DILocation(line: 41, column: 13, scope: !2287)
!2294 = !DILocation(line: 41, column: 2, scope: !2287)
!2295 = distinct !DISubprogram(name: "uid_eq", scope: !607, file: !607, line: 61, type: !2296, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!926, !830, !830}
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "left", arg: 1, scope: !2295, file: !607, line: 61, type: !830)
!2300 = !DILocalVariable(name: "right", arg: 2, scope: !2295, file: !607, line: 61, type: !830)
!2301 = !DILocation(line: 61, column: 34, scope: !2295)
!2302 = !DILocation(line: 61, column: 47, scope: !2295)
!2303 = !DILocation(line: 63, column: 9, scope: !2295)
!2304 = !DILocation(line: 63, column: 29, scope: !2295)
!2305 = !DILocation(line: 63, column: 26, scope: !2295)
!2306 = !DILocation(line: 63, column: 2, scope: !2295)
!2307 = !DISubprogram(name: "in_egroup_p", scope: !826, file: !826, line: 61, type: !2308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!16, !837}
