; ModuleID = 'kernel/delayacct.c'
source_filename = "kernel/delayacct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_delayacct__233_85_kernel_delayacct_sysctls_init\22, \22a\22\09\09"
module asm "__initcall__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7:\09\09\09"
module asm ".long\09__initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.task_delay_info = type { %struct.raw_spinlock, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }

@delayacct_key = hidden global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@__setup_str_delayacct_setup_enable = internal constant [10 x i8] c"delayacct\00", section ".init.rodata", align 1, !dbg !1992
@__setup_delayacct_setup_enable = internal global %struct.obs_kernel_param { ptr @__setup_str_delayacct_setup_enable, ptr @delayacct_setup_enable, i32 0 }, section ".init.setup", align 8, !dbg !1970
@.str = private unnamed_addr constant [16 x i8] c"task_delay_info\00", align 1, !dbg !1981
@delayacct_cache = hidden global ptr null, align 8, !dbg !1987
@init_task = external dso_local global %struct.task_struct, align 64
@delayacct_on = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !1985
@__UNIQUE_ID___addressable___initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7234 = internal global ptr @__initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7, section ".discard.addressable", align 8, !dbg !1983
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !1997
@kern_delayacct_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr null, i32 4, i16 420, i32 0, ptr @sysctl_delayacct, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 4) }, %struct.ctl_table zeroinitializer], align 16, !dbg !2012
@.str.2 = private unnamed_addr constant [21 x i8] c"kern_delayacct_table\00", align 1, !dbg !2002
@.str.3 = private unnamed_addr constant [15 x i8] c"task_delayacct\00", align 1, !dbg !2007
@sysctl_vals = external dso_local constant [0 x i32], align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_delayacct_setup_enable, ptr @__UNIQUE_ID___addressable___initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7234], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @delayacct_setup_enable(ptr noundef %str) #0 section ".init.text" align 16 !dbg !2045 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i32 1, ptr @delayacct_on, align 4, !dbg !2049
  ret i32 1, !dbg !2050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @delayacct_init() #1 align 16 !dbg !2051 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 144, i32 noundef 8, i32 noundef 262144, ptr noundef null) #8, !dbg !2052
  store ptr %call, ptr @delayacct_cache, align 8, !dbg !2053
  call void @delayacct_tsk_init(ptr noundef @init_task) #8, !dbg !2054
  %0 = load i32, ptr @delayacct_on, align 4, !dbg !2055
  %tobool = icmp ne i32 %0, 0, !dbg !2055
  call void @set_delayacct(i1 noundef zeroext %tobool) #8, !dbg !2056
  ret void, !dbg !2057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2058 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayacct_tsk_init(ptr noundef %tsk) #3 align 16 !dbg !2065 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !2069, metadata !DIExpression()), !dbg !2070
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !2071
  %delays = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 169, !dbg !2072
  store ptr null, ptr %delays, align 8, !dbg !2073
  %1 = load i32, ptr @delayacct_on, align 4, !dbg !2074
  %tobool = icmp ne i32 %1, 0, !dbg !2074
  br i1 %tobool, label %if.then, label %if.end, !dbg !2076

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !2077
  call void @__delayacct_tsk_init(ptr noundef %2) #8, !dbg !2078
  br label %if.end, !dbg !2078

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_delayacct(i1 noundef zeroext %enabled) #1 align 16 !dbg !2080 {
entry:
  %enabled.addr = alloca i8, align 1
  %frombool = zext i1 %enabled to i8
  store i8 %frombool, ptr %enabled.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !2084, metadata !DIExpression()), !dbg !2085
  %0 = load i8, ptr %enabled.addr, align 1, !dbg !2086, !range !2088, !noundef !469
  %tobool = trunc i8 %0 to i1, !dbg !2086
  br i1 %tobool, label %if.then, label %if.else, !dbg !2089

if.then:                                          ; preds = %entry
  call void @static_key_enable(ptr noundef @delayacct_key) #8, !dbg !2090
  store i32 1, ptr @delayacct_on, align 4, !dbg !2092
  br label %if.end, !dbg !2093

if.else:                                          ; preds = %entry
  store i32 0, ptr @delayacct_on, align 4, !dbg !2094
  call void @static_key_disable(ptr noundef @delayacct_key) #8, !dbg !2096
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2097
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7() #0 section ".init.text" align 16 !dbg !2098 {
entry:
  %call = call i32 @kernel_delayacct_sysctls_init() #9, !dbg !2101
  ret i32 %call, !dbg !2101
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kernel_delayacct_sysctls_init() #0 section ".init.text" align 16 !dbg !2102 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str.1, ptr noundef @kern_delayacct_table, ptr noundef @.str.2, i64 noundef 2) #8, !dbg !2103
  ret i32 0, !dbg !2104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_tsk_init(ptr noundef %tsk) #1 align 16 !dbg !2105 {
entry:
  %tsk.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !2107, metadata !DIExpression()), !dbg !2108
  %0 = load ptr, ptr @delayacct_cache, align 8, !dbg !2109
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 3264) #8, !dbg !2110
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !2111
  %delays = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 169, !dbg !2112
  store ptr %call, ptr %delays, align 8, !dbg !2113
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !2114
  %delays1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 169, !dbg !2116
  %3 = load ptr, ptr %delays1, align 8, !dbg !2116
  %tobool = icmp ne ptr %3, null, !dbg !2114
  br i1 %tobool, label %if.then, label %if.end, !dbg !2117

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2118

do.body:                                          ; preds = %if.then
  %4 = load ptr, ptr %tsk.addr, align 8, !dbg !2119
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 169, !dbg !2119
  %5 = load ptr, ptr %delays2, align 8, !dbg !2119
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 0, !dbg !2119
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2119
  %6 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2119
  %counter = getelementptr inbounds %struct.atomic_t, ptr %6, i32 0, i32 0, !dbg !2119
  store i32 0, ptr %counter, align 4, !dbg !2119
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2119
  br label %do.end, !dbg !2119

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !2119

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !2121
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #3 align 16 !dbg !2122 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2126, metadata !DIExpression()), !dbg !2128
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2127, metadata !DIExpression()), !dbg !2129
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2130
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2131
  %or = or i32 %1, 256, !dbg !2132
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #8, !dbg !2133
  ret ptr %call, !dbg !2134
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_blkio_start() #1 align 16 !dbg !2135 {
entry:
  %call = call i64 @local_clock() #8, !dbg !2136
  %call1 = call ptr @get_current() #8, !dbg !2137
  %delays = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2138
  %0 = load ptr, ptr %delays, align 8, !dbg !2138
  %blkio_start = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 1, !dbg !2139
  store i64 %call, ptr %blkio_start, align 8, !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2142 dso_local i64 @local_clock() #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !2146 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2151, metadata !DIExpression()), !dbg !2157
  br label %do.body, !dbg !2157

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !2158
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2153, metadata !DIExpression()), !dbg !2158
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2158
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !2157
  br label %do.cond, !dbg !2158

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2158

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !2159
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2155, metadata !DIExpression()), !dbg !2159
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !2159, !srcloc !2160
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2159
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2159
  %3 = inttoptr i64 %2 to ptr, !dbg !2159
  store ptr %3, ptr %tmp, align 8, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !2157
  %4 = load ptr, ptr %tmp, align 8, !dbg !2159
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2157
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2157
  store ptr %5, ptr %tmp1, align 8, !dbg !2157
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !2161
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2157
  ret ptr %6, !dbg !2162
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_blkio_end(ptr noundef %p) #1 align 16 !dbg !2163 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2165, metadata !DIExpression()), !dbg !2166
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2167
  %delays = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 169, !dbg !2168
  %1 = load ptr, ptr %delays, align 8, !dbg !2168
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 0, !dbg !2169
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2170
  %delays1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 169, !dbg !2171
  %3 = load ptr, ptr %delays1, align 8, !dbg !2171
  %blkio_start = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 1, !dbg !2172
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2173
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 169, !dbg !2174
  %5 = load ptr, ptr %delays2, align 8, !dbg !2174
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 2, !dbg !2175
  %6 = load ptr, ptr %p.addr, align 8, !dbg !2176
  %delays3 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 169, !dbg !2177
  %7 = load ptr, ptr %delays3, align 8, !dbg !2177
  %blkio_count = getelementptr inbounds %struct.task_delay_info, ptr %7, i32 0, i32 5, !dbg !2178
  call void @delayacct_end(ptr noundef %lock, ptr noundef %blkio_start, ptr noundef %blkio_delay, ptr noundef %blkio_count) #8, !dbg !2179
  ret void, !dbg !2180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayacct_end(ptr noundef %lock, ptr noundef %start, ptr noundef %total, ptr noundef %count) #1 align 16 !dbg !2181 {
entry:
  %lock.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %total.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %ns = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2187, metadata !DIExpression()), !dbg !2203
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2188, metadata !DIExpression()), !dbg !2204
  store ptr %total, ptr %total.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %total.addr, metadata !2189, metadata !DIExpression()), !dbg !2205
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2190, metadata !DIExpression()), !dbg !2206
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #10, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2191, metadata !DIExpression()), !dbg !2208
  %call = call i64 @local_clock() #8, !dbg !2209
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2210
  %1 = load i64, ptr %0, align 8, !dbg !2211
  %sub = sub i64 %call, %1, !dbg !2212
  store i64 %sub, ptr %ns, align 8, !dbg !2208
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !2213
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2192, metadata !DIExpression()), !dbg !2214
  %2 = load i64, ptr %ns, align 8, !dbg !2215
  %cmp = icmp sgt i64 %2, 0, !dbg !2216
  br i1 %cmp, label %if.then, label %if.end, !dbg !2217

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2218

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2193, metadata !DIExpression()), !dbg !2219
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2198, metadata !DIExpression()), !dbg !2219
  %cmp1 = icmp eq ptr %__dummy, %__dummy2, !dbg !2219
  %conv = zext i1 %cmp1 to i32, !dbg !2219
  store i32 1, ptr %tmp, align 4, !dbg !2219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !2220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !2220
  %3 = load i32, ptr %tmp, align 4, !dbg !2219
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !2220
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %4) #8, !dbg !2220
  store i64 %call2, ptr %flags, align 8, !dbg !2220
  br label %do.cond, !dbg !2220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2220

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ns, align 8, !dbg !2221
  %6 = load ptr, ptr %total.addr, align 8, !dbg !2222
  %7 = load i64, ptr %6, align 8, !dbg !2223
  %add = add i64 %7, %5, !dbg !2223
  store i64 %add, ptr %6, align 8, !dbg !2223
  %8 = load ptr, ptr %count.addr, align 8, !dbg !2224
  %9 = load i32, ptr %8, align 4, !dbg !2225
  %inc = add i32 %9, 1, !dbg !2225
  store i32 %inc, ptr %8, align 4, !dbg !2225
  br label %do.body3, !dbg !2226

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #10, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !2199, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #10, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !2202, metadata !DIExpression()), !dbg !2227
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !2227
  %conv7 = zext i1 %cmp6 to i32, !dbg !2227
  store i32 1, ptr %tmp8, align 4, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #10, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #10, !dbg !2228
  %10 = load i32, ptr %tmp8, align 4, !dbg !2227
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !2228
  %12 = load i64, ptr %flags, align 8, !dbg !2228
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i64 noundef %12) #8, !dbg !2228
  br label %do.cond9, !dbg !2228

do.cond9:                                         ; preds = %do.body3
  br label %do.end10, !dbg !2228

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !2229

if.end:                                           ; preds = %do.end10, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !2230
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #10, !dbg !2230
  ret void, !dbg !2230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @delayacct_add_tsk(ptr noundef %d, ptr noundef %tsk) #1 align 16 !dbg !2231 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca ptr, align 8
  %tsk.addr = alloca ptr, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %stimescaled = alloca i64, align 8
  %utimescaled = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  %flags = alloca i64, align 8
  %t1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  %__dummy134 = alloca i64, align 8
  %__dummy2135 = alloca i64, align 8
  %tmp138 = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2235, metadata !DIExpression()), !dbg !2254
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !2236, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 8, ptr %utime) #10, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %utime, metadata !2237, metadata !DIExpression()), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #10, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !2238, metadata !DIExpression()), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 8, ptr %stimescaled) #10, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %stimescaled, metadata !2239, metadata !DIExpression()), !dbg !2259
  call void @llvm.lifetime.start.p0(i64 8, ptr %utimescaled) #10, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %utimescaled, metadata !2240, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #10, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !2241, metadata !DIExpression()), !dbg !2262
  call void @llvm.lifetime.start.p0(i64 8, ptr %t3) #10, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %t3, metadata !2242, metadata !DIExpression()), !dbg !2263
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2243, metadata !DIExpression()), !dbg !2265
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #10, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !2244, metadata !DIExpression()), !dbg !2266
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2245, metadata !DIExpression()), !dbg !2268
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !2269
  %call = call zeroext i1 @task_cputime(ptr noundef %0, ptr noundef %utime, ptr noundef %stime) #8, !dbg !2270
  %1 = load ptr, ptr %d.addr, align 8, !dbg !2271
  %cpu_run_real_total = getelementptr inbounds %struct.taskstats, ptr %1, i32 0, i32 10, !dbg !2272
  %2 = load i64, ptr %cpu_run_real_total, align 8, !dbg !2272
  store i64 %2, ptr %tmp, align 8, !dbg !2273
  %3 = load i64, ptr %utime, align 8, !dbg !2274
  %4 = load i64, ptr %stime, align 8, !dbg !2275
  %add = add i64 %3, %4, !dbg !2276
  %5 = load i64, ptr %tmp, align 8, !dbg !2277
  %add1 = add i64 %5, %add, !dbg !2277
  store i64 %add1, ptr %tmp, align 8, !dbg !2277
  %6 = load i64, ptr %tmp, align 8, !dbg !2278
  %7 = load ptr, ptr %d.addr, align 8, !dbg !2279
  %cpu_run_real_total2 = getelementptr inbounds %struct.taskstats, ptr %7, i32 0, i32 10, !dbg !2280
  %8 = load i64, ptr %cpu_run_real_total2, align 8, !dbg !2280
  %cmp = icmp slt i64 %6, %8, !dbg !2281
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2282

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2282

cond.false:                                       ; preds = %entry
  %9 = load i64, ptr %tmp, align 8, !dbg !2283
  br label %cond.end, !dbg !2282

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %9, %cond.false ], !dbg !2282
  %10 = load ptr, ptr %d.addr, align 8, !dbg !2284
  %cpu_run_real_total3 = getelementptr inbounds %struct.taskstats, ptr %10, i32 0, i32 10, !dbg !2285
  store i64 %cond, ptr %cpu_run_real_total3, align 8, !dbg !2286
  %11 = load ptr, ptr %tsk.addr, align 8, !dbg !2287
  call void @task_cputime_scaled(ptr noundef %11, ptr noundef %utimescaled, ptr noundef %stimescaled) #8, !dbg !2288
  %12 = load ptr, ptr %d.addr, align 8, !dbg !2289
  %cpu_scaled_run_real_total = getelementptr inbounds %struct.taskstats, ptr %12, i32 0, i32 41, !dbg !2290
  %13 = load i64, ptr %cpu_scaled_run_real_total, align 8, !dbg !2290
  store i64 %13, ptr %tmp, align 8, !dbg !2291
  %14 = load i64, ptr %utimescaled, align 8, !dbg !2292
  %15 = load i64, ptr %stimescaled, align 8, !dbg !2293
  %add4 = add i64 %14, %15, !dbg !2294
  %16 = load i64, ptr %tmp, align 8, !dbg !2295
  %add5 = add i64 %16, %add4, !dbg !2295
  store i64 %add5, ptr %tmp, align 8, !dbg !2295
  %17 = load i64, ptr %tmp, align 8, !dbg !2296
  %18 = load ptr, ptr %d.addr, align 8, !dbg !2297
  %cpu_scaled_run_real_total6 = getelementptr inbounds %struct.taskstats, ptr %18, i32 0, i32 41, !dbg !2298
  %19 = load i64, ptr %cpu_scaled_run_real_total6, align 8, !dbg !2298
  %cmp7 = icmp slt i64 %17, %19, !dbg !2299
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !2300

cond.true8:                                       ; preds = %cond.end
  br label %cond.end10, !dbg !2300

cond.false9:                                      ; preds = %cond.end
  %20 = load i64, ptr %tmp, align 8, !dbg !2301
  br label %cond.end10, !dbg !2300

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i64 [ 0, %cond.true8 ], [ %20, %cond.false9 ], !dbg !2300
  %21 = load ptr, ptr %d.addr, align 8, !dbg !2302
  %cpu_scaled_run_real_total12 = getelementptr inbounds %struct.taskstats, ptr %21, i32 0, i32 41, !dbg !2303
  store i64 %cond11, ptr %cpu_scaled_run_real_total12, align 8, !dbg !2304
  %22 = load ptr, ptr %tsk.addr, align 8, !dbg !2305
  %sched_info = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 45, !dbg !2306
  %pcount = getelementptr inbounds %struct.sched_info, ptr %sched_info, i32 0, i32 0, !dbg !2307
  %23 = load i64, ptr %pcount, align 16, !dbg !2307
  store i64 %23, ptr %t1, align 8, !dbg !2308
  %24 = load ptr, ptr %tsk.addr, align 8, !dbg !2309
  %sched_info13 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 45, !dbg !2310
  %run_delay = getelementptr inbounds %struct.sched_info, ptr %sched_info13, i32 0, i32 1, !dbg !2311
  %25 = load i64, ptr %run_delay, align 8, !dbg !2311
  store i64 %25, ptr %t2, align 8, !dbg !2312
  %26 = load ptr, ptr %tsk.addr, align 8, !dbg !2313
  %se = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 18, !dbg !2314
  %sum_exec_runtime = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 7, !dbg !2315
  %27 = load i64, ptr %sum_exec_runtime, align 8, !dbg !2315
  store i64 %27, ptr %t3, align 8, !dbg !2316
  %28 = load i64, ptr %t1, align 8, !dbg !2317
  %29 = load ptr, ptr %d.addr, align 8, !dbg !2318
  %cpu_count = getelementptr inbounds %struct.taskstats, ptr %29, i32 0, i32 4, !dbg !2319
  %30 = load i64, ptr %cpu_count, align 8, !dbg !2320
  %add14 = add i64 %30, %28, !dbg !2320
  store i64 %add14, ptr %cpu_count, align 8, !dbg !2320
  %31 = load ptr, ptr %d.addr, align 8, !dbg !2321
  %cpu_delay_total = getelementptr inbounds %struct.taskstats, ptr %31, i32 0, i32 5, !dbg !2322
  %32 = load i64, ptr %cpu_delay_total, align 8, !dbg !2322
  %33 = load i64, ptr %t2, align 8, !dbg !2323
  %add15 = add i64 %32, %33, !dbg !2324
  store i64 %add15, ptr %tmp, align 8, !dbg !2325
  %34 = load i64, ptr %tmp, align 8, !dbg !2326
  %35 = load ptr, ptr %d.addr, align 8, !dbg !2327
  %cpu_delay_total16 = getelementptr inbounds %struct.taskstats, ptr %35, i32 0, i32 5, !dbg !2328
  %36 = load i64, ptr %cpu_delay_total16, align 8, !dbg !2328
  %cmp17 = icmp slt i64 %34, %36, !dbg !2329
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !2330

cond.true18:                                      ; preds = %cond.end10
  br label %cond.end20, !dbg !2330

cond.false19:                                     ; preds = %cond.end10
  %37 = load i64, ptr %tmp, align 8, !dbg !2331
  br label %cond.end20, !dbg !2330

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ 0, %cond.true18 ], [ %37, %cond.false19 ], !dbg !2330
  %38 = load ptr, ptr %d.addr, align 8, !dbg !2332
  %cpu_delay_total22 = getelementptr inbounds %struct.taskstats, ptr %38, i32 0, i32 5, !dbg !2333
  store i64 %cond21, ptr %cpu_delay_total22, align 8, !dbg !2334
  %39 = load ptr, ptr %d.addr, align 8, !dbg !2335
  %cpu_run_virtual_total = getelementptr inbounds %struct.taskstats, ptr %39, i32 0, i32 11, !dbg !2336
  %40 = load i64, ptr %cpu_run_virtual_total, align 8, !dbg !2336
  %41 = load i64, ptr %t3, align 8, !dbg !2337
  %add23 = add i64 %40, %41, !dbg !2338
  store i64 %add23, ptr %tmp, align 8, !dbg !2339
  %42 = load i64, ptr %tmp, align 8, !dbg !2340
  %43 = load ptr, ptr %d.addr, align 8, !dbg !2341
  %cpu_run_virtual_total24 = getelementptr inbounds %struct.taskstats, ptr %43, i32 0, i32 11, !dbg !2342
  %44 = load i64, ptr %cpu_run_virtual_total24, align 8, !dbg !2342
  %cmp25 = icmp slt i64 %42, %44, !dbg !2343
  br i1 %cmp25, label %cond.true26, label %cond.false27, !dbg !2344

cond.true26:                                      ; preds = %cond.end20
  br label %cond.end28, !dbg !2344

cond.false27:                                     ; preds = %cond.end20
  %45 = load i64, ptr %tmp, align 8, !dbg !2345
  br label %cond.end28, !dbg !2344

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i64 [ 0, %cond.true26 ], [ %45, %cond.false27 ], !dbg !2344
  %46 = load ptr, ptr %d.addr, align 8, !dbg !2346
  %cpu_run_virtual_total30 = getelementptr inbounds %struct.taskstats, ptr %46, i32 0, i32 11, !dbg !2347
  store i64 %cond29, ptr %cpu_run_virtual_total30, align 8, !dbg !2348
  %47 = load ptr, ptr %tsk.addr, align 8, !dbg !2349
  %delays = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 169, !dbg !2351
  %48 = load ptr, ptr %delays, align 8, !dbg !2351
  %tobool = icmp ne ptr %48, null, !dbg !2349
  br i1 %tobool, label %if.end, label %if.then, !dbg !2352

if.then:                                          ; preds = %cond.end28
  store i32 0, ptr %retval, align 4, !dbg !2353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2353

if.end:                                           ; preds = %cond.end28
  br label %do.body, !dbg !2354

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !2355
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2246, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !2355
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2249, metadata !DIExpression()), !dbg !2355
  %cmp31 = icmp eq ptr %__dummy, %__dummy2, !dbg !2355
  %conv = zext i1 %cmp31 to i32, !dbg !2355
  store i32 1, ptr %tmp32, align 4, !dbg !2355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !2356
  %49 = load i32, ptr %tmp32, align 4, !dbg !2355
  %50 = load ptr, ptr %tsk.addr, align 8, !dbg !2356
  %delays33 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 169, !dbg !2356
  %51 = load ptr, ptr %delays33, align 8, !dbg !2356
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %51, i32 0, i32 0, !dbg !2356
  %call34 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #8, !dbg !2356
  store i64 %call34, ptr %flags, align 8, !dbg !2356
  br label %do.cond, !dbg !2356

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2356

do.end:                                           ; preds = %do.cond
  %52 = load ptr, ptr %d.addr, align 8, !dbg !2357
  %blkio_delay_total = getelementptr inbounds %struct.taskstats, ptr %52, i32 0, i32 7, !dbg !2358
  %53 = load i64, ptr %blkio_delay_total, align 8, !dbg !2358
  %54 = load ptr, ptr %tsk.addr, align 8, !dbg !2359
  %delays35 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 169, !dbg !2360
  %55 = load ptr, ptr %delays35, align 8, !dbg !2360
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %55, i32 0, i32 2, !dbg !2361
  %56 = load i64, ptr %blkio_delay, align 8, !dbg !2361
  %add36 = add i64 %53, %56, !dbg !2362
  store i64 %add36, ptr %tmp, align 8, !dbg !2363
  %57 = load i64, ptr %tmp, align 8, !dbg !2364
  %58 = load ptr, ptr %d.addr, align 8, !dbg !2365
  %blkio_delay_total37 = getelementptr inbounds %struct.taskstats, ptr %58, i32 0, i32 7, !dbg !2366
  %59 = load i64, ptr %blkio_delay_total37, align 8, !dbg !2366
  %cmp38 = icmp ult i64 %57, %59, !dbg !2367
  br i1 %cmp38, label %cond.true40, label %cond.false41, !dbg !2368

cond.true40:                                      ; preds = %do.end
  br label %cond.end42, !dbg !2368

cond.false41:                                     ; preds = %do.end
  %60 = load i64, ptr %tmp, align 8, !dbg !2369
  br label %cond.end42, !dbg !2368

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i64 [ 0, %cond.true40 ], [ %60, %cond.false41 ], !dbg !2368
  %61 = load ptr, ptr %d.addr, align 8, !dbg !2370
  %blkio_delay_total44 = getelementptr inbounds %struct.taskstats, ptr %61, i32 0, i32 7, !dbg !2371
  store i64 %cond43, ptr %blkio_delay_total44, align 8, !dbg !2372
  %62 = load ptr, ptr %d.addr, align 8, !dbg !2373
  %swapin_delay_total = getelementptr inbounds %struct.taskstats, ptr %62, i32 0, i32 9, !dbg !2374
  %63 = load i64, ptr %swapin_delay_total, align 8, !dbg !2374
  %64 = load ptr, ptr %tsk.addr, align 8, !dbg !2375
  %delays45 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 169, !dbg !2376
  %65 = load ptr, ptr %delays45, align 8, !dbg !2376
  %swapin_delay = getelementptr inbounds %struct.task_delay_info, ptr %65, i32 0, i32 4, !dbg !2377
  %66 = load i64, ptr %swapin_delay, align 8, !dbg !2377
  %add46 = add i64 %63, %66, !dbg !2378
  store i64 %add46, ptr %tmp, align 8, !dbg !2379
  %67 = load i64, ptr %tmp, align 8, !dbg !2380
  %68 = load ptr, ptr %d.addr, align 8, !dbg !2381
  %swapin_delay_total47 = getelementptr inbounds %struct.taskstats, ptr %68, i32 0, i32 9, !dbg !2382
  %69 = load i64, ptr %swapin_delay_total47, align 8, !dbg !2382
  %cmp48 = icmp ult i64 %67, %69, !dbg !2383
  br i1 %cmp48, label %cond.true50, label %cond.false51, !dbg !2384

cond.true50:                                      ; preds = %cond.end42
  br label %cond.end52, !dbg !2384

cond.false51:                                     ; preds = %cond.end42
  %70 = load i64, ptr %tmp, align 8, !dbg !2385
  br label %cond.end52, !dbg !2384

cond.end52:                                       ; preds = %cond.false51, %cond.true50
  %cond53 = phi i64 [ 0, %cond.true50 ], [ %70, %cond.false51 ], !dbg !2384
  %71 = load ptr, ptr %d.addr, align 8, !dbg !2386
  %swapin_delay_total54 = getelementptr inbounds %struct.taskstats, ptr %71, i32 0, i32 9, !dbg !2387
  store i64 %cond53, ptr %swapin_delay_total54, align 8, !dbg !2388
  %72 = load ptr, ptr %d.addr, align 8, !dbg !2389
  %freepages_delay_total = getelementptr inbounds %struct.taskstats, ptr %72, i32 0, i32 43, !dbg !2390
  %73 = load i64, ptr %freepages_delay_total, align 8, !dbg !2390
  %74 = load ptr, ptr %tsk.addr, align 8, !dbg !2391
  %delays55 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 169, !dbg !2392
  %75 = load ptr, ptr %delays55, align 8, !dbg !2392
  %freepages_delay = getelementptr inbounds %struct.task_delay_info, ptr %75, i32 0, i32 8, !dbg !2393
  %76 = load i64, ptr %freepages_delay, align 8, !dbg !2393
  %add56 = add i64 %73, %76, !dbg !2394
  store i64 %add56, ptr %tmp, align 8, !dbg !2395
  %77 = load i64, ptr %tmp, align 8, !dbg !2396
  %78 = load ptr, ptr %d.addr, align 8, !dbg !2397
  %freepages_delay_total57 = getelementptr inbounds %struct.taskstats, ptr %78, i32 0, i32 43, !dbg !2398
  %79 = load i64, ptr %freepages_delay_total57, align 8, !dbg !2398
  %cmp58 = icmp ult i64 %77, %79, !dbg !2399
  br i1 %cmp58, label %cond.true60, label %cond.false61, !dbg !2400

cond.true60:                                      ; preds = %cond.end52
  br label %cond.end62, !dbg !2400

cond.false61:                                     ; preds = %cond.end52
  %80 = load i64, ptr %tmp, align 8, !dbg !2401
  br label %cond.end62, !dbg !2400

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi i64 [ 0, %cond.true60 ], [ %80, %cond.false61 ], !dbg !2400
  %81 = load ptr, ptr %d.addr, align 8, !dbg !2402
  %freepages_delay_total64 = getelementptr inbounds %struct.taskstats, ptr %81, i32 0, i32 43, !dbg !2403
  store i64 %cond63, ptr %freepages_delay_total64, align 8, !dbg !2404
  %82 = load ptr, ptr %d.addr, align 8, !dbg !2405
  %thrashing_delay_total = getelementptr inbounds %struct.taskstats, ptr %82, i32 0, i32 45, !dbg !2406
  %83 = load i64, ptr %thrashing_delay_total, align 8, !dbg !2406
  %84 = load ptr, ptr %tsk.addr, align 8, !dbg !2407
  %delays65 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 169, !dbg !2408
  %85 = load ptr, ptr %delays65, align 8, !dbg !2408
  %thrashing_delay = getelementptr inbounds %struct.task_delay_info, ptr %85, i32 0, i32 10, !dbg !2409
  %86 = load i64, ptr %thrashing_delay, align 8, !dbg !2409
  %add66 = add i64 %83, %86, !dbg !2410
  store i64 %add66, ptr %tmp, align 8, !dbg !2411
  %87 = load i64, ptr %tmp, align 8, !dbg !2412
  %88 = load ptr, ptr %d.addr, align 8, !dbg !2413
  %thrashing_delay_total67 = getelementptr inbounds %struct.taskstats, ptr %88, i32 0, i32 45, !dbg !2414
  %89 = load i64, ptr %thrashing_delay_total67, align 8, !dbg !2414
  %cmp68 = icmp ult i64 %87, %89, !dbg !2415
  br i1 %cmp68, label %cond.true70, label %cond.false71, !dbg !2416

cond.true70:                                      ; preds = %cond.end62
  br label %cond.end72, !dbg !2416

cond.false71:                                     ; preds = %cond.end62
  %90 = load i64, ptr %tmp, align 8, !dbg !2417
  br label %cond.end72, !dbg !2416

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi i64 [ 0, %cond.true70 ], [ %90, %cond.false71 ], !dbg !2416
  %91 = load ptr, ptr %d.addr, align 8, !dbg !2418
  %thrashing_delay_total74 = getelementptr inbounds %struct.taskstats, ptr %91, i32 0, i32 45, !dbg !2419
  store i64 %cond73, ptr %thrashing_delay_total74, align 8, !dbg !2420
  %92 = load ptr, ptr %d.addr, align 8, !dbg !2421
  %compact_delay_total = getelementptr inbounds %struct.taskstats, ptr %92, i32 0, i32 48, !dbg !2422
  %93 = load i64, ptr %compact_delay_total, align 8, !dbg !2422
  %94 = load ptr, ptr %tsk.addr, align 8, !dbg !2423
  %delays75 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 169, !dbg !2424
  %95 = load ptr, ptr %delays75, align 8, !dbg !2424
  %compact_delay = getelementptr inbounds %struct.task_delay_info, ptr %95, i32 0, i32 12, !dbg !2425
  %96 = load i64, ptr %compact_delay, align 8, !dbg !2425
  %add76 = add i64 %93, %96, !dbg !2426
  store i64 %add76, ptr %tmp, align 8, !dbg !2427
  %97 = load i64, ptr %tmp, align 8, !dbg !2428
  %98 = load ptr, ptr %d.addr, align 8, !dbg !2429
  %compact_delay_total77 = getelementptr inbounds %struct.taskstats, ptr %98, i32 0, i32 48, !dbg !2430
  %99 = load i64, ptr %compact_delay_total77, align 8, !dbg !2430
  %cmp78 = icmp ult i64 %97, %99, !dbg !2431
  br i1 %cmp78, label %cond.true80, label %cond.false81, !dbg !2432

cond.true80:                                      ; preds = %cond.end72
  br label %cond.end82, !dbg !2432

cond.false81:                                     ; preds = %cond.end72
  %100 = load i64, ptr %tmp, align 8, !dbg !2433
  br label %cond.end82, !dbg !2432

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi i64 [ 0, %cond.true80 ], [ %100, %cond.false81 ], !dbg !2432
  %101 = load ptr, ptr %d.addr, align 8, !dbg !2434
  %compact_delay_total84 = getelementptr inbounds %struct.taskstats, ptr %101, i32 0, i32 48, !dbg !2435
  store i64 %cond83, ptr %compact_delay_total84, align 8, !dbg !2436
  %102 = load ptr, ptr %d.addr, align 8, !dbg !2437
  %wpcopy_delay_total = getelementptr inbounds %struct.taskstats, ptr %102, i32 0, i32 54, !dbg !2438
  %103 = load i64, ptr %wpcopy_delay_total, align 8, !dbg !2438
  %104 = load ptr, ptr %tsk.addr, align 8, !dbg !2439
  %delays85 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 169, !dbg !2440
  %105 = load ptr, ptr %delays85, align 8, !dbg !2440
  %wpcopy_delay = getelementptr inbounds %struct.task_delay_info, ptr %105, i32 0, i32 14, !dbg !2441
  %106 = load i64, ptr %wpcopy_delay, align 8, !dbg !2441
  %add86 = add i64 %103, %106, !dbg !2442
  store i64 %add86, ptr %tmp, align 8, !dbg !2443
  %107 = load i64, ptr %tmp, align 8, !dbg !2444
  %108 = load ptr, ptr %d.addr, align 8, !dbg !2445
  %wpcopy_delay_total87 = getelementptr inbounds %struct.taskstats, ptr %108, i32 0, i32 54, !dbg !2446
  %109 = load i64, ptr %wpcopy_delay_total87, align 8, !dbg !2446
  %cmp88 = icmp ult i64 %107, %109, !dbg !2447
  br i1 %cmp88, label %cond.true90, label %cond.false91, !dbg !2448

cond.true90:                                      ; preds = %cond.end82
  br label %cond.end92, !dbg !2448

cond.false91:                                     ; preds = %cond.end82
  %110 = load i64, ptr %tmp, align 8, !dbg !2449
  br label %cond.end92, !dbg !2448

cond.end92:                                       ; preds = %cond.false91, %cond.true90
  %cond93 = phi i64 [ 0, %cond.true90 ], [ %110, %cond.false91 ], !dbg !2448
  %111 = load ptr, ptr %d.addr, align 8, !dbg !2450
  %wpcopy_delay_total94 = getelementptr inbounds %struct.taskstats, ptr %111, i32 0, i32 54, !dbg !2451
  store i64 %cond93, ptr %wpcopy_delay_total94, align 8, !dbg !2452
  %112 = load ptr, ptr %d.addr, align 8, !dbg !2453
  %irq_delay_total = getelementptr inbounds %struct.taskstats, ptr %112, i32 0, i32 56, !dbg !2454
  %113 = load i64, ptr %irq_delay_total, align 8, !dbg !2454
  %114 = load ptr, ptr %tsk.addr, align 8, !dbg !2455
  %delays95 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 169, !dbg !2456
  %115 = load ptr, ptr %delays95, align 8, !dbg !2456
  %irq_delay = getelementptr inbounds %struct.task_delay_info, ptr %115, i32 0, i32 15, !dbg !2457
  %116 = load i64, ptr %irq_delay, align 8, !dbg !2457
  %add96 = add i64 %113, %116, !dbg !2458
  store i64 %add96, ptr %tmp, align 8, !dbg !2459
  %117 = load i64, ptr %tmp, align 8, !dbg !2460
  %118 = load ptr, ptr %d.addr, align 8, !dbg !2461
  %irq_delay_total97 = getelementptr inbounds %struct.taskstats, ptr %118, i32 0, i32 56, !dbg !2462
  %119 = load i64, ptr %irq_delay_total97, align 8, !dbg !2462
  %cmp98 = icmp ult i64 %117, %119, !dbg !2463
  br i1 %cmp98, label %cond.true100, label %cond.false101, !dbg !2464

cond.true100:                                     ; preds = %cond.end92
  br label %cond.end102, !dbg !2464

cond.false101:                                    ; preds = %cond.end92
  %120 = load i64, ptr %tmp, align 8, !dbg !2465
  br label %cond.end102, !dbg !2464

cond.end102:                                      ; preds = %cond.false101, %cond.true100
  %cond103 = phi i64 [ 0, %cond.true100 ], [ %120, %cond.false101 ], !dbg !2464
  %121 = load ptr, ptr %d.addr, align 8, !dbg !2466
  %irq_delay_total104 = getelementptr inbounds %struct.taskstats, ptr %121, i32 0, i32 56, !dbg !2467
  store i64 %cond103, ptr %irq_delay_total104, align 8, !dbg !2468
  %122 = load ptr, ptr %tsk.addr, align 8, !dbg !2469
  %delays105 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 169, !dbg !2470
  %123 = load ptr, ptr %delays105, align 8, !dbg !2470
  %blkio_count = getelementptr inbounds %struct.task_delay_info, ptr %123, i32 0, i32 5, !dbg !2471
  %124 = load i32, ptr %blkio_count, align 8, !dbg !2471
  %conv106 = zext i32 %124 to i64, !dbg !2469
  %125 = load ptr, ptr %d.addr, align 8, !dbg !2472
  %blkio_count107 = getelementptr inbounds %struct.taskstats, ptr %125, i32 0, i32 6, !dbg !2473
  %126 = load i64, ptr %blkio_count107, align 8, !dbg !2474
  %add108 = add i64 %126, %conv106, !dbg !2474
  store i64 %add108, ptr %blkio_count107, align 8, !dbg !2474
  %127 = load ptr, ptr %tsk.addr, align 8, !dbg !2475
  %delays109 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 169, !dbg !2476
  %128 = load ptr, ptr %delays109, align 8, !dbg !2476
  %swapin_count = getelementptr inbounds %struct.task_delay_info, ptr %128, i32 0, i32 6, !dbg !2477
  %129 = load i32, ptr %swapin_count, align 4, !dbg !2477
  %conv110 = zext i32 %129 to i64, !dbg !2475
  %130 = load ptr, ptr %d.addr, align 8, !dbg !2478
  %swapin_count111 = getelementptr inbounds %struct.taskstats, ptr %130, i32 0, i32 8, !dbg !2479
  %131 = load i64, ptr %swapin_count111, align 8, !dbg !2480
  %add112 = add i64 %131, %conv110, !dbg !2480
  store i64 %add112, ptr %swapin_count111, align 8, !dbg !2480
  %132 = load ptr, ptr %tsk.addr, align 8, !dbg !2481
  %delays113 = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 169, !dbg !2482
  %133 = load ptr, ptr %delays113, align 8, !dbg !2482
  %freepages_count = getelementptr inbounds %struct.task_delay_info, ptr %133, i32 0, i32 16, !dbg !2483
  %134 = load i32, ptr %freepages_count, align 8, !dbg !2483
  %conv114 = zext i32 %134 to i64, !dbg !2481
  %135 = load ptr, ptr %d.addr, align 8, !dbg !2484
  %freepages_count115 = getelementptr inbounds %struct.taskstats, ptr %135, i32 0, i32 42, !dbg !2485
  %136 = load i64, ptr %freepages_count115, align 8, !dbg !2486
  %add116 = add i64 %136, %conv114, !dbg !2486
  store i64 %add116, ptr %freepages_count115, align 8, !dbg !2486
  %137 = load ptr, ptr %tsk.addr, align 8, !dbg !2487
  %delays117 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 169, !dbg !2488
  %138 = load ptr, ptr %delays117, align 8, !dbg !2488
  %thrashing_count = getelementptr inbounds %struct.task_delay_info, ptr %138, i32 0, i32 17, !dbg !2489
  %139 = load i32, ptr %thrashing_count, align 4, !dbg !2489
  %conv118 = zext i32 %139 to i64, !dbg !2487
  %140 = load ptr, ptr %d.addr, align 8, !dbg !2490
  %thrashing_count119 = getelementptr inbounds %struct.taskstats, ptr %140, i32 0, i32 44, !dbg !2491
  %141 = load i64, ptr %thrashing_count119, align 8, !dbg !2492
  %add120 = add i64 %141, %conv118, !dbg !2492
  store i64 %add120, ptr %thrashing_count119, align 8, !dbg !2492
  %142 = load ptr, ptr %tsk.addr, align 8, !dbg !2493
  %delays121 = getelementptr inbounds %struct.task_struct, ptr %142, i32 0, i32 169, !dbg !2494
  %143 = load ptr, ptr %delays121, align 8, !dbg !2494
  %compact_count = getelementptr inbounds %struct.task_delay_info, ptr %143, i32 0, i32 18, !dbg !2495
  %144 = load i32, ptr %compact_count, align 8, !dbg !2495
  %conv122 = zext i32 %144 to i64, !dbg !2493
  %145 = load ptr, ptr %d.addr, align 8, !dbg !2496
  %compact_count123 = getelementptr inbounds %struct.taskstats, ptr %145, i32 0, i32 47, !dbg !2497
  %146 = load i64, ptr %compact_count123, align 8, !dbg !2498
  %add124 = add i64 %146, %conv122, !dbg !2498
  store i64 %add124, ptr %compact_count123, align 8, !dbg !2498
  %147 = load ptr, ptr %tsk.addr, align 8, !dbg !2499
  %delays125 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 169, !dbg !2500
  %148 = load ptr, ptr %delays125, align 8, !dbg !2500
  %wpcopy_count = getelementptr inbounds %struct.task_delay_info, ptr %148, i32 0, i32 19, !dbg !2501
  %149 = load i32, ptr %wpcopy_count, align 4, !dbg !2501
  %conv126 = zext i32 %149 to i64, !dbg !2499
  %150 = load ptr, ptr %d.addr, align 8, !dbg !2502
  %wpcopy_count127 = getelementptr inbounds %struct.taskstats, ptr %150, i32 0, i32 53, !dbg !2503
  %151 = load i64, ptr %wpcopy_count127, align 8, !dbg !2504
  %add128 = add i64 %151, %conv126, !dbg !2504
  store i64 %add128, ptr %wpcopy_count127, align 8, !dbg !2504
  %152 = load ptr, ptr %tsk.addr, align 8, !dbg !2505
  %delays129 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 169, !dbg !2506
  %153 = load ptr, ptr %delays129, align 8, !dbg !2506
  %irq_count = getelementptr inbounds %struct.task_delay_info, ptr %153, i32 0, i32 20, !dbg !2507
  %154 = load i32, ptr %irq_count, align 8, !dbg !2507
  %conv130 = zext i32 %154 to i64, !dbg !2505
  %155 = load ptr, ptr %d.addr, align 8, !dbg !2508
  %irq_count131 = getelementptr inbounds %struct.taskstats, ptr %155, i32 0, i32 55, !dbg !2509
  %156 = load i64, ptr %irq_count131, align 8, !dbg !2510
  %add132 = add i64 %156, %conv130, !dbg !2510
  store i64 %add132, ptr %irq_count131, align 8, !dbg !2510
  br label %do.body133, !dbg !2511

do.body133:                                       ; preds = %cond.end102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy134) #10, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %__dummy134, metadata !2250, metadata !DIExpression()), !dbg !2512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2135) #10, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %__dummy2135, metadata !2253, metadata !DIExpression()), !dbg !2512
  %cmp136 = icmp eq ptr %__dummy134, %__dummy2135, !dbg !2512
  %conv137 = zext i1 %cmp136 to i32, !dbg !2512
  store i32 1, ptr %tmp138, align 4, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2135) #10, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy134) #10, !dbg !2513
  %157 = load i32, ptr %tmp138, align 4, !dbg !2512
  %158 = load ptr, ptr %tsk.addr, align 8, !dbg !2513
  %delays139 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 169, !dbg !2513
  %159 = load ptr, ptr %delays139, align 8, !dbg !2513
  %lock140 = getelementptr inbounds %struct.task_delay_info, ptr %159, i32 0, i32 0, !dbg !2513
  %160 = load i64, ptr %flags, align 8, !dbg !2513
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock140, i64 noundef %160) #8, !dbg !2513
  br label %do.cond141, !dbg !2513

do.cond141:                                       ; preds = %do.body133
  br label %do.end142, !dbg !2513

do.end142:                                        ; preds = %do.cond141
  store i32 0, ptr %retval, align 4, !dbg !2514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

cleanup:                                          ; preds = %do.end142, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %t3) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %utimescaled) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %stimescaled) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #10, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %utime) #10, !dbg !2515
  %161 = load i32, ptr %retval, align 4, !dbg !2515
  ret i32 %161, !dbg !2515
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_cputime(ptr noundef %t, ptr noundef %utime, ptr noundef %stime) #3 align 16 !dbg !2516 {
entry:
  %t.addr = alloca ptr, align 8
  %utime.addr = alloca ptr, align 8
  %stime.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2521, metadata !DIExpression()), !dbg !2524
  store ptr %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !2522, metadata !DIExpression()), !dbg !2525
  store ptr %stime, ptr %stime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stime.addr, metadata !2523, metadata !DIExpression()), !dbg !2526
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2527
  %utime1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 80, !dbg !2528
  %1 = load i64, ptr %utime1, align 8, !dbg !2528
  %2 = load ptr, ptr %utime.addr, align 8, !dbg !2529
  store i64 %1, ptr %2, align 8, !dbg !2530
  %3 = load ptr, ptr %t.addr, align 8, !dbg !2531
  %stime2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 81, !dbg !2532
  %4 = load i64, ptr %stime2, align 16, !dbg !2532
  %5 = load ptr, ptr %stime.addr, align 8, !dbg !2533
  store i64 %4, ptr %5, align 8, !dbg !2534
  ret i1 false, !dbg !2535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_cputime_scaled(ptr noundef %t, ptr noundef %utimescaled, ptr noundef %stimescaled) #3 align 16 !dbg !2536 {
entry:
  %t.addr = alloca ptr, align 8
  %utimescaled.addr = alloca ptr, align 8
  %stimescaled.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2540, metadata !DIExpression()), !dbg !2543
  store ptr %utimescaled, ptr %utimescaled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utimescaled.addr, metadata !2541, metadata !DIExpression()), !dbg !2544
  store ptr %stimescaled, ptr %stimescaled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stimescaled.addr, metadata !2542, metadata !DIExpression()), !dbg !2545
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2546
  %1 = load ptr, ptr %utimescaled.addr, align 8, !dbg !2547
  %2 = load ptr, ptr %stimescaled.addr, align 8, !dbg !2548
  %call = call zeroext i1 @task_cputime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !2549
  ret void, !dbg !2550
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2551 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2555 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__delayacct_blkio_ticks(ptr noundef %tsk) #1 align 16 !dbg !2558 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !2562, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2563, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2564, metadata !DIExpression()), !dbg !2577
  br label %do.body, !dbg !2578

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2565, metadata !DIExpression()), !dbg !2579
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2568, metadata !DIExpression()), !dbg !2579
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2579
  %conv = zext i1 %cmp to i32, !dbg !2579
  store i32 1, ptr %tmp, align 4, !dbg !2579
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !2580
  %0 = load i32, ptr %tmp, align 4, !dbg !2579
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !2580
  %delays = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 169, !dbg !2580
  %2 = load ptr, ptr %delays, align 8, !dbg !2580
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 0, !dbg !2580
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #8, !dbg !2580
  store i64 %call, ptr %flags, align 8, !dbg !2580
  br label %do.cond, !dbg !2580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2580

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !2581
  %delays1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 169, !dbg !2582
  %4 = load ptr, ptr %delays1, align 8, !dbg !2582
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %4, i32 0, i32 2, !dbg !2583
  %5 = load i64, ptr %blkio_delay, align 8, !dbg !2583
  %call2 = call i64 @nsec_to_clock_t(i64 noundef %5) #8, !dbg !2584
  store i64 %call2, ptr %ret, align 8, !dbg !2585
  br label %do.body3, !dbg !2586

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #10, !dbg !2587
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !2569, metadata !DIExpression()), !dbg !2587
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #10, !dbg !2587
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !2572, metadata !DIExpression()), !dbg !2587
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !2587
  %conv7 = zext i1 %cmp6 to i32, !dbg !2587
  store i32 1, ptr %tmp8, align 4, !dbg !2587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #10, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #10, !dbg !2588
  %6 = load i32, ptr %tmp8, align 4, !dbg !2587
  %7 = load ptr, ptr %tsk.addr, align 8, !dbg !2588
  %delays9 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 169, !dbg !2588
  %8 = load ptr, ptr %delays9, align 8, !dbg !2588
  %lock10 = getelementptr inbounds %struct.task_delay_info, ptr %8, i32 0, i32 0, !dbg !2588
  %9 = load i64, ptr %flags, align 8, !dbg !2588
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %9) #8, !dbg !2588
  br label %do.cond11, !dbg !2588

do.cond11:                                        ; preds = %do.body3
  br label %do.end12, !dbg !2588

do.end12:                                         ; preds = %do.cond11
  %10 = load i64, ptr %ret, align 8, !dbg !2589
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !2590
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2590
  ret i64 %10, !dbg !2591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2592 dso_local i64 @nsec_to_clock_t(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_freepages_start() #1 align 16 !dbg !2596 {
entry:
  %call = call i64 @local_clock() #8, !dbg !2597
  %call1 = call ptr @get_current() #8, !dbg !2598
  %delays = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2599
  %0 = load ptr, ptr %delays, align 8, !dbg !2599
  %freepages_start = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 7, !dbg !2600
  store i64 %call, ptr %freepages_start, align 8, !dbg !2601
  ret void, !dbg !2602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_freepages_end() #1 align 16 !dbg !2603 {
entry:
  %call = call ptr @get_current() #8, !dbg !2604
  %delays = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 169, !dbg !2605
  %0 = load ptr, ptr %delays, align 8, !dbg !2605
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 0, !dbg !2606
  %call1 = call ptr @get_current() #8, !dbg !2607
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2608
  %1 = load ptr, ptr %delays2, align 8, !dbg !2608
  %freepages_start = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 7, !dbg !2609
  %call3 = call ptr @get_current() #8, !dbg !2610
  %delays4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 169, !dbg !2611
  %2 = load ptr, ptr %delays4, align 8, !dbg !2611
  %freepages_delay = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 8, !dbg !2612
  %call5 = call ptr @get_current() #8, !dbg !2613
  %delays6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 169, !dbg !2614
  %3 = load ptr, ptr %delays6, align 8, !dbg !2614
  %freepages_count = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 16, !dbg !2615
  call void @delayacct_end(ptr noundef %lock, ptr noundef %freepages_start, ptr noundef %freepages_delay, ptr noundef %freepages_count) #8, !dbg !2616
  ret void, !dbg !2617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_thrashing_start(ptr noundef %in_thrashing) #1 align 16 !dbg !2618 {
entry:
  %in_thrashing.addr = alloca ptr, align 8
  store ptr %in_thrashing, ptr %in_thrashing.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_thrashing.addr, metadata !2623, metadata !DIExpression()), !dbg !2624
  %call = call ptr @get_current() #8, !dbg !2625
  %in_thrashing1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !2626
  %bf.load = load i16, ptr %in_thrashing1, align 16, !dbg !2626
  %bf.lshr = lshr i16 %bf.load, 9, !dbg !2626
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2626
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2626
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2627
  %lnot = xor i1 %tobool, true, !dbg !2627
  %lnot2 = xor i1 %lnot, true, !dbg !2628
  %0 = load ptr, ptr %in_thrashing.addr, align 8, !dbg !2629
  %frombool = zext i1 %lnot2 to i8, !dbg !2630
  store i8 %frombool, ptr %0, align 1, !dbg !2630
  %1 = load ptr, ptr %in_thrashing.addr, align 8, !dbg !2631
  %2 = load i8, ptr %1, align 1, !dbg !2633, !range !2088, !noundef !469
  %tobool3 = trunc i8 %2 to i1, !dbg !2633
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2634

if.then:                                          ; preds = %entry
  br label %return, !dbg !2635

if.end:                                           ; preds = %entry
  %call4 = call ptr @get_current() #8, !dbg !2636
  %in_thrashing5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 59, !dbg !2637
  %bf.load6 = load i16, ptr %in_thrashing5, align 16, !dbg !2638
  %bf.clear7 = and i16 %bf.load6, -513, !dbg !2638
  %bf.set = or i16 %bf.clear7, 512, !dbg !2638
  store i16 %bf.set, ptr %in_thrashing5, align 16, !dbg !2638
  %call8 = call i64 @local_clock() #8, !dbg !2639
  %call9 = call ptr @get_current() #8, !dbg !2640
  %delays = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 169, !dbg !2641
  %3 = load ptr, ptr %delays, align 8, !dbg !2641
  %thrashing_start = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 9, !dbg !2642
  store i64 %call8, ptr %thrashing_start, align 8, !dbg !2643
  br label %return, !dbg !2644

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2644
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_thrashing_end(ptr noundef %in_thrashing) #1 align 16 !dbg !2645 {
entry:
  %in_thrashing.addr = alloca ptr, align 8
  store ptr %in_thrashing, ptr %in_thrashing.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_thrashing.addr, metadata !2647, metadata !DIExpression()), !dbg !2648
  %0 = load ptr, ptr %in_thrashing.addr, align 8, !dbg !2649
  %1 = load i8, ptr %0, align 1, !dbg !2651, !range !2088, !noundef !469
  %tobool = trunc i8 %1 to i1, !dbg !2651
  br i1 %tobool, label %if.then, label %if.end, !dbg !2652

if.then:                                          ; preds = %entry
  br label %return, !dbg !2653

if.end:                                           ; preds = %entry
  %call = call ptr @get_current() #8, !dbg !2654
  %in_thrashing1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !2655
  %bf.load = load i16, ptr %in_thrashing1, align 16, !dbg !2656
  %bf.clear = and i16 %bf.load, -513, !dbg !2656
  %bf.set = or i16 %bf.clear, 0, !dbg !2656
  store i16 %bf.set, ptr %in_thrashing1, align 16, !dbg !2656
  %call2 = call ptr @get_current() #8, !dbg !2657
  %delays = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 169, !dbg !2658
  %2 = load ptr, ptr %delays, align 8, !dbg !2658
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 0, !dbg !2659
  %call3 = call ptr @get_current() #8, !dbg !2660
  %delays4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 169, !dbg !2661
  %3 = load ptr, ptr %delays4, align 8, !dbg !2661
  %thrashing_start = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 9, !dbg !2662
  %call5 = call ptr @get_current() #8, !dbg !2663
  %delays6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 169, !dbg !2664
  %4 = load ptr, ptr %delays6, align 8, !dbg !2664
  %thrashing_delay = getelementptr inbounds %struct.task_delay_info, ptr %4, i32 0, i32 10, !dbg !2665
  %call7 = call ptr @get_current() #8, !dbg !2666
  %delays8 = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 169, !dbg !2667
  %5 = load ptr, ptr %delays8, align 8, !dbg !2667
  %thrashing_count = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 17, !dbg !2668
  call void @delayacct_end(ptr noundef %lock, ptr noundef %thrashing_start, ptr noundef %thrashing_delay, ptr noundef %thrashing_count) #8, !dbg !2669
  br label %return, !dbg !2670

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_swapin_start() #1 align 16 !dbg !2671 {
entry:
  %call = call i64 @local_clock() #8, !dbg !2672
  %call1 = call ptr @get_current() #8, !dbg !2673
  %delays = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2674
  %0 = load ptr, ptr %delays, align 8, !dbg !2674
  %swapin_start = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 3, !dbg !2675
  store i64 %call, ptr %swapin_start, align 8, !dbg !2676
  ret void, !dbg !2677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_swapin_end() #1 align 16 !dbg !2678 {
entry:
  %call = call ptr @get_current() #8, !dbg !2679
  %delays = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 169, !dbg !2680
  %0 = load ptr, ptr %delays, align 8, !dbg !2680
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 0, !dbg !2681
  %call1 = call ptr @get_current() #8, !dbg !2682
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2683
  %1 = load ptr, ptr %delays2, align 8, !dbg !2683
  %swapin_start = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 3, !dbg !2684
  %call3 = call ptr @get_current() #8, !dbg !2685
  %delays4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 169, !dbg !2686
  %2 = load ptr, ptr %delays4, align 8, !dbg !2686
  %swapin_delay = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 4, !dbg !2687
  %call5 = call ptr @get_current() #8, !dbg !2688
  %delays6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 169, !dbg !2689
  %3 = load ptr, ptr %delays6, align 8, !dbg !2689
  %swapin_count = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 6, !dbg !2690
  call void @delayacct_end(ptr noundef %lock, ptr noundef %swapin_start, ptr noundef %swapin_delay, ptr noundef %swapin_count) #8, !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_compact_start() #1 align 16 !dbg !2693 {
entry:
  %call = call i64 @local_clock() #8, !dbg !2694
  %call1 = call ptr @get_current() #8, !dbg !2695
  %delays = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2696
  %0 = load ptr, ptr %delays, align 8, !dbg !2696
  %compact_start = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 11, !dbg !2697
  store i64 %call, ptr %compact_start, align 8, !dbg !2698
  ret void, !dbg !2699
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_compact_end() #1 align 16 !dbg !2700 {
entry:
  %call = call ptr @get_current() #8, !dbg !2701
  %delays = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 169, !dbg !2702
  %0 = load ptr, ptr %delays, align 8, !dbg !2702
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 0, !dbg !2703
  %call1 = call ptr @get_current() #8, !dbg !2704
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2705
  %1 = load ptr, ptr %delays2, align 8, !dbg !2705
  %compact_start = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 11, !dbg !2706
  %call3 = call ptr @get_current() #8, !dbg !2707
  %delays4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 169, !dbg !2708
  %2 = load ptr, ptr %delays4, align 8, !dbg !2708
  %compact_delay = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 12, !dbg !2709
  %call5 = call ptr @get_current() #8, !dbg !2710
  %delays6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 169, !dbg !2711
  %3 = load ptr, ptr %delays6, align 8, !dbg !2711
  %compact_count = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 18, !dbg !2712
  call void @delayacct_end(ptr noundef %lock, ptr noundef %compact_start, ptr noundef %compact_delay, ptr noundef %compact_count) #8, !dbg !2713
  ret void, !dbg !2714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_wpcopy_start() #1 align 16 !dbg !2715 {
entry:
  %call = call i64 @local_clock() #8, !dbg !2716
  %call1 = call ptr @get_current() #8, !dbg !2717
  %delays = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2718
  %0 = load ptr, ptr %delays, align 8, !dbg !2718
  %wpcopy_start = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 13, !dbg !2719
  store i64 %call, ptr %wpcopy_start, align 8, !dbg !2720
  ret void, !dbg !2721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_wpcopy_end() #1 align 16 !dbg !2722 {
entry:
  %call = call ptr @get_current() #8, !dbg !2723
  %delays = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 169, !dbg !2724
  %0 = load ptr, ptr %delays, align 8, !dbg !2724
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %0, i32 0, i32 0, !dbg !2725
  %call1 = call ptr @get_current() #8, !dbg !2726
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 169, !dbg !2727
  %1 = load ptr, ptr %delays2, align 8, !dbg !2727
  %wpcopy_start = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 13, !dbg !2728
  %call3 = call ptr @get_current() #8, !dbg !2729
  %delays4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 169, !dbg !2730
  %2 = load ptr, ptr %delays4, align 8, !dbg !2730
  %wpcopy_delay = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 14, !dbg !2731
  %call5 = call ptr @get_current() #8, !dbg !2732
  %delays6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 169, !dbg !2733
  %3 = load ptr, ptr %delays6, align 8, !dbg !2733
  %wpcopy_count = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 19, !dbg !2734
  call void @delayacct_end(ptr noundef %lock, ptr noundef %wpcopy_start, ptr noundef %wpcopy_delay, ptr noundef %wpcopy_count) #8, !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delayacct_irq(ptr noundef %task, i32 noundef %delta) #1 align 16 !dbg !2737 {
entry:
  %task.addr = alloca ptr, align 8
  %delta.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2741, metadata !DIExpression()), !dbg !2752
  store i32 %delta, ptr %delta.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !2742, metadata !DIExpression()), !dbg !2753
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !2754
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2743, metadata !DIExpression()), !dbg !2755
  br label %do.body, !dbg !2756

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2744, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2747, metadata !DIExpression()), !dbg !2757
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2757
  %conv = zext i1 %cmp to i32, !dbg !2757
  store i32 1, ptr %tmp, align 4, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !2758
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !2758
  %0 = load i32, ptr %tmp, align 4, !dbg !2757
  %1 = load ptr, ptr %task.addr, align 8, !dbg !2758
  %delays = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 169, !dbg !2758
  %2 = load ptr, ptr %delays, align 8, !dbg !2758
  %lock = getelementptr inbounds %struct.task_delay_info, ptr %2, i32 0, i32 0, !dbg !2758
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #8, !dbg !2758
  store i64 %call, ptr %flags, align 8, !dbg !2758
  br label %do.cond, !dbg !2758

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2758

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %delta.addr, align 4, !dbg !2759
  %conv1 = zext i32 %3 to i64, !dbg !2759
  %4 = load ptr, ptr %task.addr, align 8, !dbg !2760
  %delays2 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 169, !dbg !2761
  %5 = load ptr, ptr %delays2, align 8, !dbg !2761
  %irq_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 15, !dbg !2762
  %6 = load i64, ptr %irq_delay, align 8, !dbg !2763
  %add = add i64 %6, %conv1, !dbg !2763
  store i64 %add, ptr %irq_delay, align 8, !dbg !2763
  %7 = load ptr, ptr %task.addr, align 8, !dbg !2764
  %delays3 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 169, !dbg !2765
  %8 = load ptr, ptr %delays3, align 8, !dbg !2765
  %irq_count = getelementptr inbounds %struct.task_delay_info, ptr %8, i32 0, i32 20, !dbg !2766
  %9 = load i32, ptr %irq_count, align 8, !dbg !2767
  %inc = add i32 %9, 1, !dbg !2767
  store i32 %inc, ptr %irq_count, align 8, !dbg !2767
  br label %do.body4, !dbg !2768

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy5) #10, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %__dummy5, metadata !2748, metadata !DIExpression()), !dbg !2769
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy26) #10, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %__dummy26, metadata !2751, metadata !DIExpression()), !dbg !2769
  %cmp7 = icmp eq ptr %__dummy5, %__dummy26, !dbg !2769
  %conv8 = zext i1 %cmp7 to i32, !dbg !2769
  store i32 1, ptr %tmp9, align 4, !dbg !2769
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy26) #10, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy5) #10, !dbg !2770
  %10 = load i32, ptr %tmp9, align 4, !dbg !2769
  %11 = load ptr, ptr %task.addr, align 8, !dbg !2770
  %delays10 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 169, !dbg !2770
  %12 = load ptr, ptr %delays10, align 8, !dbg !2770
  %lock11 = getelementptr inbounds %struct.task_delay_info, ptr %12, i32 0, i32 0, !dbg !2770
  %13 = load i64, ptr %flags, align 8, !dbg !2770
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i64 noundef %13) #8, !dbg !2770
  br label %do.cond12, !dbg !2770

do.cond12:                                        ; preds = %do.body4
  br label %do.end13, !dbg !2770

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !2771
  ret void, !dbg !2771
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2772 dso_local void @static_key_enable(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2776 dso_local void @static_key_disable(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2777 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysctl_delayacct(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #1 align 16 !dbg !2780 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  %t = alloca %struct.ctl_table, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !2782, metadata !DIExpression()), !dbg !2790
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !2783, metadata !DIExpression()), !dbg !2791
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2784, metadata !DIExpression()), !dbg !2792
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !2785, metadata !DIExpression()), !dbg !2793
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !2786, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #10, !dbg !2795
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2787, metadata !DIExpression()), !dbg !2796
  %0 = load i32, ptr @delayacct_on, align 4, !dbg !2797
  store i32 %0, ptr %state, align 4, !dbg !2796
  call void @llvm.lifetime.start.p0(i64 64, ptr %t) #10, !dbg !2798
  call void @llvm.dbg.declare(metadata ptr %t, metadata !2788, metadata !DIExpression()), !dbg !2799
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2789, metadata !DIExpression()), !dbg !2801
  %1 = load i32, ptr %write.addr, align 4, !dbg !2802
  %tobool = icmp ne i32 %1, 0, !dbg !2802
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2804

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 21) #8, !dbg !2805
  br i1 %call, label %if.end, label %if.then, !dbg !2806

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !2807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2807

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %table.addr, align 8, !dbg !2808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %2, i64 64, i1 false), !dbg !2809
  %data = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1, !dbg !2810
  store ptr %state, ptr %data, align 8, !dbg !2811
  %3 = load i32, ptr %write.addr, align 4, !dbg !2812
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !2813
  %5 = load ptr, ptr %lenp.addr, align 8, !dbg !2814
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !2815
  %call1 = call i32 @proc_dointvec_minmax(ptr noundef %t, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #8, !dbg !2816
  store i32 %call1, ptr %err, align 4, !dbg !2817
  %7 = load i32, ptr %err, align 4, !dbg !2818
  %cmp = icmp slt i32 %7, 0, !dbg !2820
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2821

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !2822
  store i32 %8, ptr %retval, align 4, !dbg !2823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2823

if.end3:                                          ; preds = %if.end
  %9 = load i32, ptr %write.addr, align 4, !dbg !2824
  %tobool4 = icmp ne i32 %9, 0, !dbg !2824
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2826

if.then5:                                         ; preds = %if.end3
  %10 = load i32, ptr %state, align 4, !dbg !2827
  %tobool6 = icmp ne i32 %10, 0, !dbg !2827
  call void @set_delayacct(i1 noundef zeroext %tobool6) #8, !dbg !2828
  br label %if.end7, !dbg !2828

if.end7:                                          ; preds = %if.then5, %if.end3
  %11 = load i32, ptr %err, align 4, !dbg !2829
  store i32 %11, ptr %retval, align 4, !dbg !2830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2830

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !2831
  call void @llvm.lifetime.end.p0(i64 64, ptr %t) #10, !dbg !2831
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #10, !dbg !2831
  %12 = load i32, ptr %retval, align 4, !dbg !2831
  ret i32 %12, !dbg !2831
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2832 dso_local zeroext i1 @capable(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2835 dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2836 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!llvm.ident = !{!2044}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "delayacct_key", scope: !2, file: !3, line: 17, type: !2015, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.delayacct.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/delayacct\22 -D KBUILD_BASENAME=\22delayacct\22 -D KBUILD_MODNAME=\22delayacct\22 -D __KBUILD_MODNAME=kmod_delayacct -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/delayacct.ll kernel/delayacct.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !1969, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/delayacct.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcc6cf6d1ada2275aff505304d5932ed")
!4 = !{!5, !11, !17, !24, !120}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !26, file: !25, line: 147, baseType: !7, size: 32, elements: !117)
!25 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !25, line: 135, size: 512, elements: !27)
!27 = !{!28, !32, !34, !36, !40, !41, !57, !115, !116}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !26, file: !25, line: 136, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 137, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !26, file: !25, line: 138, baseType: !35, size: 32, offset: 128)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !26, file: !25, line: 139, baseType: !37, size: 16, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 150, baseType: !24, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !26, file: !25, line: 151, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !25, line: 64, baseType: !44)
!44 = !DISubroutineType(types: !45)
!45 = !{!35, !46, !35, !33, !47, !53}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !50, line: 72, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !50, line: 16, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !38, line: 52, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !50, line: 88, baseType: !56)
!56 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !26, file: !25, line: 152, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !25, line: 117, size: 256, elements: !60)
!60 = !{!61, !66}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !59, file: !25, line: 118, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !63, file: !38, line: 173, baseType: !35, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !59, file: !25, line: 119, baseType: !67, size: 192, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !68, line: 37, size: 192, elements: !70)
!70 = !{!71, !109}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !69, file: !68, line: 38, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !73, line: 29, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !73, line: 17, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 18, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 18, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !77, file: !73, line: 19, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !81, line: 14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !80, file: !81, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !92, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !62, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !93, file: !85, line: 25, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !93, file: !85, line: 26, baseType: !96, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !104)
!104 = !{!105, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !103, file: !85, line: 29, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !39)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !85, line: 30, baseType: !106, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !68, line: 39, baseType: !110, size: 128, offset: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !38, line: 190, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !38, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !38, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !26, file: !25, line: 153, baseType: !33, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !26, file: !25, line: 154, baseType: !33, size: 64, offset: 448)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!119 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 10, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "false", value: 0)
!124 = !DIEnumerator(name: "true", value: 1)
!125 = !{!126, !33, !127, !128, !35, !130, !131, !52}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !38, line: 155, baseType: !7)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 154, baseType: !7)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !56)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !133, line: 746, size: 58368, elements: !134)
!133 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!134 = !{!135, !145, !146, !147, !153, !154, !155, !156, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !237, !248, !349, !353, !356, !387, !388, !389, !390, !401, !403, !404, !405, !406, !407, !408, !419, !420, !423, !424, !425, !426, !427, !428, !429, !430, !437, !438, !445, !446, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !741, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !791, !793, !794, !795, !807, !809, !810, !811, !812, !813, !814, !820, !821, !822, !823, !824, !825, !826, !840, !846, !1043, !1044, !1045, !1046, !1050, !1053, !1060, !1065, !1068, !1071, !1074, !1077, !1283, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1325, !1326, !1327, !1336, !1344, !1345, !1346, !1347, !1348, !1353, !1354, !1355, !1358, !1359, !1362, !1365, !1368, !1371, !1374, !1375, !1462, !1463, !1464, !1465, !1466, !1472, !1473, !1474, !1475, !1478, !1479, !1482, !1485, !1486, !1489, !1490, !1491, !1494, !1495, !1496, !1499, !1500, !1501, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1533, !1536, !1604, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1639, !1711, !1713, !1714, !1715, !1716, !1717, !1729, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1746, !1747, !1748}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !132, file: !133, line: 752, baseType: !136, size: 192)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !137, line: 56, size: 192, elements: !138)
!137 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!138 = !{!139, !140, !141, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 57, baseType: !52, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !136, file: !137, line: 58, baseType: !52, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !136, file: !137, line: 59, baseType: !142, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !7)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !136, file: !137, line: 61, baseType: !142, size: 32, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !132, file: !133, line: 754, baseType: !7, size: 32, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !132, file: !133, line: 767, baseType: !33, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !132, file: !133, line: 768, baseType: !148, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !149, line: 113, baseType: !150)
!149 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !149, line: 111, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !150, file: !149, line: 112, baseType: !62, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !133, line: 770, baseType: !7, size: 32, offset: 352)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !132, file: !133, line: 771, baseType: !7, size: 32, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !132, file: !133, line: 774, baseType: !35, size: 32, offset: 416)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !132, file: !133, line: 775, baseType: !157, size: 128, offset: 448)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !158, line: 58, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!159 = !{!160, !166, !171, !172}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !157, file: !158, line: 59, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !162, line: 60, size: 64, elements: !163)
!162 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 61, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !158, line: 60, baseType: !167, size: 32, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !157, file: !158, line: 60, size: 32, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !167, file: !158, line: 61, baseType: !7, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !167, file: !158, line: 62, baseType: !62, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !157, file: !158, line: 65, baseType: !106, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !157, file: !158, line: 65, baseType: !106, size: 16, offset: 112)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !132, file: !133, line: 776, baseType: !7, size: 32, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !132, file: !133, line: 777, baseType: !52, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !132, file: !133, line: 778, baseType: !131, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !132, file: !133, line: 787, baseType: !35, size: 32, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !132, file: !133, line: 788, baseType: !35, size: 32, offset: 800)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !132, file: !133, line: 790, baseType: !35, size: 32, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !132, file: !133, line: 792, baseType: !35, size: 32, offset: 864)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !132, file: !133, line: 793, baseType: !35, size: 32, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !132, file: !133, line: 794, baseType: !35, size: 32, offset: 928)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !132, file: !133, line: 795, baseType: !7, size: 32, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !132, file: !133, line: 797, baseType: !184, size: 2048, offset: 1024)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !133, line: 551, size: 2048, elements: !185)
!185 = !{!186, !191, !199, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !216, !219, !220, !221}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !184, file: !133, line: 553, baseType: !187, size: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !133, line: 411, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !187, file: !133, line: 412, baseType: !52, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !187, file: !133, line: 413, baseType: !142, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !184, file: !133, line: 554, baseType: !192, size: 192, align: 64, offset: 128)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !193, line: 5, size: 192, align: 64, elements: !194)
!193 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!194 = !{!195, !196, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !192, file: !193, line: 6, baseType: !52, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !192, file: !193, line: 7, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !192, file: !193, line: 8, baseType: !197, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !184, file: !133, line: 555, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !202)
!202 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !184, file: !133, line: 556, baseType: !200, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !184, file: !133, line: 558, baseType: !110, size: 128, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !184, file: !133, line: 559, baseType: !7, size: 32, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !184, file: !133, line: 561, baseType: !200, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !184, file: !133, line: 562, baseType: !200, size: 64, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !184, file: !133, line: 563, baseType: !200, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !184, file: !133, line: 564, baseType: !200, size: 64, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !184, file: !133, line: 565, baseType: !128, size: 64, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !184, file: !133, line: 566, baseType: !200, size: 64, offset: 960)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !184, file: !133, line: 568, baseType: !200, size: 64, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !184, file: !133, line: 571, baseType: !35, size: 32, offset: 1088)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !133, line: 572, baseType: !215, size: 64, offset: 1152)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !184, file: !133, line: 574, baseType: !217, size: 64, offset: 1216)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !133, line: 49, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !184, file: !133, line: 576, baseType: !217, size: 64, offset: 1280)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !184, file: !133, line: 578, baseType: !52, size: 64, offset: 1344)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !184, file: !133, line: 588, baseType: !222, size: 512, align: 512, offset: 1536)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !133, line: 497, size: 512, align: 512, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !222, file: !133, line: 498, baseType: !200, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !222, file: !133, line: 499, baseType: !200, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !222, file: !133, line: 500, baseType: !200, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !222, file: !133, line: 501, baseType: !142, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !222, file: !133, line: 502, baseType: !142, size: 32, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !222, file: !133, line: 503, baseType: !52, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !222, file: !133, line: 504, baseType: !52, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !222, file: !133, line: 505, baseType: !52, size: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !222, file: !133, line: 506, baseType: !233, size: 64, align: 64, offset: 448)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !133, line: 445, size: 64, align: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !233, file: !133, line: 446, baseType: !7, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !233, file: !133, line: 447, baseType: !7, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !132, file: !133, line: 798, baseType: !238, size: 384, offset: 3072)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !133, line: 592, size: 384, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !238, file: !133, line: 593, baseType: !110, size: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !238, file: !133, line: 594, baseType: !52, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !238, file: !133, line: 595, baseType: !52, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !238, file: !133, line: 596, baseType: !7, size: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !238, file: !133, line: 597, baseType: !39, size: 16, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !238, file: !133, line: 598, baseType: !39, size: 16, offset: 304)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !238, file: !133, line: 600, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !132, file: !133, line: 799, baseType: !249, size: 1792, offset: 3456)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !133, line: 610, size: 1792, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !346, !347}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !249, file: !133, line: 611, baseType: !192, size: 192, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !249, file: !133, line: 618, baseType: !200, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !249, file: !133, line: 619, baseType: !200, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !249, file: !133, line: 620, baseType: !200, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !249, file: !133, line: 621, baseType: !200, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !249, file: !133, line: 622, baseType: !200, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !249, file: !133, line: 629, baseType: !128, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !249, file: !133, line: 630, baseType: !200, size: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !133, line: 631, baseType: !7, size: 32, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !249, file: !133, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !249, file: !133, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !249, file: !133, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !249, file: !133, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !249, file: !133, line: 662, baseType: !265, size: 512, offset: 704)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !266)
!266 = !{!267, !275, !276, !281, !342, !343, !344, !345}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !6, line: 119, baseType: !268, size: 256)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !269, line: 9, size: 256, elements: !270)
!269 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !268, file: !269, line: 10, baseType: !192, size: 192, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !268, file: !269, line: 11, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !274, line: 29, baseType: !128)
!274 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !265, file: !6, line: 120, baseType: !273, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !265, file: !6, line: 121, baseType: !277, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!5, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !265, file: !6, line: 122, baseType: !282, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !284)
!284 = !{!285, !311, !312, !315, !325, !326, !337, !341}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !283, file: !6, line: 160, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !288)
!288 = !{!289, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !287, file: !6, line: 216, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !81, line: 23, baseType: !80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !287, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !287, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !287, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !287, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !287, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !287, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !287, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !287, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !287, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !287, file: !6, line: 227, baseType: !39, size: 16, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !287, file: !6, line: 228, baseType: !39, size: 16, offset: 208)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !287, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !287, file: !6, line: 235, baseType: !273, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !287, file: !6, line: 236, baseType: !280, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !287, file: !6, line: 237, baseType: !273, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !287, file: !6, line: 238, baseType: !280, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !287, file: !6, line: 239, baseType: !308, size: 4096, align: 512, offset: 512)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 4096, align: 512, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 8)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !283, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !283, file: !6, line: 162, baseType: !313, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 32, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !50, line: 96, baseType: !35)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !283, file: !6, line: 163, baseType: !316, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !317, line: 274, baseType: !318)
!317 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !317, line: 274, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !318, file: !317, line: 274, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !317, line: 69, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !317, line: 64, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !322, file: !317, line: 65, baseType: !7, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !283, file: !6, line: 164, baseType: !280, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !283, file: !6, line: 165, baseType: !327, size: 128, offset: 256)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !269, line: 14, size: 128, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !327, file: !269, line: 15, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !193, line: 26, size: 128, elements: !331)
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !330, file: !193, line: 27, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !193, line: 12, size: 64, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !333, file: !193, line: 13, baseType: !197, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !330, file: !193, line: 28, baseType: !197, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !283, file: !6, line: 166, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!273}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !283, file: !6, line: 167, baseType: !273, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !6, line: 123, baseType: !96, size: 8, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !265, file: !6, line: 124, baseType: !96, size: 8, offset: 456)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !265, file: !6, line: 125, baseType: !96, size: 8, offset: 464)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !265, file: !6, line: 126, baseType: !96, size: 8, offset: 472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !249, file: !133, line: 671, baseType: !265, size: 512, offset: 1216)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !249, file: !133, line: 679, baseType: !348, size: 64, offset: 1728)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !132, file: !133, line: 800, baseType: !350, size: 64, offset: 5248)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !133, line: 800, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !132, file: !133, line: 809, baseType: !354, size: 64, offset: 5312)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !133, line: 70, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !132, file: !133, line: 825, baseType: !357, size: 2048, align: 512, offset: 5632)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !133, line: 509, size: 2048, align: 512, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !357, file: !133, line: 511, baseType: !200, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !357, file: !133, line: 512, baseType: !200, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !357, file: !133, line: 513, baseType: !200, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !357, file: !133, line: 514, baseType: !200, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !357, file: !133, line: 515, baseType: !200, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !357, file: !133, line: 516, baseType: !200, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !357, file: !133, line: 518, baseType: !200, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !357, file: !133, line: 519, baseType: !200, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !357, file: !133, line: 520, baseType: !128, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !357, file: !133, line: 522, baseType: !200, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !357, file: !133, line: 523, baseType: !200, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !357, file: !133, line: 524, baseType: !128, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !357, file: !133, line: 526, baseType: !128, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !357, file: !133, line: 527, baseType: !200, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !357, file: !133, line: 529, baseType: !200, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !357, file: !133, line: 530, baseType: !200, size: 64, offset: 960)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !357, file: !133, line: 531, baseType: !200, size: 64, offset: 1024)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !357, file: !133, line: 532, baseType: !200, size: 64, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !357, file: !133, line: 533, baseType: !200, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !357, file: !133, line: 535, baseType: !200, size: 64, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !357, file: !133, line: 536, baseType: !200, size: 64, offset: 1280)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !357, file: !133, line: 537, baseType: !200, size: 64, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !357, file: !133, line: 538, baseType: !200, size: 64, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !357, file: !133, line: 539, baseType: !200, size: 64, offset: 1472)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !357, file: !133, line: 540, baseType: !200, size: 64, offset: 1536)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !357, file: !133, line: 541, baseType: !200, size: 64, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !357, file: !133, line: 542, baseType: !200, size: 64, offset: 1664)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !357, file: !133, line: 543, baseType: !200, size: 64, offset: 1728)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !132, file: !133, line: 833, baseType: !7, size: 32, offset: 7680)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !132, file: !133, line: 836, baseType: !7, size: 32, offset: 7712)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !132, file: !133, line: 837, baseType: !35, size: 32, offset: 7744)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !132, file: !133, line: 838, baseType: !391, size: 64, offset: 7808)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !394, line: 19, baseType: !395)
!394 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !394, line: 19, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !395, file: !394, line: 19, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 1)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !132, file: !133, line: 839, baseType: !402, size: 64, offset: 7872)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !132, file: !133, line: 840, baseType: !393, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !132, file: !133, line: 841, baseType: !33, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !132, file: !133, line: 843, baseType: !39, size: 16, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !132, file: !133, line: 845, baseType: !39, size: 16, offset: 8080)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !132, file: !133, line: 848, baseType: !35, size: 32, offset: 8096)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !132, file: !133, line: 849, baseType: !409, size: 32, offset: 8128)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !133, line: 718, size: 32, elements: !410)
!410 = !{!411, !418}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !409, file: !133, line: 724, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !133, line: 719, size: 32, elements: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !412, file: !133, line: 720, baseType: !96, size: 8)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !412, file: !133, line: 721, baseType: !96, size: 8, offset: 8)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !412, file: !133, line: 722, baseType: !96, size: 8, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !412, file: !133, line: 723, baseType: !96, size: 8, offset: 24)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !409, file: !133, line: 725, baseType: !142, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !132, file: !133, line: 850, baseType: !110, size: 128, offset: 8192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !132, file: !133, line: 851, baseType: !421, size: 64, offset: 8320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !133, line: 60, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !132, file: !133, line: 855, baseType: !52, size: 64, offset: 8384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !132, file: !133, line: 856, baseType: !96, size: 8, offset: 8448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !132, file: !133, line: 857, baseType: !96, size: 8, offset: 8456)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !132, file: !133, line: 858, baseType: !35, size: 32, offset: 8480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !132, file: !133, line: 859, baseType: !110, size: 128, offset: 8512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !132, file: !133, line: 860, baseType: !35, size: 32, offset: 8640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !132, file: !133, line: 861, baseType: !110, size: 128, offset: 8704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !132, file: !133, line: 873, baseType: !431, size: 256, offset: 8832)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !133, line: 376, size: 256, elements: !432)
!432 = !{!433, !434, !435, !436}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !431, file: !133, line: 381, baseType: !52, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !431, file: !133, line: 384, baseType: !202, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !431, file: !133, line: 389, baseType: !202, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !431, file: !133, line: 392, baseType: !202, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !132, file: !133, line: 875, baseType: !110, size: 128, offset: 9088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !132, file: !133, line: 877, baseType: !439, size: 320, offset: 9216)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !440, line: 86, size: 320, elements: !441)
!440 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!441 = !{!442, !443, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !439, file: !440, line: 87, baseType: !35, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !439, file: !440, line: 88, baseType: !110, size: 128, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !439, file: !440, line: 89, baseType: !110, size: 128, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !132, file: !133, line: 878, baseType: !192, size: 192, align: 64, offset: 9536)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !132, file: !133, line: 881, baseType: !447, size: 64, offset: 9728)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !449, line: 733, size: 10240, elements: !450)
!449 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!450 = !{!451, !658}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !449, line: 734, baseType: !452, size: 10240)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !449, line: 734, size: 10240, elements: !453)
!453 = !{!454, !458, !472, !479, !480, !481, !482, !483, !484, !492, !493, !494, !500, !501, !508, !509, !510, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !551, !565, !568, !624, !625, !626, !629, !633, !634, !637, !638, !639, !645, !646}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !449, line: 739, baseType: !455, size: 512, align: 512)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !449, line: 739, size: 512, align: 512, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !455, file: !449, line: 747, baseType: !62, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !452, file: !449, line: 750, baseType: !459, size: 128, offset: 512)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !460, line: 218, size: 128, elements: !461)
!460 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!461 = !{!462, !470, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 219, baseType: !463, size: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 219, size: 32, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !463, file: !460, line: 220, baseType: !72, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !463, file: !460, line: 221, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !460, line: 197, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 197, elements: !469)
!469 = !{}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !459, file: !460, line: 223, baseType: !7, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !459, file: !460, line: 224, baseType: !33, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !452, file: !449, line: 752, baseType: !473, size: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!52, !476, !52, !52, !52, !52}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !478, line: 537, flags: DIFlagFwdDecl)
!478 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !452, file: !449, line: 756, baseType: !52, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !452, file: !449, line: 757, baseType: !52, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !452, file: !449, line: 760, baseType: !52, size: 64, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !452, file: !449, line: 761, baseType: !52, size: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !452, file: !449, line: 763, baseType: !52, size: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !452, file: !449, line: 764, baseType: !485, size: 64, offset: 1024)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !478, line: 299, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 299, size: 64, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !487, file: !478, line: 299, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !491, line: 18, baseType: !52)
!491 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !452, file: !449, line: 773, baseType: !62, size: 32, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !452, file: !449, line: 785, baseType: !62, size: 32, offset: 1120)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !452, file: !449, line: 795, baseType: !495, size: 64, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !449, line: 726, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !496, file: !449, line: 727, baseType: !200, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !496, file: !449, line: 728, baseType: !35, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !452, file: !449, line: 801, baseType: !52, size: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !452, file: !449, line: 804, baseType: !502, size: 64, offset: 1280)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !503, line: 13, baseType: !504)
!503 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !38, line: 181, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 179, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !505, file: !38, line: 180, baseType: !128, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !452, file: !449, line: 806, baseType: !35, size: 32, offset: 1344)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !452, file: !449, line: 808, baseType: !72, size: 32, offset: 1376)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !452, file: !449, line: 823, baseType: !511, size: 320, offset: 1408)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !512, line: 48, size: 320, elements: !513)
!512 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!513 = !{!514, !515, !516, !521, !522}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !512, line: 49, baseType: !502, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !512, line: 55, baseType: !502, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !511, file: !512, line: 57, baseType: !517, size: 32, offset: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !518, line: 15, size: 32, elements: !519)
!518 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !517, file: !518, line: 20, baseType: !62, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !511, file: !512, line: 59, baseType: !290, size: 32, offset: 160)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !511, file: !512, line: 60, baseType: !110, size: 128, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !452, file: !449, line: 825, baseType: !110, size: 128, offset: 1728)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !452, file: !449, line: 845, baseType: !35, size: 32, offset: 1856)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !452, file: !449, line: 849, baseType: !52, size: 64, offset: 1920)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !452, file: !449, line: 850, baseType: !52, size: 64, offset: 1984)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !452, file: !449, line: 852, baseType: !52, size: 64, offset: 2048)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !452, file: !449, line: 853, baseType: !52, size: 64, offset: 2112)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !452, file: !449, line: 854, baseType: !504, size: 64, offset: 2176)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !452, file: !449, line: 855, baseType: !52, size: 64, offset: 2240)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !452, file: !449, line: 856, baseType: !52, size: 64, offset: 2304)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !452, file: !449, line: 857, baseType: !52, size: 64, offset: 2368)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !452, file: !449, line: 858, baseType: !52, size: 64, offset: 2432)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !452, file: !449, line: 865, baseType: !321, size: 32, offset: 2496)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !452, file: !449, line: 867, baseType: !72, size: 32, offset: 2528)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !452, file: !449, line: 869, baseType: !52, size: 64, offset: 2560)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !452, file: !449, line: 869, baseType: !52, size: 64, offset: 2624)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !452, file: !449, line: 869, baseType: !52, size: 64, offset: 2688)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !452, file: !449, line: 869, baseType: !52, size: 64, offset: 2752)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !452, file: !449, line: 870, baseType: !52, size: 64, offset: 2816)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !452, file: !449, line: 870, baseType: !52, size: 64, offset: 2880)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !452, file: !449, line: 870, baseType: !52, size: 64, offset: 2944)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !452, file: !449, line: 871, baseType: !52, size: 64, offset: 3008)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !452, file: !449, line: 871, baseType: !52, size: 64, offset: 3072)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !452, file: !449, line: 871, baseType: !52, size: 64, offset: 3136)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !452, file: !449, line: 871, baseType: !52, size: 64, offset: 3200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !452, file: !449, line: 873, baseType: !548, size: 3328, offset: 3264)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3328, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 52)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !452, file: !449, line: 875, baseType: !552, size: 1280, offset: 6592)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 1280, elements: !563)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !554, line: 22, size: 320, elements: !555)
!554 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !553, file: !554, line: 23, baseType: !290, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !553, file: !554, line: 24, baseType: !128, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !553, file: !554, line: 26, baseType: !110, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !553, file: !554, line: 28, baseType: !560, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !35)
!563 = !{!564}
!564 = !DISubrange(count: 4)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !452, file: !449, line: 877, baseType: !566, size: 64, offset: 7872)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !449, line: 877, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !452, file: !449, line: 880, baseType: !569, size: 1088, offset: 7936)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !570, line: 72, baseType: !571)
!570 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 23, size: 1088, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !580, !581, !589, !590, !618, !619, !620}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !571, file: !570, line: 28, baseType: !200, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !571, file: !570, line: 38, baseType: !504, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !571, file: !570, line: 40, baseType: !52, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !571, file: !570, line: 43, baseType: !511, size: 320, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !571, file: !570, line: 44, baseType: !578, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !570, line: 44, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !570, line: 48, baseType: !52, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !571, file: !570, line: 59, baseType: !582, size: 256, offset: 640)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !583, line: 66, size: 256, elements: !584)
!583 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !582, file: !583, line: 67, baseType: !502, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !582, file: !583, line: 68, baseType: !290, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !582, file: !583, line: 70, baseType: !517, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !582, file: !583, line: 72, baseType: !110, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !571, file: !570, line: 60, baseType: !33, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !571, file: !570, line: 61, baseType: !591, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !594, line: 13, size: 1216, elements: !595)
!594 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!595 = !{!596, !597, !598, !599, !600, !601, !602, !605, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !593, file: !594, line: 14, baseType: !33, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !594, line: 15, baseType: !52, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !593, file: !594, line: 17, baseType: !52, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !593, file: !594, line: 17, baseType: !52, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !593, file: !594, line: 18, baseType: !52, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !593, file: !594, line: 18, baseType: !52, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !593, file: !594, line: 19, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !593, file: !594, line: 21, baseType: !606, size: 64, offset: 448)
!606 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !593, file: !594, line: 23, baseType: !606, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !593, file: !594, line: 24, baseType: !606, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !593, file: !594, line: 25, baseType: !606, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !593, file: !594, line: 26, baseType: !606, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !593, file: !594, line: 27, baseType: !606, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !593, file: !594, line: 28, baseType: !606, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !593, file: !594, line: 29, baseType: !606, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !593, file: !594, line: 30, baseType: !606, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !593, file: !594, line: 31, baseType: !606, size: 64, offset: 1024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !593, file: !594, line: 32, baseType: !606, size: 64, offset: 1088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !593, file: !594, line: 33, baseType: !606, size: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !571, file: !570, line: 63, baseType: !62, size: 32, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !571, file: !570, line: 69, baseType: !106, size: 16, offset: 1056)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !571, file: !570, line: 70, baseType: !621, size: 16, offset: 1072)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !623)
!623 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !449, line: 882, baseType: !52, size: 64, offset: 9024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !452, file: !449, line: 885, baseType: !72, size: 32, offset: 9088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !452, file: !449, line: 886, baseType: !627, size: 64, offset: 9152)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !449, line: 732, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !452, file: !449, line: 901, baseType: !630, size: 64, offset: 9216)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !632, line: 18, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !452, file: !449, line: 904, baseType: !476, size: 64, offset: 9280)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !452, file: !449, line: 906, baseType: !635, size: 64, offset: 9344)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !449, line: 906, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !452, file: !449, line: 930, baseType: !62, size: 32, offset: 9408)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !452, file: !449, line: 933, baseType: !62, size: 32, offset: 9440)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !452, file: !449, line: 935, baseType: !640, size: 64, offset: 9472)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !640, file: !18, line: 104, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !452, file: !449, line: 940, baseType: !502, size: 64, offset: 9536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !452, file: !449, line: 942, baseType: !647, size: 256, offset: 9600)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !648, line: 98, size: 256, elements: !649)
!648 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !647, file: !648, line: 99, baseType: !502, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !647, file: !648, line: 100, baseType: !110, size: 128, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !647, file: !648, line: 101, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !648, line: 21, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !448, file: !449, line: 986, baseType: !659, offset: 10240)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: -1)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !132, file: !133, line: 882, baseType: !447, size: 64, offset: 9792)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !132, file: !133, line: 884, baseType: !35, size: 32, offset: 9856)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !132, file: !133, line: 885, baseType: !35, size: 32, offset: 9888)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !132, file: !133, line: 886, baseType: !35, size: 32, offset: 9920)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !132, file: !133, line: 888, baseType: !35, size: 32, offset: 9952)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !132, file: !133, line: 890, baseType: !52, size: 64, offset: 9984)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !132, file: !133, line: 893, baseType: !7, size: 32, offset: 10048)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !132, file: !133, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !132, file: !133, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !132, file: !133, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !132, file: !133, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !132, file: !133, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !132, file: !133, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !132, file: !133, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !132, file: !133, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !132, file: !133, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !132, file: !133, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !132, file: !133, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !132, file: !133, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !132, file: !133, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !132, file: !133, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !132, file: !133, line: 969, baseType: !52, size: 64, offset: 10176)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !132, file: !133, line: 971, baseType: !685, size: 448, offset: 10240)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !686)
!686 = !{!687, !688, !693}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !685, file: !12, line: 26, baseType: !52, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !685, file: !12, line: 27, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!606, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !12, line: 28, baseType: !694, size: 320, offset: 128)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !12, line: 28, size: 320, elements: !695)
!695 = !{!696, !706, !731}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !694, file: !12, line: 37, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !12, line: 30, size: 320, elements: !698)
!698 = !{!699, !701, !702, !703, !704, !705}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !697, file: !12, line: 31, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !697, file: !12, line: 32, baseType: !142, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !12, line: 33, baseType: !142, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !697, file: !12, line: 34, baseType: !142, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !697, file: !12, line: 35, baseType: !200, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !697, file: !12, line: 36, baseType: !700, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !694, file: !12, line: 47, baseType: !707, size: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !12, line: 39, size: 192, elements: !708)
!708 = !{!709, !710, !711, !730}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !707, file: !12, line: 40, baseType: !313, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !12, line: 42, baseType: !712, size: 64, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !12, line: 42, size: 64, elements: !713)
!713 = !{!714, !722}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !712, file: !12, line: 43, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !717, line: 7, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!718 = !{!719, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !716, file: !717, line: 8, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !50, line: 93, baseType: !56)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !716, file: !717, line: 9, baseType: !56, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !712, file: !12, line: 44, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !725, line: 7, size: 64, elements: !726)
!725 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !724, file: !725, line: 8, baseType: !728, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !725, line: 5, baseType: !561)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !724, file: !725, line: 9, baseType: !561, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !707, file: !12, line: 46, baseType: !200, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !694, file: !12, line: 55, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !12, line: 49, size: 256, elements: !733)
!733 = !{!734, !737, !738, !739, !740}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !732, file: !12, line: 50, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !732, file: !12, line: 51, baseType: !35, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !732, file: !12, line: 52, baseType: !35, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !732, file: !12, line: 53, baseType: !52, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !732, file: !12, line: 54, baseType: !52, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !132, file: !133, line: 973, baseType: !742, size: 32, offset: 10688)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !38, line: 27, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !50, line: 28, baseType: !35)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !132, file: !133, line: 974, baseType: !742, size: 32, offset: 10720)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !132, file: !133, line: 978, baseType: !52, size: 64, offset: 10752)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !132, file: !133, line: 987, baseType: !131, size: 64, offset: 10816)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !133, line: 990, baseType: !131, size: 64, offset: 10880)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !133, line: 995, baseType: !110, size: 128, offset: 10944)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !132, file: !133, line: 996, baseType: !110, size: 128, offset: 11072)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !132, file: !133, line: 997, baseType: !131, size: 64, offset: 11200)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !132, file: !133, line: 1005, baseType: !110, size: 128, offset: 11264)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !132, file: !133, line: 1006, baseType: !110, size: 128, offset: 11392)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !132, file: !133, line: 1009, baseType: !754, size: 64, offset: 11520)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !756, line: 59, size: 768, elements: !757)
!756 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!757 = !{!758, !759, !760, !761, !772, !773, !774, !783}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !755, file: !756, line: 61, baseType: !148, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !755, file: !756, line: 62, baseType: !7, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !755, file: !756, line: 63, baseType: !72, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !755, file: !756, line: 65, baseType: !762, size: 256, offset: 128)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 256, elements: !563)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !38, line: 194, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !763, file: !38, line: 195, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !38, line: 198, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !38, line: 199, baseType: !766, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !767, file: !38, line: 199, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !755, file: !756, line: 66, baseType: !763, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !755, file: !756, line: 68, baseType: !67, size: 192, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !755, file: !756, line: 69, baseType: !775, size: 128, align: 64, offset: 640)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !38, line: 232, size: 128, align: 64, elements: !776)
!776 = !{!777, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !38, line: 233, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !775, file: !38, line: 234, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !778}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !755, file: !756, line: 70, baseType: !784, offset: 768)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, elements: !660)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !756, line: 54, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !785, file: !756, line: 55, baseType: !35, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !785, file: !756, line: 56, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !756, line: 56, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !132, file: !133, line: 1010, baseType: !792, size: 512, offset: 11584)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 512, elements: !563)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !132, file: !133, line: 1011, baseType: !110, size: 128, offset: 12096)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !132, file: !133, line: 1012, baseType: !110, size: 128, offset: 12224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !132, file: !133, line: 1014, baseType: !796, size: 64, offset: 12352)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !798, line: 26, size: 256, elements: !799)
!798 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !797, file: !798, line: 27, baseType: !7, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !797, file: !798, line: 28, baseType: !802, size: 192, offset: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !803, line: 43, size: 192, elements: !804)
!803 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 44, baseType: !290, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !802, file: !803, line: 45, baseType: !110, size: 128, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !132, file: !133, line: 1017, baseType: !808, size: 64, offset: 12416)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !132, file: !133, line: 1020, baseType: !808, size: 64, offset: 12480)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !132, file: !133, line: 1023, baseType: !33, size: 64, offset: 12544)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !132, file: !133, line: 1025, baseType: !200, size: 64, offset: 12608)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !132, file: !133, line: 1026, baseType: !200, size: 64, offset: 12672)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !132, file: !133, line: 1031, baseType: !200, size: 64, offset: 12736)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !132, file: !133, line: 1032, baseType: !815, size: 192, offset: 12800)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !133, line: 324, size: 192, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !815, file: !133, line: 326, baseType: !200, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !815, file: !133, line: 327, baseType: !200, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !133, line: 328, baseType: !290, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !132, file: !133, line: 1041, baseType: !52, size: 64, offset: 12992)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !132, file: !133, line: 1042, baseType: !52, size: 64, offset: 13056)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !132, file: !133, line: 1045, baseType: !200, size: 64, offset: 13120)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !132, file: !133, line: 1048, baseType: !200, size: 64, offset: 13184)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !132, file: !133, line: 1051, baseType: !52, size: 64, offset: 13248)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !132, file: !133, line: 1052, baseType: !52, size: 64, offset: 13312)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !132, file: !133, line: 1055, baseType: !827, size: 640, offset: 13376)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !828, line: 132, size: 640, elements: !829)
!828 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!829 = !{!830, !838, !839}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !827, file: !828, line: 133, baseType: !831, size: 576)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 576, elements: !836)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !828, line: 117, size: 192, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !832, file: !828, line: 118, baseType: !200, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !832, file: !828, line: 119, baseType: !327, size: 128, offset: 64)
!836 = !{!837}
!837 = !DISubrange(count: 3)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !827, file: !828, line: 134, baseType: !7, size: 32, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !827, file: !828, line: 135, baseType: !7, size: 32, offset: 608)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !132, file: !133, line: 1058, baseType: !841, size: 448, offset: 14016)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !828, line: 144, size: 448, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !841, file: !828, line: 145, baseType: !775, size: 128, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !841, file: !828, line: 146, baseType: !582, size: 256, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !841, file: !828, line: 147, baseType: !7, size: 32, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !132, file: !133, line: 1064, baseType: !847, size: 64, offset: 14464)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !850, line: 110, size: 1472, elements: !851)
!850 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!851 = !{!852, !853, !860, !867, !868, !869, !870, !871, !872, !873, !874, !880, !881, !882, !883, !884, !885, !998, !999, !1000, !1001, !1002, !1025, !1026, !1030, !1038}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !849, file: !850, line: 111, baseType: !502, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !849, file: !850, line: 112, baseType: !854, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !632, line: 23, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 21, size: 32, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !855, file: !632, line: 22, baseType: !858, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !38, line: 37, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !50, line: 49, baseType: !7)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !849, file: !850, line: 113, baseType: !861, size: 32, offset: 96)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !632, line: 28, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 26, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !862, file: !632, line: 27, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !38, line: 38, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !50, line: 50, baseType: !7)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !849, file: !850, line: 114, baseType: !854, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !849, file: !850, line: 115, baseType: !861, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !849, file: !850, line: 116, baseType: !854, size: 32, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !849, file: !850, line: 117, baseType: !861, size: 32, offset: 224)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !849, file: !850, line: 118, baseType: !854, size: 32, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !849, file: !850, line: 119, baseType: !861, size: 32, offset: 288)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !849, file: !850, line: 120, baseType: !7, size: 32, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !849, file: !850, line: 121, baseType: !875, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !876, line: 24, baseType: !877)
!876 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 24, size: 64, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !877, file: !876, line: 24, baseType: !200, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !849, file: !850, line: 122, baseType: !875, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !849, file: !850, line: 123, baseType: !875, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !849, file: !850, line: 124, baseType: !875, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !849, file: !850, line: 125, baseType: !875, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !849, file: !850, line: 127, baseType: !100, size: 8, offset: 704)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !849, file: !850, line: 129, baseType: !886, size: 64, offset: 768)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !888, line: 195, size: 1728, elements: !889)
!888 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!889 = !{!890, !891, !894, !899, !900, !903, !904, !911, !912, !913, !914, !917, !918, !919, !920, !921, !962, !983}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !887, file: !888, line: 196, baseType: !148, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !887, file: !888, line: 197, baseType: !892, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !888, line: 28, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !38, line: 104, baseType: !561)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 198, baseType: !895, size: 192, offset: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 198, size: 192, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !895, file: !888, line: 199, baseType: !110, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !895, file: !888, line: 200, baseType: !192, size: 192, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !887, file: !888, line: 205, baseType: !511, size: 320, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !887, file: !888, line: 206, baseType: !901, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !888, line: 206, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !887, file: !888, line: 207, baseType: !33, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 208, baseType: !905, size: 64, offset: 704)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 208, size: 64, elements: !906)
!906 = !{!907, !910}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !905, file: !888, line: 209, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !909, line: 8, baseType: !129)
!909 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!910 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !905, file: !888, line: 210, baseType: !908, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !887, file: !888, line: 212, baseType: !908, size: 64, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !887, file: !888, line: 213, baseType: !854, size: 32, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !887, file: !888, line: 214, baseType: !861, size: 32, offset: 864)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !887, file: !888, line: 215, baseType: !915, size: 32, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !888, line: 31, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 110, baseType: !142)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !887, file: !888, line: 216, baseType: !39, size: 16, offset: 928)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !887, file: !888, line: 217, baseType: !39, size: 16, offset: 944)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !887, file: !888, line: 221, baseType: !623, size: 16, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !888, line: 228, baseType: !52, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 245, baseType: !922, size: 320, offset: 1088)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 245, size: 320, elements: !923)
!923 = !{!924, !953}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !922, file: !888, line: 246, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !888, line: 114, size: 320, elements: !926)
!926 = !{!927, !928, !940, !943, !952}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !925, file: !888, line: 116, baseType: !52, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !888, line: 117, baseType: !929, size: 64, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !888, line: 117, size: 64, elements: !930)
!930 = !{!931, !939}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !888, line: 118, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !888, line: 118, size: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !932, file: !888, line: 120, baseType: !106, size: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !932, file: !888, line: 121, baseType: !936, size: 48, offset: 16)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 6)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !929, file: !888, line: 127, baseType: !52, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !925, file: !888, line: 129, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !888, line: 102, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !925, file: !888, line: 130, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !888, line: 108, size: 192, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !945, file: !888, line: 109, baseType: !775, size: 128, align: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !945, file: !888, line: 110, baseType: !148, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !945, file: !888, line: 111, baseType: !950, size: 8, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !951)
!951 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !925, file: !888, line: 131, baseType: !29, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !888, line: 247, baseType: !954, size: 320)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !888, line: 247, size: 320, elements: !955)
!955 = !{!956, !957, !958, !959, !960}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !954, file: !888, line: 248, baseType: !52, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !954, file: !888, line: 249, baseType: !52, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !954, file: !888, line: 250, baseType: !941, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !954, file: !888, line: 251, baseType: !944, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !954, file: !888, line: 252, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 260, baseType: !963, size: 256, offset: 1408)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 260, size: 256, elements: !964)
!964 = !{!965, !971}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !963, file: !888, line: 261, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !888, line: 134, size: 256, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !966, file: !888, line: 135, baseType: !33, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !966, file: !888, line: 136, baseType: !970, size: 256)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !563)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !888, line: 262, baseType: !972, size: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !888, line: 262, size: 256, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !972, file: !888, line: 264, baseType: !110, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !972, file: !888, line: 265, baseType: !976, size: 128, offset: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !977, line: 22, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!978 = !{!979, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !976, file: !977, line: 23, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !977, line: 23, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !976, file: !977, line: 24, baseType: !52, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !887, file: !888, line: 280, baseType: !984, size: 64, offset: 1664)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !888, line: 176, size: 192, elements: !986)
!986 = !{!987, !996, !997}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !985, file: !888, line: 177, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !888, line: 171, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!35, !886, !992, !994, !886}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !985, file: !888, line: 178, baseType: !886, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !985, file: !888, line: 179, baseType: !941, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !849, file: !850, line: 130, baseType: !886, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !849, file: !850, line: 131, baseType: !886, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !849, file: !850, line: 132, baseType: !886, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !849, file: !850, line: 135, baseType: !33, size: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !849, file: !850, line: 137, baseType: !1003, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1005, line: 14, size: 1088, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1004, file: !1005, line: 15, baseType: !148, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1004, file: !1005, line: 17, baseType: !553, size: 320, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1004, file: !1005, line: 19, baseType: !52, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1004, file: !1005, line: 20, baseType: !502, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1004, file: !1005, line: 23, baseType: !767, size: 128, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1004, file: !1005, line: 24, baseType: !854, size: 32, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1004, file: !1005, line: 29, baseType: !502, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1004, file: !1005, line: 36, baseType: !1015, size: 320, offset: 768)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1016, line: 15, size: 320, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !1016, line: 16, baseType: !290, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1015, file: !1016, line: 18, baseType: !35, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1015, file: !1016, line: 19, baseType: !35, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1015, file: !1016, line: 20, baseType: !35, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1015, file: !1016, line: 21, baseType: !35, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1015, file: !1016, line: 22, baseType: !52, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 23, baseType: !52, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !849, file: !850, line: 138, baseType: !630, size: 64, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !849, file: !850, line: 139, baseType: !1027, size: 64, offset: 1216)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1029, line: 16, flags: DIFlagFwdDecl)
!1029 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !849, file: !850, line: 140, baseType: !1031, size: 64, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !850, line: 25, size: 64, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1032, file: !850, line: 26, baseType: !62, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1032, file: !850, line: 27, baseType: !35, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1032, file: !850, line: 28, baseType: !1037, offset: 64)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, elements: !660)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !850, line: 142, baseType: !1039, size: 128, offset: 1344)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !850, line: 142, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1039, file: !850, line: 143, baseType: !35, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1039, file: !850, line: 144, baseType: !775, size: 128, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !132, file: !133, line: 1067, baseType: !847, size: 64, offset: 14528)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !132, file: !133, line: 1070, baseType: !847, size: 64, offset: 14592)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !132, file: !133, line: 1074, baseType: !886, size: 64, offset: 14656)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !132, file: !133, line: 1084, baseType: !1047, size: 128, offset: 14720)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 16)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !132, file: !133, line: 1086, baseType: !1051, size: 64, offset: 14848)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !133, line: 55, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !132, file: !133, line: 1089, baseType: !1054, size: 64, offset: 14912)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1055, line: 12, size: 64, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1054, file: !1055, line: 13, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1055, line: 8, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !132, file: !133, line: 1090, baseType: !1061, size: 128, offset: 14976)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1062, line: 13, size: 128, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1061, file: !1062, line: 14, baseType: !110, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !132, file: !133, line: 1097, baseType: !1066, size: 64, offset: 15104)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !133, line: 50, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !132, file: !133, line: 1100, baseType: !1069, size: 64, offset: 15168)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !133, line: 1100, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !132, file: !133, line: 1103, baseType: !1072, size: 64, offset: 15232)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !133, line: 53, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !132, file: !133, line: 1107, baseType: !1075, size: 64, offset: 15296)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !133, line: 56, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !132, file: !133, line: 1110, baseType: !1078, size: 64, offset: 15360)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1080, line: 93, size: 8768, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1131, !1140, !1141, !1143, !1144, !1145, !1148, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1190, !1191, !1198, !1208, !1273, !1274, !1277, !1278, !1279, !1280, !1281, !1282}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1079, file: !1080, line: 94, baseType: !148, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1079, file: !1080, line: 95, baseType: !62, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1079, file: !1080, line: 96, baseType: !35, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1079, file: !1080, line: 97, baseType: !35, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1079, file: !1080, line: 98, baseType: !110, size: 128, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1079, file: !1080, line: 100, baseType: !67, size: 192, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1079, file: !1080, line: 103, baseType: !131, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1079, file: !1080, line: 106, baseType: !1090, size: 192, offset: 512)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1029, line: 32, size: 192, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1090, file: !1029, line: 33, baseType: !110, size: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1090, file: !1029, line: 34, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1095, line: 25, baseType: !1096)
!1095 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 23, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1096, file: !1095, line: 24, baseType: !398, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1079, file: !1080, line: 109, baseType: !763, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1079, file: !1080, line: 112, baseType: !35, size: 32, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1079, file: !1080, line: 114, baseType: !35, size: 32, offset: 800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1079, file: !1080, line: 115, baseType: !131, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1079, file: !1080, line: 118, baseType: !35, size: 32, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !1080, line: 119, baseType: !7, size: 32, offset: 928)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1079, file: !1080, line: 121, baseType: !1106, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1080, line: 80, size: 448, elements: !1108)
!1108 = !{!1109, !1110, !1116}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1107, file: !1080, line: 81, baseType: !62, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1107, file: !1080, line: 82, baseType: !1111, size: 128, offset: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1080, line: 75, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1111, file: !1080, line: 76, baseType: !131, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1111, file: !1080, line: 77, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1107, file: !1080, line: 83, baseType: !797, size: 256, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1079, file: !1080, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1079, file: !1080, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1079, file: !1080, line: 138, baseType: !7, size: 32, offset: 1056)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1079, file: !1080, line: 139, baseType: !110, size: 128, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1079, file: !1080, line: 142, baseType: !265, size: 512, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1079, file: !1080, line: 143, baseType: !273, size: 64, offset: 1728)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1079, file: !1080, line: 150, baseType: !1124, size: 256, offset: 1792)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 256, elements: !1129)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1080, line: 38, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1125, file: !1080, line: 39, baseType: !200, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1125, file: !1080, line: 40, baseType: !200, size: 64, offset: 64)
!1129 = !{!1130}
!1130 = !DISubrange(count: 2)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1079, file: !1080, line: 156, baseType: !1132, size: 192, offset: 2048)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1080, line: 66, size: 192, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1132, file: !1080, line: 67, baseType: !1135, size: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1080, line: 47, size: 192, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1135, file: !1080, line: 48, baseType: !504, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1135, file: !1080, line: 49, baseType: !504, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1135, file: !1080, line: 50, baseType: !504, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1079, file: !1080, line: 160, baseType: !827, size: 640, offset: 2240)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1079, file: !1080, line: 163, baseType: !1142, size: 256, offset: 2880)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !563)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1079, file: !1080, line: 169, baseType: !754, size: 64, offset: 3136)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1079, file: !1080, line: 172, baseType: !35, size: 32, offset: 3200)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1079, file: !1080, line: 174, baseType: !1146, size: 64, offset: 3264)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1080, line: 174, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1079, file: !1080, line: 185, baseType: !1149, size: 64, offset: 3328)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !317, line: 860, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 853, size: 64, elements: !1151)
!1151 = !{!1152, !1157}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1150, file: !317, line: 858, baseType: !1153, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !317, line: 275, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !317, line: 275, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1154, file: !317, line: 275, baseType: !321, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1150, file: !317, line: 859, baseType: !72, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1079, file: !1080, line: 186, baseType: !200, size: 64, offset: 3392)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1079, file: !1080, line: 186, baseType: !200, size: 64, offset: 3456)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1079, file: !1080, line: 186, baseType: !200, size: 64, offset: 3520)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1079, file: !1080, line: 186, baseType: !200, size: 64, offset: 3584)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1079, file: !1080, line: 187, baseType: !200, size: 64, offset: 3648)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1079, file: !1080, line: 188, baseType: !200, size: 64, offset: 3712)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1079, file: !1080, line: 189, baseType: !815, size: 192, offset: 3776)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1079, file: !1080, line: 190, baseType: !52, size: 64, offset: 3968)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1079, file: !1080, line: 190, baseType: !52, size: 64, offset: 4032)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1079, file: !1080, line: 190, baseType: !52, size: 64, offset: 4096)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1079, file: !1080, line: 190, baseType: !52, size: 64, offset: 4160)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1079, file: !1080, line: 191, baseType: !52, size: 64, offset: 4224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1079, file: !1080, line: 191, baseType: !52, size: 64, offset: 4288)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1079, file: !1080, line: 191, baseType: !52, size: 64, offset: 4352)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1079, file: !1080, line: 191, baseType: !52, size: 64, offset: 4416)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1079, file: !1080, line: 192, baseType: !52, size: 64, offset: 4480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1079, file: !1080, line: 192, baseType: !52, size: 64, offset: 4544)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1079, file: !1080, line: 192, baseType: !52, size: 64, offset: 4608)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1079, file: !1080, line: 192, baseType: !52, size: 64, offset: 4672)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1079, file: !1080, line: 193, baseType: !52, size: 64, offset: 4736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1079, file: !1080, line: 193, baseType: !52, size: 64, offset: 4800)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1079, file: !1080, line: 194, baseType: !1180, size: 448, offset: 4864)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1181, line: 12, size: 448, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1180, file: !1181, line: 15, baseType: !200, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1180, file: !1181, line: 17, baseType: !200, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1180, file: !1181, line: 19, baseType: !200, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1180, file: !1181, line: 21, baseType: !200, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1180, file: !1181, line: 29, baseType: !200, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1180, file: !1181, line: 35, baseType: !200, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1180, file: !1181, line: 44, baseType: !200, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1079, file: !1080, line: 202, baseType: !202, size: 64, offset: 5312)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1079, file: !1080, line: 213, baseType: !1192, size: 2048, offset: 5376)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 2048, elements: !1048)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1194, line: 43, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1193, file: !1194, line: 44, baseType: !51, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1193, file: !1194, line: 45, baseType: !51, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1079, file: !1080, line: 216, baseType: !1199, size: 448, offset: 7424)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1080, line: 30, size: 448, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1199, file: !1080, line: 31, baseType: !35, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1199, file: !1080, line: 32, baseType: !606, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1199, file: !1080, line: 33, baseType: !52, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1199, file: !1080, line: 34, baseType: !200, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1199, file: !1080, line: 34, baseType: !200, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1199, file: !1080, line: 35, baseType: !52, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1199, file: !1080, line: 35, baseType: !52, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1079, file: !1080, line: 219, baseType: !1209, size: 64, offset: 7872)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1211, line: 41, size: 3456, elements: !1212)
!1211 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229, !1230, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1210, file: !1211, line: 47, baseType: !107, size: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1210, file: !1211, line: 48, baseType: !143, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1210, file: !1211, line: 54, baseType: !98, size: 8, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !1210, file: !1211, line: 55, baseType: !98, size: 8, offset: 72)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !1210, file: !1211, line: 73, baseType: !201, size: 64, align: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !1210, file: !1211, line: 74, baseType: !201, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !1210, file: !1211, line: 81, baseType: !201, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !1210, file: !1211, line: 82, baseType: !201, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !1210, file: !1211, line: 85, baseType: !201, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !1210, file: !1211, line: 86, baseType: !201, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !1210, file: !1211, line: 94, baseType: !201, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !1210, file: !1211, line: 102, baseType: !201, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !1210, file: !1211, line: 107, baseType: !1226, size: 256, offset: 640)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !1210, file: !1211, line: 108, baseType: !98, size: 8, align: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !1210, file: !1211, line: 110, baseType: !1231, size: 24, offset: 904)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !836)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !1210, file: !1211, line: 111, baseType: !143, size: 32, align: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !1210, file: !1211, line: 113, baseType: !143, size: 32, offset: 992)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !1210, file: !1211, line: 114, baseType: !143, size: 32, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !1210, file: !1211, line: 115, baseType: !143, size: 32, offset: 1056)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !1210, file: !1211, line: 117, baseType: !143, size: 32, offset: 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !1210, file: !1211, line: 118, baseType: !201, size: 64, align: 64, offset: 1152)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1210, file: !1211, line: 120, baseType: !201, size: 64, offset: 1216)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1210, file: !1211, line: 121, baseType: !201, size: 64, offset: 1280)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1210, file: !1211, line: 122, baseType: !201, size: 64, offset: 1344)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1210, file: !1211, line: 123, baseType: !201, size: 64, offset: 1408)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !1210, file: !1211, line: 133, baseType: !201, size: 64, offset: 1472)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !1210, file: !1211, line: 137, baseType: !201, size: 64, offset: 1536)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1210, file: !1211, line: 142, baseType: !201, size: 64, offset: 1600)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1210, file: !1211, line: 143, baseType: !201, size: 64, offset: 1664)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !1210, file: !1211, line: 146, baseType: !201, size: 64, offset: 1728)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !1210, file: !1211, line: 147, baseType: !201, size: 64, offset: 1792)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !1210, file: !1211, line: 148, baseType: !201, size: 64, offset: 1856)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !1210, file: !1211, line: 149, baseType: !201, size: 64, offset: 1920)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1210, file: !1211, line: 154, baseType: !201, size: 64, offset: 1984)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1210, file: !1211, line: 155, baseType: !201, size: 64, offset: 2048)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1210, file: !1211, line: 156, baseType: !201, size: 64, offset: 2112)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1210, file: !1211, line: 158, baseType: !201, size: 64, offset: 2176)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1210, file: !1211, line: 159, baseType: !201, size: 64, offset: 2240)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !1210, file: !1211, line: 162, baseType: !201, size: 64, offset: 2304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !1210, file: !1211, line: 163, baseType: !201, size: 64, offset: 2368)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !1210, file: !1211, line: 164, baseType: !201, size: 64, offset: 2432)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !1210, file: !1211, line: 167, baseType: !201, size: 64, offset: 2496)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !1210, file: !1211, line: 168, baseType: !201, size: 64, offset: 2560)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !1210, file: !1211, line: 171, baseType: !201, size: 64, offset: 2624)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !1210, file: !1211, line: 172, baseType: !201, size: 64, offset: 2688)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !1210, file: !1211, line: 175, baseType: !201, size: 64, offset: 2752)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !1210, file: !1211, line: 178, baseType: !201, size: 64, offset: 2816)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !1210, file: !1211, line: 179, baseType: !201, size: 64, offset: 2880)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !1210, file: !1211, line: 182, baseType: !143, size: 32, offset: 2944)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !1210, file: !1211, line: 186, baseType: !201, size: 64, align: 64, offset: 3008)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !1210, file: !1211, line: 194, baseType: !201, size: 64, offset: 3072)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !1210, file: !1211, line: 195, baseType: !201, size: 64, offset: 3136)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !1210, file: !1211, line: 199, baseType: !201, size: 64, offset: 3200)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !1210, file: !1211, line: 200, baseType: !201, size: 64, offset: 3264)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !1210, file: !1211, line: 203, baseType: !201, size: 64, offset: 3328)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !1210, file: !1211, line: 204, baseType: !201, size: 64, offset: 3392)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1079, file: !1080, line: 222, baseType: !7, size: 32, offset: 7936)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1079, file: !1080, line: 223, baseType: !1275, size: 64, offset: 8000)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1080, line: 223, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1079, file: !1080, line: 230, baseType: !950, size: 8, offset: 8064)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1079, file: !1080, line: 231, baseType: !623, size: 16, offset: 8080)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1079, file: !1080, line: 232, baseType: !623, size: 16, offset: 8096)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1079, file: !1080, line: 234, baseType: !447, size: 64, offset: 8128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1079, file: !1080, line: 237, baseType: !582, size: 256, offset: 8192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1079, file: !1080, line: 243, baseType: !511, size: 320, offset: 8448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !132, file: !133, line: 1111, baseType: !1284, size: 64, offset: 15424)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1080, line: 20, size: 16640, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1285, file: !1080, line: 21, baseType: !72, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1285, file: !1080, line: 22, baseType: !148, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1285, file: !1080, line: 23, baseType: !67, size: 192, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1285, file: !1080, line: 24, baseType: !1291, size: 16384, offset: 256)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 16384, elements: !1312)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1029, line: 51, size: 256, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1292, file: !1029, line: 52, baseType: !1295, size: 256)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1029, line: 37, size: 256, elements: !1296)
!1296 = !{!1297, !1304, !1305, !1311}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1295, file: !1029, line: 39, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1299, line: 83, baseType: !1300)
!1299 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1299, line: 82, baseType: !1302)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !35}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1295, file: !1029, line: 40, baseType: !52, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1295, file: !1029, line: 46, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1299, line: 86, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1299, line: 85, baseType: !1309)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1295, file: !1029, line: 48, baseType: !1094, size: 64, offset: 192)
!1312 = !{!1313}
!1313 = !DISubrange(count: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !132, file: !133, line: 1112, baseType: !1094, size: 64, offset: 15488)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !132, file: !133, line: 1113, baseType: !1094, size: 64, offset: 15552)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !132, file: !133, line: 1115, baseType: !1094, size: 64, offset: 15616)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !132, file: !133, line: 1116, baseType: !1090, size: 192, offset: 15680)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !132, file: !133, line: 1117, baseType: !52, size: 64, offset: 15872)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !132, file: !133, line: 1118, baseType: !48, size: 64, offset: 15936)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !132, file: !133, line: 1119, baseType: !7, size: 32, offset: 16000)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !132, file: !133, line: 1121, baseType: !778, size: 64, offset: 16064)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !132, file: !133, line: 1125, baseType: !1323, size: 64, offset: 16128)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !133, line: 43, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !132, file: !133, line: 1127, baseType: !854, size: 32, offset: 16192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !132, file: !133, line: 1128, baseType: !7, size: 32, offset: 16224)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !132, file: !133, line: 1130, baseType: !1328, size: 128, offset: 16256)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1329, line: 37, size: 128, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1328, file: !1329, line: 38, baseType: !35, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1328, file: !1329, line: 39, baseType: !62, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1328, file: !1329, line: 40, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1329, line: 24, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !132, file: !133, line: 1131, baseType: !1337, size: 256, offset: 16384)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1338, line: 12, size: 256, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1337, file: !1338, line: 13, baseType: !961, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1337, file: !1338, line: 14, baseType: !52, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1337, file: !1338, line: 15, baseType: !52, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1337, file: !1338, line: 16, baseType: !950, size: 8, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !132, file: !133, line: 1134, baseType: !200, size: 64, offset: 16640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !132, file: !133, line: 1135, baseType: !200, size: 64, offset: 16704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !132, file: !133, line: 1138, baseType: !72, size: 32, offset: 16768)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !132, file: !133, line: 1141, baseType: !290, size: 32, offset: 16800)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !132, file: !133, line: 1143, baseType: !1349, size: 64, offset: 16832)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !133, line: 735, size: 64, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1349, file: !133, line: 736, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !132, file: !133, line: 1147, baseType: !330, size: 128, offset: 16896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !132, file: !133, line: 1149, baseType: !131, size: 64, offset: 17024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !132, file: !133, line: 1151, baseType: !1356, size: 64, offset: 17088)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !133, line: 1151, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !132, file: !133, line: 1188, baseType: !33, size: 64, offset: 17152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !132, file: !133, line: 1191, baseType: !1360, size: 64, offset: 17216)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !133, line: 44, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !132, file: !133, line: 1194, baseType: !1363, size: 64, offset: 17280)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !133, line: 45, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !132, file: !133, line: 1197, baseType: !1366, size: 64, offset: 17344)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !133, line: 61, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !132, file: !133, line: 1199, baseType: !1369, size: 64, offset: 17408)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !133, line: 52, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !132, file: !133, line: 1202, baseType: !1372, size: 64, offset: 17472)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !133, line: 48, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !132, file: !133, line: 1205, baseType: !52, size: 64, offset: 17536)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !132, file: !133, line: 1206, baseType: !1376, size: 64, offset: 17600)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1029, line: 14, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1029, line: 12, size: 384, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1029, line: 13, baseType: !1381, size: 384)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !1029, line: 13, size: 384, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1381, file: !1029, line: 13, baseType: !35, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1381, file: !1029, line: 13, baseType: !35, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1381, file: !1029, line: 13, baseType: !35, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1381, file: !1029, line: 13, baseType: !1387, size: 256, offset: 128)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1388, line: 37, size: 256, elements: !1389)
!1388 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1389 = !{!1390, !1395, !1408, !1414, !1424, !1451, !1456}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1387, file: !1388, line: 42, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 39, size: 64, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1391, file: !1388, line: 40, baseType: !743, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1391, file: !1388, line: 41, baseType: !859, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1387, file: !1388, line: 50, baseType: !1396, size: 192)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 45, size: 192, elements: !1397)
!1397 = !{!1398, !1400, !1401, !1407}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1396, file: !1388, line: 46, baseType: !1399, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !50, line: 95, baseType: !35)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1396, file: !1388, line: 47, baseType: !35, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1396, file: !1388, line: 48, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1388, line: 11, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1388, line: 8, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1403, file: !1388, line: 9, baseType: !35, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1403, file: !1388, line: 10, baseType: !33, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1396, file: !1388, line: 49, baseType: !35, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1387, file: !1388, line: 57, baseType: !1409, size: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 53, size: 128, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1409, file: !1388, line: 54, baseType: !743, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1409, file: !1388, line: 55, baseType: !859, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1409, file: !1388, line: 56, baseType: !1402, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1387, file: !1388, line: 66, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 60, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1415, file: !1388, line: 61, baseType: !743, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1415, file: !1388, line: 62, baseType: !859, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1415, file: !1388, line: 63, baseType: !35, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1415, file: !1388, line: 64, baseType: !1421, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !50, line: 94, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !50, line: 15, baseType: !606)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1415, file: !1388, line: 65, baseType: !1421, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1387, file: !1388, line: 105, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 69, size: 256, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1425, file: !1388, line: 70, baseType: !33, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1388, line: 79, baseType: !1429, size: 192, offset: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !1388, line: 79, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1440, !1445}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1429, file: !1388, line: 81, baseType: !35, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1429, file: !1388, line: 86, baseType: !623, size: 16)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1429, file: !1388, line: 92, baseType: !1434, size: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !1388, line: 88, size: 192, elements: !1435)
!1435 = !{!1436, !1438, !1439}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1434, file: !1388, line: 89, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !309)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1434, file: !1388, line: 90, baseType: !33, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1434, file: !1388, line: 91, baseType: !33, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1429, file: !1388, line: 97, baseType: !1441, size: 96)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !1388, line: 94, size: 96, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1441, file: !1388, line: 95, baseType: !1437, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1441, file: !1388, line: 96, baseType: !143, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1429, file: !1388, line: 103, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !1388, line: 99, size: 128, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1446, file: !1388, line: 100, baseType: !52, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1446, file: !1388, line: 101, baseType: !143, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1446, file: !1388, line: 102, baseType: !143, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1387, file: !1388, line: 111, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 108, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1452, file: !1388, line: 109, baseType: !606, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1452, file: !1388, line: 110, baseType: !35, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1387, file: !1388, line: 118, baseType: !1457, size: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1388, line: 114, size: 128, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1457, file: !1388, line: 115, baseType: !33, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1457, file: !1388, line: 116, baseType: !35, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1457, file: !1388, line: 117, baseType: !7, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !132, file: !133, line: 1208, baseType: !1180, size: 448, offset: 17664)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !132, file: !133, line: 1215, baseType: !200, size: 64, offset: 18112)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !132, file: !133, line: 1217, baseType: !200, size: 64, offset: 18176)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !132, file: !133, line: 1219, baseType: !200, size: 64, offset: 18240)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !132, file: !133, line: 1223, baseType: !1467, size: 64, offset: 18304)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1468, line: 99, baseType: !1469)
!1468 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1468, line: 99, size: 64, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1469, file: !1468, line: 99, baseType: !398, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !132, file: !133, line: 1225, baseType: !1153, size: 32, offset: 18368)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !132, file: !133, line: 1226, baseType: !35, size: 32, offset: 18400)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !132, file: !133, line: 1227, baseType: !35, size: 32, offset: 18432)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !132, file: !133, line: 1231, baseType: !1476, size: 64, offset: 18496)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !133, line: 1231, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !132, file: !133, line: 1233, baseType: !110, size: 128, offset: 18560)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !132, file: !133, line: 1240, baseType: !1480, size: 64, offset: 18688)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !133, line: 62, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !132, file: !133, line: 1242, baseType: !1483, size: 64, offset: 18752)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !133, line: 1242, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !132, file: !133, line: 1244, baseType: !110, size: 128, offset: 18816)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !132, file: !133, line: 1245, baseType: !1487, size: 64, offset: 18944)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !133, line: 51, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !132, file: !133, line: 1246, baseType: !582, size: 256, offset: 19008)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !132, file: !133, line: 1247, baseType: !7, size: 32, offset: 19264)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !132, file: !133, line: 1250, baseType: !1492, size: 64, offset: 19328)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !133, line: 57, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !132, file: !133, line: 1251, baseType: !582, size: 256, offset: 19392)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !132, file: !133, line: 1252, baseType: !110, size: 128, offset: 19648)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !132, file: !133, line: 1259, baseType: !1497, size: 64, offset: 19776)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !133, line: 54, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !132, file: !133, line: 1260, baseType: !623, size: 16, offset: 19840)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !132, file: !133, line: 1261, baseType: !623, size: 16, offset: 19856)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !132, file: !133, line: 1314, baseType: !1502, size: 64, offset: 19904)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1504, line: 62, size: 256, align: 256, elements: !1505)
!1504 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1503, file: !1504, line: 75, baseType: !143, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1503, file: !1504, line: 90, baseType: !143, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1503, file: !1504, line: 112, baseType: !201, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1504, line: 132, baseType: !143, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1503, file: !1504, line: 140, baseType: !143, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1503, file: !1504, line: 149, baseType: !143, size: 32, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1503, file: !1504, line: 154, baseType: !1513, offset: 224)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !660)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !132, file: !133, line: 1315, baseType: !142, size: 32, offset: 19968)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !132, file: !133, line: 1316, baseType: !142, size: 32, offset: 20000)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !132, file: !133, line: 1321, baseType: !52, size: 64, offset: 20032)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !132, file: !133, line: 1325, baseType: !35, size: 32, offset: 20096)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !132, file: !133, line: 1326, baseType: !35, size: 32, offset: 20128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !132, file: !133, line: 1327, baseType: !35, size: 32, offset: 20160)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !132, file: !133, line: 1328, baseType: !35, size: 32, offset: 20192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !132, file: !133, line: 1329, baseType: !775, size: 128, align: 64, offset: 20224)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !132, file: !133, line: 1332, baseType: !1523, size: 128, offset: 20352)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1524, line: 51, size: 128, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1525 = !{!1526, !1531, !1532}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1523, file: !1524, line: 60, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1528, line: 7, size: 64, elements: !1529)
!1528 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1527, file: !1528, line: 12, baseType: !395, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1523, file: !1524, line: 63, baseType: !950, size: 8, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1523, file: !1524, line: 70, baseType: !950, size: 8, offset: 72)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !132, file: !133, line: 1335, baseType: !1534, size: 64, offset: 20480)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !133, line: 59, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !132, file: !133, line: 1337, baseType: !1537, size: 128, offset: 20544)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1524, line: 39, size: 128, elements: !1538)
!1538 = !{!1539, !1602, !1603}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1537, file: !1524, line: 40, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !449, line: 74, size: 512, align: 128, elements: !1542)
!1542 = !{!1543, !1544, !1596, !1601}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1541, file: !449, line: 75, baseType: !52, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !449, line: 83, baseType: !1545, size: 320, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !449, line: 83, size: 320, elements: !1546)
!1546 = !{!1547, !1570, !1584, !1588, !1595}
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !449, line: 84, baseType: !1548, size: 320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !449, line: 84, size: 320, elements: !1549)
!1549 = !{!1550, !1561, !1564, !1569}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !449, line: 90, baseType: !1551, size: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !449, line: 90, size: 128, elements: !1552)
!1552 = !{!1553, !1554, !1559, !1560}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1551, file: !449, line: 91, baseType: !110, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !449, line: 94, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1551, file: !449, line: 94, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1555, file: !449, line: 96, baseType: !33, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1555, file: !449, line: 98, baseType: !7, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1551, file: !449, line: 102, baseType: !110, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1551, file: !449, line: 103, baseType: !110, size: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1548, file: !449, line: 106, baseType: !1562, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !449, line: 32, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !449, line: 107, baseType: !1565, size: 64, offset: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !449, line: 107, size: 64, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1565, file: !449, line: 108, baseType: !52, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1565, file: !449, line: 109, baseType: !52, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1548, file: !449, line: 117, baseType: !52, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !449, line: 119, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !449, line: 119, size: 320, elements: !1572)
!1572 = !{!1573, !1574, !1577, !1578, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1571, file: !449, line: 124, baseType: !52, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1571, file: !449, line: 125, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !449, line: 125, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1571, file: !449, line: 126, baseType: !52, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1571, file: !449, line: 127, baseType: !52, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !449, line: 128, baseType: !1580, size: 64, offset: 256)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !449, line: 128, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1580, file: !449, line: 133, baseType: !52, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1580, file: !449, line: 138, baseType: !502, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !449, line: 141, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !449, line: 141, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1585, file: !449, line: 142, baseType: !52, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !449, line: 144, baseType: !1589, size: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !449, line: 144, size: 128, elements: !1590)
!1590 = !{!1591, !1594}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1589, file: !449, line: 146, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !449, line: 146, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1589, file: !449, line: 147, baseType: !33, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1545, file: !449, line: 161, baseType: !775, size: 128, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !449, line: 164, baseType: !1597, size: 32, offset: 384)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !449, line: 164, size: 32, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1597, file: !449, line: 169, baseType: !62, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1597, file: !449, line: 177, baseType: !7, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1541, file: !449, line: 181, baseType: !62, size: 32, offset: 416)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1537, file: !1524, line: 42, baseType: !143, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1537, file: !1524, line: 43, baseType: !143, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !132, file: !133, line: 1340, baseType: !1605, size: 64, offset: 20672)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1607, line: 13, size: 1152, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/delayacct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9dd86943655c87a79effa8d8e9efaf11")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1606, file: !1607, line: 14, baseType: !290, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_start", scope: !1606, file: !1607, line: 31, baseType: !200, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay", scope: !1606, file: !1607, line: 32, baseType: !200, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_start", scope: !1606, file: !1607, line: 33, baseType: !200, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay", scope: !1606, file: !1607, line: 34, baseType: !200, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !1606, file: !1607, line: 35, baseType: !142, size: 32, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !1606, file: !1607, line: 37, baseType: !142, size: 32, offset: 352)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_start", scope: !1606, file: !1607, line: 39, baseType: !200, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay", scope: !1606, file: !1607, line: 40, baseType: !200, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_start", scope: !1606, file: !1607, line: 42, baseType: !200, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay", scope: !1606, file: !1607, line: 43, baseType: !200, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "compact_start", scope: !1606, file: !1607, line: 45, baseType: !200, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay", scope: !1606, file: !1607, line: 46, baseType: !200, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_start", scope: !1606, file: !1607, line: 48, baseType: !200, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay", scope: !1606, file: !1607, line: 49, baseType: !200, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay", scope: !1606, file: !1607, line: 51, baseType: !200, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !1606, file: !1607, line: 53, baseType: !142, size: 32, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !1606, file: !1607, line: 54, baseType: !142, size: 32, offset: 992)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !1606, file: !1607, line: 55, baseType: !142, size: 32, offset: 1024)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !1606, file: !1607, line: 56, baseType: !142, size: 32, offset: 1056)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !1606, file: !1607, line: 57, baseType: !142, size: 32, offset: 1088)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !132, file: !133, line: 1351, baseType: !35, size: 32, offset: 20736)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !132, file: !133, line: 1352, baseType: !35, size: 32, offset: 20768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !132, file: !133, line: 1354, baseType: !52, size: 64, offset: 20800)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !132, file: !133, line: 1364, baseType: !200, size: 64, offset: 20864)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !132, file: !133, line: 1365, baseType: !200, size: 64, offset: 20928)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !132, file: !133, line: 1412, baseType: !52, size: 64, offset: 20992)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !132, file: !133, line: 1453, baseType: !1637, size: 64, offset: 21056)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !133, line: 1453, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !132, file: !133, line: 1457, baseType: !1640, size: 64, offset: 21120)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1642)
!1642 = !{!1643, !1644, !1663, !1666, !1667, !1700, !1710}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1641, file: !18, line: 62, baseType: !17, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !18, line: 64, baseType: !1645, size: 192, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !18, line: 64, size: 192, elements: !1646)
!1646 = !{!1647, !1658}
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !18, line: 65, baseType: !1648, size: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !18, line: 65, size: 192, elements: !1649)
!1649 = !{!1650, !1657}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1648, file: !18, line: 66, baseType: !1651, size: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1652, line: 50, size: 128, elements: !1653)
!1652 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1651, file: !1652, line: 52, baseType: !52, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1651, file: !1652, line: 54, baseType: !7, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1651, file: !1652, line: 55, baseType: !7, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1648, file: !18, line: 67, baseType: !52, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !18, line: 70, baseType: !1659, size: 192)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !18, line: 70, size: 192, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1659, file: !18, line: 71, baseType: !775, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1659, file: !18, line: 72, baseType: !52, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1641, file: !18, line: 76, baseType: !1664, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1641, file: !18, line: 77, baseType: !52, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1641, file: !18, line: 79, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1652, line: 25, size: 256, elements: !1670)
!1670 = !{!1671, !1677, !1681}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1652, line: 26, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1652, line: 26, size: 128, elements: !1673)
!1673 = !{!1674, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1672, file: !1652, line: 27, baseType: !1675, size: 128)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !1048)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1672, file: !1652, line: 28, baseType: !1675, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1669, file: !1652, line: 31, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1652, line: 23, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1652, line: 33, baseType: !1682, size: 64, offset: 192)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1652, line: 33, size: 64, elements: !1683)
!1683 = !{!1684, !1690, !1695}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1682, file: !1652, line: 38, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1652, line: 34, size: 64, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1685, file: !1652, line: 35, baseType: !561, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1685, file: !1652, line: 36, baseType: !96, size: 8, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1685, file: !1652, line: 37, baseType: !96, size: 8, offset: 40)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1682, file: !1652, line: 42, baseType: !1691, size: 16)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1652, line: 39, size: 16, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1691, file: !1652, line: 40, baseType: !96, size: 8)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1691, file: !1652, line: 41, baseType: !96, size: 8, offset: 8)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1682, file: !1652, line: 46, baseType: !1696, size: 16)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1652, line: 43, size: 16, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1696, file: !1652, line: 44, baseType: !96, size: 8)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1696, file: !1652, line: 45, baseType: !96, size: 8, offset: 8)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1641, file: !18, line: 81, baseType: !1701, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1702, file: !18, line: 86, baseType: !1664, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1702, file: !18, line: 87, baseType: !52, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1702, file: !18, line: 88, baseType: !52, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1702, file: !18, line: 89, baseType: !52, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1702, file: !18, line: 90, baseType: !950, size: 8, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1702, file: !18, line: 92, baseType: !1701, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1641, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !132, file: !133, line: 1463, baseType: !1712, offset: 21184)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !133, line: 739, elements: !469)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !132, file: !133, line: 1470, baseType: !775, size: 128, align: 64, offset: 21184)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !132, file: !133, line: 1471, baseType: !148, size: 32, offset: 21312)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !132, file: !133, line: 1472, baseType: !35, size: 32, offset: 21344)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !132, file: !133, line: 1474, baseType: !131, size: 64, offset: 21376)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !132, file: !133, line: 1475, baseType: !1718, size: 320, offset: 21440)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1719, line: 11, size: 320, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1720 = !{!1721, !1722, !1723, !1728}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1718, file: !1719, line: 16, baseType: !767, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1718, file: !1719, line: 17, baseType: !52, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1718, file: !1719, line: 18, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1718, file: !1719, line: 19, baseType: !142, size: 32, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !132, file: !133, line: 1478, baseType: !1730, size: 64, offset: 21760)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !133, line: 1478, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !132, file: !133, line: 1482, baseType: !148, size: 32, offset: 21824)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !132, file: !133, line: 1489, baseType: !33, size: 64, offset: 21888)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !132, file: !133, line: 1504, baseType: !33, size: 64, offset: 21952)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !132, file: !133, line: 1505, baseType: !201, size: 64, offset: 22016)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !132, file: !133, line: 1506, baseType: !200, size: 64, offset: 22080)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !132, file: !133, line: 1507, baseType: !201, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !132, file: !133, line: 1508, baseType: !201, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !132, file: !133, line: 1509, baseType: !201, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !132, file: !133, line: 1510, baseType: !775, size: 128, align: 64, offset: 22208)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !132, file: !133, line: 1511, baseType: !35, size: 32, offset: 22336)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !132, file: !133, line: 1515, baseType: !1743, size: 64, offset: 22400)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !162, line: 56, size: 64, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1743, file: !162, line: 57, baseType: !165, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !132, file: !133, line: 1518, baseType: !1743, size: 64, offset: 22464)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !132, file: !133, line: 1528, baseType: !775, size: 128, align: 64, offset: 22528)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !132, file: !133, line: 1552, baseType: !1749, size: 35328, offset: 23040)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1750, line: 430, size: 35328, elements: !1751)
!1750 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1751 = !{!1752, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1781, !1782, !1783, !1784, !1785, !1786, !1789, !1790, !1791, !1792}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1749, file: !1750, line: 432, baseType: !1753, size: 192)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 192, elements: !836)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1755, line: 16, size: 64, elements: !1756)
!1755 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1754, file: !1755, line: 17, baseType: !106, size: 16)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1754, file: !1755, line: 18, baseType: !106, size: 16, offset: 16)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1754, file: !1755, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1754, file: !1755, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1754, file: !1755, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1754, file: !1755, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1754, file: !1755, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1754, file: !1755, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1754, file: !1755, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1754, file: !1755, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1754, file: !1755, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1754, file: !1755, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1754, file: !1755, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1749, file: !1750, line: 436, baseType: !52, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1749, file: !1750, line: 440, baseType: !39, size: 16, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1749, file: !1750, line: 441, baseType: !39, size: 16, offset: 272)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1749, file: !1750, line: 442, baseType: !39, size: 16, offset: 288)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1749, file: !1750, line: 443, baseType: !39, size: 16, offset: 304)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1749, file: !1750, line: 447, baseType: !52, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1749, file: !1750, line: 448, baseType: !52, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1749, file: !1750, line: 459, baseType: !1778, size: 256, offset: 448)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1779, size: 256, elements: !563)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1750, line: 428, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1749, file: !1750, line: 461, baseType: !52, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1749, file: !1750, line: 463, baseType: !52, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1749, file: !1750, line: 465, baseType: !52, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1749, file: !1750, line: 466, baseType: !52, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1749, file: !1750, line: 467, baseType: !52, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1749, file: !1750, line: 473, baseType: !1787, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1750, line: 10, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1749, file: !1750, line: 480, baseType: !52, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1749, file: !1750, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1749, file: !1750, line: 491, baseType: !142, size: 32, offset: 1184)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1749, file: !1750, line: 501, baseType: !1793, size: 33792, offset: 1536)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1794, line: 448, size: 33792, elements: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1795 = !{!1796, !1797, !1798, !1960, !1961, !1967, !1968}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1793, file: !1794, line: 461, baseType: !7, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1793, file: !1794, line: 468, baseType: !52, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1793, file: !1794, line: 476, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1794, line: 356, size: 33280, align: 512, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1800, file: !1794, line: 358, baseType: !7, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1800, file: !1794, line: 361, baseType: !7, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1800, file: !1794, line: 364, baseType: !200, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1800, file: !1794, line: 367, baseType: !200, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1800, file: !1794, line: 370, baseType: !200, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1800, file: !1794, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1800, file: !1794, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1800, file: !1794, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1800, file: !1794, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1800, file: !1794, line: 397, baseType: !1812, size: 32768, offset: 512)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1794, line: 348, size: 32768, elements: !1813)
!1813 = !{!1814, !1829, !1866, !1943, !1956}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1812, file: !1794, line: 349, baseType: !1815, size: 896)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1794, line: 12, size: 896, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1828}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1815, file: !1794, line: 13, baseType: !142, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1815, file: !1794, line: 14, baseType: !142, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1815, file: !1794, line: 15, baseType: !142, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1815, file: !1794, line: 16, baseType: !142, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1815, file: !1794, line: 17, baseType: !142, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1815, file: !1794, line: 18, baseType: !142, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1815, file: !1794, line: 19, baseType: !142, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1815, file: !1794, line: 22, baseType: !1825, size: 640, offset: 224)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: 20)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1815, file: !1794, line: 25, baseType: !142, size: 32, offset: 864)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1812, file: !1794, line: 350, baseType: !1830, size: 4096, align: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1794, line: 34, size: 4096, align: 128, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1851, !1852, !1853, !1855, !1857, !1861}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1830, file: !1794, line: 35, baseType: !106, size: 16)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1830, file: !1794, line: 36, baseType: !106, size: 16, offset: 16)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1830, file: !1794, line: 37, baseType: !106, size: 16, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1830, file: !1794, line: 38, baseType: !106, size: 16, offset: 48)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1794, line: 39, baseType: !1837, size: 128, offset: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1794, line: 39, size: 128, elements: !1838)
!1838 = !{!1839, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1794, line: 40, baseType: !1840, size: 128)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1837, file: !1794, line: 40, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1840, file: !1794, line: 41, baseType: !200, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1840, file: !1794, line: 42, baseType: !200, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1794, line: 44, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1837, file: !1794, line: 44, size: 128, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1845, file: !1794, line: 45, baseType: !142, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1845, file: !1794, line: 46, baseType: !142, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1845, file: !1794, line: 47, baseType: !142, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1845, file: !1794, line: 48, baseType: !142, size: 32, offset: 96)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1830, file: !1794, line: 51, baseType: !142, size: 32, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1830, file: !1794, line: 52, baseType: !142, size: 32, offset: 224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1830, file: !1794, line: 55, baseType: !1854, size: 1024, offset: 256)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !1227)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1830, file: !1794, line: 58, baseType: !1856, size: 2048, offset: 1280)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2048, elements: !1312)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1830, file: !1794, line: 60, baseType: !1858, size: 384, offset: 3328)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 12)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1794, line: 62, baseType: !1862, size: 384, offset: 3712)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1794, line: 62, size: 384, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1862, file: !1794, line: 63, baseType: !1858, size: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1862, file: !1794, line: 64, baseType: !1858, size: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1812, file: !1794, line: 351, baseType: !1867, size: 1088)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1794, line: 79, size: 1088, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1942}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1867, file: !1794, line: 80, baseType: !142, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1867, file: !1794, line: 81, baseType: !142, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1867, file: !1794, line: 82, baseType: !142, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1867, file: !1794, line: 83, baseType: !142, size: 32, offset: 96)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1867, file: !1794, line: 84, baseType: !142, size: 32, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1867, file: !1794, line: 85, baseType: !142, size: 32, offset: 160)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1867, file: !1794, line: 86, baseType: !142, size: 32, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1867, file: !1794, line: 88, baseType: !1825, size: 640, offset: 224)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1867, file: !1794, line: 89, baseType: !96, size: 8, offset: 864)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1867, file: !1794, line: 90, baseType: !96, size: 8, offset: 872)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1867, file: !1794, line: 91, baseType: !96, size: 8, offset: 880)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1867, file: !1794, line: 92, baseType: !96, size: 8, offset: 888)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1867, file: !1794, line: 93, baseType: !96, size: 8, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1867, file: !1794, line: 94, baseType: !96, size: 8, offset: 904)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1867, file: !1794, line: 95, baseType: !1884, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1886, line: 11, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1885, file: !1886, line: 12, baseType: !606, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1885, file: !1886, line: 13, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1892, line: 103, size: 1344, elements: !1893)
!1892 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1922, !1923, !1924}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1891, file: !1892, line: 109, baseType: !52, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1891, file: !1892, line: 110, baseType: !52, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1891, file: !1892, line: 111, baseType: !52, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1891, file: !1892, line: 112, baseType: !52, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1891, file: !1892, line: 113, baseType: !52, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1891, file: !1892, line: 114, baseType: !52, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1891, file: !1892, line: 117, baseType: !52, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1891, file: !1892, line: 118, baseType: !52, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1891, file: !1892, line: 119, baseType: !52, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1891, file: !1892, line: 120, baseType: !52, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1891, file: !1892, line: 121, baseType: !52, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1891, file: !1892, line: 122, baseType: !52, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1891, file: !1892, line: 123, baseType: !52, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1891, file: !1892, line: 124, baseType: !52, size: 64, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1891, file: !1892, line: 125, baseType: !52, size: 64, offset: 896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1891, file: !1892, line: 139, baseType: !52, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1891, file: !1892, line: 142, baseType: !52, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1892, line: 144, baseType: !1912, size: 64, offset: 1088)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1892, line: 144, size: 64, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1912, file: !1892, line: 146, baseType: !106, size: 16)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1912, file: !1892, line: 148, baseType: !200, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1912, file: !1892, line: 150, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1892, line: 59, size: 64, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1917, file: !1892, line: 61, baseType: !200, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1917, file: !1892, line: 63, baseType: !200, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1917, file: !1892, line: 65, baseType: !200, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !1892, line: 153, baseType: !52, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1891, file: !1892, line: 154, baseType: !52, size: 64, offset: 1216)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1892, line: 156, baseType: !1925, size: 64, offset: 1280)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1892, line: 156, size: 64, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1925, file: !1892, line: 158, baseType: !106, size: 16)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1925, file: !1892, line: 160, baseType: !200, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1925, file: !1892, line: 162, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1892, line: 69, size: 64, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1930, file: !1892, line: 71, baseType: !200, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1930, file: !1892, line: 73, baseType: !200, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1930, file: !1892, line: 75, baseType: !200, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1930, file: !1892, line: 77, baseType: !200, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1930, file: !1892, line: 80, baseType: !200, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1930, file: !1892, line: 83, baseType: !200, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1930, file: !1892, line: 86, baseType: !200, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1930, file: !1892, line: 88, baseType: !200, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1930, file: !1892, line: 93, baseType: !200, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1930, file: !1892, line: 100, baseType: !200, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1867, file: !1794, line: 96, baseType: !142, size: 32, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1812, file: !1794, line: 352, baseType: !1944, size: 4608, align: 512)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1794, line: 333, size: 4608, align: 512, elements: !1945)
!1945 = !{!1946, !1947, !1954}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1944, file: !1794, line: 334, baseType: !1830, size: 4096, align: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1944, file: !1794, line: 335, baseType: !1948, size: 512, offset: 4096)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1794, line: 312, size: 512, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1948, file: !1794, line: 313, baseType: !200, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1948, file: !1794, line: 314, baseType: !200, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1948, file: !1794, line: 315, baseType: !1953, size: 384, offset: 128)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, elements: !937)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1944, file: !1794, line: 336, baseType: !1955, offset: 4608)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !660)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1812, file: !1794, line: 353, baseType: !1957, size: 32768)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 4096)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1793, file: !1794, line: 484, baseType: !1799, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1793, file: !1794, line: 491, baseType: !1962, size: 128, offset: 256)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1794, line: 404, size: 128, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1962, file: !1794, line: 424, baseType: !200, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1962, file: !1794, line: 432, baseType: !7, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1962, file: !1794, line: 440, baseType: !7, size: 32, offset: 96)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1793, file: !1794, line: 498, baseType: !1962, size: 128, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1793, file: !1794, line: 508, baseType: !1800, size: 33280, align: 512, offset: 512)
!1969 = !{!0, !1970, !1981, !1983, !1985, !1987, !1992, !1997, !2002, !2007, !2012}
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(name: "__setup_delayacct_setup_enable", scope: !2, file: !3, line: 37, type: !1972, isLocal: true, isDefinition: true, align: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !1973, line: 324, size: 192, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1974 = !{!1975, !1976, !1980}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1972, file: !1973, line: 325, baseType: !29, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !1972, file: !1973, line: 326, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!35, !961}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !1972, file: !1973, line: 327, baseType: !35, size: 32, offset: 128)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !1047, isLocal: true, isDefinition: true)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7234", scope: !2, file: !3, line: 85, type: !33, isLocal: true, isDefinition: true)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(name: "delayacct_on", scope: !2, file: !3, line: 18, type: !35, isLocal: false, isDefinition: true)
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(name: "delayacct_cache", scope: !2, file: !3, line: 19, type: !1989, isLocal: false, isDefinition: true)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1991, line: 325, flags: DIFlagFwdDecl)
!1991 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(name: "__setup_str_delayacct_setup_enable", scope: !2, file: !3, line: 37, type: !1994, isLocal: true, isDefinition: true, align: 8)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 10)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !1999, isLocal: true, isDefinition: true)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 56, elements: !2000)
!2000 = !{!2001}
!2001 = !DISubrange(count: 7)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !2004, isLocal: true, isDefinition: true)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 168, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 21)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !2009, isLocal: true, isDefinition: true)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 120, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 15)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "kern_delayacct_table", scope: !2, file: !3, line: 67, type: !2014, isLocal: true, isDefinition: true)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1024, elements: !1129)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !2016, line: 363, size: 128, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2015, file: !2016, line: 364, baseType: !2019, size: 128)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2016, line: 85, size: 128, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2019, file: !2016, line: 86, baseType: !62, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !2016, line: 101, baseType: !2023, size: 64, offset: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !2016, line: 101, size: 64, elements: !2024)
!2024 = !{!2025, !2026, !2033}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2023, file: !2016, line: 102, baseType: !52, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2023, file: !2016, line: 103, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2016, line: 117, size: 128, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2028, file: !2016, line: 118, baseType: !561, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2028, file: !2016, line: 119, baseType: !561, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2028, file: !2016, line: 120, baseType: !606, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2023, file: !2016, line: 104, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2016, line: 104, flags: DIFlagFwdDecl)
!2036 = !{i32 7, !"Dwarf Version", i32 5}
!2037 = !{i32 2, !"Debug Info Version", i32 3}
!2038 = !{i32 1, !"wchar_size", i32 2}
!2039 = !{i32 8, !"cf-protection-branch", i32 1}
!2040 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2041 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2042 = !{i32 1, !"Code Model", i32 2}
!2043 = !{i32 1, !"override-stack-alignment", i32 8}
!2044 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2045 = distinct !DISubprogram(name: "delayacct_setup_enable", scope: !3, file: !3, line: 32, type: !1978, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "str", arg: 1, scope: !2045, file: !3, line: 32, type: !961)
!2048 = !DILocation(line: 32, column: 48, scope: !2045)
!2049 = !DILocation(line: 34, column: 15, scope: !2045)
!2050 = !DILocation(line: 35, column: 2, scope: !2045)
!2051 = distinct !DISubprogram(name: "delayacct_init", scope: !3, file: !3, line: 39, type: !1309, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2052 = !DILocation(line: 41, column: 20, scope: !2051)
!2053 = !DILocation(line: 41, column: 18, scope: !2051)
!2054 = !DILocation(line: 42, column: 2, scope: !2051)
!2055 = !DILocation(line: 43, column: 16, scope: !2051)
!2056 = !DILocation(line: 43, column: 2, scope: !2051)
!2057 = !DILocation(line: 44, column: 1, scope: !2051)
!2058 = !DISubprogram(name: "kmem_cache_create", scope: !2059, file: !2059, line: 189, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!1989, !29, !7, !7, !126, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !33}
!2065 = distinct !DISubprogram(name: "delayacct_tsk_init", scope: !1607, file: !1607, line: 89, type: !2066, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !131}
!2068 = !{!2069}
!2069 = !DILocalVariable(name: "tsk", arg: 1, scope: !2065, file: !1607, line: 89, type: !131)
!2070 = !DILocation(line: 89, column: 59, scope: !2065)
!2071 = !DILocation(line: 92, column: 2, scope: !2065)
!2072 = !DILocation(line: 92, column: 7, scope: !2065)
!2073 = !DILocation(line: 92, column: 14, scope: !2065)
!2074 = !DILocation(line: 93, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !1607, line: 93, column: 6)
!2076 = !DILocation(line: 93, column: 6, scope: !2065)
!2077 = !DILocation(line: 94, column: 24, scope: !2075)
!2078 = !DILocation(line: 94, column: 3, scope: !2075)
!2079 = !DILocation(line: 95, column: 1, scope: !2065)
!2080 = distinct !DISubprogram(name: "set_delayacct", scope: !3, file: !3, line: 21, type: !2081, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !950}
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "enabled", arg: 1, scope: !2080, file: !3, line: 21, type: !950)
!2085 = !DILocation(line: 21, column: 32, scope: !2080)
!2086 = !DILocation(line: 23, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 23, column: 6)
!2088 = !{i8 0, i8 2}
!2089 = !DILocation(line: 23, column: 6, scope: !2080)
!2090 = !DILocation(line: 24, column: 3, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 23, column: 15)
!2092 = !DILocation(line: 25, column: 16, scope: !2091)
!2093 = !DILocation(line: 26, column: 2, scope: !2091)
!2094 = !DILocation(line: 27, column: 16, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 26, column: 9)
!2096 = !DILocation(line: 28, column: 3, scope: !2095)
!2097 = !DILocation(line: 30, column: 1, scope: !2080)
!2098 = distinct !DISubprogram(name: "__initstub__kmod_delayacct__233_85_kernel_delayacct_sysctls_init7", scope: !3, file: !3, line: 85, type: !2099, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!35}
!2101 = !DILocation(line: 85, column: 1, scope: !2098)
!2102 = distinct !DISubprogram(name: "kernel_delayacct_sysctls_init", scope: !3, file: !3, line: 80, type: !2099, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2103 = !DILocation(line: 82, column: 2, scope: !2102)
!2104 = !DILocation(line: 83, column: 2, scope: !2102)
!2105 = distinct !DISubprogram(name: "__delayacct_tsk_init", scope: !3, file: !3, line: 88, type: !2066, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "tsk", arg: 1, scope: !2105, file: !3, line: 88, type: !131)
!2108 = !DILocation(line: 88, column: 47, scope: !2105)
!2109 = !DILocation(line: 90, column: 34, scope: !2105)
!2110 = !DILocation(line: 90, column: 16, scope: !2105)
!2111 = !DILocation(line: 90, column: 2, scope: !2105)
!2112 = !DILocation(line: 90, column: 7, scope: !2105)
!2113 = !DILocation(line: 90, column: 14, scope: !2105)
!2114 = !DILocation(line: 91, column: 6, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 91, column: 6)
!2116 = !DILocation(line: 91, column: 11, scope: !2115)
!2117 = !DILocation(line: 91, column: 6, scope: !2105)
!2118 = !DILocation(line: 92, column: 3, scope: !2115)
!2119 = !DILocation(line: 92, column: 3, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 92, column: 3)
!2121 = !DILocation(line: 93, column: 1, scope: !2105)
!2122 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !2059, file: !2059, line: 709, type: !2123, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!33, !1989, !127}
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "k", arg: 1, scope: !2122, file: !2059, line: 709, type: !1989)
!2127 = !DILocalVariable(name: "flags", arg: 2, scope: !2122, file: !2059, line: 709, type: !127)
!2128 = !DILocation(line: 709, column: 58, scope: !2122)
!2129 = !DILocation(line: 709, column: 67, scope: !2122)
!2130 = !DILocation(line: 711, column: 26, scope: !2122)
!2131 = !DILocation(line: 711, column: 29, scope: !2122)
!2132 = !DILocation(line: 711, column: 35, scope: !2122)
!2133 = !DILocation(line: 711, column: 9, scope: !2122)
!2134 = !DILocation(line: 711, column: 2, scope: !2122)
!2135 = distinct !DISubprogram(name: "__delayacct_blkio_start", scope: !3, file: !3, line: 112, type: !1309, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2136 = !DILocation(line: 114, column: 33, scope: !2135)
!2137 = !DILocation(line: 114, column: 2, scope: !2135)
!2138 = !DILocation(line: 114, column: 11, scope: !2135)
!2139 = !DILocation(line: 114, column: 19, scope: !2135)
!2140 = !DILocation(line: 114, column: 31, scope: !2135)
!2141 = !DILocation(line: 115, column: 1, scope: !2135)
!2142 = !DISubprogram(name: "local_clock", scope: !2143, file: !2143, line: 97, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2143 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!200}
!2146 = distinct !DISubprogram(name: "get_current", scope: !2147, file: !2147, line: 39, type: !2148, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2147 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!131}
!2150 = !{!2151, !2153, !2155}
!2151 = !DILocalVariable(name: "pscr_ret__", scope: !2152, file: !2147, line: 41, type: !131)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !2147, line: 41, column: 9)
!2153 = !DILocalVariable(name: "__vpp_verify", scope: !2154, file: !2147, line: 41, type: !603)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !2147, line: 41, column: 9)
!2155 = !DILocalVariable(name: "pfo_val__", scope: !2156, file: !2147, line: 41, type: !200)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !2147, line: 41, column: 9)
!2157 = !DILocation(line: 41, column: 9, scope: !2152)
!2158 = !DILocation(line: 41, column: 9, scope: !2154)
!2159 = !DILocation(line: 41, column: 9, scope: !2156)
!2160 = !{i64 2148196734}
!2161 = !DILocation(line: 41, column: 9, scope: !2146)
!2162 = !DILocation(line: 41, column: 2, scope: !2146)
!2163 = distinct !DISubprogram(name: "__delayacct_blkio_end", scope: !3, file: !3, line: 121, type: !2066, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "p", arg: 1, scope: !2163, file: !3, line: 121, type: !131)
!2166 = !DILocation(line: 121, column: 48, scope: !2163)
!2167 = !DILocation(line: 123, column: 17, scope: !2163)
!2168 = !DILocation(line: 123, column: 20, scope: !2163)
!2169 = !DILocation(line: 123, column: 28, scope: !2163)
!2170 = !DILocation(line: 124, column: 10, scope: !2163)
!2171 = !DILocation(line: 124, column: 13, scope: !2163)
!2172 = !DILocation(line: 124, column: 21, scope: !2163)
!2173 = !DILocation(line: 125, column: 10, scope: !2163)
!2174 = !DILocation(line: 125, column: 13, scope: !2163)
!2175 = !DILocation(line: 125, column: 21, scope: !2163)
!2176 = !DILocation(line: 126, column: 10, scope: !2163)
!2177 = !DILocation(line: 126, column: 13, scope: !2163)
!2178 = !DILocation(line: 126, column: 21, scope: !2163)
!2179 = !DILocation(line: 123, column: 2, scope: !2163)
!2180 = !DILocation(line: 127, column: 1, scope: !2163)
!2181 = distinct !DISubprogram(name: "delayacct_end", scope: !3, file: !3, line: 99, type: !2182, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !2184, !2185, !2185, !700}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2198, !2199, !2202}
!2187 = !DILocalVariable(name: "lock", arg: 1, scope: !2181, file: !3, line: 99, type: !2184)
!2188 = !DILocalVariable(name: "start", arg: 2, scope: !2181, file: !3, line: 99, type: !2185)
!2189 = !DILocalVariable(name: "total", arg: 3, scope: !2181, file: !3, line: 99, type: !2185)
!2190 = !DILocalVariable(name: "count", arg: 4, scope: !2181, file: !3, line: 99, type: !700)
!2191 = !DILocalVariable(name: "ns", scope: !2181, file: !3, line: 101, type: !128)
!2192 = !DILocalVariable(name: "flags", scope: !2181, file: !3, line: 102, type: !52)
!2193 = !DILocalVariable(name: "__dummy", scope: !2194, file: !3, line: 105, type: !52)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 105, column: 3)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 105, column: 3)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 104, column: 14)
!2197 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 104, column: 6)
!2198 = !DILocalVariable(name: "__dummy2", scope: !2194, file: !3, line: 105, type: !52)
!2199 = !DILocalVariable(name: "__dummy", scope: !2200, file: !3, line: 108, type: !52)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 108, column: 3)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 108, column: 3)
!2202 = !DILocalVariable(name: "__dummy2", scope: !2200, file: !3, line: 108, type: !52)
!2203 = !DILocation(line: 99, column: 43, scope: !2181)
!2204 = !DILocation(line: 99, column: 54, scope: !2181)
!2205 = !DILocation(line: 99, column: 66, scope: !2181)
!2206 = !DILocation(line: 99, column: 78, scope: !2181)
!2207 = !DILocation(line: 101, column: 2, scope: !2181)
!2208 = !DILocation(line: 101, column: 6, scope: !2181)
!2209 = !DILocation(line: 101, column: 11, scope: !2181)
!2210 = !DILocation(line: 101, column: 28, scope: !2181)
!2211 = !DILocation(line: 101, column: 27, scope: !2181)
!2212 = !DILocation(line: 101, column: 25, scope: !2181)
!2213 = !DILocation(line: 102, column: 2, scope: !2181)
!2214 = !DILocation(line: 102, column: 16, scope: !2181)
!2215 = !DILocation(line: 104, column: 6, scope: !2197)
!2216 = !DILocation(line: 104, column: 9, scope: !2197)
!2217 = !DILocation(line: 104, column: 6, scope: !2181)
!2218 = !DILocation(line: 105, column: 3, scope: !2196)
!2219 = !DILocation(line: 105, column: 3, scope: !2194)
!2220 = !DILocation(line: 105, column: 3, scope: !2195)
!2221 = !DILocation(line: 106, column: 13, scope: !2196)
!2222 = !DILocation(line: 106, column: 4, scope: !2196)
!2223 = !DILocation(line: 106, column: 10, scope: !2196)
!2224 = !DILocation(line: 107, column: 5, scope: !2196)
!2225 = !DILocation(line: 107, column: 11, scope: !2196)
!2226 = !DILocation(line: 108, column: 3, scope: !2196)
!2227 = !DILocation(line: 108, column: 3, scope: !2200)
!2228 = !DILocation(line: 108, column: 3, scope: !2201)
!2229 = !DILocation(line: 109, column: 2, scope: !2196)
!2230 = !DILocation(line: 110, column: 1, scope: !2181)
!2231 = distinct !DISubprogram(name: "delayacct_add_tsk", scope: !3, file: !3, line: 129, type: !2232, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!35, !1209, !131}
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2249, !2250, !2253}
!2235 = !DILocalVariable(name: "d", arg: 1, scope: !2231, file: !3, line: 129, type: !1209)
!2236 = !DILocalVariable(name: "tsk", arg: 2, scope: !2231, file: !3, line: 129, type: !131)
!2237 = !DILocalVariable(name: "utime", scope: !2231, file: !3, line: 131, type: !200)
!2238 = !DILocalVariable(name: "stime", scope: !2231, file: !3, line: 131, type: !200)
!2239 = !DILocalVariable(name: "stimescaled", scope: !2231, file: !3, line: 131, type: !200)
!2240 = !DILocalVariable(name: "utimescaled", scope: !2231, file: !3, line: 131, type: !200)
!2241 = !DILocalVariable(name: "t2", scope: !2231, file: !3, line: 132, type: !202)
!2242 = !DILocalVariable(name: "t3", scope: !2231, file: !3, line: 132, type: !202)
!2243 = !DILocalVariable(name: "flags", scope: !2231, file: !3, line: 133, type: !52)
!2244 = !DILocalVariable(name: "t1", scope: !2231, file: !3, line: 133, type: !52)
!2245 = !DILocalVariable(name: "tmp", scope: !2231, file: !3, line: 134, type: !128)
!2246 = !DILocalVariable(name: "__dummy", scope: !2247, file: !3, line: 169, type: !52)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 169, column: 2)
!2248 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 169, column: 2)
!2249 = !DILocalVariable(name: "__dummy2", scope: !2247, file: !3, line: 169, type: !52)
!2250 = !DILocalVariable(name: "__dummy", scope: !2251, file: !3, line: 191, type: !52)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 191, column: 2)
!2252 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 191, column: 2)
!2253 = !DILocalVariable(name: "__dummy2", scope: !2251, file: !3, line: 191, type: !52)
!2254 = !DILocation(line: 129, column: 41, scope: !2231)
!2255 = !DILocation(line: 129, column: 64, scope: !2231)
!2256 = !DILocation(line: 131, column: 2, scope: !2231)
!2257 = !DILocation(line: 131, column: 6, scope: !2231)
!2258 = !DILocation(line: 131, column: 13, scope: !2231)
!2259 = !DILocation(line: 131, column: 20, scope: !2231)
!2260 = !DILocation(line: 131, column: 33, scope: !2231)
!2261 = !DILocation(line: 132, column: 2, scope: !2231)
!2262 = !DILocation(line: 132, column: 21, scope: !2231)
!2263 = !DILocation(line: 132, column: 25, scope: !2231)
!2264 = !DILocation(line: 133, column: 2, scope: !2231)
!2265 = !DILocation(line: 133, column: 16, scope: !2231)
!2266 = !DILocation(line: 133, column: 23, scope: !2231)
!2267 = !DILocation(line: 134, column: 2, scope: !2231)
!2268 = !DILocation(line: 134, column: 6, scope: !2231)
!2269 = !DILocation(line: 136, column: 15, scope: !2231)
!2270 = !DILocation(line: 136, column: 2, scope: !2231)
!2271 = !DILocation(line: 137, column: 13, scope: !2231)
!2272 = !DILocation(line: 137, column: 16, scope: !2231)
!2273 = !DILocation(line: 137, column: 6, scope: !2231)
!2274 = !DILocation(line: 138, column: 9, scope: !2231)
!2275 = !DILocation(line: 138, column: 17, scope: !2231)
!2276 = !DILocation(line: 138, column: 15, scope: !2231)
!2277 = !DILocation(line: 138, column: 6, scope: !2231)
!2278 = !DILocation(line: 139, column: 27, scope: !2231)
!2279 = !DILocation(line: 139, column: 38, scope: !2231)
!2280 = !DILocation(line: 139, column: 41, scope: !2231)
!2281 = !DILocation(line: 139, column: 31, scope: !2231)
!2282 = !DILocation(line: 139, column: 26, scope: !2231)
!2283 = !DILocation(line: 139, column: 67, scope: !2231)
!2284 = !DILocation(line: 139, column: 2, scope: !2231)
!2285 = !DILocation(line: 139, column: 5, scope: !2231)
!2286 = !DILocation(line: 139, column: 24, scope: !2231)
!2287 = !DILocation(line: 141, column: 22, scope: !2231)
!2288 = !DILocation(line: 141, column: 2, scope: !2231)
!2289 = !DILocation(line: 142, column: 13, scope: !2231)
!2290 = !DILocation(line: 142, column: 16, scope: !2231)
!2291 = !DILocation(line: 142, column: 6, scope: !2231)
!2292 = !DILocation(line: 143, column: 9, scope: !2231)
!2293 = !DILocation(line: 143, column: 23, scope: !2231)
!2294 = !DILocation(line: 143, column: 21, scope: !2231)
!2295 = !DILocation(line: 143, column: 6, scope: !2231)
!2296 = !DILocation(line: 145, column: 4, scope: !2231)
!2297 = !DILocation(line: 145, column: 15, scope: !2231)
!2298 = !DILocation(line: 145, column: 18, scope: !2231)
!2299 = !DILocation(line: 145, column: 8, scope: !2231)
!2300 = !DILocation(line: 145, column: 3, scope: !2231)
!2301 = !DILocation(line: 145, column: 51, scope: !2231)
!2302 = !DILocation(line: 144, column: 2, scope: !2231)
!2303 = !DILocation(line: 144, column: 5, scope: !2231)
!2304 = !DILocation(line: 144, column: 31, scope: !2231)
!2305 = !DILocation(line: 151, column: 7, scope: !2231)
!2306 = !DILocation(line: 151, column: 12, scope: !2231)
!2307 = !DILocation(line: 151, column: 23, scope: !2231)
!2308 = !DILocation(line: 151, column: 5, scope: !2231)
!2309 = !DILocation(line: 152, column: 7, scope: !2231)
!2310 = !DILocation(line: 152, column: 12, scope: !2231)
!2311 = !DILocation(line: 152, column: 23, scope: !2231)
!2312 = !DILocation(line: 152, column: 5, scope: !2231)
!2313 = !DILocation(line: 153, column: 7, scope: !2231)
!2314 = !DILocation(line: 153, column: 12, scope: !2231)
!2315 = !DILocation(line: 153, column: 15, scope: !2231)
!2316 = !DILocation(line: 153, column: 5, scope: !2231)
!2317 = !DILocation(line: 155, column: 18, scope: !2231)
!2318 = !DILocation(line: 155, column: 2, scope: !2231)
!2319 = !DILocation(line: 155, column: 5, scope: !2231)
!2320 = !DILocation(line: 155, column: 15, scope: !2231)
!2321 = !DILocation(line: 157, column: 13, scope: !2231)
!2322 = !DILocation(line: 157, column: 16, scope: !2231)
!2323 = !DILocation(line: 157, column: 34, scope: !2231)
!2324 = !DILocation(line: 157, column: 32, scope: !2231)
!2325 = !DILocation(line: 157, column: 6, scope: !2231)
!2326 = !DILocation(line: 158, column: 24, scope: !2231)
!2327 = !DILocation(line: 158, column: 35, scope: !2231)
!2328 = !DILocation(line: 158, column: 38, scope: !2231)
!2329 = !DILocation(line: 158, column: 28, scope: !2231)
!2330 = !DILocation(line: 158, column: 23, scope: !2231)
!2331 = !DILocation(line: 158, column: 61, scope: !2231)
!2332 = !DILocation(line: 158, column: 2, scope: !2231)
!2333 = !DILocation(line: 158, column: 5, scope: !2231)
!2334 = !DILocation(line: 158, column: 21, scope: !2231)
!2335 = !DILocation(line: 160, column: 13, scope: !2231)
!2336 = !DILocation(line: 160, column: 16, scope: !2231)
!2337 = !DILocation(line: 160, column: 40, scope: !2231)
!2338 = !DILocation(line: 160, column: 38, scope: !2231)
!2339 = !DILocation(line: 160, column: 6, scope: !2231)
!2340 = !DILocation(line: 162, column: 4, scope: !2231)
!2341 = !DILocation(line: 162, column: 15, scope: !2231)
!2342 = !DILocation(line: 162, column: 18, scope: !2231)
!2343 = !DILocation(line: 162, column: 8, scope: !2231)
!2344 = !DILocation(line: 162, column: 3, scope: !2231)
!2345 = !DILocation(line: 162, column: 47, scope: !2231)
!2346 = !DILocation(line: 161, column: 2, scope: !2231)
!2347 = !DILocation(line: 161, column: 5, scope: !2231)
!2348 = !DILocation(line: 161, column: 27, scope: !2231)
!2349 = !DILocation(line: 164, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 164, column: 6)
!2351 = !DILocation(line: 164, column: 12, scope: !2350)
!2352 = !DILocation(line: 164, column: 6, scope: !2231)
!2353 = !DILocation(line: 165, column: 3, scope: !2350)
!2354 = !DILocation(line: 169, column: 2, scope: !2231)
!2355 = !DILocation(line: 169, column: 2, scope: !2247)
!2356 = !DILocation(line: 169, column: 2, scope: !2248)
!2357 = !DILocation(line: 170, column: 8, scope: !2231)
!2358 = !DILocation(line: 170, column: 11, scope: !2231)
!2359 = !DILocation(line: 170, column: 31, scope: !2231)
!2360 = !DILocation(line: 170, column: 36, scope: !2231)
!2361 = !DILocation(line: 170, column: 44, scope: !2231)
!2362 = !DILocation(line: 170, column: 29, scope: !2231)
!2363 = !DILocation(line: 170, column: 6, scope: !2231)
!2364 = !DILocation(line: 171, column: 26, scope: !2231)
!2365 = !DILocation(line: 171, column: 32, scope: !2231)
!2366 = !DILocation(line: 171, column: 35, scope: !2231)
!2367 = !DILocation(line: 171, column: 30, scope: !2231)
!2368 = !DILocation(line: 171, column: 25, scope: !2231)
!2369 = !DILocation(line: 171, column: 60, scope: !2231)
!2370 = !DILocation(line: 171, column: 2, scope: !2231)
!2371 = !DILocation(line: 171, column: 5, scope: !2231)
!2372 = !DILocation(line: 171, column: 23, scope: !2231)
!2373 = !DILocation(line: 172, column: 8, scope: !2231)
!2374 = !DILocation(line: 172, column: 11, scope: !2231)
!2375 = !DILocation(line: 172, column: 32, scope: !2231)
!2376 = !DILocation(line: 172, column: 37, scope: !2231)
!2377 = !DILocation(line: 172, column: 45, scope: !2231)
!2378 = !DILocation(line: 172, column: 30, scope: !2231)
!2379 = !DILocation(line: 172, column: 6, scope: !2231)
!2380 = !DILocation(line: 173, column: 27, scope: !2231)
!2381 = !DILocation(line: 173, column: 33, scope: !2231)
!2382 = !DILocation(line: 173, column: 36, scope: !2231)
!2383 = !DILocation(line: 173, column: 31, scope: !2231)
!2384 = !DILocation(line: 173, column: 26, scope: !2231)
!2385 = !DILocation(line: 173, column: 62, scope: !2231)
!2386 = !DILocation(line: 173, column: 2, scope: !2231)
!2387 = !DILocation(line: 173, column: 5, scope: !2231)
!2388 = !DILocation(line: 173, column: 24, scope: !2231)
!2389 = !DILocation(line: 174, column: 8, scope: !2231)
!2390 = !DILocation(line: 174, column: 11, scope: !2231)
!2391 = !DILocation(line: 174, column: 35, scope: !2231)
!2392 = !DILocation(line: 174, column: 40, scope: !2231)
!2393 = !DILocation(line: 174, column: 48, scope: !2231)
!2394 = !DILocation(line: 174, column: 33, scope: !2231)
!2395 = !DILocation(line: 174, column: 6, scope: !2231)
!2396 = !DILocation(line: 175, column: 30, scope: !2231)
!2397 = !DILocation(line: 175, column: 36, scope: !2231)
!2398 = !DILocation(line: 175, column: 39, scope: !2231)
!2399 = !DILocation(line: 175, column: 34, scope: !2231)
!2400 = !DILocation(line: 175, column: 29, scope: !2231)
!2401 = !DILocation(line: 175, column: 68, scope: !2231)
!2402 = !DILocation(line: 175, column: 2, scope: !2231)
!2403 = !DILocation(line: 175, column: 5, scope: !2231)
!2404 = !DILocation(line: 175, column: 27, scope: !2231)
!2405 = !DILocation(line: 176, column: 8, scope: !2231)
!2406 = !DILocation(line: 176, column: 11, scope: !2231)
!2407 = !DILocation(line: 176, column: 35, scope: !2231)
!2408 = !DILocation(line: 176, column: 40, scope: !2231)
!2409 = !DILocation(line: 176, column: 48, scope: !2231)
!2410 = !DILocation(line: 176, column: 33, scope: !2231)
!2411 = !DILocation(line: 176, column: 6, scope: !2231)
!2412 = !DILocation(line: 177, column: 30, scope: !2231)
!2413 = !DILocation(line: 177, column: 36, scope: !2231)
!2414 = !DILocation(line: 177, column: 39, scope: !2231)
!2415 = !DILocation(line: 177, column: 34, scope: !2231)
!2416 = !DILocation(line: 177, column: 29, scope: !2231)
!2417 = !DILocation(line: 177, column: 68, scope: !2231)
!2418 = !DILocation(line: 177, column: 2, scope: !2231)
!2419 = !DILocation(line: 177, column: 5, scope: !2231)
!2420 = !DILocation(line: 177, column: 27, scope: !2231)
!2421 = !DILocation(line: 178, column: 8, scope: !2231)
!2422 = !DILocation(line: 178, column: 11, scope: !2231)
!2423 = !DILocation(line: 178, column: 33, scope: !2231)
!2424 = !DILocation(line: 178, column: 38, scope: !2231)
!2425 = !DILocation(line: 178, column: 46, scope: !2231)
!2426 = !DILocation(line: 178, column: 31, scope: !2231)
!2427 = !DILocation(line: 178, column: 6, scope: !2231)
!2428 = !DILocation(line: 179, column: 28, scope: !2231)
!2429 = !DILocation(line: 179, column: 34, scope: !2231)
!2430 = !DILocation(line: 179, column: 37, scope: !2231)
!2431 = !DILocation(line: 179, column: 32, scope: !2231)
!2432 = !DILocation(line: 179, column: 27, scope: !2231)
!2433 = !DILocation(line: 179, column: 64, scope: !2231)
!2434 = !DILocation(line: 179, column: 2, scope: !2231)
!2435 = !DILocation(line: 179, column: 5, scope: !2231)
!2436 = !DILocation(line: 179, column: 25, scope: !2231)
!2437 = !DILocation(line: 180, column: 8, scope: !2231)
!2438 = !DILocation(line: 180, column: 11, scope: !2231)
!2439 = !DILocation(line: 180, column: 32, scope: !2231)
!2440 = !DILocation(line: 180, column: 37, scope: !2231)
!2441 = !DILocation(line: 180, column: 45, scope: !2231)
!2442 = !DILocation(line: 180, column: 30, scope: !2231)
!2443 = !DILocation(line: 180, column: 6, scope: !2231)
!2444 = !DILocation(line: 181, column: 27, scope: !2231)
!2445 = !DILocation(line: 181, column: 33, scope: !2231)
!2446 = !DILocation(line: 181, column: 36, scope: !2231)
!2447 = !DILocation(line: 181, column: 31, scope: !2231)
!2448 = !DILocation(line: 181, column: 26, scope: !2231)
!2449 = !DILocation(line: 181, column: 62, scope: !2231)
!2450 = !DILocation(line: 181, column: 2, scope: !2231)
!2451 = !DILocation(line: 181, column: 5, scope: !2231)
!2452 = !DILocation(line: 181, column: 24, scope: !2231)
!2453 = !DILocation(line: 182, column: 8, scope: !2231)
!2454 = !DILocation(line: 182, column: 11, scope: !2231)
!2455 = !DILocation(line: 182, column: 29, scope: !2231)
!2456 = !DILocation(line: 182, column: 34, scope: !2231)
!2457 = !DILocation(line: 182, column: 42, scope: !2231)
!2458 = !DILocation(line: 182, column: 27, scope: !2231)
!2459 = !DILocation(line: 182, column: 6, scope: !2231)
!2460 = !DILocation(line: 183, column: 24, scope: !2231)
!2461 = !DILocation(line: 183, column: 30, scope: !2231)
!2462 = !DILocation(line: 183, column: 33, scope: !2231)
!2463 = !DILocation(line: 183, column: 28, scope: !2231)
!2464 = !DILocation(line: 183, column: 23, scope: !2231)
!2465 = !DILocation(line: 183, column: 56, scope: !2231)
!2466 = !DILocation(line: 183, column: 2, scope: !2231)
!2467 = !DILocation(line: 183, column: 5, scope: !2231)
!2468 = !DILocation(line: 183, column: 21, scope: !2231)
!2469 = !DILocation(line: 184, column: 20, scope: !2231)
!2470 = !DILocation(line: 184, column: 25, scope: !2231)
!2471 = !DILocation(line: 184, column: 33, scope: !2231)
!2472 = !DILocation(line: 184, column: 2, scope: !2231)
!2473 = !DILocation(line: 184, column: 5, scope: !2231)
!2474 = !DILocation(line: 184, column: 17, scope: !2231)
!2475 = !DILocation(line: 185, column: 21, scope: !2231)
!2476 = !DILocation(line: 185, column: 26, scope: !2231)
!2477 = !DILocation(line: 185, column: 34, scope: !2231)
!2478 = !DILocation(line: 185, column: 2, scope: !2231)
!2479 = !DILocation(line: 185, column: 5, scope: !2231)
!2480 = !DILocation(line: 185, column: 18, scope: !2231)
!2481 = !DILocation(line: 186, column: 24, scope: !2231)
!2482 = !DILocation(line: 186, column: 29, scope: !2231)
!2483 = !DILocation(line: 186, column: 37, scope: !2231)
!2484 = !DILocation(line: 186, column: 2, scope: !2231)
!2485 = !DILocation(line: 186, column: 5, scope: !2231)
!2486 = !DILocation(line: 186, column: 21, scope: !2231)
!2487 = !DILocation(line: 187, column: 24, scope: !2231)
!2488 = !DILocation(line: 187, column: 29, scope: !2231)
!2489 = !DILocation(line: 187, column: 37, scope: !2231)
!2490 = !DILocation(line: 187, column: 2, scope: !2231)
!2491 = !DILocation(line: 187, column: 5, scope: !2231)
!2492 = !DILocation(line: 187, column: 21, scope: !2231)
!2493 = !DILocation(line: 188, column: 22, scope: !2231)
!2494 = !DILocation(line: 188, column: 27, scope: !2231)
!2495 = !DILocation(line: 188, column: 35, scope: !2231)
!2496 = !DILocation(line: 188, column: 2, scope: !2231)
!2497 = !DILocation(line: 188, column: 5, scope: !2231)
!2498 = !DILocation(line: 188, column: 19, scope: !2231)
!2499 = !DILocation(line: 189, column: 21, scope: !2231)
!2500 = !DILocation(line: 189, column: 26, scope: !2231)
!2501 = !DILocation(line: 189, column: 34, scope: !2231)
!2502 = !DILocation(line: 189, column: 2, scope: !2231)
!2503 = !DILocation(line: 189, column: 5, scope: !2231)
!2504 = !DILocation(line: 189, column: 18, scope: !2231)
!2505 = !DILocation(line: 190, column: 18, scope: !2231)
!2506 = !DILocation(line: 190, column: 23, scope: !2231)
!2507 = !DILocation(line: 190, column: 31, scope: !2231)
!2508 = !DILocation(line: 190, column: 2, scope: !2231)
!2509 = !DILocation(line: 190, column: 5, scope: !2231)
!2510 = !DILocation(line: 190, column: 15, scope: !2231)
!2511 = !DILocation(line: 191, column: 2, scope: !2231)
!2512 = !DILocation(line: 191, column: 2, scope: !2251)
!2513 = !DILocation(line: 191, column: 2, scope: !2252)
!2514 = !DILocation(line: 193, column: 2, scope: !2231)
!2515 = !DILocation(line: 194, column: 1, scope: !2231)
!2516 = distinct !DISubprogram(name: "task_cputime", scope: !2517, file: !2517, line: 16, type: !2518, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2517 = !DIFile(filename: "./include/linux/sched/cputime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61dc6eb5d99536d491cae546a62a3194")
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!950, !131, !2185, !2185}
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "t", arg: 1, scope: !2516, file: !2517, line: 16, type: !131)
!2522 = !DILocalVariable(name: "utime", arg: 2, scope: !2516, file: !2517, line: 17, type: !2185)
!2523 = !DILocalVariable(name: "stime", arg: 3, scope: !2516, file: !2517, line: 17, type: !2185)
!2524 = !DILocation(line: 16, column: 53, scope: !2516)
!2525 = !DILocation(line: 17, column: 10, scope: !2516)
!2526 = !DILocation(line: 17, column: 22, scope: !2516)
!2527 = !DILocation(line: 19, column: 11, scope: !2516)
!2528 = !DILocation(line: 19, column: 14, scope: !2516)
!2529 = !DILocation(line: 19, column: 3, scope: !2516)
!2530 = !DILocation(line: 19, column: 9, scope: !2516)
!2531 = !DILocation(line: 20, column: 11, scope: !2516)
!2532 = !DILocation(line: 20, column: 14, scope: !2516)
!2533 = !DILocation(line: 20, column: 3, scope: !2516)
!2534 = !DILocation(line: 20, column: 9, scope: !2516)
!2535 = !DILocation(line: 21, column: 2, scope: !2516)
!2536 = distinct !DISubprogram(name: "task_cputime_scaled", scope: !2517, file: !2517, line: 39, type: !2537, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !131, !2185, !2185}
!2539 = !{!2540, !2541, !2542}
!2540 = !DILocalVariable(name: "t", arg: 1, scope: !2536, file: !2517, line: 39, type: !131)
!2541 = !DILocalVariable(name: "utimescaled", arg: 2, scope: !2536, file: !2517, line: 40, type: !2185)
!2542 = !DILocalVariable(name: "stimescaled", arg: 3, scope: !2536, file: !2517, line: 41, type: !2185)
!2543 = !DILocation(line: 39, column: 60, scope: !2536)
!2544 = !DILocation(line: 40, column: 17, scope: !2536)
!2545 = !DILocation(line: 41, column: 17, scope: !2536)
!2546 = !DILocation(line: 43, column: 15, scope: !2536)
!2547 = !DILocation(line: 43, column: 18, scope: !2536)
!2548 = !DILocation(line: 43, column: 31, scope: !2536)
!2549 = !DILocation(line: 43, column: 2, scope: !2536)
!2550 = !DILocation(line: 44, column: 1, scope: !2536)
!2551 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2552, file: !2552, line: 32, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2552 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!52, !2184}
!2555 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2552, file: !2552, line: 43, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2184, !52}
!2558 = distinct !DISubprogram(name: "__delayacct_blkio_ticks", scope: !3, file: !3, line: 196, type: !2559, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!201, !131}
!2561 = !{!2562, !2563, !2564, !2565, !2568, !2569, !2572}
!2562 = !DILocalVariable(name: "tsk", arg: 1, scope: !2558, file: !3, line: 196, type: !131)
!2563 = !DILocalVariable(name: "ret", scope: !2558, file: !3, line: 198, type: !201)
!2564 = !DILocalVariable(name: "flags", scope: !2558, file: !3, line: 199, type: !52)
!2565 = !DILocalVariable(name: "__dummy", scope: !2566, file: !3, line: 201, type: !52)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 201, column: 2)
!2567 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 201, column: 2)
!2568 = !DILocalVariable(name: "__dummy2", scope: !2566, file: !3, line: 201, type: !52)
!2569 = !DILocalVariable(name: "__dummy", scope: !2570, file: !3, line: 203, type: !52)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 203, column: 2)
!2571 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 203, column: 2)
!2572 = !DILocalVariable(name: "__dummy2", scope: !2570, file: !3, line: 203, type: !52)
!2573 = !DILocation(line: 196, column: 51, scope: !2558)
!2574 = !DILocation(line: 198, column: 2, scope: !2558)
!2575 = !DILocation(line: 198, column: 8, scope: !2558)
!2576 = !DILocation(line: 199, column: 2, scope: !2558)
!2577 = !DILocation(line: 199, column: 16, scope: !2558)
!2578 = !DILocation(line: 201, column: 2, scope: !2558)
!2579 = !DILocation(line: 201, column: 2, scope: !2566)
!2580 = !DILocation(line: 201, column: 2, scope: !2567)
!2581 = !DILocation(line: 202, column: 24, scope: !2558)
!2582 = !DILocation(line: 202, column: 29, scope: !2558)
!2583 = !DILocation(line: 202, column: 37, scope: !2558)
!2584 = !DILocation(line: 202, column: 8, scope: !2558)
!2585 = !DILocation(line: 202, column: 6, scope: !2558)
!2586 = !DILocation(line: 203, column: 2, scope: !2558)
!2587 = !DILocation(line: 203, column: 2, scope: !2570)
!2588 = !DILocation(line: 203, column: 2, scope: !2571)
!2589 = !DILocation(line: 204, column: 9, scope: !2558)
!2590 = !DILocation(line: 205, column: 1, scope: !2558)
!2591 = !DILocation(line: 204, column: 2, scope: !2558)
!2592 = !DISubprogram(name: "nsec_to_clock_t", scope: !2593, file: !2593, line: 592, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2593 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!200, !200}
!2596 = distinct !DISubprogram(name: "__delayacct_freepages_start", scope: !3, file: !3, line: 207, type: !1309, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2597 = !DILocation(line: 209, column: 37, scope: !2596)
!2598 = !DILocation(line: 209, column: 2, scope: !2596)
!2599 = !DILocation(line: 209, column: 11, scope: !2596)
!2600 = !DILocation(line: 209, column: 19, scope: !2596)
!2601 = !DILocation(line: 209, column: 35, scope: !2596)
!2602 = !DILocation(line: 210, column: 1, scope: !2596)
!2603 = distinct !DISubprogram(name: "__delayacct_freepages_end", scope: !3, file: !3, line: 212, type: !1309, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2604 = !DILocation(line: 214, column: 17, scope: !2603)
!2605 = !DILocation(line: 214, column: 26, scope: !2603)
!2606 = !DILocation(line: 214, column: 34, scope: !2603)
!2607 = !DILocation(line: 215, column: 10, scope: !2603)
!2608 = !DILocation(line: 215, column: 19, scope: !2603)
!2609 = !DILocation(line: 215, column: 27, scope: !2603)
!2610 = !DILocation(line: 216, column: 10, scope: !2603)
!2611 = !DILocation(line: 216, column: 19, scope: !2603)
!2612 = !DILocation(line: 216, column: 27, scope: !2603)
!2613 = !DILocation(line: 217, column: 10, scope: !2603)
!2614 = !DILocation(line: 217, column: 19, scope: !2603)
!2615 = !DILocation(line: 217, column: 27, scope: !2603)
!2616 = !DILocation(line: 214, column: 2, scope: !2603)
!2617 = !DILocation(line: 218, column: 1, scope: !2603)
!2618 = distinct !DISubprogram(name: "__delayacct_thrashing_start", scope: !3, file: !3, line: 220, type: !2619, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2622)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!2622 = !{!2623}
!2623 = !DILocalVariable(name: "in_thrashing", arg: 1, scope: !2618, file: !3, line: 220, type: !2621)
!2624 = !DILocation(line: 220, column: 40, scope: !2618)
!2625 = !DILocation(line: 222, column: 20, scope: !2618)
!2626 = !DILocation(line: 222, column: 29, scope: !2618)
!2627 = !DILocation(line: 222, column: 19, scope: !2618)
!2628 = !DILocation(line: 222, column: 18, scope: !2618)
!2629 = !DILocation(line: 222, column: 3, scope: !2618)
!2630 = !DILocation(line: 222, column: 16, scope: !2618)
!2631 = !DILocation(line: 223, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 223, column: 6)
!2633 = !DILocation(line: 223, column: 6, scope: !2632)
!2634 = !DILocation(line: 223, column: 6, scope: !2618)
!2635 = !DILocation(line: 224, column: 3, scope: !2632)
!2636 = !DILocation(line: 226, column: 2, scope: !2618)
!2637 = !DILocation(line: 226, column: 11, scope: !2618)
!2638 = !DILocation(line: 226, column: 24, scope: !2618)
!2639 = !DILocation(line: 227, column: 37, scope: !2618)
!2640 = !DILocation(line: 227, column: 2, scope: !2618)
!2641 = !DILocation(line: 227, column: 11, scope: !2618)
!2642 = !DILocation(line: 227, column: 19, scope: !2618)
!2643 = !DILocation(line: 227, column: 35, scope: !2618)
!2644 = !DILocation(line: 228, column: 1, scope: !2618)
!2645 = distinct !DISubprogram(name: "__delayacct_thrashing_end", scope: !3, file: !3, line: 230, type: !2619, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2646)
!2646 = !{!2647}
!2647 = !DILocalVariable(name: "in_thrashing", arg: 1, scope: !2645, file: !3, line: 230, type: !2621)
!2648 = !DILocation(line: 230, column: 38, scope: !2645)
!2649 = !DILocation(line: 232, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 232, column: 6)
!2651 = !DILocation(line: 232, column: 6, scope: !2650)
!2652 = !DILocation(line: 232, column: 6, scope: !2645)
!2653 = !DILocation(line: 233, column: 3, scope: !2650)
!2654 = !DILocation(line: 235, column: 2, scope: !2645)
!2655 = !DILocation(line: 235, column: 11, scope: !2645)
!2656 = !DILocation(line: 235, column: 24, scope: !2645)
!2657 = !DILocation(line: 236, column: 17, scope: !2645)
!2658 = !DILocation(line: 236, column: 26, scope: !2645)
!2659 = !DILocation(line: 236, column: 34, scope: !2645)
!2660 = !DILocation(line: 237, column: 10, scope: !2645)
!2661 = !DILocation(line: 237, column: 19, scope: !2645)
!2662 = !DILocation(line: 237, column: 27, scope: !2645)
!2663 = !DILocation(line: 238, column: 10, scope: !2645)
!2664 = !DILocation(line: 238, column: 19, scope: !2645)
!2665 = !DILocation(line: 238, column: 27, scope: !2645)
!2666 = !DILocation(line: 239, column: 10, scope: !2645)
!2667 = !DILocation(line: 239, column: 19, scope: !2645)
!2668 = !DILocation(line: 239, column: 27, scope: !2645)
!2669 = !DILocation(line: 236, column: 2, scope: !2645)
!2670 = !DILocation(line: 240, column: 1, scope: !2645)
!2671 = distinct !DISubprogram(name: "__delayacct_swapin_start", scope: !3, file: !3, line: 242, type: !1309, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2672 = !DILocation(line: 244, column: 34, scope: !2671)
!2673 = !DILocation(line: 244, column: 2, scope: !2671)
!2674 = !DILocation(line: 244, column: 11, scope: !2671)
!2675 = !DILocation(line: 244, column: 19, scope: !2671)
!2676 = !DILocation(line: 244, column: 32, scope: !2671)
!2677 = !DILocation(line: 245, column: 1, scope: !2671)
!2678 = distinct !DISubprogram(name: "__delayacct_swapin_end", scope: !3, file: !3, line: 247, type: !1309, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2679 = !DILocation(line: 249, column: 17, scope: !2678)
!2680 = !DILocation(line: 249, column: 26, scope: !2678)
!2681 = !DILocation(line: 249, column: 34, scope: !2678)
!2682 = !DILocation(line: 250, column: 10, scope: !2678)
!2683 = !DILocation(line: 250, column: 19, scope: !2678)
!2684 = !DILocation(line: 250, column: 27, scope: !2678)
!2685 = !DILocation(line: 251, column: 10, scope: !2678)
!2686 = !DILocation(line: 251, column: 19, scope: !2678)
!2687 = !DILocation(line: 251, column: 27, scope: !2678)
!2688 = !DILocation(line: 252, column: 10, scope: !2678)
!2689 = !DILocation(line: 252, column: 19, scope: !2678)
!2690 = !DILocation(line: 252, column: 27, scope: !2678)
!2691 = !DILocation(line: 249, column: 2, scope: !2678)
!2692 = !DILocation(line: 253, column: 1, scope: !2678)
!2693 = distinct !DISubprogram(name: "__delayacct_compact_start", scope: !3, file: !3, line: 255, type: !1309, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2694 = !DILocation(line: 257, column: 35, scope: !2693)
!2695 = !DILocation(line: 257, column: 2, scope: !2693)
!2696 = !DILocation(line: 257, column: 11, scope: !2693)
!2697 = !DILocation(line: 257, column: 19, scope: !2693)
!2698 = !DILocation(line: 257, column: 33, scope: !2693)
!2699 = !DILocation(line: 258, column: 1, scope: !2693)
!2700 = distinct !DISubprogram(name: "__delayacct_compact_end", scope: !3, file: !3, line: 260, type: !1309, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2701 = !DILocation(line: 262, column: 17, scope: !2700)
!2702 = !DILocation(line: 262, column: 26, scope: !2700)
!2703 = !DILocation(line: 262, column: 34, scope: !2700)
!2704 = !DILocation(line: 263, column: 10, scope: !2700)
!2705 = !DILocation(line: 263, column: 19, scope: !2700)
!2706 = !DILocation(line: 263, column: 27, scope: !2700)
!2707 = !DILocation(line: 264, column: 10, scope: !2700)
!2708 = !DILocation(line: 264, column: 19, scope: !2700)
!2709 = !DILocation(line: 264, column: 27, scope: !2700)
!2710 = !DILocation(line: 265, column: 10, scope: !2700)
!2711 = !DILocation(line: 265, column: 19, scope: !2700)
!2712 = !DILocation(line: 265, column: 27, scope: !2700)
!2713 = !DILocation(line: 262, column: 2, scope: !2700)
!2714 = !DILocation(line: 266, column: 1, scope: !2700)
!2715 = distinct !DISubprogram(name: "__delayacct_wpcopy_start", scope: !3, file: !3, line: 268, type: !1309, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2716 = !DILocation(line: 270, column: 34, scope: !2715)
!2717 = !DILocation(line: 270, column: 2, scope: !2715)
!2718 = !DILocation(line: 270, column: 11, scope: !2715)
!2719 = !DILocation(line: 270, column: 19, scope: !2715)
!2720 = !DILocation(line: 270, column: 32, scope: !2715)
!2721 = !DILocation(line: 271, column: 1, scope: !2715)
!2722 = distinct !DISubprogram(name: "__delayacct_wpcopy_end", scope: !3, file: !3, line: 273, type: !1309, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2723 = !DILocation(line: 275, column: 17, scope: !2722)
!2724 = !DILocation(line: 275, column: 26, scope: !2722)
!2725 = !DILocation(line: 275, column: 34, scope: !2722)
!2726 = !DILocation(line: 276, column: 10, scope: !2722)
!2727 = !DILocation(line: 276, column: 19, scope: !2722)
!2728 = !DILocation(line: 276, column: 27, scope: !2722)
!2729 = !DILocation(line: 277, column: 10, scope: !2722)
!2730 = !DILocation(line: 277, column: 19, scope: !2722)
!2731 = !DILocation(line: 277, column: 27, scope: !2722)
!2732 = !DILocation(line: 278, column: 10, scope: !2722)
!2733 = !DILocation(line: 278, column: 19, scope: !2722)
!2734 = !DILocation(line: 278, column: 27, scope: !2722)
!2735 = !DILocation(line: 275, column: 2, scope: !2722)
!2736 = !DILocation(line: 279, column: 1, scope: !2722)
!2737 = distinct !DISubprogram(name: "__delayacct_irq", scope: !3, file: !3, line: 281, type: !2738, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !131, !142}
!2740 = !{!2741, !2742, !2743, !2744, !2747, !2748, !2751}
!2741 = !DILocalVariable(name: "task", arg: 1, scope: !2737, file: !3, line: 281, type: !131)
!2742 = !DILocalVariable(name: "delta", arg: 2, scope: !2737, file: !3, line: 281, type: !142)
!2743 = !DILocalVariable(name: "flags", scope: !2737, file: !3, line: 283, type: !52)
!2744 = !DILocalVariable(name: "__dummy", scope: !2745, file: !3, line: 285, type: !52)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 285, column: 2)
!2746 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 285, column: 2)
!2747 = !DILocalVariable(name: "__dummy2", scope: !2745, file: !3, line: 285, type: !52)
!2748 = !DILocalVariable(name: "__dummy", scope: !2749, file: !3, line: 288, type: !52)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 288, column: 2)
!2750 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 288, column: 2)
!2751 = !DILocalVariable(name: "__dummy2", scope: !2749, file: !3, line: 288, type: !52)
!2752 = !DILocation(line: 281, column: 42, scope: !2737)
!2753 = !DILocation(line: 281, column: 52, scope: !2737)
!2754 = !DILocation(line: 283, column: 2, scope: !2737)
!2755 = !DILocation(line: 283, column: 16, scope: !2737)
!2756 = !DILocation(line: 285, column: 2, scope: !2737)
!2757 = !DILocation(line: 285, column: 2, scope: !2745)
!2758 = !DILocation(line: 285, column: 2, scope: !2746)
!2759 = !DILocation(line: 286, column: 29, scope: !2737)
!2760 = !DILocation(line: 286, column: 2, scope: !2737)
!2761 = !DILocation(line: 286, column: 8, scope: !2737)
!2762 = !DILocation(line: 286, column: 16, scope: !2737)
!2763 = !DILocation(line: 286, column: 26, scope: !2737)
!2764 = !DILocation(line: 287, column: 2, scope: !2737)
!2765 = !DILocation(line: 287, column: 8, scope: !2737)
!2766 = !DILocation(line: 287, column: 16, scope: !2737)
!2767 = !DILocation(line: 287, column: 25, scope: !2737)
!2768 = !DILocation(line: 288, column: 2, scope: !2737)
!2769 = !DILocation(line: 288, column: 2, scope: !2749)
!2770 = !DILocation(line: 288, column: 2, scope: !2750)
!2771 = !DILocation(line: 289, column: 1, scope: !2737)
!2772 = !DISubprogram(name: "static_key_enable", scope: !2016, file: !2016, line: 233, type: !2773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2776 = !DISubprogram(name: "static_key_disable", scope: !2016, file: !2016, line: 234, type: !2773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2777 = !DISubprogram(name: "__register_sysctl_init", scope: !25, file: !25, line: 237, type: !2778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !29, !46, !29, !48}
!2780 = distinct !DISubprogram(name: "sysctl_delayacct", scope: !3, file: !3, line: 47, type: !44, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2782 = !DILocalVariable(name: "table", arg: 1, scope: !2780, file: !3, line: 47, type: !46)
!2783 = !DILocalVariable(name: "write", arg: 2, scope: !2780, file: !3, line: 47, type: !35)
!2784 = !DILocalVariable(name: "buffer", arg: 3, scope: !2780, file: !3, line: 47, type: !33)
!2785 = !DILocalVariable(name: "lenp", arg: 4, scope: !2780, file: !3, line: 48, type: !47)
!2786 = !DILocalVariable(name: "ppos", arg: 5, scope: !2780, file: !3, line: 48, type: !53)
!2787 = !DILocalVariable(name: "state", scope: !2780, file: !3, line: 50, type: !35)
!2788 = !DILocalVariable(name: "t", scope: !2780, file: !3, line: 51, type: !26)
!2789 = !DILocalVariable(name: "err", scope: !2780, file: !3, line: 52, type: !35)
!2790 = !DILocation(line: 47, column: 47, scope: !2780)
!2791 = !DILocation(line: 47, column: 58, scope: !2780)
!2792 = !DILocation(line: 47, column: 71, scope: !2780)
!2793 = !DILocation(line: 48, column: 16, scope: !2780)
!2794 = !DILocation(line: 48, column: 30, scope: !2780)
!2795 = !DILocation(line: 50, column: 2, scope: !2780)
!2796 = !DILocation(line: 50, column: 6, scope: !2780)
!2797 = !DILocation(line: 50, column: 14, scope: !2780)
!2798 = !DILocation(line: 51, column: 2, scope: !2780)
!2799 = !DILocation(line: 51, column: 19, scope: !2780)
!2800 = !DILocation(line: 52, column: 2, scope: !2780)
!2801 = !DILocation(line: 52, column: 6, scope: !2780)
!2802 = !DILocation(line: 54, column: 6, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 54, column: 6)
!2804 = !DILocation(line: 54, column: 12, scope: !2803)
!2805 = !DILocation(line: 54, column: 16, scope: !2803)
!2806 = !DILocation(line: 54, column: 6, scope: !2780)
!2807 = !DILocation(line: 55, column: 3, scope: !2803)
!2808 = !DILocation(line: 57, column: 7, scope: !2780)
!2809 = !DILocation(line: 57, column: 6, scope: !2780)
!2810 = !DILocation(line: 58, column: 4, scope: !2780)
!2811 = !DILocation(line: 58, column: 9, scope: !2780)
!2812 = !DILocation(line: 59, column: 33, scope: !2780)
!2813 = !DILocation(line: 59, column: 40, scope: !2780)
!2814 = !DILocation(line: 59, column: 48, scope: !2780)
!2815 = !DILocation(line: 59, column: 54, scope: !2780)
!2816 = !DILocation(line: 59, column: 8, scope: !2780)
!2817 = !DILocation(line: 59, column: 6, scope: !2780)
!2818 = !DILocation(line: 60, column: 6, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 60, column: 6)
!2820 = !DILocation(line: 60, column: 10, scope: !2819)
!2821 = !DILocation(line: 60, column: 6, scope: !2780)
!2822 = !DILocation(line: 61, column: 10, scope: !2819)
!2823 = !DILocation(line: 61, column: 3, scope: !2819)
!2824 = !DILocation(line: 62, column: 6, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 62, column: 6)
!2826 = !DILocation(line: 62, column: 6, scope: !2780)
!2827 = !DILocation(line: 63, column: 17, scope: !2825)
!2828 = !DILocation(line: 63, column: 3, scope: !2825)
!2829 = !DILocation(line: 64, column: 9, scope: !2780)
!2830 = !DILocation(line: 64, column: 2, scope: !2780)
!2831 = !DILocation(line: 65, column: 1, scope: !2780)
!2832 = !DISubprogram(name: "capable", scope: !876, file: !876, line: 148, type: !2833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!950, !35}
!2835 = !DISubprogram(name: "proc_dointvec_minmax", scope: !25, file: !25, line: 72, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2836 = !DISubprogram(name: "kmem_cache_alloc", scope: !2059, file: !2059, line: 500, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
