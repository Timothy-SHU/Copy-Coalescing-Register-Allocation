; ModuleID = 'kernel/pid_namespace.c'
source_filename = "kernel/pid_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_put_pid_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad put_pid_ns ; .previous"
module asm ".section\09\22.initcall6.init..kmod_pid_namespace__322_483_pid_namespaces_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pid_namespace__322_483_pid_namespaces_init6:\09\09\09"
module asm ".long\09__initstub__kmod_pid_namespace__322_483_pid_namespaces_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.19, %struct.qspinlock }
%union.anon.19 = type { %struct.atomic_t }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [48 x i8] }
%struct.anon.25 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.26, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kernel_cap_t = type { i64 }
%union.anon.23 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@init_pid_ns = external dso_local global %struct.pid_namespace, align 8
@__UNIQUE_ID___addressable_put_pid_ns320 = internal global ptr @put_pid_ns, section ".discard.addressable", align 8, !dbg !0
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1, !dbg !5856
@pidns_operations = hidden constant %struct.proc_ns_operations { ptr @.str, ptr null, i32 536870912, ptr @pidns_get, ptr @pidns_put, ptr @pidns_install, ptr @pidns_owner, ptr @pidns_get_parent }, align 8, !dbg !5859
@.str.1 = private unnamed_addr constant [17 x i8] c"pid_for_children\00", align 1, !dbg !5861
@pidns_for_children_operations = hidden constant %struct.proc_ns_operations { ptr @.str.1, ptr @.str, i32 536870912, ptr @pidns_for_children_get, ptr @pidns_put, ptr @pidns_install, ptr @pidns_owner, ptr @pidns_get_parent }, align 8, !dbg !5866
@__UNIQUE_ID___addressable___initstub__kmod_pid_namespace__322_483_pid_namespaces_init6323 = internal global ptr @__initstub__kmod_pid_namespace__322_483_pid_namespaces_init6, section ".discard.addressable", align 8, !dbg !5868
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@pid_ns_cachep = internal global ptr null, align 8, !dbg !5870
@pid_cache = internal global [32 x ptr] zeroinitializer, align 16, !dbg !5875
@.str.2 = private unnamed_addr constant [7 x i8] c"pid_%u\00", align 1, !dbg !5872
@pid_caches_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pid_caches_mutex, i64 16), ptr getelementptr (i8, ptr @pid_caches_mutex, i64 16) } }, align 8, !dbg !5878
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"pid_namespace\00", align 1, !dbg !5880
@.str.4 = private unnamed_addr constant [3 x i8] c"vm\00", align 1, !dbg !5883
@pid_ns_ctl_table_vm = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_pid_ns, i64 136), i32 4, i16 420, i32 0, ptr @pid_mfd_noexec_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], align 16, !dbg !5892
@.str.5 = private unnamed_addr constant [13 x i8] c"memfd_noexec\00", align 1, !dbg !5887
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_put_pid_ns320, ptr @__UNIQUE_ID___addressable___initstub__kmod_pid_namespace__322_483_pid_namespaces_init6323], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_pid_ns(i64 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !5904 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5908, metadata !DIExpression()), !dbg !5911
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !5909, metadata !DIExpression()), !dbg !5912
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !5910, metadata !DIExpression()), !dbg !5913
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5914
  %and = and i64 %0, 536870912, !dbg !5916
  %tobool = icmp ne i64 %and, 0, !dbg !5916
  br i1 %tobool, label %if.end, label %if.then, !dbg !5917

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %old_ns.addr, align 8, !dbg !5918
  %call = call ptr @get_pid_ns(ptr noundef %1) #11, !dbg !5919
  store ptr %call, ptr %retval, align 8, !dbg !5920
  br label %return, !dbg !5920

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current() #11, !dbg !5921
  %call2 = call ptr @task_active_pid_ns(ptr noundef %call1) #11, !dbg !5923
  %2 = load ptr, ptr %old_ns.addr, align 8, !dbg !5924
  %cmp = icmp ne ptr %call2, %2, !dbg !5925
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5926

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -22) #11, !dbg !5927
  store ptr %call4, ptr %retval, align 8, !dbg !5928
  br label %return, !dbg !5928

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %user_ns.addr, align 8, !dbg !5929
  %4 = load ptr, ptr %old_ns.addr, align 8, !dbg !5930
  %call6 = call ptr @create_pid_namespace(ptr noundef %3, ptr noundef %4) #11, !dbg !5931
  store ptr %call6, ptr %retval, align 8, !dbg !5932
  br label %return, !dbg !5932

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5933
  ret ptr %5, !dbg !5933
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_pid_ns(ptr noundef %ns) #2 align 16 !dbg !5934 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !5940
  %cmp = icmp ne ptr %0, @init_pid_ns, !dbg !5942
  br i1 %cmp, label %if.then, label %if.end, !dbg !5943

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !5944
  %ns1 = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 11, !dbg !5945
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !5946
  call void @refcount_inc(ptr noundef %count) #11, !dbg !5947
  br label %if.end, !dbg !5947

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !5948
  ret ptr %2, !dbg !5949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5950 dso_local ptr @task_active_pid_ns(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5953 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5958, metadata !DIExpression()), !dbg !5964
  br label %do.body, !dbg !5964

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5960, metadata !DIExpression()), !dbg !5965
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5965
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5964
  br label %do.cond, !dbg !5965

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5965

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5962, metadata !DIExpression()), !dbg !5966
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !5966, !srcloc !5967
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5966
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5966
  %3 = inttoptr i64 %2 to ptr, !dbg !5966
  store ptr %3, ptr %tmp, align 8, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !5964
  %4 = load ptr, ptr %tmp, align 8, !dbg !5966
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5964
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5964
  store ptr %5, ptr %tmp1, align 8, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5968
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5964
  ret ptr %6, !dbg !5969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !5970 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  %0 = load i64, ptr %error.addr, align 8, !dbg !5977
  %1 = inttoptr i64 %0 to ptr, !dbg !5978
  ret ptr %1, !dbg !5979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @create_pid_namespace(ptr noundef %user_ns, ptr noundef %parent_pid_ns) #0 align 16 !dbg !5980 {
entry:
  %retval = alloca ptr, align 8
  %user_ns.addr = alloca ptr, align 8
  %parent_pid_ns.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %level = alloca i32, align 4
  %ucounts = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !5984, metadata !DIExpression()), !dbg !5993
  store ptr %parent_pid_ns, ptr %parent_pid_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_pid_ns.addr, metadata !5985, metadata !DIExpression()), !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #12, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5986, metadata !DIExpression()), !dbg !5996
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #12, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %level, metadata !5987, metadata !DIExpression()), !dbg !5998
  %0 = load ptr, ptr %parent_pid_ns.addr, align 8, !dbg !5999
  %level1 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 5, !dbg !6000
  %1 = load i32, ptr %level1, align 8, !dbg !6000
  %add = add i32 %1, 1, !dbg !6001
  store i32 %add, ptr %level, align 4, !dbg !5998
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #12, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !5988, metadata !DIExpression()), !dbg !6003
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6004
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5989, metadata !DIExpression()), !dbg !6005
  store i32 -22, ptr %err, align 4, !dbg !6006
  %2 = load ptr, ptr %parent_pid_ns.addr, align 8, !dbg !6007
  %user_ns2 = getelementptr inbounds %struct.pid_namespace, ptr %2, i32 0, i32 8, !dbg !6009
  %3 = load ptr, ptr %user_ns2, align 8, !dbg !6009
  %4 = load ptr, ptr %user_ns.addr, align 8, !dbg !6010
  %call = call zeroext i1 @in_userns(ptr noundef %3, ptr noundef %4) #11, !dbg !6011
  br i1 %call, label %if.end, label %if.then, !dbg !6012

if.then:                                          ; preds = %entry
  br label %out, !dbg !6013

if.end:                                           ; preds = %entry
  store i32 -28, ptr %err, align 4, !dbg !6014
  %5 = load i32, ptr %level, align 4, !dbg !6015
  %cmp = icmp ugt i32 %5, 32, !dbg !6017
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6018

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !6019

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %user_ns.addr, align 8, !dbg !6020
  %call5 = call ptr @inc_pid_namespaces(ptr noundef %6) #11, !dbg !6021
  store ptr %call5, ptr %ucounts, align 8, !dbg !6022
  %7 = load ptr, ptr %ucounts, align 8, !dbg !6023
  %tobool = icmp ne ptr %7, null, !dbg !6023
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !6025

if.then6:                                         ; preds = %if.end4
  br label %out, !dbg !6026

if.end7:                                          ; preds = %if.end4
  store i32 -12, ptr %err, align 4, !dbg !6027
  %8 = load ptr, ptr @pid_ns_cachep, align 8, !dbg !6028
  %call8 = call ptr @kmem_cache_zalloc(ptr noundef %8, i32 noundef 3264) #11, !dbg !6029
  store ptr %call8, ptr %ns, align 8, !dbg !6030
  %9 = load ptr, ptr %ns, align 8, !dbg !6031
  %cmp9 = icmp eq ptr %9, null, !dbg !6033
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6034

if.then10:                                        ; preds = %if.end7
  br label %out_dec, !dbg !6035

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %ns, align 8, !dbg !6036
  %idr = getelementptr inbounds %struct.pid_namespace, ptr %10, i32 0, i32 0, !dbg !6037
  call void @idr_init(ptr noundef %idr) #11, !dbg !6038
  %11 = load i32, ptr %level, align 4, !dbg !6039
  %call12 = call ptr @create_pid_cachep(i32 noundef %11) #11, !dbg !6040
  %12 = load ptr, ptr %ns, align 8, !dbg !6041
  %pid_cachep = getelementptr inbounds %struct.pid_namespace, ptr %12, i32 0, i32 4, !dbg !6042
  store ptr %call12, ptr %pid_cachep, align 8, !dbg !6043
  %13 = load ptr, ptr %ns, align 8, !dbg !6044
  %pid_cachep13 = getelementptr inbounds %struct.pid_namespace, ptr %13, i32 0, i32 4, !dbg !6046
  %14 = load ptr, ptr %pid_cachep13, align 8, !dbg !6046
  %cmp14 = icmp eq ptr %14, null, !dbg !6047
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6048

if.then15:                                        ; preds = %if.end11
  br label %out_free_idr, !dbg !6049

if.end16:                                         ; preds = %if.end11
  %15 = load ptr, ptr %ns, align 8, !dbg !6050
  %ns17 = getelementptr inbounds %struct.pid_namespace, ptr %15, i32 0, i32 11, !dbg !6051
  %call18 = call i32 @ns_alloc_inum(ptr noundef %ns17) #11, !dbg !6052
  store i32 %call18, ptr %err, align 4, !dbg !6053
  %16 = load i32, ptr %err, align 4, !dbg !6054
  %tobool19 = icmp ne i32 %16, 0, !dbg !6054
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6056

if.then20:                                        ; preds = %if.end16
  br label %out_free_idr, !dbg !6057

if.end21:                                         ; preds = %if.end16
  %17 = load ptr, ptr %ns, align 8, !dbg !6058
  %ns22 = getelementptr inbounds %struct.pid_namespace, ptr %17, i32 0, i32 11, !dbg !6059
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns22, i32 0, i32 1, !dbg !6060
  store ptr @pidns_operations, ptr %ops, align 8, !dbg !6061
  %18 = load ptr, ptr %ns, align 8, !dbg !6062
  %ns23 = getelementptr inbounds %struct.pid_namespace, ptr %18, i32 0, i32 11, !dbg !6063
  %count = getelementptr inbounds %struct.ns_common, ptr %ns23, i32 0, i32 3, !dbg !6064
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #11, !dbg !6065
  %19 = load i32, ptr %level, align 4, !dbg !6066
  %20 = load ptr, ptr %ns, align 8, !dbg !6067
  %level24 = getelementptr inbounds %struct.pid_namespace, ptr %20, i32 0, i32 5, !dbg !6068
  store i32 %19, ptr %level24, align 8, !dbg !6069
  %21 = load ptr, ptr %parent_pid_ns.addr, align 8, !dbg !6070
  %call25 = call ptr @get_pid_ns(ptr noundef %21) #11, !dbg !6071
  %22 = load ptr, ptr %ns, align 8, !dbg !6072
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %22, i32 0, i32 6, !dbg !6073
  store ptr %call25, ptr %parent, align 8, !dbg !6074
  %23 = load ptr, ptr %user_ns.addr, align 8, !dbg !6075
  %call26 = call ptr @get_user_ns(ptr noundef %23) #11, !dbg !6076
  %24 = load ptr, ptr %ns, align 8, !dbg !6077
  %user_ns27 = getelementptr inbounds %struct.pid_namespace, ptr %24, i32 0, i32 8, !dbg !6078
  store ptr %call26, ptr %user_ns27, align 8, !dbg !6079
  %25 = load ptr, ptr %ucounts, align 8, !dbg !6080
  %26 = load ptr, ptr %ns, align 8, !dbg !6081
  %ucounts28 = getelementptr inbounds %struct.pid_namespace, ptr %26, i32 0, i32 9, !dbg !6082
  store ptr %25, ptr %ucounts28, align 8, !dbg !6083
  %27 = load ptr, ptr %ns, align 8, !dbg !6084
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %27, i32 0, i32 2, !dbg !6085
  store i32 -2147483648, ptr %pid_allocated, align 8, !dbg !6086
  %28 = load ptr, ptr %parent_pid_ns.addr, align 8, !dbg !6087
  %call29 = call i32 @pidns_memfd_noexec_scope(ptr noundef %28) #11, !dbg !6088
  %29 = load ptr, ptr %ns, align 8, !dbg !6089
  %memfd_noexec_scope = getelementptr inbounds %struct.pid_namespace, ptr %29, i32 0, i32 12, !dbg !6090
  store i32 %call29, ptr %memfd_noexec_scope, align 8, !dbg !6091
  %30 = load ptr, ptr %ns, align 8, !dbg !6092
  store ptr %30, ptr %retval, align 8, !dbg !6093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6093

out_free_idr:                                     ; preds = %if.then20, %if.then15
  call void @llvm.dbg.label(metadata !5990), !dbg !6094
  %31 = load ptr, ptr %ns, align 8, !dbg !6095
  %idr30 = getelementptr inbounds %struct.pid_namespace, ptr %31, i32 0, i32 0, !dbg !6096
  call void @idr_destroy(ptr noundef %idr30) #11, !dbg !6097
  %32 = load ptr, ptr @pid_ns_cachep, align 8, !dbg !6098
  %33 = load ptr, ptr %ns, align 8, !dbg !6099
  call void @kmem_cache_free(ptr noundef %32, ptr noundef %33) #11, !dbg !6100
  br label %out_dec, !dbg !6100

out_dec:                                          ; preds = %out_free_idr, %if.then10
  call void @llvm.dbg.label(metadata !5991), !dbg !6101
  %34 = load ptr, ptr %ucounts, align 8, !dbg !6102
  call void @dec_pid_namespaces(ptr noundef %34) #11, !dbg !6103
  br label %out, !dbg !6103

out:                                              ; preds = %out_dec, %if.then6, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !5992), !dbg !6104
  %35 = load i32, ptr %err, align 4, !dbg !6105
  %conv = sext i32 %35 to i64, !dbg !6105
  %call31 = call ptr @ERR_PTR(i64 noundef %conv) #11, !dbg !6106
  store ptr %call31, ptr %retval, align 8, !dbg !6107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6107

cleanup:                                          ; preds = %out, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #12, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #12, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #12, !dbg !6108
  %36 = load ptr, ptr %retval, align 8, !dbg !6108
  ret ptr %36, !dbg !6108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_pid_ns(ptr noundef %ns) #0 align 16 !dbg !6109 {
entry:
  %ns.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6113, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6114, metadata !DIExpression()), !dbg !6117
  br label %while.cond, !dbg !6118

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6119
  %cmp = icmp ne ptr %0, @init_pid_ns, !dbg !6120
  br i1 %cmp, label %while.body, label %while.end, !dbg !6118

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !6121
  %parent1 = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 6, !dbg !6123
  %2 = load ptr, ptr %parent1, align 8, !dbg !6123
  store ptr %2, ptr %parent, align 8, !dbg !6124
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !6125
  %ns2 = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 11, !dbg !6127
  %count = getelementptr inbounds %struct.ns_common, ptr %ns2, i32 0, i32 3, !dbg !6128
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #11, !dbg !6129
  br i1 %call, label %if.end, label %if.then, !dbg !6130

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !6131

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !6132
  call void @destroy_pid_namespace(ptr noundef %4) #11, !dbg !6133
  %5 = load ptr, ptr %parent, align 8, !dbg !6134
  store ptr %5, ptr %ns.addr, align 8, !dbg !6135
  br label %while.cond, !dbg !6118, !llvm.loop !6136

while.end:                                        ; preds = %if.then, %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !6140
  ret void, !dbg !6140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !6141 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6148
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #11, !dbg !6149
  ret i1 %call, !dbg !6150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_pid_namespace(ptr noundef %ns) #0 align 16 !dbg !6151 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6155
  %ns1 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 11, !dbg !6155
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 2, !dbg !6155
  %1 = load i32, ptr %inum, align 8, !dbg !6155
  call void @proc_free_inum(i32 noundef %1) #11, !dbg !6155
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !6156
  %idr = getelementptr inbounds %struct.pid_namespace, ptr %2, i32 0, i32 0, !dbg !6157
  call void @idr_destroy(ptr noundef %idr) #11, !dbg !6158
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !6159
  %rcu = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 1, !dbg !6160
  call void @call_rcu(ptr noundef %rcu, ptr noundef @delayed_free_pidns) #11, !dbg !6161
  ret void, !dbg !6162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zap_pid_ns_processes(ptr noundef %pid_ns) #0 align 16 !dbg !6163 {
entry:
  %pid_ns.addr = alloca ptr, align 8
  %nr = alloca i32, align 4
  %rc = alloca i32, align 4
  %task = alloca ptr, align 8
  %me = alloca ptr, align 8
  %init_pids = alloca i32, align 4
  %pid = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %pid_ns, ptr %pid_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_ns.addr, metadata !6165, metadata !DIExpression()), !dbg !6182
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #12, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6166, metadata !DIExpression()), !dbg !6184
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6167, metadata !DIExpression()), !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #12, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %task, metadata !6168, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 8, ptr %me) #12, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %me, metadata !6169, metadata !DIExpression()), !dbg !6189
  %call = call ptr @get_current() #11, !dbg !6190
  store ptr %call, ptr %me, align 8, !dbg !6189
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_pids) #12, !dbg !6191
  call void @llvm.dbg.declare(metadata ptr %init_pids, metadata !6170, metadata !DIExpression()), !dbg !6192
  %0 = load ptr, ptr %me, align 8, !dbg !6193
  %call1 = call zeroext i1 @thread_group_leader(ptr noundef %0) #11, !dbg !6194
  %1 = zext i1 %call1 to i64, !dbg !6194
  %cond = select i1 %call1, i32 1, i32 2, !dbg !6194
  store i32 %cond, ptr %init_pids, align 4, !dbg !6192
  call void @llvm.lifetime.start.p0(i64 8, ptr %pid) #12, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !6171, metadata !DIExpression()), !dbg !6196
  %2 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6197
  call void @disable_pid_allocation(ptr noundef %2) #11, !dbg !6198
  %3 = load ptr, ptr %me, align 8, !dbg !6199
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 105, !dbg !6200
  %4 = load ptr, ptr %sighand, align 8, !dbg !6200
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %4, i32 0, i32 0, !dbg !6201
  call void @spin_lock_irq(ptr noundef %siglock) #11, !dbg !6202
  %5 = load ptr, ptr %me, align 8, !dbg !6203
  %sighand2 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 105, !dbg !6204
  %6 = load ptr, ptr %sighand2, align 8, !dbg !6204
  %action = getelementptr inbounds %struct.sighand_struct, ptr %6, i32 0, i32 3, !dbg !6205
  %arrayidx = getelementptr [64 x %struct.k_sigaction], ptr %action, i64 0, i64 16, !dbg !6203
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %arrayidx, i32 0, i32 0, !dbg !6206
  %sa_handler = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 0, !dbg !6207
  store ptr inttoptr (i64 1 to ptr), ptr %sa_handler, align 8, !dbg !6208
  %7 = load ptr, ptr %me, align 8, !dbg !6209
  %sighand3 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 105, !dbg !6210
  %8 = load ptr, ptr %sighand3, align 8, !dbg !6210
  %siglock4 = getelementptr inbounds %struct.sighand_struct, ptr %8, i32 0, i32 0, !dbg !6211
  call void @spin_unlock_irq(ptr noundef %siglock4) #11, !dbg !6212
  call void @rcu_read_lock() #11, !dbg !6213
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #11, !dbg !6214
  store i32 2, ptr %nr, align 4, !dbg !6215
  %9 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6216
  %idr = getelementptr inbounds %struct.pid_namespace, ptr %9, i32 0, i32 0, !dbg !6216
  %call5 = call ptr @idr_get_next(ptr noundef %idr, ptr noundef %nr) #11, !dbg !6216
  store ptr %call5, ptr %pid, align 8, !dbg !6216
  br label %for.cond, !dbg !6216

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load ptr, ptr %pid, align 8, !dbg !6218
  %tobool = icmp ne ptr %10, null, !dbg !6216
  br i1 %tobool, label %for.body, label %for.end, !dbg !6216

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pid, align 8, !dbg !6220
  %call6 = call ptr @pid_task(ptr noundef %11, i32 noundef 0) #11, !dbg !6222
  store ptr %call6, ptr %task, align 8, !dbg !6223
  %12 = load ptr, ptr %task, align 8, !dbg !6224
  %tobool7 = icmp ne ptr %12, null, !dbg !6224
  br i1 %tobool7, label %land.lhs.true, label %if.end, !dbg !6226

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %task, align 8, !dbg !6227
  %call8 = call i32 @__fatal_signal_pending(ptr noundef %13) #11, !dbg !6228
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6228
  br i1 %tobool9, label %if.end, label %if.then, !dbg !6229

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %task, align 8, !dbg !6230
  %call10 = call i32 @group_send_sig_info(i32 noundef 9, ptr noundef inttoptr (i64 1 to ptr), ptr noundef %14, i32 noundef 4) #11, !dbg !6231
  br label %if.end, !dbg !6231

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !6232

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %nr, align 4, !dbg !6218
  %inc = add i32 %15, 1, !dbg !6218
  store i32 %inc, ptr %nr, align 4, !dbg !6218
  %16 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6218
  %idr11 = getelementptr inbounds %struct.pid_namespace, ptr %16, i32 0, i32 0, !dbg !6218
  %call12 = call ptr @idr_get_next(ptr noundef %idr11, ptr noundef %nr) #11, !dbg !6218
  store ptr %call12, ptr %pid, align 8, !dbg !6218
  br label %for.cond, !dbg !6218, !llvm.loop !6233

for.end:                                          ; preds = %for.cond
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #11, !dbg !6235
  call void @rcu_read_unlock() #11, !dbg !6236
  br label %do.body, !dbg !6237

do.body:                                          ; preds = %do.cond, %for.end
  %call13 = call ptr @get_current() #11, !dbg !6238
  call void @clear_ti_thread_flag(ptr noundef %call13, i32 noundef 2) #11, !dbg !6238
  %call14 = call ptr @get_current() #11, !dbg !6240
  call void @clear_ti_thread_flag(ptr noundef %call14, i32 noundef 17) #11, !dbg !6240
  %call15 = call i64 @kernel_wait4(i32 noundef -1, ptr noundef null, i32 noundef 1073741824, ptr noundef null) #11, !dbg !6241
  %conv = trunc i64 %call15 to i32, !dbg !6241
  store i32 %conv, ptr %rc, align 4, !dbg !6242
  br label %do.cond, !dbg !6243

do.cond:                                          ; preds = %do.body
  %17 = load i32, ptr %rc, align 4, !dbg !6244
  %cmp = icmp ne i32 %17, -10, !dbg !6245
  br i1 %cmp, label %do.body, label %do.end, !dbg !6243, !llvm.loop !6246

do.end:                                           ; preds = %do.cond
  br label %for.cond17, !dbg !6248

for.cond17:                                       ; preds = %if.end41, %do.end
  br label %do.body18, !dbg !6249

do.body18:                                        ; preds = %for.cond17
  br label %do.body19, !dbg !6250

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !6251

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6251

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !6250

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !6253

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !6254

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6254

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !6253

do.body26:                                        ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #12, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6172, metadata !DIExpression()), !dbg !6256
  %call27 = call ptr @get_current() #11, !dbg !6256
  %__state = getelementptr inbounds %struct.task_struct, ptr %call27, i32 0, i32 1, !dbg !6256
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !6256
  br label %do.body28, !dbg !6256

do.body28:                                        ; preds = %do.body26
  br label %do.cond29, !dbg !6257

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6257

do.end30:                                         ; preds = %do.cond29
  %18 = load ptr, ptr %__ai_ptr, align 8, !dbg !6256
  call void @instrument_atomic_read_write(ptr noundef %18, i64 noundef 4) #11, !dbg !6256
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6180, metadata !DIExpression()), !dbg !6259
  store i32 1, ptr %__ret, align 4, !dbg !6259
  %19 = load i32, ptr %__ret, align 4, !dbg !6259
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !6259
  %21 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %20, i32 %19, ptr elementtype(i32) %20) #12, !dbg !6259, !srcloc !6260
  store i32 %21, ptr %__ret, align 4, !dbg !6259
  %22 = load i32, ptr %__ret, align 4, !dbg !6259
  store i32 %22, ptr %tmp31, align 4, !dbg !6259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !6256
  %23 = load i32, ptr %tmp31, align 4, !dbg !6259
  store i32 %23, ptr %tmp, align 4, !dbg !6256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #12, !dbg !6261
  %24 = load i32, ptr %tmp, align 4, !dbg !6256
  br label %do.cond32, !dbg !6261

do.cond32:                                        ; preds = %do.end30
  br label %do.end33, !dbg !6261

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !6253

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !6253

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !6250

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6250

do.end37:                                         ; preds = %do.cond36
  %25 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6262
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %25, i32 0, i32 2, !dbg !6264
  %26 = load i32, ptr %pid_allocated, align 8, !dbg !6264
  %27 = load i32, ptr %init_pids, align 4, !dbg !6265
  %cmp38 = icmp eq i32 %26, %27, !dbg !6266
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6267

if.then40:                                        ; preds = %do.end37
  br label %for.end42, !dbg !6268

if.end41:                                         ; preds = %do.end37
  call void @exit_tasks_rcu_stop() #11, !dbg !6269
  call void @schedule() #11, !dbg !6270
  call void @exit_tasks_rcu_start() #11, !dbg !6271
  br label %for.cond17, !dbg !6272, !llvm.loop !6273

for.end42:                                        ; preds = %if.then40
  br label %do.body43, !dbg !6276

do.body43:                                        ; preds = %for.end42
  br label %do.body44, !dbg !6277

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !6279

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6279

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !6277

do.body47:                                        ; preds = %do.end46
  br label %do.body48, !dbg !6281

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !6283

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6283

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6281

do.body51:                                        ; preds = %do.end50
  %call52 = call ptr @get_current() #11, !dbg !6285
  %__state53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 1, !dbg !6285
  store volatile i32 0, ptr %__state53, align 8, !dbg !6285
  br label %do.cond54, !dbg !6285

do.cond54:                                        ; preds = %do.body51
  br label %do.end55, !dbg !6285

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !6281

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !6281

do.end57:                                         ; preds = %do.cond56
  br label %do.cond58, !dbg !6277

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !6277

do.end59:                                         ; preds = %do.cond58
  %28 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6287
  %reboot = getelementptr inbounds %struct.pid_namespace, ptr %28, i32 0, i32 10, !dbg !6289
  %29 = load i32, ptr %reboot, align 8, !dbg !6289
  %tobool60 = icmp ne i32 %29, 0, !dbg !6287
  br i1 %tobool60, label %if.then61, label %if.end64, !dbg !6290

if.then61:                                        ; preds = %do.end59
  %30 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6291
  %reboot62 = getelementptr inbounds %struct.pid_namespace, ptr %30, i32 0, i32 10, !dbg !6292
  %31 = load i32, ptr %reboot62, align 8, !dbg !6292
  %call63 = call ptr @get_current() #11, !dbg !6293
  %signal = getelementptr inbounds %struct.task_struct, ptr %call63, i32 0, i32 104, !dbg !6294
  %32 = load ptr, ptr %signal, align 64, !dbg !6294
  %group_exit_code = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 9, !dbg !6295
  store i32 %31, ptr %group_exit_code, align 8, !dbg !6296
  br label %if.end64, !dbg !6293

if.end64:                                         ; preds = %if.then61, %do.end59
  %33 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6297
  call void @acct_exit_ns(ptr noundef %33) #11, !dbg !6298
  call void @llvm.lifetime.end.p0(i64 8, ptr %pid) #12, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_pids) #12, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %me) #12, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #12, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #12, !dbg !6299
  ret void, !dbg !6299
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @thread_group_leader(ptr noundef %p) #2 align 16 !dbg !6300 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6304, metadata !DIExpression()), !dbg !6305
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6306
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53, !dbg !6307
  %1 = load i32, ptr %exit_signal, align 8, !dbg !6307
  %cmp = icmp sge i32 %1, 0, !dbg !6308
  ret i1 %cmp, !dbg !6309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6310 dso_local void @disable_pid_allocation(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !6311 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6318
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6318
  call void @_raw_spin_lock_irq(ptr noundef %1) #11, !dbg !6318
  ret void, !dbg !6319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !6320 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6324
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6324
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11, !dbg !6324
  ret void, !dbg !6325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !6326 {
entry:
  call void @__rcu_read_lock() #11, !dbg !6328
  br label %do.body, !dbg !6329

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6330

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6332

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6333

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6336 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6341 dso_local ptr @idr_get_next(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local ptr @pid_task(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #2 align 16 !dbg !6348 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6354
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !6354
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !6354
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #11, !dbg !6354
  %tobool = icmp ne i32 %call, 0, !dbg !6354
  %lnot = xor i1 %tobool, true, !dbg !6354
  %lnot1 = xor i1 %lnot, true, !dbg !6354
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6354
  %conv = sext i32 %lnot.ext to i64, !dbg !6354
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6354
  %conv2 = trunc i64 %expval to i32, !dbg !6354
  ret i32 %conv2, !dbg !6355
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6356 dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6360 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #2 align 16 !dbg !6361 {
entry:
  br label %do.body, !dbg !6362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6363

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !6365
  br label %do.body1, !dbg !6366

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6367

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #2 align 16 !dbg !6370 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6375, metadata !DIExpression()), !dbg !6377
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6376, metadata !DIExpression()), !dbg !6378
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6379
  %conv = sext i32 %0 to i64, !dbg !6379
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !6380
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !6381
  call void @clear_bit(i64 noundef %conv, ptr noundef %flags) #11, !dbg !6382
  ret void, !dbg !6383
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6384 dso_local i64 @kernel_wait4(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6411 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6419, metadata !DIExpression()), !dbg !6421
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6420, metadata !DIExpression()), !dbg !6422
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6423
  %1 = load i64, ptr %size.addr, align 8, !dbg !6424
  %conv = trunc i64 %1 to i32, !dbg !6424
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6425
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6426
  %3 = load i64, ptr %size.addr, align 8, !dbg !6426
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6426
  ret void, !dbg !6427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6428 dso_local void @exit_tasks_rcu_stop() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6429 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6430 dso_local void @exit_tasks_rcu_start() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6431 dso_local void @acct_exit_ns(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @reboot_pid_ns(ptr noundef %pid_ns, i32 noundef %cmd) #0 align 16 !dbg !6433 {
entry:
  %retval = alloca i32, align 4
  %pid_ns.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  store ptr %pid_ns, ptr %pid_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_ns.addr, metadata !6437, metadata !DIExpression()), !dbg !6439
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6438, metadata !DIExpression()), !dbg !6440
  %0 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6441
  %cmp = icmp eq ptr %0, @init_pid_ns, !dbg !6443
  br i1 %cmp, label %if.then, label %if.end, !dbg !6444

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6445
  br label %return, !dbg !6445

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cmd.addr, align 4, !dbg !6446
  switch i32 %1, label %sw.default [
    i32 -1582119980, label %sw.bb
    i32 19088743, label %sw.bb
    i32 1126301404, label %sw.bb1
    i32 -839974621, label %sw.bb1
  ], !dbg !6447

sw.bb:                                            ; preds = %if.end, %if.end
  %2 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6448
  %reboot = getelementptr inbounds %struct.pid_namespace, ptr %2, i32 0, i32 10, !dbg !6450
  store i32 1, ptr %reboot, align 8, !dbg !6451
  br label %sw.epilog, !dbg !6452

sw.bb1:                                           ; preds = %if.end, %if.end
  %3 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6453
  %reboot2 = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 10, !dbg !6454
  store i32 2, ptr %reboot2, align 8, !dbg !6455
  br label %sw.epilog, !dbg !6456

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6457
  br label %return, !dbg !6457

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #11, !dbg !6458
  %4 = load ptr, ptr %pid_ns.addr, align 8, !dbg !6459
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %4, i32 0, i32 3, !dbg !6460
  %5 = load ptr, ptr %child_reaper, align 8, !dbg !6460
  %call = call i32 @send_sig(i32 noundef 9, ptr noundef %5, i32 noundef 1) #11, !dbg !6461
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #11, !dbg !6462
  call void @do_exit(i64 noundef 0) #14, !dbg !6463
  unreachable, !dbg !6463

return:                                           ; preds = %sw.default, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !6464
  ret i32 %6, !dbg !6464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6468 dso_local void @do_exit(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_get(ptr noundef %task) #0 align 16 !dbg !6472 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6474, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #12, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6475, metadata !DIExpression()), !dbg !6478
  call void @rcu_read_lock() #11, !dbg !6479
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6480
  %call = call ptr @task_active_pid_ns(ptr noundef %0) #11, !dbg !6481
  store ptr %call, ptr %ns, align 8, !dbg !6482
  %1 = load ptr, ptr %ns, align 8, !dbg !6483
  %tobool = icmp ne ptr %1, null, !dbg !6483
  br i1 %tobool, label %if.then, label %if.end, !dbg !6485

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ns, align 8, !dbg !6486
  %call1 = call ptr @get_pid_ns(ptr noundef %2) #11, !dbg !6487
  br label %if.end, !dbg !6487

if.end:                                           ; preds = %if.then, %entry
  call void @rcu_read_unlock() #11, !dbg !6488
  %3 = load ptr, ptr %ns, align 8, !dbg !6489
  %tobool2 = icmp ne ptr %3, null, !dbg !6489
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !6489

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %ns, align 8, !dbg !6490
  %ns3 = getelementptr inbounds %struct.pid_namespace, ptr %4, i32 0, i32 11, !dbg !6491
  br label %cond.end, !dbg !6489

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !6489

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !6489
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #12, !dbg !6492
  ret ptr %cond, !dbg !6493
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pidns_put(ptr noundef %ns) #0 align 16 !dbg !6494 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6498
  %call = call ptr @to_pid_ns(ptr noundef %0) #11, !dbg !6499
  call void @put_pid_ns(ptr noundef %call) #11, !dbg !6500
  ret void, !dbg !6501
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pidns_install(ptr noundef %nsset, ptr noundef %ns) #0 align 16 !dbg !6502 {
entry:
  %retval = alloca i32, align 4
  %nsset.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  %active = alloca ptr, align 8
  %ancestor = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsset, ptr %nsset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsset.addr, metadata !6504, metadata !DIExpression()), !dbg !6510
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6505, metadata !DIExpression()), !dbg !6511
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #12, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !6506, metadata !DIExpression()), !dbg !6513
  %0 = load ptr, ptr %nsset.addr, align 8, !dbg !6514
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1, !dbg !6515
  %1 = load ptr, ptr %nsproxy1, align 8, !dbg !6515
  store ptr %1, ptr %nsproxy, align 8, !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %active) #12, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %active, metadata !6507, metadata !DIExpression()), !dbg !6517
  %call = call ptr @get_current() #11, !dbg !6518
  %call2 = call ptr @task_active_pid_ns(ptr noundef %call) #11, !dbg !6519
  store ptr %call2, ptr %active, align 8, !dbg !6517
  call void @llvm.lifetime.start.p0(i64 8, ptr %ancestor) #12, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %ancestor, metadata !6508, metadata !DIExpression()), !dbg !6521
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6509, metadata !DIExpression()), !dbg !6522
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !6523
  %call3 = call ptr @to_pid_ns(ptr noundef %2) #11, !dbg !6524
  store ptr %call3, ptr %new, align 8, !dbg !6522
  %3 = load ptr, ptr %new, align 8, !dbg !6525
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 8, !dbg !6527
  %4 = load ptr, ptr %user_ns, align 8, !dbg !6527
  %call4 = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 21) #11, !dbg !6528
  br i1 %call4, label %lor.lhs.false, label %if.then, !dbg !6529

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %nsset.addr, align 8, !dbg !6530
  %cred = getelementptr inbounds %struct.nsset, ptr %5, i32 0, i32 3, !dbg !6531
  %6 = load ptr, ptr %cred, align 8, !dbg !6531
  %user_ns5 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 22, !dbg !6532
  %7 = load ptr, ptr %user_ns5, align 8, !dbg !6532
  %call6 = call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #11, !dbg !6533
  br i1 %call6, label %if.end, label %if.then, !dbg !6534

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !6535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6535

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %new, align 8, !dbg !6536
  %level = getelementptr inbounds %struct.pid_namespace, ptr %8, i32 0, i32 5, !dbg !6538
  %9 = load i32, ptr %level, align 8, !dbg !6538
  %10 = load ptr, ptr %active, align 8, !dbg !6539
  %level7 = getelementptr inbounds %struct.pid_namespace, ptr %10, i32 0, i32 5, !dbg !6540
  %11 = load i32, ptr %level7, align 8, !dbg !6540
  %cmp = icmp ult i32 %9, %11, !dbg !6541
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !6542

if.then8:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

if.end9:                                          ; preds = %if.end
  %12 = load ptr, ptr %new, align 8, !dbg !6544
  store ptr %12, ptr %ancestor, align 8, !dbg !6545
  br label %while.cond, !dbg !6546

while.cond:                                       ; preds = %while.body, %if.end9
  %13 = load ptr, ptr %ancestor, align 8, !dbg !6547
  %level10 = getelementptr inbounds %struct.pid_namespace, ptr %13, i32 0, i32 5, !dbg !6548
  %14 = load i32, ptr %level10, align 8, !dbg !6548
  %15 = load ptr, ptr %active, align 8, !dbg !6549
  %level11 = getelementptr inbounds %struct.pid_namespace, ptr %15, i32 0, i32 5, !dbg !6550
  %16 = load i32, ptr %level11, align 8, !dbg !6550
  %cmp12 = icmp ugt i32 %14, %16, !dbg !6551
  br i1 %cmp12, label %while.body, label %while.end, !dbg !6546

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %ancestor, align 8, !dbg !6552
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %17, i32 0, i32 6, !dbg !6553
  %18 = load ptr, ptr %parent, align 8, !dbg !6553
  store ptr %18, ptr %ancestor, align 8, !dbg !6554
  br label %while.cond, !dbg !6546, !llvm.loop !6555

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %ancestor, align 8, !dbg !6556
  %20 = load ptr, ptr %active, align 8, !dbg !6558
  %cmp13 = icmp ne ptr %19, %20, !dbg !6559
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6560

if.then14:                                        ; preds = %while.end
  store i32 -22, ptr %retval, align 4, !dbg !6561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6561

if.end15:                                         ; preds = %while.end
  %21 = load ptr, ptr %nsproxy, align 8, !dbg !6562
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %21, i32 0, i32 4, !dbg !6563
  %22 = load ptr, ptr %pid_ns_for_children, align 8, !dbg !6563
  call void @put_pid_ns(ptr noundef %22) #11, !dbg !6564
  %23 = load ptr, ptr %new, align 8, !dbg !6565
  %call16 = call ptr @get_pid_ns(ptr noundef %23) #11, !dbg !6566
  %24 = load ptr, ptr %nsproxy, align 8, !dbg !6567
  %pid_ns_for_children17 = getelementptr inbounds %struct.nsproxy, ptr %24, i32 0, i32 4, !dbg !6568
  store ptr %call16, ptr %pid_ns_for_children17, align 8, !dbg !6569
  store i32 0, ptr %retval, align 4, !dbg !6570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6570

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %ancestor) #12, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %active) #12, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #12, !dbg !6571
  %25 = load i32, ptr %retval, align 4, !dbg !6571
  ret i32 %25, !dbg !6571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_owner(ptr noundef %ns) #0 align 16 !dbg !6572 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6574, metadata !DIExpression()), !dbg !6575
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6576
  %call = call ptr @to_pid_ns(ptr noundef %0) #11, !dbg !6577
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %call, i32 0, i32 8, !dbg !6578
  %1 = load ptr, ptr %user_ns, align 8, !dbg !6578
  ret ptr %1, !dbg !6579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_get_parent(ptr noundef %ns) #0 align 16 !dbg !6580 {
entry:
  %retval = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %active = alloca ptr, align 8
  %pid_ns = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6582, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 8, ptr %active) #12, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %active, metadata !6583, metadata !DIExpression()), !dbg !6588
  %call = call ptr @get_current() #11, !dbg !6589
  %call1 = call ptr @task_active_pid_ns(ptr noundef %call) #11, !dbg !6590
  store ptr %call1, ptr %active, align 8, !dbg !6588
  call void @llvm.lifetime.start.p0(i64 8, ptr %pid_ns) #12, !dbg !6591
  call void @llvm.dbg.declare(metadata ptr %pid_ns, metadata !6584, metadata !DIExpression()), !dbg !6592
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6591
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6585, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6594
  %call2 = call ptr @to_pid_ns(ptr noundef %0) #11, !dbg !6595
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %call2, i32 0, i32 6, !dbg !6596
  %1 = load ptr, ptr %parent, align 8, !dbg !6596
  store ptr %1, ptr %p, align 8, !dbg !6597
  store ptr %1, ptr %pid_ns, align 8, !dbg !6598
  br label %for.cond, !dbg !6599

for.cond:                                         ; preds = %if.end5, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !6600
  %tobool = icmp ne ptr %2, null, !dbg !6600
  br i1 %tobool, label %if.end, label %if.then, !dbg !6605

if.then:                                          ; preds = %for.cond
  %call3 = call ptr @ERR_PTR(i64 noundef -1) #11, !dbg !6606
  store ptr %call3, ptr %retval, align 8, !dbg !6607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6607

if.end:                                           ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !6608
  %4 = load ptr, ptr %active, align 8, !dbg !6610
  %cmp = icmp eq ptr %3, %4, !dbg !6611
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6612

if.then4:                                         ; preds = %if.end
  br label %for.end, !dbg !6613

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %p, align 8, !dbg !6614
  %parent6 = getelementptr inbounds %struct.pid_namespace, ptr %5, i32 0, i32 6, !dbg !6615
  %6 = load ptr, ptr %parent6, align 8, !dbg !6615
  store ptr %6, ptr %p, align 8, !dbg !6616
  br label %for.cond, !dbg !6617, !llvm.loop !6618

for.end:                                          ; preds = %if.then4
  %7 = load ptr, ptr %pid_ns, align 8, !dbg !6621
  %call7 = call ptr @get_pid_ns(ptr noundef %7) #11, !dbg !6622
  %ns8 = getelementptr inbounds %struct.pid_namespace, ptr %call7, i32 0, i32 11, !dbg !6623
  store ptr %ns8, ptr %retval, align 8, !dbg !6624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6624

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6625
  call void @llvm.lifetime.end.p0(i64 8, ptr %pid_ns) #12, !dbg !6625
  call void @llvm.lifetime.end.p0(i64 8, ptr %active) #12, !dbg !6625
  %8 = load ptr, ptr %retval, align 8, !dbg !6625
  ret ptr %8, !dbg !6625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_for_children_get(ptr noundef %task) #0 align 16 !dbg !6626 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #12, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6629, metadata !DIExpression()), !dbg !6632
  store ptr null, ptr %ns, align 8, !dbg !6632
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6633
  call void @task_lock(ptr noundef %0) #11, !dbg !6634
  %1 = load ptr, ptr %task.addr, align 8, !dbg !6635
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !6637
  %2 = load ptr, ptr %nsproxy, align 8, !dbg !6637
  %tobool = icmp ne ptr %2, null, !dbg !6635
  br i1 %tobool, label %if.then, label %if.end, !dbg !6638

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %task.addr, align 8, !dbg !6639
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103, !dbg !6641
  %4 = load ptr, ptr %nsproxy1, align 8, !dbg !6641
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 4, !dbg !6642
  %5 = load ptr, ptr %pid_ns_for_children, align 8, !dbg !6642
  store ptr %5, ptr %ns, align 8, !dbg !6643
  %6 = load ptr, ptr %ns, align 8, !dbg !6644
  %call = call ptr @get_pid_ns(ptr noundef %6) #11, !dbg !6645
  br label %if.end, !dbg !6646

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %task.addr, align 8, !dbg !6647
  call void @task_unlock(ptr noundef %7) #11, !dbg !6648
  %8 = load ptr, ptr %ns, align 8, !dbg !6649
  %tobool2 = icmp ne ptr %8, null, !dbg !6649
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !6651

if.then3:                                         ; preds = %if.end
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #11, !dbg !6652
  %9 = load ptr, ptr %ns, align 8, !dbg !6654
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %9, i32 0, i32 3, !dbg !6656
  %10 = load ptr, ptr %child_reaper, align 8, !dbg !6656
  %tobool4 = icmp ne ptr %10, null, !dbg !6654
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6657

if.then5:                                         ; preds = %if.then3
  %11 = load ptr, ptr %ns, align 8, !dbg !6658
  call void @put_pid_ns(ptr noundef %11) #11, !dbg !6660
  store ptr null, ptr %ns, align 8, !dbg !6661
  br label %if.end6, !dbg !6662

if.end6:                                          ; preds = %if.then5, %if.then3
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #11, !dbg !6663
  br label %if.end7, !dbg !6664

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load ptr, ptr %ns, align 8, !dbg !6665
  %tobool8 = icmp ne ptr %12, null, !dbg !6665
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !6665

cond.true:                                        ; preds = %if.end7
  %13 = load ptr, ptr %ns, align 8, !dbg !6666
  %ns9 = getelementptr inbounds %struct.pid_namespace, ptr %13, i32 0, i32 11, !dbg !6667
  br label %cond.end, !dbg !6665

cond.false:                                       ; preds = %if.end7
  br label %cond.end, !dbg !6665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns9, %cond.true ], [ null, %cond.false ], !dbg !6665
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #12, !dbg !6668
  ret ptr %cond, !dbg !6669
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pid_namespace__322_483_pid_namespaces_init6() #7 section ".init.text" align 16 !dbg !6670 {
entry:
  %call = call i32 @pid_namespaces_init() #15, !dbg !6671
  ret i32 %call, !dbg !6671
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pid_namespaces_init() #7 section ".init.text" align 16 !dbg !6672 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.3, i32 noundef 144, i32 noundef 8, i32 noundef 262144, ptr noundef null) #11, !dbg !6673
  store ptr %call, ptr @pid_ns_cachep, align 8, !dbg !6674
  call void @register_pid_ns_sysctl_table_vm() #11, !dbg !6675
  ret i32 0, !dbg !6676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !6677 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6681, metadata !DIExpression()), !dbg !6682
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6683
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #11, !dbg !6684
  ret void, !dbg !6685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !6686 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6690, metadata !DIExpression()), !dbg !6692
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6694
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6695
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6696
  ret void, !dbg !6697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !6698 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6702, metadata !DIExpression()), !dbg !6706
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6703, metadata !DIExpression()), !dbg !6707
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6704, metadata !DIExpression()), !dbg !6708
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6705, metadata !DIExpression()), !dbg !6710
  %0 = load i32, ptr %i.addr, align 4, !dbg !6711
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6712
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6713
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #11, !dbg !6714
  store i32 %call, ptr %old, align 4, !dbg !6710
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6715
  %tobool = icmp ne ptr %2, null, !dbg !6715
  br i1 %tobool, label %if.then, label %if.end, !dbg !6717

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6718
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6719
  store i32 %3, ptr %4, align 4, !dbg !6720
  br label %if.end, !dbg !6721

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6722
  %tobool1 = icmp ne i32 %5, 0, !dbg !6722
  %lnot = xor i1 %tobool1, true, !dbg !6722
  %lnot2 = xor i1 %lnot, true, !dbg !6722
  %lnot3 = xor i1 %lnot2, true, !dbg !6722
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6722
  %conv = sext i32 %lnot.ext to i64, !dbg !6722
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6722
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6722
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6724

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6725
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #11, !dbg !6726
  br label %if.end18, !dbg !6726

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6727
  %cmp = icmp slt i32 %7, 0, !dbg !6727
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6727

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6727
  %9 = load i32, ptr %i.addr, align 4, !dbg !6727
  %add = add i32 %8, %9, !dbg !6727
  %cmp7 = icmp slt i32 %add, 0, !dbg !6727
  br label %lor.end, !dbg !6727

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6727
  %lnot11 = xor i1 %lnot9, true, !dbg !6727
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6727
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6727
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6727
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6727
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6729

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6730
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #11, !dbg !6731
  br label %if.end17, !dbg !6731

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !6732
  ret void, !dbg !6732
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6733 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6739, metadata !DIExpression()), !dbg !6741
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6740, metadata !DIExpression()), !dbg !6742
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6743
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6744
  %1 = load i32, ptr %i.addr, align 4, !dbg !6745
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6746
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #11, !dbg !6747
  ret i32 %call, !dbg !6748
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6749 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6752 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6756, metadata !DIExpression()), !dbg !6758
  %0 = load i32, ptr %i.addr, align 4, !dbg !6759
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6760
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #11, !dbg !6761
  ret i32 %call, !dbg !6762
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6763 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6766, metadata !DIExpression()), !dbg !6770
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6767, metadata !DIExpression()), !dbg !6771
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6768, metadata !DIExpression()), !dbg !6772
  %0 = load i32, ptr %i.addr, align 4, !dbg !6772
  store i32 %0, ptr %__ret, align 4, !dbg !6772
  %1 = load i32, ptr %__ret, align 4, !dbg !6772
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6772
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6772
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !6772, !srcloc !6773
  store i32 %3, ptr %__ret, align 4, !dbg !6772
  %4 = load i32, ptr %__ret, align 4, !dbg !6772
  store i32 %4, ptr %tmp, align 4, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !6774
  %5 = load i32, ptr %tmp, align 4, !dbg !6772
  ret i32 %5, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_userns(ptr noundef %ancestor, ptr noundef %child) #2 align 16 !dbg !6776 {
entry:
  %ancestor.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  store ptr %ancestor, ptr %ancestor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ancestor.addr, metadata !6782, metadata !DIExpression()), !dbg !6784
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !6783, metadata !DIExpression()), !dbg !6785
  ret i1 true, !dbg !6786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @inc_pid_namespaces(ptr noundef %ns) #0 align 16 !dbg !6787 {
entry:
  %ns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6791, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6793
  br label %do.body, !dbg !6794

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6797

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #11, !dbg !6794
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6794
  %1 = load ptr, ptr %cred, align 32, !dbg !6794
  store ptr %1, ptr %tmp, align 8, !dbg !6797
  %2 = load ptr, ptr %tmp, align 8, !dbg !6794
  %euid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 5, !dbg !6799
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !6799
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6800
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !6800
  %call1 = call ptr @inc_ucount(ptr noundef %0, i32 %3, i32 noundef 1) #11, !dbg !6800
  ret ptr %call1, !dbg !6801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #2 align 16 !dbg !6802 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %k.addr, align 8, !dbg !6811
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6812
  %or = or i32 %1, 256, !dbg !6813
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #11, !dbg !6814
  ret ptr %call, !dbg !6815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idr_init(ptr noundef %idr) #2 align 16 !dbg !6816 {
entry:
  %idr.addr = alloca ptr, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !6820, metadata !DIExpression()), !dbg !6821
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !6822
  call void @idr_init_base(ptr noundef %0, i32 noundef 0) #11, !dbg !6823
  ret void, !dbg !6824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @create_pid_cachep(i32 noundef %level) #0 align 16 !dbg !6825 {
entry:
  %retval = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %pkc = alloca ptr, align 8
  %kc = alloca ptr, align 8
  %name = alloca [15 x i8], align 1
  %len = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp13 = alloca ptr, align 8
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !6829, metadata !DIExpression()), !dbg !6838
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkc) #12, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %pkc, metadata !6830, metadata !DIExpression()), !dbg !6840
  %0 = load i32, ptr %level.addr, align 4, !dbg !6841
  %sub = sub i32 %0, 1, !dbg !6842
  %idxprom = zext i32 %sub to i64, !dbg !6843
  %arrayidx = getelementptr [32 x ptr], ptr @pid_cache, i64 0, i64 %idxprom, !dbg !6843
  store ptr %arrayidx, ptr %pkc, align 8, !dbg !6840
  call void @llvm.lifetime.start.p0(i64 8, ptr %kc) #12, !dbg !6844
  call void @llvm.dbg.declare(metadata ptr %kc, metadata !6832, metadata !DIExpression()), !dbg !6845
  call void @llvm.lifetime.start.p0(i64 15, ptr %name) #12, !dbg !6846
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6833, metadata !DIExpression()), !dbg !6847
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !6848
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6837, metadata !DIExpression()), !dbg !6849
  br label %do.body, !dbg !6850

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6852

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6852

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pkc, align 8, !dbg !6850
  %2 = load volatile ptr, ptr %1, align 8, !dbg !6850
  store ptr %2, ptr %tmp, align 8, !dbg !6852
  %3 = load ptr, ptr %tmp, align 8, !dbg !6850
  store ptr %3, ptr %kc, align 8, !dbg !6854
  %4 = load ptr, ptr %kc, align 8, !dbg !6855
  %tobool = icmp ne ptr %4, null, !dbg !6855
  br i1 %tobool, label %if.then, label %if.end, !dbg !6857

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %kc, align 8, !dbg !6858
  store ptr %5, ptr %retval, align 8, !dbg !6859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6859

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [15 x i8], ptr %name, i64 0, i64 0, !dbg !6860
  %6 = load i32, ptr %level.addr, align 4, !dbg !6861
  %add = add i32 %6, 1, !dbg !6862
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 15, ptr noundef @.str.2, i32 noundef %add) #11, !dbg !6863
  %7 = load i32, ptr %level.addr, align 4, !dbg !6864
  %add1 = add i32 %7, 1, !dbg !6864
  %conv = zext i32 %add1 to i64, !dbg !6864
  %call2 = call i64 @size_mul(i64 noundef %conv, i64 noundef 16) #11, !dbg !6864
  %call3 = call i64 @size_add(i64 noundef 96, i64 noundef %call2) #11, !dbg !6864
  %conv4 = trunc i64 %call3 to i32, !dbg !6864
  store i32 %conv4, ptr %len, align 4, !dbg !6865
  call void @mutex_lock(ptr noundef @pid_caches_mutex) #11, !dbg !6866
  %8 = load ptr, ptr %pkc, align 8, !dbg !6867
  %9 = load ptr, ptr %8, align 8, !dbg !6869
  %tobool5 = icmp ne ptr %9, null, !dbg !6869
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !6870

if.then6:                                         ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [15 x i8], ptr %name, i64 0, i64 0, !dbg !6871
  %10 = load i32, ptr %len, align 4, !dbg !6872
  %call8 = call ptr @kmem_cache_create(ptr noundef %arraydecay7, i32 noundef %10, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11, !dbg !6873
  %11 = load ptr, ptr %pkc, align 8, !dbg !6874
  store ptr %call8, ptr %11, align 8, !dbg !6875
  br label %if.end9, !dbg !6876

if.end9:                                          ; preds = %if.then6, %if.end
  call void @mutex_unlock(ptr noundef @pid_caches_mutex) #11, !dbg !6877
  br label %do.body10, !dbg !6878

do.body10:                                        ; preds = %if.end9
  br label %do.cond11, !dbg !6880

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6880

do.end12:                                         ; preds = %do.cond11
  %12 = load ptr, ptr %pkc, align 8, !dbg !6878
  %13 = load volatile ptr, ptr %12, align 8, !dbg !6878
  store ptr %13, ptr %tmp13, align 8, !dbg !6880
  %14 = load ptr, ptr %tmp13, align 8, !dbg !6878
  store ptr %14, ptr %retval, align 8, !dbg !6882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6882

cleanup:                                          ; preds = %do.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !6883
  call void @llvm.lifetime.end.p0(i64 15, ptr %name) #12, !dbg !6883
  call void @llvm.lifetime.end.p0(i64 8, ptr %kc) #12, !dbg !6883
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkc) #12, !dbg !6883
  %15 = load ptr, ptr %retval, align 8, !dbg !6883
  ret ptr %15, !dbg !6883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ns_alloc_inum(ptr noundef %ns) #2 align 16 !dbg !6884 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6888, metadata !DIExpression()), !dbg !6889
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6890
  %stashed = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 0, !dbg !6891
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #11, !dbg !6892
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !6893
  %inum = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2, !dbg !6894
  %call = call i32 @proc_alloc_inum(ptr noundef %inum) #11, !dbg !6895
  ret i32 %call, !dbg !6896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #2 align 16 !dbg !6897 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6901, metadata !DIExpression()), !dbg !6903
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6902, metadata !DIExpression()), !dbg !6904
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6905
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6906
  %1 = load i32, ptr %n.addr, align 4, !dbg !6907
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #11, !dbg !6908
  ret void, !dbg !6909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #2 align 16 !dbg !6910 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6914, metadata !DIExpression()), !dbg !6915
  ret ptr @init_user_ns, !dbg !6916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pidns_memfd_noexec_scope(ptr noundef %ns) #2 align 16 !dbg !6917 {
entry:
  %ns.addr = alloca ptr, align 8
  %scope = alloca i32, align 4
  %__UNIQUE_ID___x281 = alloca i32, align 4
  %__UNIQUE_ID___y282 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6921, metadata !DIExpression()), !dbg !6928
  call void @llvm.lifetime.start.p0(i64 4, ptr %scope) #12, !dbg !6929
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !6922, metadata !DIExpression()), !dbg !6930
  store i32 0, ptr %scope, align 4, !dbg !6930
  br label %for.cond, !dbg !6931

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6932
  %tobool = icmp ne ptr %0, null, !dbg !6933
  br i1 %tobool, label %for.body, label %for.end, !dbg !6933

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x281) #12, !dbg !6934
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x281, metadata !6923, metadata !DIExpression()), !dbg !6934
  %1 = load i32, ptr %scope, align 4, !dbg !6934
  store i32 %1, ptr %__UNIQUE_ID___x281, align 4, !dbg !6934
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y282) #12, !dbg !6934
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y282, metadata !6927, metadata !DIExpression()), !dbg !6934
  br label %do.body, !dbg !6935

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !6937

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6937

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !6935
  %memfd_noexec_scope = getelementptr inbounds %struct.pid_namespace, ptr %2, i32 0, i32 12, !dbg !6935
  %3 = load volatile i32, ptr %memfd_noexec_scope, align 8, !dbg !6935
  store i32 %3, ptr %tmp, align 4, !dbg !6937
  %4 = load i32, ptr %tmp, align 4, !dbg !6935
  store i32 %4, ptr %__UNIQUE_ID___y282, align 4, !dbg !6934
  %5 = load i32, ptr %__UNIQUE_ID___x281, align 4, !dbg !6934
  %6 = load i32, ptr %__UNIQUE_ID___y282, align 4, !dbg !6934
  %cmp = icmp sgt i32 %5, %6, !dbg !6934
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6934

cond.true:                                        ; preds = %do.end
  %7 = load i32, ptr %__UNIQUE_ID___x281, align 4, !dbg !6934
  br label %cond.end, !dbg !6934

cond.false:                                       ; preds = %do.end
  %8 = load i32, ptr %__UNIQUE_ID___y282, align 4, !dbg !6934
  br label %cond.end, !dbg !6934

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !6934
  store i32 %cond, ptr %tmp1, align 4, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y282) #12, !dbg !6939
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x281) #12, !dbg !6939
  %9 = load i32, ptr %tmp1, align 4, !dbg !6934
  store i32 %9, ptr %scope, align 4, !dbg !6940
  br label %for.inc, !dbg !6941

for.inc:                                          ; preds = %cond.end
  %10 = load ptr, ptr %ns.addr, align 8, !dbg !6942
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %10, i32 0, i32 6, !dbg !6943
  %11 = load ptr, ptr %parent, align 8, !dbg !6943
  store ptr %11, ptr %ns.addr, align 8, !dbg !6944
  br label %for.cond, !dbg !6945, !llvm.loop !6946

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %scope, align 4, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 4, ptr %scope) #12, !dbg !6949
  ret i32 %12, !dbg !6950
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @idr_destroy(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_pid_namespaces(ptr noundef %ucounts) #0 align 16 !dbg !6955 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !6959, metadata !DIExpression()), !dbg !6960
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !6961
  call void @dec_ucount(ptr noundef %0, i32 noundef 1) #11, !dbg !6962
  ret void, !dbg !6963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6964 dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6967 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idr_init_base(ptr noundef %idr, i32 noundef %base) #2 align 16 !dbg !6968 {
entry:
  %idr.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !6976
  %idr_rt = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 0, !dbg !6976
  call void @xa_init_flags(ptr noundef %idr_rt, i32 noundef 67108868) #11, !dbg !6976
  %1 = load i32, ptr %base.addr, align 4, !dbg !6977
  %2 = load ptr, ptr %idr.addr, align 8, !dbg !6978
  %idr_base = getelementptr inbounds %struct.idr, ptr %2, i32 0, i32 1, !dbg !6979
  store i32 %1, ptr %idr_base, align 8, !dbg !6980
  %3 = load ptr, ptr %idr.addr, align 8, !dbg !6981
  %idr_next = getelementptr inbounds %struct.idr, ptr %3, i32 0, i32 2, !dbg !6982
  store i32 0, ptr %idr_next, align 4, !dbg !6983
  ret void, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #2 align 16 !dbg !6985 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6991, metadata !DIExpression()), !dbg !6993
  br label %do.body, !dbg !6994

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !6995
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !6995
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #11, !dbg !6995
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !6995
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !6995
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6995
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !6995
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6995
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6995
  store i32 0, ptr %counter, align 4, !dbg !6995
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6995
  br label %do.end, !dbg !6995

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6997
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !6998
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !6999
  store i32 %4, ptr %xa_flags, align 4, !dbg !7000
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !7001
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !7002
  store ptr null, ptr %xa_head, align 8, !dbg !7003
  ret void, !dbg !7004
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !7005 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7010, metadata !DIExpression()), !dbg !7011
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7012
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7013
  ret ptr %1, !dbg !7014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7015 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #2 align 16 !dbg !7019 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !7024, metadata !DIExpression()), !dbg !7027
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !7025, metadata !DIExpression()), !dbg !7028
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #12, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7026, metadata !DIExpression()), !dbg !7030
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !7031
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !7031
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !7031
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7031
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7031
  store i64 %4, ptr %bytes, align 8, !dbg !7031
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #11, !dbg !7031
  br i1 %call, label %if.then, label %if.end, !dbg !7033

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !7034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7034

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !7035
  store i64 %5, ptr %retval, align 8, !dbg !7036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7036

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #12, !dbg !7037
  %6 = load i64, ptr %retval, align 8, !dbg !7037
  ret i64 %6, !dbg !7037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #2 align 16 !dbg !7038 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !7040, metadata !DIExpression()), !dbg !7043
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !7041, metadata !DIExpression()), !dbg !7044
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #12, !dbg !7045
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7042, metadata !DIExpression()), !dbg !7046
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !7047
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !7047
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !7047
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7047
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7047
  store i64 %4, ptr %bytes, align 8, !dbg !7047
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #11, !dbg !7047
  br i1 %call, label %if.then, label %if.end, !dbg !7049

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !7050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7050

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !7051
  store i64 %5, ptr %retval, align 8, !dbg !7052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7052

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #12, !dbg !7053
  %6 = load i64, ptr %retval, align 8, !dbg !7053
  ret i64 %6, !dbg !7053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7054 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7058 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7061 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !7062 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !7066, metadata !DIExpression()), !dbg !7067
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !7068, !range !7069, !noundef !728
  %tobool = trunc i8 %0 to i1, !dbg !7068
  %lnot = xor i1 %tobool, true, !dbg !7068
  %lnot1 = xor i1 %lnot, true, !dbg !7068
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7068
  %conv = sext i32 %lnot.ext to i64, !dbg !7068
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7068
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7068
  ret i1 %tobool2, !dbg !7070
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7071 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7075, metadata !DIExpression()), !dbg !7077
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7076, metadata !DIExpression()), !dbg !7078
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7079
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #11, !dbg !7080
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7081
  %2 = load i64, ptr %i.addr, align 8, !dbg !7082
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #11, !dbg !7083
  ret void, !dbg !7084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7085 dso_local i32 @proc_alloc_inum(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7088 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7090, metadata !DIExpression()), !dbg !7092
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7091, metadata !DIExpression()), !dbg !7093
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7094
  %1 = load i64, ptr %size.addr, align 8, !dbg !7095
  %conv = trunc i64 %1 to i32, !dbg !7095
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !7096
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7097
  %3 = load i64, ptr %size.addr, align 8, !dbg !7097
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !7097
  ret void, !dbg !7098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7099 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7101, metadata !DIExpression()), !dbg !7103
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7102, metadata !DIExpression()), !dbg !7104
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7105
  %1 = load i64, ptr %i.addr, align 8, !dbg !7106
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #11, !dbg !7107
  ret void, !dbg !7108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !7109 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7114, metadata !DIExpression()), !dbg !7116
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7115, metadata !DIExpression()), !dbg !7117
  ret i1 true, !dbg !7118
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !7119 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7124, metadata !DIExpression()), !dbg !7127
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7125, metadata !DIExpression()), !dbg !7128
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7126, metadata !DIExpression()), !dbg !7129
  ret void, !dbg !7130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7131 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7136, metadata !DIExpression()), !dbg !7138
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7137, metadata !DIExpression()), !dbg !7139
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7140
  %1 = load i64, ptr %i.addr, align 8, !dbg !7141
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #11, !dbg !7142
  ret void, !dbg !7143
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7144 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7147, metadata !DIExpression()), !dbg !7149
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7148, metadata !DIExpression()), !dbg !7150
  br label %do.body, !dbg !7151

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !7152
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7152
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !7152
  store volatile i64 %0, ptr %counter, align 8, !dbg !7152
  br label %do.end, !dbg !7152

do.end:                                           ; preds = %do.body
  ret void, !dbg !7154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !7155 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7159, metadata !DIExpression()), !dbg !7161
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7160, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7163
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #11, !dbg !7164
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7165
  %2 = load i32, ptr %i.addr, align 4, !dbg !7166
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #11, !dbg !7167
  ret void, !dbg !7168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !7169 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7172, metadata !DIExpression()), !dbg !7174
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7175
  %1 = load i32, ptr %i.addr, align 4, !dbg !7176
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #11, !dbg !7177
  ret void, !dbg !7178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !7179 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7181, metadata !DIExpression()), !dbg !7183
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7182, metadata !DIExpression()), !dbg !7184
  br label %do.body, !dbg !7185

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7186
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7186
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7186
  store volatile i32 %0, ptr %counter, align 4, !dbg !7186
  br label %do.end, !dbg !7186

do.end:                                           ; preds = %do.body
  ret void, !dbg !7188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7189 dso_local void @dec_ucount(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !7192 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7196, metadata !DIExpression()), !dbg !7198
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7197, metadata !DIExpression()), !dbg !7199
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7200
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7201
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !7202
  ret i1 %call, !dbg !7203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !7204 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7208, metadata !DIExpression()), !dbg !7212
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7209, metadata !DIExpression()), !dbg !7213
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7210, metadata !DIExpression()), !dbg !7214
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7211, metadata !DIExpression()), !dbg !7216
  %0 = load i32, ptr %i.addr, align 4, !dbg !7217
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7218
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7219
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #11, !dbg !7220
  store i32 %call, ptr %old, align 4, !dbg !7216
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7221
  %tobool = icmp ne ptr %2, null, !dbg !7221
  br i1 %tobool, label %if.then, label %if.end, !dbg !7223

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7224
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7225
  store i32 %3, ptr %4, align 4, !dbg !7226
  br label %if.end, !dbg !7227

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7228
  %6 = load i32, ptr %i.addr, align 4, !dbg !7230
  %cmp = icmp eq i32 %5, %6, !dbg !7231
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7232

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7233

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7235

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7237

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7237

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7235

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7239

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7241

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7241

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7239, !srcloc !7243
  br label %do.cond7, !dbg !7239

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7239

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7235

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7235

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7244

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7245
  %cmp12 = icmp slt i32 %7, 0, !dbg !7245
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7245

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7245
  %9 = load i32, ptr %i.addr, align 4, !dbg !7245
  %sub = sub i32 %8, %9, !dbg !7245
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7245
  br label %lor.end, !dbg !7245

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7245
  %lnot14 = xor i1 %lnot, true, !dbg !7245
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7245
  %conv = sext i32 %lnot.ext to i64, !dbg !7245
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7245
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7245
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7247

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7248
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #11, !dbg !7249
  br label %if.end17, !dbg !7249

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7250

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !7251
  %12 = load i1, ptr %retval, align 1, !dbg !7251
  ret i1 %12, !dbg !7251
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !7252 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7254, metadata !DIExpression()), !dbg !7256
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7255, metadata !DIExpression()), !dbg !7257
  br label %do.body, !dbg !7258

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7259

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7261
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !7262
  %1 = load i32, ptr %i.addr, align 4, !dbg !7263
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7264
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #11, !dbg !7265
  ret i32 %call, !dbg !7266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !7267 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7269, metadata !DIExpression()), !dbg !7271
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7270, metadata !DIExpression()), !dbg !7272
  %0 = load i32, ptr %i.addr, align 4, !dbg !7273
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7274
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #11, !dbg !7275
  ret i32 %call, !dbg !7276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !7277 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7279, metadata !DIExpression()), !dbg !7283
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7280, metadata !DIExpression()), !dbg !7284
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !7285
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7281, metadata !DIExpression()), !dbg !7285
  %0 = load i32, ptr %i.addr, align 4, !dbg !7285
  %sub = sub i32 0, %0, !dbg !7285
  store i32 %sub, ptr %__ret, align 4, !dbg !7285
  %1 = load i32, ptr %__ret, align 4, !dbg !7285
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7285
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7285
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !7285, !srcloc !7286
  store i32 %3, ptr %__ret, align 4, !dbg !7285
  %4 = load i32, ptr %__ret, align 4, !dbg !7285
  store i32 %4, ptr %tmp, align 4, !dbg !7285
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !7287
  %5 = load i32, ptr %tmp, align 4, !dbg !7285
  ret i32 %5, !dbg !7288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7289 dso_local void @proc_free_inum(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7292 dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayed_free_pidns(ptr noundef %p) #0 align 16 !dbg !7296 {
entry:
  %p.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7298, metadata !DIExpression()), !dbg !7302
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #12, !dbg !7303
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !7299, metadata !DIExpression()), !dbg !7304
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !7305
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7300, metadata !DIExpression()), !dbg !7305
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7305
  store ptr %0, ptr %__mptr, align 8, !dbg !7305
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7305
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !7305
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !7306
  %2 = load ptr, ptr %tmp, align 8, !dbg !7305
  store ptr %2, ptr %ns, align 8, !dbg !7304
  %3 = load ptr, ptr %ns, align 8, !dbg !7307
  %ucounts = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 9, !dbg !7308
  %4 = load ptr, ptr %ucounts, align 8, !dbg !7308
  call void @dec_pid_namespaces(ptr noundef %4) #11, !dbg !7309
  %5 = load ptr, ptr %ns, align 8, !dbg !7310
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %5, i32 0, i32 8, !dbg !7311
  %6 = load ptr, ptr %user_ns, align 8, !dbg !7311
  call void @put_user_ns(ptr noundef %6) #11, !dbg !7312
  %7 = load ptr, ptr @pid_ns_cachep, align 8, !dbg !7313
  %8 = load ptr, ptr %ns, align 8, !dbg !7314
  call void @kmem_cache_free(ptr noundef %7, ptr noundef %8) #11, !dbg !7315
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #12, !dbg !7316
  ret void, !dbg !7316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #2 align 16 !dbg !7317 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !7321, metadata !DIExpression()), !dbg !7322
  ret void, !dbg !7323
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7324 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7328 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7329 dso_local void @__rcu_read_lock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #2 align 16 !dbg !7330 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !7335, metadata !DIExpression()), !dbg !7338
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !7336, metadata !DIExpression()), !dbg !7339
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #12, !dbg !7340
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !7337, metadata !DIExpression()), !dbg !7341
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !7342
  %sub = sub i32 %0, 1, !dbg !7343
  %conv = sext i32 %sub to i64, !dbg !7342
  store i64 %conv, ptr %sig, align 8, !dbg !7341
  %1 = load ptr, ptr %set.addr, align 8, !dbg !7344
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !7346
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !7344
  %2 = load i64, ptr %arrayidx, align 8, !dbg !7344
  %3 = load i64, ptr %sig, align 8, !dbg !7347
  %shr = lshr i64 %2, %3, !dbg !7348
  %and = and i64 1, %shr, !dbg !7349
  %conv2 = trunc i64 %and to i32, !dbg !7350
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #12, !dbg !7351
  ret i32 %conv2, !dbg !7352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7353 dso_local void @__rcu_read_unlock() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7354 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7361, metadata !DIExpression()), !dbg !7363
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7362, metadata !DIExpression()), !dbg !7364
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7365
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7366
  %div = sdiv i64 %1, 64, !dbg !7366
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7367
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !7368
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7369
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7370
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7371
  ret void, !dbg !7372
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7373 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7376, metadata !DIExpression()), !dbg !7378
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7377, metadata !DIExpression()), !dbg !7379
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7380
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7382
  br i1 %1, label %if.then, label %if.else, !dbg !7383

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7384
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7384
  %shr = ashr i64 %3, 3, !dbg !7384
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7384
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7386
  %and = and i64 %4, 7, !dbg !7386
  %sh_prom = trunc i64 %and to i32, !dbg !7386
  %shl = shl i32 1, %sh_prom, !dbg !7386
  %not = xor i32 %shl, -1, !dbg !7387
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #12, !dbg !7388, !srcloc !7389
  br label %if.end, !dbg !7390

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7391
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7393
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !7394, !srcloc !7395
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7396
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pid_ns(ptr noundef %ns) #2 align 16 !dbg !7397 {
entry:
  %ns.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !7401, metadata !DIExpression()), !dbg !7404
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !7405
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7402, metadata !DIExpression()), !dbg !7405
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !7405
  store ptr %0, ptr %__mptr, align 8, !dbg !7405
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7405
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !7405
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !7406
  %2 = load ptr, ptr %tmp, align 8, !dbg !7405
  ret ptr %2, !dbg !7407
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7408 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #2 align 16 !dbg !7411 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7413, metadata !DIExpression()), !dbg !7414
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7415
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !7416
  call void @spin_lock(ptr noundef %alloc_lock) #11, !dbg !7417
  ret void, !dbg !7418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #2 align 16 !dbg !7419 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7421, metadata !DIExpression()), !dbg !7422
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7423
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !7424
  call void @spin_unlock(ptr noundef %alloc_lock) #11, !dbg !7425
  ret void, !dbg !7426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !7427 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7429, metadata !DIExpression()), !dbg !7430
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7431
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7431
  call void @_raw_spin_lock(ptr noundef %1) #11, !dbg !7431
  ret void, !dbg !7432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7433 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !7434 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7436, metadata !DIExpression()), !dbg !7437
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7438
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7438
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !7438
  ret void, !dbg !7439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7440 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @register_pid_ns_sysctl_table_vm() #2 align 16 !dbg !7441 {
entry:
  %call = call ptr @register_sysctl_sz(ptr noundef @.str.4, ptr noundef @pid_ns_ctl_table_vm, i64 noundef 2) #11, !dbg !7442
  ret void, !dbg !7443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7444 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pid_mfd_noexec_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buf, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !7447 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %table_copy = alloca %struct.ctl_table, align 8
  %err = alloca i32, align 4
  %scope = alloca i32, align 4
  %parent_scope = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x315 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y316 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !7449, metadata !DIExpression()), !dbg !7462
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !7450, metadata !DIExpression()), !dbg !7463
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7451, metadata !DIExpression()), !dbg !7464
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !7452, metadata !DIExpression()), !dbg !7465
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !7453, metadata !DIExpression()), !dbg !7466
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #12, !dbg !7467
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !7454, metadata !DIExpression()), !dbg !7468
  %call = call ptr @get_current() #11, !dbg !7469
  %call1 = call ptr @task_active_pid_ns(ptr noundef %call) #11, !dbg !7470
  store ptr %call1, ptr %ns, align 8, !dbg !7468
  call void @llvm.lifetime.start.p0(i64 64, ptr %table_copy) #12, !dbg !7471
  call void @llvm.dbg.declare(metadata ptr %table_copy, metadata !7455, metadata !DIExpression()), !dbg !7472
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !7473
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7456, metadata !DIExpression()), !dbg !7474
  call void @llvm.lifetime.start.p0(i64 4, ptr %scope) #12, !dbg !7473
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !7457, metadata !DIExpression()), !dbg !7475
  call void @llvm.lifetime.start.p0(i64 4, ptr %parent_scope) #12, !dbg !7473
  call void @llvm.dbg.declare(metadata ptr %parent_scope, metadata !7458, metadata !DIExpression()), !dbg !7476
  %0 = load i32, ptr %write.addr, align 4, !dbg !7477
  %tobool = icmp ne i32 %0, 0, !dbg !7477
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7479

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %ns, align 8, !dbg !7480
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 8, !dbg !7481
  %2 = load ptr, ptr %user_ns, align 8, !dbg !7481
  %call2 = call zeroext i1 @ns_capable(ptr noundef %2, i32 noundef 21) #11, !dbg !7482
  br i1 %call2, label %if.end, label %if.then, !dbg !7483

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !7484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7484

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %table.addr, align 8, !dbg !7485
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %table_copy, ptr align 8 %3, i64 64, i1 false), !dbg !7486
  %4 = load ptr, ptr %ns, align 8, !dbg !7487
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %4, i32 0, i32 6, !dbg !7488
  %5 = load ptr, ptr %parent, align 8, !dbg !7488
  %call3 = call i32 @pidns_memfd_noexec_scope(ptr noundef %5) #11, !dbg !7489
  store i32 %call3, ptr %parent_scope, align 4, !dbg !7490
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x315) #12, !dbg !7491
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x315, metadata !7459, metadata !DIExpression()), !dbg !7491
  br label %do.body, !dbg !7492

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !7494

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7494

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %ns, align 8, !dbg !7492
  %memfd_noexec_scope = getelementptr inbounds %struct.pid_namespace, ptr %6, i32 0, i32 12, !dbg !7492
  %7 = load volatile i32, ptr %memfd_noexec_scope, align 8, !dbg !7492
  store i32 %7, ptr %tmp, align 4, !dbg !7494
  %8 = load i32, ptr %tmp, align 4, !dbg !7492
  store i32 %8, ptr %__UNIQUE_ID___x315, align 4, !dbg !7491
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y316) #12, !dbg !7491
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y316, metadata !7461, metadata !DIExpression()), !dbg !7491
  %9 = load i32, ptr %parent_scope, align 4, !dbg !7491
  store i32 %9, ptr %__UNIQUE_ID___y316, align 4, !dbg !7491
  %10 = load i32, ptr %__UNIQUE_ID___x315, align 4, !dbg !7491
  %11 = load i32, ptr %__UNIQUE_ID___y316, align 4, !dbg !7491
  %cmp = icmp sgt i32 %10, %11, !dbg !7491
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7491

cond.true:                                        ; preds = %do.end
  %12 = load i32, ptr %__UNIQUE_ID___x315, align 4, !dbg !7491
  br label %cond.end, !dbg !7491

cond.false:                                       ; preds = %do.end
  %13 = load i32, ptr %__UNIQUE_ID___y316, align 4, !dbg !7491
  br label %cond.end, !dbg !7491

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !7491
  store i32 %cond, ptr %tmp4, align 4, !dbg !7491
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y316) #12, !dbg !7496
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x315) #12, !dbg !7496
  %14 = load i32, ptr %tmp4, align 4, !dbg !7491
  store i32 %14, ptr %scope, align 4, !dbg !7497
  %data = getelementptr inbounds %struct.ctl_table, ptr %table_copy, i32 0, i32 1, !dbg !7498
  store ptr %scope, ptr %data, align 8, !dbg !7499
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table_copy, i32 0, i32 7, !dbg !7500
  store ptr %parent_scope, ptr %extra1, align 8, !dbg !7501
  %15 = load i32, ptr %write.addr, align 4, !dbg !7502
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !7503
  %17 = load ptr, ptr %lenp.addr, align 8, !dbg !7504
  %18 = load ptr, ptr %ppos.addr, align 8, !dbg !7505
  %call5 = call i32 @proc_dointvec_minmax(ptr noundef %table_copy, i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18) #11, !dbg !7506
  store i32 %call5, ptr %err, align 4, !dbg !7507
  %19 = load i32, ptr %err, align 4, !dbg !7508
  %tobool6 = icmp ne i32 %19, 0, !dbg !7508
  br i1 %tobool6, label %if.end20, label %land.lhs.true7, !dbg !7510

land.lhs.true7:                                   ; preds = %cond.end
  %20 = load i32, ptr %write.addr, align 4, !dbg !7511
  %tobool8 = icmp ne i32 %20, 0, !dbg !7511
  br i1 %tobool8, label %if.then9, label %if.end20, !dbg !7512

if.then9:                                         ; preds = %land.lhs.true7
  br label %do.body10, !dbg !7513

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !7514

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !7516

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7516

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !7514

do.body14:                                        ; preds = %do.end13
  %21 = load i32, ptr %scope, align 4, !dbg !7518
  %22 = load ptr, ptr %ns, align 8, !dbg !7518
  %memfd_noexec_scope15 = getelementptr inbounds %struct.pid_namespace, ptr %22, i32 0, i32 12, !dbg !7518
  store volatile i32 %21, ptr %memfd_noexec_scope15, align 8, !dbg !7518
  br label %do.cond16, !dbg !7518

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !7518

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !7514

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !7514

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !7514

if.end20:                                         ; preds = %do.end19, %land.lhs.true7, %cond.end
  %23 = load i32, ptr %err, align 4, !dbg !7520
  store i32 %23, ptr %retval, align 4, !dbg !7521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7521

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %parent_scope) #12, !dbg !7522
  call void @llvm.lifetime.end.p0(i64 4, ptr %scope) #12, !dbg !7522
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !7522
  call void @llvm.lifetime.end.p0(i64 64, ptr %table_copy) #12, !dbg !7522
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #12, !dbg !7522
  %24 = load i32, ptr %retval, align 4, !dbg !7522
  ret i32 %24, !dbg !7522
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7523 dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noredzone noreturn }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902}
!llvm.ident = !{!5903}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_put_pid_ns320", scope: !2, file: !3, line: 167, type: !163, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.pid_namespace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/pid_namespace\22 -D KBUILD_BASENAME=\22pid_namespace\22 -D KBUILD_MODNAME=\22pid_namespace\22 -D __KBUILD_MODNAME=kmod_pid_namespace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/pid_namespace.ll kernel/pid_namespace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !289, globals: !5855, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/pid_namespace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cbb54d736b40fc52095b4c1f9a96051")
!4 = !{!5, !11, !19, !35, !42, !48, !59, !65, !71, !78, !86, !94, !103, !108, !113, !119, !128, !133, !139, !146, !154, !249, !255, !262, !270, !275}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !20, line: 1325, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!22 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!23 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!24 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!25 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!26 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!27 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!28 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!29 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!30 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!31 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!32 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!33 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!34 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!39 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!40 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!41 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !43, line: 26, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!46 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!47 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !49, line: 253, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58}
!51 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!52 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!53 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!54 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!55 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!56 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!57 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!58 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !49, line: 158, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!62 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!63 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!64 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !66, line: 45, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!69 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!70 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !72, line: 487, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!75 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!76 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!77 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !79, line: 620, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!82 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!83 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!84 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!85 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !79, line: 597, baseType: !87, size: 32, elements: !88)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!90 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!91 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!92 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!93 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !72, line: 547, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102}
!96 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!97 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!98 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!99 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!100 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!101 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!102 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !72, line: 564, baseType: !7, size: 32, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!106 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!107 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !72, line: 577, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!111 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!112 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !72, line: 503, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!117 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!118 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !120, line: 593, baseType: !87, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!123 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!124 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!125 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!126 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!127 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !129, line: 2052, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!132 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !134, line: 54, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "USRQUOTA", value: 0)
!137 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!138 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !140, line: 15, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!143 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!144 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!145 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !147, line: 68, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !156, file: !155, line: 147, baseType: !7, size: 32, elements: !246)
!155 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !155, line: 135, size: 512, elements: !157)
!157 = !{!158, !162, !164, !165, !169, !170, !186, !244, !245}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !156, file: !155, line: 136, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !156, file: !155, line: 137, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !156, file: !155, line: 138, baseType: !87, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !156, file: !155, line: 139, baseType: !166, size: 16, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !167, line: 24, baseType: !168)
!167 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !155, line: 150, baseType: !154, size: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !156, file: !155, line: 151, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !155, line: 64, baseType: !173)
!173 = !DISubroutineType(types: !174)
!174 = !{!87, !175, !87, !163, !176, !182}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 61, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !179, line: 72, baseType: !180)
!179 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !179, line: 16, baseType: !181)
!181 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !167, line: 52, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !179, line: 88, baseType: !185)
!185 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !156, file: !155, line: 152, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !155, line: 117, size: 256, elements: !189)
!189 = !{!190, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !188, file: !155, line: 118, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !167, line: 174, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !167, line: 173, baseType: !87, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !188, file: !155, line: 119, baseType: !196, size: 192, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !197, line: 41, baseType: !198)
!197 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !197, line: 37, size: 192, elements: !199)
!199 = !{!200, !238}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !197, line: 38, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !202, line: 29, baseType: !203)
!202 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !202, line: 17, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !202, line: 18, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 18, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !206, file: !202, line: 19, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !210, line: 14, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !209, file: !210, line: 15, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !214, line: 44, baseType: !215)
!214 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !214, line: 14, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 15, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 15, size: 32, elements: !219)
!219 = !{!220, !221, !231}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !218, file: !214, line: 16, baseType: !191, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !214, line: 24, baseType: !222, size: 16)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !214, line: 24, size: 16, elements: !223)
!223 = !{!224, !230}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !222, file: !214, line: 25, baseType: !225, size: 8)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !226, line: 17, baseType: !227)
!226 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !228, line: 21, baseType: !229)
!228 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !222, file: !214, line: 26, baseType: !225, size: 8, offset: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !214, line: 28, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !214, line: 28, size: 32, elements: !233)
!233 = !{!234, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !232, file: !214, line: 29, baseType: !235, size: 16)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !226, line: 19, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !228, line: 24, baseType: !168)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !232, file: !214, line: 30, baseType: !235, size: 16, offset: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !198, file: !197, line: 39, baseType: !239, size: 128, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !167, line: 190, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !167, line: 191, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !167, line: 191, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !156, file: !155, line: 153, baseType: !163, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !156, file: !155, line: 154, baseType: !163, size: 64, offset: 448)
!246 = !{!247, !248}
!247 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!248 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !250, line: 16, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "TT_NONE", value: 0)
!253 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!254 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !256, line: 51, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!259 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!260 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!261 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !263, line: 119, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!264 = !{!265, !266, !267, !268, !269}
!265 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!266 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!267 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!268 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!269 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 10, baseType: !7, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!272 = !{!273, !274}
!273 = !DIEnumerator(name: "false", value: 0)
!274 = !DIEnumerator(name: "true", value: 1)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !276, line: 40, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!278 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!279 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!280 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!281 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!282 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!283 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!284 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!285 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!286 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!287 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!288 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!289 = !{!163, !290, !296, !389, !398, !400, !401, !181, !845, !4636, !5841, !87, !5844, !177, !5845, !5847, !5849, !831, !3168, !5851, !5853}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !291, line: 83, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !291, line: 82, baseType: !294)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !87}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !298, line: 12, size: 384, elements: !299)
!298 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !298, line: 13, baseType: !301, size: 384)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !298, line: 13, size: 384, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !301, file: !298, line: 13, baseType: !87, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !301, file: !298, line: 13, baseType: !87, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !301, file: !298, line: 13, baseType: !87, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !301, file: !298, line: 13, baseType: !307, size: 256, offset: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !308, line: 37, size: 256, elements: !309)
!308 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!309 = !{!310, !317, !330, !336, !347, !378, !383}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !307, file: !308, line: 42, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 39, size: 64, elements: !312)
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !311, file: !308, line: 40, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !179, line: 28, baseType: !87)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !311, file: !308, line: 41, baseType: !316, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !179, line: 49, baseType: !7)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !307, file: !308, line: 50, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 45, size: 192, elements: !319)
!319 = !{!320, !322, !323, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !318, file: !308, line: 46, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !179, line: 95, baseType: !87)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !318, file: !308, line: 47, baseType: !87, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !318, file: !308, line: 48, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !308, line: 11, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !308, line: 8, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !325, file: !308, line: 9, baseType: !87, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !325, file: !308, line: 10, baseType: !163, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !318, file: !308, line: 49, baseType: !87, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !307, file: !308, line: 57, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 53, size: 128, elements: !332)
!332 = !{!333, !334, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !331, file: !308, line: 54, baseType: !314, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !331, file: !308, line: 55, baseType: !316, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !331, file: !308, line: 56, baseType: !324, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !307, file: !308, line: 66, baseType: !337, size: 256)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 60, size: 256, elements: !338)
!338 = !{!339, !340, !341, !342, !346}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !337, file: !308, line: 61, baseType: !314, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !337, file: !308, line: 62, baseType: !316, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !337, file: !308, line: 63, baseType: !87, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !337, file: !308, line: 64, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !179, line: 94, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !179, line: 15, baseType: !345)
!345 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !337, file: !308, line: 65, baseType: !343, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !307, file: !308, line: 105, baseType: !348, size: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 69, size: 256, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !348, file: !308, line: 70, baseType: !163, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !308, line: 79, baseType: !352, size: 192, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !308, line: 79, size: 192, elements: !353)
!353 = !{!354, !355, !357, !366, !372}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !352, file: !308, line: 81, baseType: !87, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !352, file: !308, line: 86, baseType: !356, size: 16)
!356 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !352, file: !308, line: 92, baseType: !358, size: 192)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !308, line: 88, size: 192, elements: !359)
!359 = !{!360, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !358, file: !308, line: 89, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !358, file: !308, line: 90, baseType: !163, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !358, file: !308, line: 91, baseType: !163, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !352, file: !308, line: 97, baseType: !367, size: 96)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !308, line: 94, size: 96, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !367, file: !308, line: 95, baseType: !361, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !367, file: !308, line: 96, baseType: !371, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !228, line: 27, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !352, file: !308, line: 103, baseType: !373, size: 128)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !308, line: 99, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !373, file: !308, line: 100, baseType: !181, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !373, file: !308, line: 101, baseType: !371, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !373, file: !308, line: 102, baseType: !371, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !307, file: !308, line: 111, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 108, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !379, file: !308, line: 109, baseType: !345, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !379, file: !308, line: 110, baseType: !87, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !307, file: !308, line: 118, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 114, size: 128, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !384, file: !308, line: 115, baseType: !163, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !384, file: !308, line: 116, baseType: !87, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !384, file: !308, line: 117, baseType: !7, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !391, line: 56, size: 192, elements: !392)
!391 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!392 = !{!393, !394, !395, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !391, line: 57, baseType: !181, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !390, file: !391, line: 58, baseType: !181, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !390, file: !391, line: 59, baseType: !396, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !226, line: 21, baseType: !371)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !390, file: !391, line: 61, baseType: !396, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !403, line: 746, size: 58368, elements: !404)
!403 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!404 = !{!405, !406, !407, !408, !413, !414, !415, !416, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !499, !510, !609, !613, !616, !647, !648, !649, !650, !661, !663, !664, !665, !666, !667, !668, !679, !680, !683, !684, !685, !686, !687, !688, !689, !690, !697, !698, !705, !706, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5130, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5172, !5178, !5179, !5180, !5181, !5182, !5184, !5187, !5194, !5199, !5200, !5203, !5206, !5207, !5404, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5436, !5437, !5438, !5447, !5455, !5456, !5457, !5458, !5459, !5464, !5465, !5466, !5469, !5470, !5473, !5476, !5479, !5487, !5490, !5491, !5494, !5495, !5496, !5497, !5498, !5504, !5505, !5506, !5507, !5508, !5509, !5512, !5515, !5516, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5559, !5560, !5566, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5578, !5650, !5652, !5653, !5654, !5655, !5656, !5657, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5674, !5675, !5676}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !402, file: !403, line: 752, baseType: !390, size: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !402, file: !403, line: 754, baseType: !7, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !402, file: !403, line: 767, baseType: !163, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !402, file: !403, line: 768, baseType: !409, size: 32, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !263, line: 113, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !263, line: 111, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !410, file: !263, line: 112, baseType: !191, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !403, line: 770, baseType: !7, size: 32, offset: 352)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !402, file: !403, line: 771, baseType: !7, size: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !402, file: !403, line: 774, baseType: !87, size: 32, offset: 416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !402, file: !403, line: 775, baseType: !417, size: 128, offset: 448)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !418, line: 58, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!419 = !{!420, !426, !431, !432}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !417, file: !418, line: 59, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !422, line: 60, size: 64, elements: !423)
!422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 61, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !418, line: 60, baseType: !427, size: 32, offset: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !418, line: 60, size: 32, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !427, file: !418, line: 61, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !427, file: !418, line: 62, baseType: !191, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !417, file: !418, line: 65, baseType: !235, size: 16, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !417, file: !418, line: 65, baseType: !235, size: 16, offset: 112)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !402, file: !403, line: 776, baseType: !7, size: 32, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !402, file: !403, line: 777, baseType: !181, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !402, file: !403, line: 778, baseType: !401, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !402, file: !403, line: 787, baseType: !87, size: 32, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !402, file: !403, line: 788, baseType: !87, size: 32, offset: 800)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !402, file: !403, line: 790, baseType: !87, size: 32, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !402, file: !403, line: 792, baseType: !87, size: 32, offset: 864)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !402, file: !403, line: 793, baseType: !87, size: 32, offset: 896)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !402, file: !403, line: 794, baseType: !87, size: 32, offset: 928)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !402, file: !403, line: 795, baseType: !7, size: 32, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !402, file: !403, line: 797, baseType: !444, size: 2048, offset: 1024)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !403, line: 551, size: 2048, elements: !445)
!445 = !{!446, !451, !459, !463, !464, !465, !466, !467, !468, !469, !470, !473, !474, !475, !476, !478, !481, !482, !483}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !444, file: !403, line: 553, baseType: !447, size: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !403, line: 411, size: 128, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !447, file: !403, line: 412, baseType: !181, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !447, file: !403, line: 413, baseType: !396, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !444, file: !403, line: 554, baseType: !452, size: 192, align: 64, offset: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !453, line: 5, size: 192, align: 64, elements: !454)
!453 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!454 = !{!455, !456, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !452, file: !453, line: 6, baseType: !181, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !452, file: !453, line: 7, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !452, file: !453, line: 8, baseType: !457, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !444, file: !403, line: 555, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !226, line: 23, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !228, line: 31, baseType: !462)
!462 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !444, file: !403, line: 556, baseType: !460, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !444, file: !403, line: 558, baseType: !239, size: 128, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !444, file: !403, line: 559, baseType: !7, size: 32, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !444, file: !403, line: 561, baseType: !460, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !444, file: !403, line: 562, baseType: !460, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !444, file: !403, line: 563, baseType: !460, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !444, file: !403, line: 564, baseType: !460, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !444, file: !403, line: 565, baseType: !471, size: 64, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !226, line: 22, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !228, line: 30, baseType: !185)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !444, file: !403, line: 566, baseType: !460, size: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !444, file: !403, line: 568, baseType: !460, size: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !444, file: !403, line: 571, baseType: !87, size: 32, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !444, file: !403, line: 572, baseType: !477, size: 64, offset: 1152)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !444, file: !403, line: 574, baseType: !479, size: 64, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !403, line: 49, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !444, file: !403, line: 576, baseType: !479, size: 64, offset: 1280)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !444, file: !403, line: 578, baseType: !181, size: 64, offset: 1344)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !444, file: !403, line: 588, baseType: !484, size: 512, align: 512, offset: 1536)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !403, line: 497, size: 512, align: 512, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !484, file: !403, line: 498, baseType: !460, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !484, file: !403, line: 499, baseType: !460, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !484, file: !403, line: 500, baseType: !460, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !484, file: !403, line: 501, baseType: !396, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !484, file: !403, line: 502, baseType: !396, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !484, file: !403, line: 503, baseType: !181, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !484, file: !403, line: 504, baseType: !181, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !484, file: !403, line: 505, baseType: !181, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !484, file: !403, line: 506, baseType: !495, size: 64, align: 64, offset: 448)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !403, line: 445, size: 64, align: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !495, file: !403, line: 446, baseType: !7, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !495, file: !403, line: 447, baseType: !7, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !402, file: !403, line: 798, baseType: !500, size: 384, offset: 3072)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !403, line: 592, size: 384, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !500, file: !403, line: 593, baseType: !239, size: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !500, file: !403, line: 594, baseType: !181, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !500, file: !403, line: 595, baseType: !181, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !500, file: !403, line: 596, baseType: !7, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !500, file: !403, line: 597, baseType: !168, size: 16, offset: 288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !500, file: !403, line: 598, baseType: !168, size: 16, offset: 304)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !500, file: !403, line: 600, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !402, file: !403, line: 799, baseType: !511, size: 1792, offset: 3456)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !403, line: 610, size: 1792, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !606, !607}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !511, file: !403, line: 611, baseType: !452, size: 192, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !511, file: !403, line: 618, baseType: !460, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !511, file: !403, line: 619, baseType: !460, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !511, file: !403, line: 620, baseType: !460, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !511, file: !403, line: 621, baseType: !460, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !511, file: !403, line: 622, baseType: !460, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !511, file: !403, line: 629, baseType: !471, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !511, file: !403, line: 630, baseType: !460, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !403, line: 631, baseType: !7, size: 32, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !511, file: !403, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !511, file: !403, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !511, file: !403, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !511, file: !403, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !511, file: !403, line: 662, baseType: !527, size: 512, offset: 704)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !528)
!528 = !{!529, !537, !538, !543, !602, !603, !604, !605}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !6, line: 119, baseType: !530, size: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !531, line: 9, size: 256, elements: !532)
!531 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !530, file: !531, line: 10, baseType: !452, size: 192, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !530, file: !531, line: 11, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !536, line: 29, baseType: !471)
!536 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !527, file: !6, line: 120, baseType: !535, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !527, file: !6, line: 121, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!5, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !527, file: !6, line: 122, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !546)
!546 = !{!547, !571, !572, !575, !585, !586, !597, !601}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !545, file: !6, line: 160, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !550)
!550 = !{!551, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !6, line: 216, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 23, baseType: !209)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !549, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !549, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !549, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !549, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !549, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !549, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !549, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !549, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !549, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !549, file: !6, line: 227, baseType: !168, size: 16, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !549, file: !6, line: 228, baseType: !168, size: 16, offset: 208)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !549, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !549, file: !6, line: 235, baseType: !535, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !549, file: !6, line: 236, baseType: !542, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !549, file: !6, line: 237, baseType: !535, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !549, file: !6, line: 238, baseType: !542, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !549, file: !6, line: 239, baseType: !570, size: 4096, align: 512, offset: 512)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 4096, align: 512, elements: !362)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !545, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !545, file: !6, line: 162, baseType: !573, size: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !167, line: 32, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !179, line: 96, baseType: !87)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !545, file: !6, line: 163, baseType: !576, size: 32, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !577, line: 274, baseType: !578)
!577 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !577, line: 274, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !578, file: !577, line: 274, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !577, line: 69, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !577, line: 64, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !582, file: !577, line: 65, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !545, file: !6, line: 164, baseType: !542, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !545, file: !6, line: 165, baseType: !587, size: 128, offset: 256)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !531, line: 14, size: 128, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !587, file: !531, line: 15, baseType: !590, size: 128)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !453, line: 26, size: 128, elements: !591)
!591 = !{!592, !596}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !590, file: !453, line: 27, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !453, line: 12, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !593, file: !453, line: 13, baseType: !457, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !590, file: !453, line: 28, baseType: !457, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !545, file: !6, line: 166, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!535}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !545, file: !6, line: 167, baseType: !535, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !527, file: !6, line: 123, baseType: !225, size: 8, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !527, file: !6, line: 124, baseType: !225, size: 8, offset: 456)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !527, file: !6, line: 125, baseType: !225, size: 8, offset: 464)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !527, file: !6, line: 126, baseType: !225, size: 8, offset: 472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !511, file: !403, line: 671, baseType: !527, size: 512, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !511, file: !403, line: 679, baseType: !608, size: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !402, file: !403, line: 800, baseType: !610, size: 64, offset: 5248)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !403, line: 800, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !402, file: !403, line: 809, baseType: !614, size: 64, offset: 5312)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !403, line: 70, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !402, file: !403, line: 825, baseType: !617, size: 2048, align: 512, offset: 5632)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !403, line: 509, size: 2048, align: 512, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !617, file: !403, line: 511, baseType: !460, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !617, file: !403, line: 512, baseType: !460, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !617, file: !403, line: 513, baseType: !460, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !617, file: !403, line: 514, baseType: !460, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !617, file: !403, line: 515, baseType: !460, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !617, file: !403, line: 516, baseType: !460, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !617, file: !403, line: 518, baseType: !460, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !617, file: !403, line: 519, baseType: !460, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !617, file: !403, line: 520, baseType: !471, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !617, file: !403, line: 522, baseType: !460, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !617, file: !403, line: 523, baseType: !460, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !617, file: !403, line: 524, baseType: !471, size: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !617, file: !403, line: 526, baseType: !471, size: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !617, file: !403, line: 527, baseType: !460, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !617, file: !403, line: 529, baseType: !460, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !617, file: !403, line: 530, baseType: !460, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !617, file: !403, line: 531, baseType: !460, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !617, file: !403, line: 532, baseType: !460, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !617, file: !403, line: 533, baseType: !460, size: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !617, file: !403, line: 535, baseType: !460, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !617, file: !403, line: 536, baseType: !460, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !617, file: !403, line: 537, baseType: !460, size: 64, offset: 1344)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !617, file: !403, line: 538, baseType: !460, size: 64, offset: 1408)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !617, file: !403, line: 539, baseType: !460, size: 64, offset: 1472)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !617, file: !403, line: 540, baseType: !460, size: 64, offset: 1536)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !617, file: !403, line: 541, baseType: !460, size: 64, offset: 1600)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !617, file: !403, line: 542, baseType: !460, size: 64, offset: 1664)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !617, file: !403, line: 543, baseType: !460, size: 64, offset: 1728)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !402, file: !403, line: 833, baseType: !7, size: 32, offset: 7680)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !402, file: !403, line: 836, baseType: !7, size: 32, offset: 7712)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !402, file: !403, line: 837, baseType: !87, size: 32, offset: 7744)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !402, file: !403, line: 838, baseType: !651, size: 64, offset: 7808)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !654, line: 19, baseType: !655)
!654 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !654, line: 19, size: 64, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !655, file: !654, line: 19, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 1)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !402, file: !403, line: 839, baseType: !662, size: 64, offset: 7872)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !402, file: !403, line: 840, baseType: !653, size: 64, offset: 7936)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !402, file: !403, line: 841, baseType: !163, size: 64, offset: 8000)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !402, file: !403, line: 843, baseType: !168, size: 16, offset: 8064)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !402, file: !403, line: 845, baseType: !168, size: 16, offset: 8080)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !402, file: !403, line: 848, baseType: !87, size: 32, offset: 8096)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !402, file: !403, line: 849, baseType: !669, size: 32, offset: 8128)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !403, line: 718, size: 32, elements: !670)
!670 = !{!671, !678}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !669, file: !403, line: 724, baseType: !672, size: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !403, line: 719, size: 32, elements: !673)
!673 = !{!674, !675, !676, !677}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !672, file: !403, line: 720, baseType: !225, size: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !672, file: !403, line: 721, baseType: !225, size: 8, offset: 8)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !672, file: !403, line: 722, baseType: !225, size: 8, offset: 16)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !672, file: !403, line: 723, baseType: !225, size: 8, offset: 24)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !669, file: !403, line: 725, baseType: !396, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !402, file: !403, line: 850, baseType: !239, size: 128, offset: 8192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !402, file: !403, line: 851, baseType: !681, size: 64, offset: 8320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !403, line: 60, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !402, file: !403, line: 855, baseType: !181, size: 64, offset: 8384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !402, file: !403, line: 856, baseType: !225, size: 8, offset: 8448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !402, file: !403, line: 857, baseType: !225, size: 8, offset: 8456)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !402, file: !403, line: 858, baseType: !87, size: 32, offset: 8480)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !402, file: !403, line: 859, baseType: !239, size: 128, offset: 8512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !402, file: !403, line: 860, baseType: !87, size: 32, offset: 8640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !402, file: !403, line: 861, baseType: !239, size: 128, offset: 8704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !402, file: !403, line: 873, baseType: !691, size: 256, offset: 8832)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !403, line: 376, size: 256, elements: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !691, file: !403, line: 381, baseType: !181, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !691, file: !403, line: 384, baseType: !462, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !691, file: !403, line: 389, baseType: !462, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !691, file: !403, line: 392, baseType: !462, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !402, file: !403, line: 875, baseType: !239, size: 128, offset: 9088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !402, file: !403, line: 877, baseType: !699, size: 320, offset: 9216)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !700, line: 86, size: 320, elements: !701)
!700 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !699, file: !700, line: 87, baseType: !87, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !699, file: !700, line: 88, baseType: !239, size: 128, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !699, file: !700, line: 89, baseType: !239, size: 128, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !402, file: !403, line: 878, baseType: !452, size: 192, align: 64, offset: 9536)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !402, file: !403, line: 881, baseType: !707, size: 64, offset: 9728)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !20, line: 733, size: 10240, elements: !709)
!709 = !{!710, !5044}
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !20, line: 734, baseType: !711, size: 10240)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !20, line: 734, size: 10240, elements: !712)
!712 = !{!713, !717, !731, !4923, !4924, !4925, !4926, !4927, !4928, !4935, !4936, !4937, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4976, !4978, !4981, !5024, !5025, !5026, !5029, !5030, !5031, !5034, !5035, !5036, !5042, !5043}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !20, line: 739, baseType: !714, size: 512, align: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !20, line: 739, size: 512, align: 512, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !714, file: !20, line: 747, baseType: !191, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !711, file: !20, line: 750, baseType: !718, size: 128, offset: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !719, line: 218, size: 128, elements: !720)
!719 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!720 = !{!721, !729, !730}
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !719, line: 219, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !719, line: 219, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !722, file: !719, line: 220, baseType: !201, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !722, file: !719, line: 221, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !719, line: 197, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 197, elements: !728)
!728 = !{}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !718, file: !719, line: 223, baseType: !7, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !718, file: !719, line: 224, baseType: !163, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !711, file: !20, line: 752, baseType: !732, size: 64, offset: 640)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!181, !735, !181, !181, !181, !181}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !129, line: 994, size: 1856, align: 64, elements: !737)
!737 = !{!738, !752, !753, !755, !762, !774, !775, !776, !4903, !4904, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922}
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !129, line: 995, baseType: !739, size: 128)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !129, line: 995, size: 128, elements: !740)
!740 = !{!741, !742, !751}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !739, file: !129, line: 996, baseType: !421, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !739, file: !129, line: 997, baseType: !743, size: 128, align: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !167, line: 232, size: 128, align: 64, elements: !744)
!744 = !{!745, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !167, line: 233, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !743, file: !167, line: 234, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !746}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !739, file: !129, line: 998, baseType: !7, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !736, file: !129, line: 1005, baseType: !201, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !736, file: !129, line: 1006, baseType: !754, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !167, line: 156, baseType: !7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !736, file: !129, line: 1007, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !757, line: 13, baseType: !758)
!757 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !167, line: 181, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 179, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !759, file: !167, line: 180, baseType: !471, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !736, file: !129, line: 1008, baseType: !763, size: 256, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !764, line: 66, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!765 = !{!766, !767, !768, !773}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !763, file: !764, line: 67, baseType: !756, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !763, file: !764, line: 68, baseType: !552, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !763, file: !764, line: 70, baseType: !769, size: 32, offset: 96)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !770, line: 15, size: 32, elements: !771)
!770 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !769, file: !770, line: 20, baseType: !191, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !763, file: !764, line: 72, baseType: !239, size: 128, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !736, file: !129, line: 1009, baseType: !183, size: 64, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !736, file: !129, line: 1010, baseType: !7, size: 32, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !736, file: !129, line: 1011, baseType: !777, size: 256, offset: 640)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !129, line: 948, size: 256, elements: !778)
!778 = !{!779, !802, !4899, !4900, !4901, !4902}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !129, line: 949, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !781, line: 34, baseType: !782)
!781 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 25, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !782, file: !781, line: 26, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !786, line: 27, baseType: !787)
!786 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !786, line: 13, size: 64, elements: !788)
!788 = !{!789, !801}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !786, line: 14, baseType: !790, size: 32)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !786, line: 14, size: 32, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !790, file: !786, line: 15, baseType: !191, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !786, line: 16, baseType: !794, size: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !786, line: 16, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !794, file: !786, line: 18, baseType: !225, size: 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !794, file: !786, line: 19, baseType: !798, size: 24, offset: 8)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 24, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 3)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !787, file: !786, line: 26, baseType: !213, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !777, file: !129, line: 950, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !805)
!805 = !{!806, !807, !808, !809, !822, !823, !824, !825}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !804, file: !12, line: 61, baseType: !409, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !804, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !12, line: 63, baseType: !201, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !804, file: !12, line: 65, baseType: !810, size: 256, offset: 128)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 256, elements: !820)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !167, line: 194, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !811, file: !167, line: 195, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !167, line: 198, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !815, file: !167, line: 199, baseType: !814, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !815, file: !167, line: 199, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !{!821}
!821 = !DISubrange(count: 4)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !804, file: !12, line: 66, baseType: !811, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !804, file: !12, line: 68, baseType: !196, size: 192, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !804, file: !12, line: 69, baseType: !743, size: 128, align: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !804, file: !12, line: 70, baseType: !826, offset: 768)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, elements: !2994)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !827, file: !12, line: 55, baseType: !87, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !827, file: !12, line: 56, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !833, line: 26, size: 1152, elements: !834)
!833 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!834 = !{!835, !849, !850, !851, !852, !856, !857, !858, !861, !4895, !4896, !4897, !4898}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !832, file: !833, line: 27, baseType: !836, size: 192)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !837, line: 19, size: 192, elements: !838)
!837 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!838 = !{!839, !847, !848}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !836, file: !837, line: 20, baseType: !840, size: 128)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !841, line: 296, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!842 = !{!843, !844, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !840, file: !841, line: 297, baseType: !201, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !840, file: !841, line: 299, baseType: !845, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !167, line: 154, baseType: !7)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !840, file: !841, line: 300, baseType: !163, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !836, file: !837, line: 21, baseType: !7, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !836, file: !837, line: 22, baseType: !7, size: 32, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !832, file: !833, line: 28, baseType: !743, size: 128, align: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !832, file: !833, line: 29, baseType: !7, size: 32, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !832, file: !833, line: 30, baseType: !401, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !832, file: !833, line: 31, baseType: !853, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !855, line: 11, flags: DIFlagFwdDecl)
!855 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!856 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !832, file: !833, line: 32, baseType: !7, size: 32, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !832, file: !833, line: 33, baseType: !831, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !832, file: !833, line: 35, baseType: !859, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !833, line: 17, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !832, file: !833, line: 37, baseType: !862, size: 64, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !276, line: 68, size: 4800, elements: !864)
!864 = !{!865, !887, !888, !889, !890, !891, !898, !905, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4890, !4891, !4892, !4894}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !863, file: !276, line: 69, baseType: !866, size: 576)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !276, line: 23, size: 576, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !866, file: !276, line: 24, baseType: !396, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !276, line: 25, baseType: !870, size: 512, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !276, line: 25, size: 512, elements: !871)
!871 = !{!872, !881}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !870, file: !276, line: 26, baseType: !873, size: 480)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 480, elements: !879)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !276, line: 17, size: 96, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !874, file: !276, line: 18, baseType: !396, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !874, file: !276, line: 19, baseType: !396, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !874, file: !276, line: 20, baseType: !396, size: 32, offset: 64)
!879 = !{!880}
!880 = !DISubrange(count: 5)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !870, file: !276, line: 27, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !870, file: !276, line: 27, size: 128, elements: !883)
!883 = !{!884, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !882, file: !276, line: 28, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !882, file: !276, line: 29, baseType: !885, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !863, file: !276, line: 70, baseType: !866, size: 576, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !863, file: !276, line: 71, baseType: !866, size: 576, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !863, file: !276, line: 72, baseType: !862, size: 64, offset: 1728)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !863, file: !276, line: 73, baseType: !87, size: 32, offset: 1792)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !863, file: !276, line: 74, baseType: !892, size: 32, offset: 1824)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !893, line: 23, baseType: !894)
!893 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 21, size: 32, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !894, file: !893, line: 22, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !167, line: 37, baseType: !316)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !863, file: !276, line: 75, baseType: !899, size: 32, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !893, line: 28, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 26, size: 32, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !900, file: !893, line: 27, baseType: !903, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !167, line: 38, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !179, line: 50, baseType: !7)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !863, file: !276, line: 76, baseType: !906, size: 192, offset: 1920)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !907, line: 9, size: 192, elements: !908)
!907 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!908 = !{!909, !910, !4825, !4826}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !906, file: !907, line: 10, baseType: !756, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !906, file: !907, line: 11, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !914, line: 16, size: 512, elements: !915)
!914 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!915 = !{!916, !917, !918, !919, !924, !928, !4817, !4821}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !913, file: !914, line: 17, baseType: !159, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !913, file: !914, line: 18, baseType: !159, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !913, file: !914, line: 19, baseType: !87, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !913, file: !914, line: 20, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!923, !401}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !913, file: !914, line: 21, baseType: !925, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !923}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !913, file: !914, line: 22, baseType: !929, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!87, !932, !923}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !934, line: 53, size: 256, elements: !935)
!934 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!935 = !{!936, !937, !4632, !4635}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 54, baseType: !7, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !933, file: !934, line: 55, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !934, line: 31, size: 576, elements: !940)
!940 = !{!941, !942, !945, !948, !951, !952, !956, !959, !960}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !939, file: !934, line: 32, baseType: !409, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !939, file: !934, line: 33, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !934, line: 9, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !939, file: !934, line: 34, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !934, line: 10, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !939, file: !934, line: 35, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !934, line: 8, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !939, file: !934, line: 36, baseType: !831, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !939, file: !934, line: 37, baseType: !953, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !955, line: 34, flags: DIFlagFwdDecl)
!955 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !939, file: !934, line: 38, baseType: !957, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !934, line: 38, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !939, file: !934, line: 39, baseType: !957, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !939, file: !934, line: 40, baseType: !961, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !963, line: 771, size: 384, elements: !964)
!963 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!964 = !{!965, !966, !967, !981}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !962, file: !963, line: 772, baseType: !906, size: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !962, file: !963, line: 773, baseType: !862, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !962, file: !963, line: 774, baseType: !968, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !276, line: 107, size: 1152, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !979}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !969, file: !276, line: 108, baseType: !815, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !969, file: !276, line: 109, baseType: !862, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !969, file: !276, line: 110, baseType: !892, size: 32, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !969, file: !276, line: 111, baseType: !191, size: 32, offset: 224)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !969, file: !276, line: 112, baseType: !976, size: 640, offset: 256)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 640, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 10)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !969, file: !276, line: 113, baseType: !980, size: 256, offset: 896)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 256, elements: !820)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !962, file: !963, line: 775, baseType: !982, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !984, line: 209, size: 4736, elements: !985)
!984 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!985 = !{!986, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !983, file: !984, line: 215, baseType: !987, size: 896)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 896, elements: !4436)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !984, line: 152, size: 1600, elements: !990)
!990 = !{!991, !4492, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4610}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !989, file: !984, line: 154, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !984, line: 389, size: 7872, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !4401, !4407, !4408, !4412, !4413, !4414, !4415, !4416, !4417, !4433, !4434, !4438, !4439, !4440, !4462, !4463, !4464, !4465, !4471, !4472, !4473, !4474, !4475, !4479, !4482, !4483, !4490}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !993, file: !984, line: 391, baseType: !989, size: 1600)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !984, line: 393, baseType: !181, size: 64, offset: 1600)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !993, file: !984, line: 401, baseType: !87, size: 32, offset: 1664)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !993, file: !984, line: 404, baseType: !87, size: 32, offset: 1696)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !993, file: !984, line: 417, baseType: !87, size: 32, offset: 1728)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !993, file: !984, line: 418, baseType: !87, size: 32, offset: 1760)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !993, file: !984, line: 419, baseType: !87, size: 32, offset: 1792)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !993, file: !984, line: 432, baseType: !87, size: 32, offset: 1824)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !993, file: !984, line: 433, baseType: !87, size: 32, offset: 1856)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !993, file: !984, line: 434, baseType: !87, size: 32, offset: 1888)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !993, file: !984, line: 436, baseType: !87, size: 32, offset: 1920)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !993, file: !984, line: 439, baseType: !7, size: 32, offset: 1952)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !993, file: !984, line: 441, baseType: !1008, size: 64, offset: 1984)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1010, line: 190, size: 1152, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1020, !1021, !4393, !4394, !4395, !4396, !4397, !4400}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1009, file: !1010, line: 191, baseType: !191, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1009, file: !1010, line: 192, baseType: !191, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1009, file: !1010, line: 202, baseType: !1008, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !1010, line: 203, baseType: !159, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1009, file: !1010, line: 205, baseType: !452, size: 192, align: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1009, file: !1010, line: 207, baseType: !1018, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1009, file: !1010, line: 208, baseType: !7, size: 32, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 209, baseType: !1022, size: 256, offset: 512)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 209, size: 256, elements: !1023)
!1023 = !{!1024, !1033, !1037}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1022, file: !1010, line: 210, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1010, line: 153, size: 256, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1025, file: !1010, line: 154, baseType: !181, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1025, file: !1010, line: 156, baseType: !593, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1025, file: !1010, line: 162, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1010, line: 162, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1025, file: !1010, line: 167, baseType: !181, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1022, file: !1010, line: 211, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1010, line: 170, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1034, file: !1010, line: 171, baseType: !1008, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1022, file: !1010, line: 212, baseType: !1038, size: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1010, line: 174, size: 256, elements: !1039)
!1039 = !{!1040, !4388, !4391, !4392}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1038, file: !1010, line: 175, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1010, line: 271, size: 768, elements: !1044)
!1044 = !{!1045, !4365, !4369, !4370, !4371, !4372, !4373, !4377, !4378, !4379, !4380, !4384}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1043, file: !1010, line: 276, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!87, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1010, line: 251, size: 1216, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1104, !1105}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1050, file: !1010, line: 253, baseType: !1008, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1050, file: !1010, line: 254, baseType: !735, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1050, file: !1010, line: 255, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1057, line: 17, size: 960, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1058 = !{!1059, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1089, !1090, !1093}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1056, file: !1057, line: 18, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1057, line: 19, baseType: !177, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1056, file: !1057, line: 20, baseType: !177, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1056, file: !1057, line: 21, baseType: !177, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1056, file: !1057, line: 22, baseType: !177, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1056, file: !1057, line: 23, baseType: !183, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1056, file: !1057, line: 24, baseType: !183, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1056, file: !1057, line: 25, baseType: !763, size: 256, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1056, file: !1057, line: 26, baseType: !1069, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1057, line: 32, size: 256, elements: !1072)
!1072 = !{!1073, !1077, !1081, !1085}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1071, file: !1057, line: 33, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!163, !1055, !182}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1071, file: !1057, line: 34, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1055, !163}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1071, file: !1057, line: 35, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!163, !1055, !163, !182}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1071, file: !1057, line: 36, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!87, !1055, !163}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1056, file: !1057, line: 27, baseType: !87, size: 32, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1056, file: !1057, line: 28, baseType: !1091, size: 64, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1056, file: !1057, line: 29, baseType: !163, size: 64, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1050, file: !1010, line: 256, baseType: !163, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1050, file: !1010, line: 259, baseType: !763, size: 256, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1050, file: !1010, line: 260, baseType: !763, size: 256, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1050, file: !1010, line: 261, baseType: !87, size: 32, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1050, file: !1010, line: 262, baseType: !239, size: 128, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1050, file: !1010, line: 263, baseType: !1060, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1050, file: !1010, line: 265, baseType: !177, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1050, file: !1010, line: 266, baseType: !1102, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !167, line: 35, baseType: !1103)
!1103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1050, file: !1010, line: 267, baseType: !1102, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1050, file: !1010, line: 268, baseType: !1106, size: 64, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1109, line: 563, size: 1024, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1110 = !{!1111, !1177, !1178, !1182, !1186, !1190, !4331, !4335, !4339, !4343, !4344, !4345, !4349, !4353, !4357, !4361}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1108, file: !1109, line: 564, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !20, line: 625, size: 1344, elements: !1117)
!1117 = !{!1118, !1127, !1128, !1136, !1143, !1144, !1157, !1158, !1163, !1164, !1167, !1168, !1169, !1170, !1171, !1172, !1175}
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !20, line: 628, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !20, line: 628, size: 128, elements: !1120)
!1120 = !{!1121, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !20, line: 629, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !20, line: 629, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1122, file: !20, line: 631, baseType: !181, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1122, file: !20, line: 632, baseType: !181, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1119, file: !20, line: 635, baseType: !743, size: 128, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1116, file: !20, line: 639, baseType: !707, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1116, file: !20, line: 640, baseType: !1129, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1130, line: 297, baseType: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1130, line: 297, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1131, file: !1130, line: 297, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1135, line: 19, baseType: !181)
!1135 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !20, line: 646, baseType: !1137, size: 64, offset: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !20, line: 646, size: 64, elements: !1138)
!1138 = !{!1139, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1137, file: !20, line: 647, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !20, line: 542, baseType: !181)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1137, file: !20, line: 648, baseType: !1141, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1116, file: !20, line: 666, baseType: !87, size: 32, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1116, file: !20, line: 667, baseType: !1145, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !20, line: 579, size: 320, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !20, line: 580, baseType: !1149, size: 320)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1150, line: 48, size: 320, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1151 = !{!1152, !1153, !1154, !1155, !1156}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1149, file: !1150, line: 49, baseType: !756, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1149, file: !1150, line: 55, baseType: !756, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1149, file: !1150, line: 57, baseType: !769, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1149, file: !1150, line: 59, baseType: !552, size: 32, offset: 160)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1149, file: !1150, line: 60, baseType: !239, size: 128, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1116, file: !20, line: 670, baseType: !1102, size: 8, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1116, file: !20, line: 681, baseType: !1159, size: 256, offset: 512)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !20, line: 678, size: 256, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1159, file: !20, line: 679, baseType: !452, size: 192, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1159, file: !20, line: 680, baseType: !181, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1116, file: !20, line: 689, baseType: !239, size: 128, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1116, file: !20, line: 691, baseType: !1165, size: 64, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !20, line: 691, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1116, file: !20, line: 694, baseType: !1106, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1116, file: !20, line: 697, baseType: !181, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1116, file: !20, line: 699, baseType: !735, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1116, file: !20, line: 700, baseType: !163, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1116, file: !20, line: 711, baseType: !756, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1116, file: !20, line: 717, baseType: !1173, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !403, line: 54, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1116, file: !20, line: 722, baseType: !1176, offset: 1344)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !20, line: 570, elements: !728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1108, file: !1109, line: 569, baseType: !1112, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1108, file: !1109, line: 571, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!87, !1115, !181}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1108, file: !1109, line: 572, baseType: !1183, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!87, !1115}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1108, file: !1109, line: 578, baseType: !1187, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!87, !1115, !181, !181, !181}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1108, file: !1109, line: 580, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !20, line: 1184, baseType: !7)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1109, line: 512, size: 896, elements: !1197)
!1197 = !{!1198, !1206, !1207, !1214, !1221, !1231, !4324, !4325, !4327, !4329}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1109, line: 513, baseType: !1199, size: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1109, line: 513, size: 320, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1199, file: !1109, line: 514, baseType: !1115, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1199, file: !1109, line: 515, baseType: !845, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1199, file: !1109, line: 516, baseType: !181, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1199, file: !1109, line: 517, baseType: !181, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1199, file: !1109, line: 518, baseType: !181, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1196, file: !1109, line: 520, baseType: !19, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1196, file: !1109, line: 522, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1135, line: 22, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 22, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1210, file: !1135, line: 22, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1135, line: 15, baseType: !181)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1196, file: !1109, line: 524, baseType: !1215, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1130, line: 372, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1130, line: 372, size: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1217, file: !1130, line: 372, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1135, line: 16, baseType: !181)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1109, line: 527, baseType: !1222, size: 64, offset: 512)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !1109, line: 527, size: 64, elements: !1223)
!1223 = !{!1224, !1230}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1222, file: !1109, line: 528, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1135, line: 21, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 21, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1226, file: !1135, line: 21, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1135, line: 14, baseType: !181)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1222, file: !1109, line: 529, baseType: !1209, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1196, file: !1109, line: 534, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !20, line: 74, size: 512, align: 128, elements: !1234)
!1234 = !{!1235, !1236, !4318, !4323}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !20, line: 75, baseType: !181, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !20, line: 83, baseType: !1237, size: 320, offset: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !20, line: 83, size: 320, elements: !1238)
!1238 = !{!1239, !4224, !4238, !4242, !4317}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !20, line: 84, baseType: !1240, size: 320)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !20, line: 84, size: 320, elements: !1241)
!1241 = !{!1242, !1253, !4218, !4223}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !20, line: 90, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !20, line: 90, size: 128, elements: !1244)
!1244 = !{!1245, !1246, !1251, !1252}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1243, file: !20, line: 91, baseType: !239, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !20, line: 94, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !20, line: 94, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1247, file: !20, line: 96, baseType: !163, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1247, file: !20, line: 98, baseType: !7, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1243, file: !20, line: 102, baseType: !239, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1243, file: !20, line: 103, baseType: !239, size: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1240, file: !20, line: 106, baseType: !1254, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !129, line: 472, size: 1536, align: 64, elements: !1256)
!1256 = !{!1257, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4212, !4213, !4214, !4215, !4216, !4217}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1255, file: !129, line: 473, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !129, line: 641, size: 4800, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1270, !1271, !3824, !3825, !3826, !3827, !3828, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !4034, !4037, !4038, !4039, !4048, !4049, !4050, !4051}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1259, file: !129, line: 642, baseType: !166, size: 16)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1259, file: !129, line: 643, baseType: !168, size: 16, offset: 16)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1259, file: !129, line: 644, baseType: !892, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1259, file: !129, line: 645, baseType: !239, size: 128, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1259, file: !129, line: 646, baseType: !899, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1259, file: !129, line: 647, baseType: !7, size: 32, offset: 224)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1259, file: !129, line: 650, baseType: !1268, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !129, line: 607, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1259, file: !129, line: 651, baseType: !1268, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1259, file: !129, line: 654, baseType: !1272, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !129, line: 1966, size: 2048, align: 512, elements: !1275)
!1275 = !{!1276, !3657, !3667, !3671, !3675, !3679, !3683, !3687, !3691, !3695, !3699, !3700, !3704, !3708, !3745, !3775, !3779, !3785, !3789, !3793, !3797, !3801, !3805, !3811, !3815}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1274, file: !129, line: 1967, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1280, !1258, !1280, !7}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1282, line: 82, size: 1536, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1283 = !{!1284, !1285, !1290, !1298, !1299, !1314, !1315, !1319, !1332, !3640, !3641, !3642, !3643, !3649, !3650, !3651}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1281, file: !1282, line: 84, baseType: !7, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1281, file: !1282, line: 85, baseType: !1286, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !577, line: 275, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !577, line: 275, size: 32, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1287, file: !577, line: 275, baseType: !581, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1281, file: !1282, line: 86, baseType: !1291, size: 128, offset: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1292, line: 38, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1293 = !{!1294, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1291, file: !1292, line: 39, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1291, file: !1292, line: 39, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1281, file: !1282, line: 87, baseType: !1280, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1281, file: !1282, line: 88, baseType: !1300, size: 128, offset: 256)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1282, line: 49, size: 128, elements: !1301)
!1301 = !{!1302, !1311}
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !1282, line: 50, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !1282, line: 50, size: 64, elements: !1304)
!1304 = !{!1305, !1310}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1282, line: 51, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1282, line: 51, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1306, file: !1282, line: 52, baseType: !396, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1306, file: !1282, line: 52, baseType: !396, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1303, file: !1282, line: 54, baseType: !460, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1300, file: !1282, line: 56, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1281, file: !1282, line: 89, baseType: !1258, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1281, file: !1282, line: 91, baseType: !1316, size: 256, offset: 448)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1281, file: !1282, line: 94, baseType: !1320, size: 64, offset: 704)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1321, line: 25, size: 64, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1321, line: 26, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !1321, line: 26, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1324, file: !1321, line: 28, baseType: !461, size: 64, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1321, line: 30, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !1321, line: 30, size: 64, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1328, file: !1321, line: 31, baseType: !201, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !1321, line: 32, baseType: !87, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1281, file: !1282, line: 95, baseType: !1333, size: 64, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1282, line: 128, size: 1024, align: 512, elements: !1336)
!1336 = !{!1337, !1341, !1342, !1349, !1355, !1359, !1363, !1367, !1368, !1372, !1376, !3630, !3634}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1335, file: !1282, line: 129, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!87, !1280, !7}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1335, file: !1282, line: 130, baseType: !1338, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1335, file: !1282, line: 131, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!87, !1346, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1335, file: !1282, line: 132, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!87, !1346, !7, !159, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1335, file: !1282, line: 134, baseType: !1356, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!87, !1346}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1335, file: !1282, line: 135, baseType: !1360, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!87, !1280}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1335, file: !1282, line: 136, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !1280}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1335, file: !1282, line: 137, baseType: !1364, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1335, file: !1282, line: 138, baseType: !1369, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1280, !1258}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1335, file: !1282, line: 139, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1060, !1280, !1060, !87}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1335, file: !1282, line: 140, baseType: !1377, size: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !3629}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1382, line: 70, size: 256, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1383 = !{!1384, !1385, !3624, !3625}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1381, file: !1382, line: 71, baseType: !1280, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1381, file: !1382, line: 72, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !129, line: 1190, size: 10752, elements: !1388)
!1388 = !{!1389, !1390, !1393, !1394, !1395, !1396, !3188, !3324, !3364, !3454, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3471, !3475, !3476, !3479, !3482, !3485, !3488, !3489, !3490, !3531, !3553, !3554, !3555, !3556, !3557, !3558, !3561, !3563, !3572, !3573, !3574, !3575, !3576, !3591, !3592, !3593, !3594, !3597, !3598, !3599, !3600, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1387, file: !129, line: 1191, baseType: !239, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1387, file: !129, line: 1192, baseType: !1391, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !167, line: 21, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !167, line: 18, baseType: !396)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1387, file: !129, line: 1193, baseType: !229, size: 8, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1387, file: !129, line: 1194, baseType: !181, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1387, file: !129, line: 1195, baseType: !183, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1387, file: !129, line: 1196, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !129, line: 2366, size: 576, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1408, !1412, !1416, !1420, !3176, !3177, !3178, !3180, !3181, !3182, !3184, !3185, !3186, !3187}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !129, line: 2367, baseType: !159, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1398, file: !129, line: 2368, baseType: !87, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1398, file: !129, line: 2376, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!87, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1382, line: 21, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1398, file: !129, line: 2377, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !129, line: 75, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1398, file: !129, line: 2378, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1280, !1397, !87, !159, !163}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1398, file: !129, line: 2380, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1386}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !129, line: 2381, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1430, !1622, !1648, !1649, !1650, !1651, !1655, !1660, !1661, !1662, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1730, !1734, !1754, !1774, !1775, !1776, !1777, !1786, !1809, !1810, !1813, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1827, !1828, !1939, !1947, !1948, !1949, !1951, !3154, !3155, !3164, !3165, !3166, !3167, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1422, file: !36, line: 403, baseType: !35, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1422, file: !36, line: 406, baseType: !239, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !36, line: 409, baseType: !1427, size: 448, offset: 192)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 448, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 56)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1422, file: !36, line: 417, baseType: !1431, size: 768, offset: 640)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !1432)
!1432 = !{!1433, !1605, !1606, !1607, !1610}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1431, file: !36, line: 46, baseType: !1434, size: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1435, line: 64, size: 512, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1436 = !{!1437, !1438, !1439, !1441, !1485, !1594, !1595, !1600, !1601, !1602, !1603, !1604}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1434, file: !1435, line: 65, baseType: !159, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1434, file: !1435, line: 66, baseType: !239, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1434, file: !1435, line: 67, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1434, file: !1435, line: 68, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1435, line: 168, size: 768, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1443, file: !1435, line: 169, baseType: !239, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1443, file: !1435, line: 170, baseType: !201, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1443, file: !1435, line: 171, baseType: !1434, size: 512, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1443, file: !1435, line: 172, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1435, line: 133, size: 192, elements: !1452)
!1452 = !{!1453, !1460, !1465}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1451, file: !1435, line: 134, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!87, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !1435, line: 135, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!159, !1458}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1451, file: !1435, line: 136, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!87, !1458, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1435, line: 125, size: 20736, elements: !1472)
!1472 = !{!1473, !1475, !1479, !1480, !1484}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1471, file: !1435, line: 126, baseType: !1474, size: 192)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 192, elements: !799)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1471, file: !1435, line: 127, baseType: !1476, size: 4096, offset: 192)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 4096, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1471, file: !1435, line: 128, baseType: !87, size: 32, offset: 4288)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1471, file: !1435, line: 129, baseType: !1481, size: 16384, offset: 4320)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 16384, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 2048)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1471, file: !1435, line: 130, baseType: !87, size: 32, offset: 20704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1434, file: !1435, line: 69, baseType: !1486, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1435, line: 116, size: 384, elements: !1489)
!1489 = !{!1490, !1494, !1515, !1553, !1584, !1588}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1488, file: !1435, line: 117, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1440}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1488, file: !1435, line: 118, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1498, line: 254, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1499 = !{!1500, !1511}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1497, file: !1498, line: 255, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1504, !1440, !1506, !1060}
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !167, line: 66, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !179, line: 73, baseType: !344)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1498, line: 30, size: 128, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1507, file: !1498, line: 31, baseType: !159, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1507, file: !1498, line: 32, baseType: !166, size: 16, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1497, file: !1498, line: 256, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1504, !1440, !1506, !159, !177}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1488, file: !1435, line: 119, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1498, line: 84, size: 320, elements: !1520)
!1520 = !{!1521, !1522, !1526, !1549, !1551}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1519, file: !1498, line: 85, baseType: !159, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1519, file: !1498, line: 86, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!166, !1440, !1506, !87}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1519, file: !1498, line: 88, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!166, !1440, !1530, !87}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1498, line: 175, size: 512, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1540, !1544, !1545}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1531, file: !1498, line: 176, baseType: !1507, size: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1531, file: !1498, line: 177, baseType: !177, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1531, file: !1498, line: 178, baseType: !163, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1531, file: !1498, line: 179, baseType: !1537, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1254}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1531, file: !1498, line: 180, baseType: !1541, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1504, !735, !1440, !1530, !1060, !183, !177}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1531, file: !1498, line: 182, baseType: !1541, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1531, file: !1498, line: 184, baseType: !1546, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!87, !735, !1440, !1530, !1115}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1519, file: !1498, line: 90, baseType: !1550, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1519, file: !1498, line: 91, baseType: !1552, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1488, file: !1435, line: 120, baseType: !1554, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1557, !1458}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !43, line: 39, size: 384, elements: !1560)
!1560 = !{!1561, !1562, !1566, !1570, !1576, !1580}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !43, line: 40, baseType: !42, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1559, file: !43, line: 41, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1102}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1559, file: !43, line: 42, baseType: !1567, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!163}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1559, file: !43, line: 43, baseType: !1571, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1018, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !43, line: 19, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1559, file: !43, line: 44, baseType: !1577, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1018}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1559, file: !43, line: 45, baseType: !1581, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !163}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1488, file: !1435, line: 121, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1018, !1458}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1488, file: !1435, line: 122, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1458, !1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1434, file: !1435, line: 70, baseType: !1008, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1434, file: !1435, line: 71, baseType: !1596, size: 32, offset: 448)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1597, line: 19, size: 32, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1596, file: !1597, line: 20, baseType: !409, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1434, file: !1435, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1434, file: !1435, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1434, file: !1435, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1434, file: !1435, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1434, file: !1435, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1431, file: !36, line: 47, baseType: !1421, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1431, file: !36, line: 48, baseType: !1440, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1431, file: !36, line: 49, baseType: !1608, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1431, file: !36, line: 50, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1613, line: 26, size: 256, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1612, file: !1613, line: 27, baseType: !7, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1612, file: !1613, line: 28, baseType: !1617, size: 192, offset: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1618, line: 43, size: 192, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1617, file: !1618, line: 44, baseType: !552, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1617, file: !1618, line: 45, baseType: !239, size: 128, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1422, file: !36, line: 418, baseType: !1623, size: 64, offset: 1408)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !1625)
!1625 = !{!1626, !1627, !1632, !1636, !1640, !1644}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1624, file: !36, line: 54, baseType: !1507, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1624, file: !36, line: 55, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1504, !1623, !1631, !1060}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1624, file: !36, line: 57, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1504, !1623, !1631, !159, !177}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1624, file: !36, line: 59, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1421, !159}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1624, file: !36, line: 60, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!87, !1421}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1624, file: !36, line: 61, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1421}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1422, file: !36, line: 419, baseType: !159, size: 64, offset: 1472)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1422, file: !36, line: 420, baseType: !159, size: 64, offset: 1536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1422, file: !36, line: 421, baseType: !1440, size: 64, offset: 1600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1422, file: !36, line: 424, baseType: !1652, size: 64, offset: 1664)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1422, file: !36, line: 425, baseType: !1656, size: 64, offset: 1728)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !226, line: 20, baseType: !1659)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !228, line: 26, baseType: !87)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1422, file: !36, line: 426, baseType: !7, size: 32, offset: 1792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1422, file: !36, line: 435, baseType: !763, size: 256, offset: 1856)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1422, file: !36, line: 437, baseType: !1663, size: 64, offset: 2112)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1665, line: 69, size: 320, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1666 = !{!1667, !1668, !1669, !1686, !1688, !1692, !1693}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1664, file: !1665, line: 70, baseType: !159, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1664, file: !1665, line: 71, baseType: !1421, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1664, file: !1665, line: 72, baseType: !1670, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1665, line: 47, size: 256, elements: !1673)
!1673 = !{!1674, !1675, !1681, !1685}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1665, line: 49, baseType: !7, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1672, file: !1665, line: 51, baseType: !1676, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!87, !159, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1672, file: !1665, line: 53, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!87, !1060, !1679}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1672, file: !1665, line: 55, baseType: !1581, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1664, file: !1665, line: 73, baseType: !1687, size: 16, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1664, file: !1665, line: 74, baseType: !1689, size: 8, offset: 208)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !226, line: 16, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !228, line: 20, baseType: !1691)
!1691 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !1665, line: 75, baseType: !225, size: 8, offset: 216)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !1665, line: 76, baseType: !1694, size: 64, offset: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !1665, line: 76, size: 64, elements: !1695)
!1695 = !{!1696, !1697, !1704}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1694, file: !1665, line: 77, baseType: !163, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1694, file: !1665, line: 78, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1665, line: 86, size: 128, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1700, file: !1665, line: 87, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1700, file: !1665, line: 88, baseType: !1060, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1694, file: !1665, line: 79, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1665, line: 92, size: 256, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1713, !1714}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1707, file: !1665, line: 94, baseType: !7, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1707, file: !1665, line: 95, baseType: !7, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1707, file: !1665, line: 96, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1707, file: !1665, line: 97, baseType: !1670, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1707, file: !1665, line: 98, baseType: !163, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1422, file: !36, line: 438, baseType: !7, size: 32, offset: 2176)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1422, file: !36, line: 441, baseType: !7, size: 32, offset: 2208)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1422, file: !36, line: 442, baseType: !1652, size: 64, offset: 2240)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1422, file: !36, line: 443, baseType: !1656, size: 64, offset: 2304)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1422, file: !36, line: 444, baseType: !1102, size: 8, offset: 2368)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1422, file: !36, line: 451, baseType: !1102, size: 8, offset: 2376)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1422, file: !36, line: 454, baseType: !7, size: 32, offset: 2400)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1422, file: !36, line: 455, baseType: !1723, size: 64, offset: 2432)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1725, line: 23, size: 96, elements: !1726)
!1725 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1724, file: !1725, line: 24, baseType: !87, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1724, file: !1725, line: 24, baseType: !87, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1724, file: !1725, line: 24, baseType: !87, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1422, file: !36, line: 458, baseType: !1731, size: 64, offset: 2496)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!87}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1422, file: !36, line: 460, baseType: !1735, size: 4032, align: 512, offset: 2560)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 4032, elements: !1752)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !1737)
!1737 = !{!1738, !1739, !1740}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1736, file: !36, line: 363, baseType: !163, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1736, file: !36, line: 364, baseType: !7, size: 32, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1736, file: !36, line: 367, baseType: !1741, size: 448, offset: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1741, file: !36, line: 320, baseType: !1421, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1741, file: !36, line: 321, baseType: !1745, size: 384, offset: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1746, line: 40, size: 384, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1745, file: !1746, line: 41, baseType: !1749, size: 384, align: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 384, align: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 2)
!1752 = !{!1753}
!1753 = !DISubrange(count: 7)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1422, file: !36, line: 463, baseType: !1755, size: 192, offset: 6592)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1756, line: 8, size: 192, elements: !1757)
!1756 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1757 = !{!1758, !1759, !1761}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1755, file: !1756, line: 10, baseType: !7, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1755, file: !1756, line: 11, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1755, file: !1756, line: 12, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1764, line: 59, size: 48, elements: !1765)
!1764 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1765 = !{!1766, !1769, !1770, !1771, !1772, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1763, file: !1764, line: 60, baseType: !1767, size: 16)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !226, line: 18, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !228, line: 23, baseType: !356)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1763, file: !1764, line: 61, baseType: !1767, size: 16, offset: 16)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1763, file: !1764, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1763, file: !1764, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1763, file: !1764, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1763, file: !1764, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1422, file: !36, line: 465, baseType: !181, size: 64, offset: 6784)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1422, file: !36, line: 469, baseType: !7, size: 32, offset: 6848)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1422, file: !36, line: 470, baseType: !239, size: 128, offset: 6912)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1422, file: !36, line: 471, baseType: !1778, size: 64, offset: 7040)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1780, line: 33, size: 96, elements: !1781)
!1780 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1781 = !{!1782, !1783, !1784, !1785}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1779, file: !1780, line: 37, baseType: !87, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1779, file: !1780, line: 43, baseType: !87, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1779, file: !1780, line: 45, baseType: !168, size: 16, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1779, file: !1780, line: 47, baseType: !168, size: 16, offset: 80)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1422, file: !36, line: 476, baseType: !1787, size: 64, offset: 7104)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !1789)
!1789 = !{!1790, !1806, !1807, !1808}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1788, file: !36, line: 379, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1793, line: 204, baseType: !1794)
!1793 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1793, line: 197, size: 192, elements: !1795)
!1795 = !{!1796, !1798, !1799, !1800, !1802, !1804}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1794, file: !1793, line: 198, baseType: !1797, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1793, line: 21, baseType: !371)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1794, file: !1793, line: 199, baseType: !229, size: 8, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1794, file: !1793, line: 200, baseType: !229, size: 8, offset: 40)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1794, file: !1793, line: 201, baseType: !1801, size: 16, offset: 48)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1793, line: 17, baseType: !236)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1794, file: !1793, line: 202, baseType: !1803, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1793, line: 16, baseType: !461)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1794, file: !1793, line: 203, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1793, line: 22, baseType: !461)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1788, file: !36, line: 380, baseType: !7, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1788, file: !36, line: 381, baseType: !1060, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1788, file: !36, line: 382, baseType: !1060, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1422, file: !36, line: 477, baseType: !1788, size: 256, offset: 7168)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1422, file: !36, line: 480, baseType: !1811, size: 64, offset: 7424)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1422, file: !36, line: 483, baseType: !1814, size: 64, offset: 7488)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1422, file: !36, line: 488, baseType: !1060, size: 64, offset: 7552)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1422, file: !36, line: 492, baseType: !163, size: 64, offset: 7616)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1422, file: !36, line: 493, baseType: !7, size: 32, offset: 7680)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1422, file: !36, line: 495, baseType: !163, size: 64, offset: 7744)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1422, file: !36, line: 496, baseType: !7, size: 32, offset: 7808)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1422, file: !36, line: 499, baseType: !7, size: 32, offset: 7840)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1422, file: !36, line: 500, baseType: !1823, size: 64, offset: 7872)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1825, line: 45, baseType: !1826)
!1825 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1422, file: !36, line: 503, baseType: !7, size: 32, offset: 7936)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1422, file: !36, line: 504, baseType: !1829, size: 64, offset: 8000)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1832, line: 96, size: 192, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1833 = !{!1834, !1835, !1900, !1903}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1831, file: !1832, line: 97, baseType: !7, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1831, file: !1832, line: 98, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1832, line: 24, size: 3072, elements: !1838)
!1838 = !{!1839, !1841, !1842, !1843, !1844, !1858, !1859, !1860, !1861, !1873, !1885, !1886, !1897, !1898, !1899}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1837, file: !1832, line: 26, baseType: !1840, size: 128)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 128, elements: !1750)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1837, file: !1832, line: 27, baseType: !1840, size: 128, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1837, file: !1832, line: 28, baseType: !87, size: 32, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !1832, line: 31, baseType: !201, size: 32, align: 512, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1837, file: !1832, line: 32, baseType: !1845, size: 960, offset: 576)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1846, line: 206, size: 960, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1847 = !{!1848, !1849, !1852, !1854, !1855, !1857}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1845, file: !1846, line: 207, baseType: !746, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1845, file: !1846, line: 208, baseType: !1850, size: 256, offset: 64)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, size: 256, elements: !820)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1845, file: !1846, line: 209, baseType: !1853, size: 256, offset: 320)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !820)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1845, file: !1846, line: 213, baseType: !345, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1845, file: !1846, line: 215, baseType: !1856, size: 256, offset: 640)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !820)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 216, baseType: !225, size: 8, offset: 896)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1837, file: !1832, line: 33, baseType: !181, size: 64, offset: 1536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1837, file: !1832, line: 34, baseType: !181, size: 64, offset: 1600)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1837, file: !1832, line: 35, baseType: !1102, size: 8, offset: 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1837, file: !1832, line: 36, baseType: !1862, size: 320, offset: 1728)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1863, line: 11, size: 320, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1864 = !{!1865, !1866, !1867, !1872}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1862, file: !1863, line: 16, baseType: !815, size: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1862, file: !1863, line: 17, baseType: !181, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1862, file: !1863, line: 18, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1863, line: 19, baseType: !396, size: 32, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1837, file: !1832, line: 37, baseType: !1874, size: 256, offset: 2048)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1875, line: 98, size: 256, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1874, file: !1875, line: 99, baseType: !756, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1874, file: !1875, line: 100, baseType: !239, size: 128, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1874, file: !1875, line: 101, baseType: !1880, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1875, line: 21, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1837, file: !1832, line: 38, baseType: !743, size: 128, align: 64, offset: 2304)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1837, file: !1832, line: 39, baseType: !1887, size: 64, offset: 2432)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1832, line: 49, size: 768, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1888, file: !1832, line: 50, baseType: !201, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1888, file: !1832, line: 51, baseType: !1853, size: 256, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1888, file: !1832, line: 53, baseType: !1853, size: 256, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1888, file: !1832, line: 54, baseType: !181, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1888, file: !1832, line: 55, baseType: !1887, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1888, file: !1832, line: 56, baseType: !87, size: 32, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1888, file: !1832, line: 57, baseType: !87, size: 32, offset: 736)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1837, file: !1832, line: 40, baseType: !181, size: 64, offset: 2496)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1837, file: !1832, line: 42, baseType: !87, size: 32, offset: 2560)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1837, file: !1832, line: 43, baseType: !1830, size: 64, offset: 2624)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1831, file: !1832, line: 99, baseType: !1901, offset: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1902, line: 211, elements: !728)
!1902 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1831, file: !1832, line: 100, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1832, line: 63, size: 3008, elements: !1906)
!1906 = !{!1907, !1908, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1938}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1905, file: !1832, line: 64, baseType: !1887, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1905, file: !1832, line: 65, baseType: !1909, size: 192, offset: 64)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 192, elements: !799)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1905, file: !1832, line: 67, baseType: !87, size: 32, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1905, file: !1832, line: 68, baseType: !763, size: 256, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1905, file: !1832, line: 69, baseType: !201, size: 32, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1905, file: !1832, line: 70, baseType: !763, size: 256, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1905, file: !1832, line: 71, baseType: !181, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1905, file: !1832, line: 72, baseType: !181, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1905, file: !1832, line: 73, baseType: !181, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1905, file: !1832, line: 74, baseType: !181, size: 64, offset: 1088)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1905, file: !1832, line: 75, baseType: !181, size: 64, offset: 1152)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1905, file: !1832, line: 76, baseType: !181, size: 64, offset: 1216)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1905, file: !1832, line: 77, baseType: !181, size: 64, offset: 1280)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1905, file: !1832, line: 78, baseType: !181, size: 64, offset: 1344)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1905, file: !1832, line: 79, baseType: !1102, size: 8, offset: 1408)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1905, file: !1832, line: 80, baseType: !181, size: 64, offset: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1905, file: !1832, line: 81, baseType: !763, size: 256, offset: 1536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1905, file: !1832, line: 82, baseType: !1612, size: 256, offset: 1792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1905, file: !1832, line: 84, baseType: !191, size: 32, offset: 2048)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1905, file: !1832, line: 87, baseType: !181, size: 64, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1905, file: !1832, line: 88, baseType: !181, size: 64, offset: 2176)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1905, file: !1832, line: 89, baseType: !1930, size: 704, offset: 2240)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1875, line: 111, size: 704, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1937}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1930, file: !1875, line: 112, baseType: !1874, size: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1930, file: !1875, line: 113, baseType: !1862, size: 320, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1930, file: !1875, line: 116, baseType: !1935, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1875, line: 18, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1930, file: !1875, line: 117, baseType: !87, size: 32, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1905, file: !1832, line: 90, baseType: !1830, size: 64, offset: 2944)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1422, file: !36, line: 515, baseType: !1940, size: 64, offset: 8064)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1942, line: 117, size: 128, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1941, file: !1942, line: 118, baseType: !1658, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1941, file: !1942, line: 119, baseType: !1658, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1941, file: !1942, line: 120, baseType: !345, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1422, file: !36, line: 516, baseType: !7, size: 32, offset: 8128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1422, file: !36, line: 519, baseType: !7, size: 32, offset: 8160)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1422, file: !36, line: 520, baseType: !1950, size: 64, offset: 8192)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1422, file: !36, line: 523, baseType: !1952, size: 64, offset: 8256)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !49, line: 372, size: 1024, elements: !1955)
!1955 = !{!1956, !1957, !1997, !2057, !2138, !2139, !2142, !2147, !2148, !2149, !2150, !2152, !2155}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1954, file: !49, line: 373, baseType: !239, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1954, file: !49, line: 374, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !49, line: 291, size: 576, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1968, !1991, !1995, !1996}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1959, file: !49, line: 292, baseType: !159, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1959, file: !49, line: 293, baseType: !163, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !1959, file: !49, line: 295, baseType: !163, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1959, file: !49, line: 297, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!87, !1953, !48, !163}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !1959, file: !49, line: 299, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !49, line: 275, size: 320, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1970, file: !49, line: 276, baseType: !159, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !49, line: 277, baseType: !1974, size: 256, offset: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !49, line: 277, size: 256, elements: !1975)
!1975 = !{!1976, !1987}
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !49, line: 278, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !49, line: 278, size: 256, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1984, !1985, !1986}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1977, file: !49, line: 279, baseType: !159, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1977, file: !49, line: 280, baseType: !1826, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1977, file: !49, line: 281, baseType: !1826, size: 32, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !1977, file: !49, line: 282, baseType: !1983, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !1977, file: !49, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !1977, file: !49, line: 284, baseType: !1826, size: 32, offset: 160)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1977, file: !49, line: 285, baseType: !1826, size: 32, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !1974, file: !49, line: 287, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!87, !1953}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !1959, file: !49, line: 300, baseType: !1992, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!242, !1953}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1959, file: !49, line: 301, baseType: !239, size: 128, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !1959, file: !49, line: 302, baseType: !1988, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !49, line: 375, baseType: !1998, size: 64, offset: 192)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !49, line: 375, size: 64, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1998, file: !49, line: 376, baseType: !159, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !1998, file: !49, line: 378, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !1825, line: 32, size: 640, elements: !2004)
!2004 = !{!2005, !2006, !2018, !2042, !2043, !2044, !2045, !2046, !2050}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2003, file: !1825, line: 33, baseType: !159, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2003, file: !1825, line: 34, baseType: !2007, size: 128, offset: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1942, line: 85, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2007, file: !1942, line: 86, baseType: !191, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1942, line: 101, baseType: !2011, size: 64, offset: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !1942, line: 101, size: 64, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !1942, line: 102, baseType: !181, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2011, file: !1942, line: 103, baseType: !1940, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !1942, line: 104, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1942, line: 104, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2003, file: !1825, line: 35, baseType: !2019, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2021, line: 61, size: 128, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2020, file: !2021, line: 62, baseType: !163, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !2021, line: 63, baseType: !2025, size: 64, offset: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !2021, line: 63, size: 64, elements: !2026)
!2026 = !{!2027, !2028, !2041}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2025, file: !2021, line: 65, baseType: !181, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2025, file: !2021, line: 66, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2031, line: 169, size: 192, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2030, file: !2031, line: 170, baseType: !2029, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2030, file: !2031, line: 171, baseType: !1421, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2030, file: !2031, line: 172, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2021, line: 32, size: 64, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2037, file: !2021, line: 33, baseType: !1658, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2037, file: !2021, line: 34, baseType: !1658, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2025, file: !2021, line: 67, baseType: !2036, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2003, file: !1825, line: 36, baseType: !163, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2003, file: !1825, line: 37, baseType: !163, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2003, file: !1825, line: 38, baseType: !163, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2003, file: !1825, line: 39, baseType: !1731, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2003, file: !1825, line: 40, baseType: !2047, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2003, file: !1825, line: 41, baseType: !2051, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1825, line: 26, size: 192, elements: !2053)
!2053 = !{!2054, !2055, !2056}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2052, file: !1825, line: 27, baseType: !163, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2052, file: !1825, line: 28, baseType: !163, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2052, file: !1825, line: 29, baseType: !87, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1954, file: !49, line: 380, baseType: !2058, size: 256, offset: 256)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !49, line: 148, size: 256, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2058, file: !49, line: 149, baseType: !815, size: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2058, file: !49, line: 150, baseType: !87, size: 32, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2058, file: !49, line: 151, baseType: !2063, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !49, line: 141, size: 256, elements: !2065)
!2065 = !{!2066, !2135, !2136, !2137}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2064, file: !49, line: 142, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !49, line: 138, baseType: !2068)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!59, !2071, !87, !2134}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !49, line: 93, size: 67776, elements: !2073)
!2073 = !{!2074, !2077, !2080, !2083, !2084, !2085, !2086, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2114, !2117, !2118, !2119, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2072, file: !49, line: 94, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !49, line: 13, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2072, file: !49, line: 95, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !49, line: 15, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2072, file: !49, line: 96, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !49, line: 14, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2072, file: !49, line: 97, baseType: !163, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2072, file: !49, line: 98, baseType: !87, size: 32, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2072, file: !49, line: 99, baseType: !763, size: 256, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2072, file: !49, line: 100, baseType: !2087, size: 64, offset: 576)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2090, line: 10, flags: DIFlagFwdDecl)
!2090 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2072, file: !49, line: 101, baseType: !181, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2072, file: !49, line: 102, baseType: !163, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2072, file: !49, line: 103, baseType: !7, size: 32, offset: 768)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2072, file: !49, line: 104, baseType: !1060, size: 64, offset: 832)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2072, file: !49, line: 105, baseType: !7, size: 32, offset: 896)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2072, file: !49, line: 106, baseType: !345, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2072, file: !49, line: 109, baseType: !2098, size: 33088, offset: 1024)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2099, line: 14, size: 33088, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2100 = !{!2101, !2105, !2112, !2113}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2098, file: !2099, line: 15, baseType: !2102, size: 32768)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32768, elements: !2103)
!2103 = !{!2104}
!2104 = !DISubrange(count: 4096)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2098, file: !2099, line: 16, baseType: !2106, size: 192, offset: 32768)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2107, line: 18, size: 192, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2108 = !{!2109, !2110, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2106, file: !2107, line: 19, baseType: !1060, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2106, file: !2107, line: 20, baseType: !177, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2106, file: !2107, line: 21, baseType: !177, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2098, file: !2099, line: 17, baseType: !177, size: 64, offset: 32960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2098, file: !2099, line: 18, baseType: !87, size: 32, offset: 33024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2072, file: !49, line: 111, baseType: !2115, size: 64, offset: 34112)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !654, line: 913, baseType: !2116)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !659)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2072, file: !49, line: 114, baseType: !1102, size: 8, offset: 34176)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2072, file: !49, line: 117, baseType: !2098, size: 33088, offset: 34240)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2072, file: !49, line: 118, baseType: !2120, size: 64, offset: 67328)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !49, line: 79, size: 64, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !49, line: 80, baseType: !168, size: 16)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2121, file: !49, line: 81, baseType: !229, size: 8, offset: 16)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2121, file: !49, line: 82, baseType: !229, size: 8, offset: 24)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2121, file: !49, line: 83, baseType: !87, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2072, file: !49, line: 119, baseType: !181, size: 64, offset: 67392)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2072, file: !49, line: 120, baseType: !87, size: 32, offset: 67456)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2072, file: !49, line: 121, baseType: !87, size: 32, offset: 67488)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2072, file: !49, line: 122, baseType: !87, size: 32, offset: 67520)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2072, file: !49, line: 123, baseType: !460, size: 64, offset: 67584)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2072, file: !49, line: 125, baseType: !183, size: 64, offset: 67648)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2072, file: !49, line: 126, baseType: !345, size: 64, offset: 67712)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2064, file: !49, line: 143, baseType: !2067, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2064, file: !49, line: 144, baseType: !2067, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2064, file: !49, line: 145, baseType: !2067, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !1954, file: !49, line: 381, baseType: !1060, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1954, file: !49, line: 382, baseType: !2140, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !120, line: 821, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !49, line: 387, baseType: !2143, size: 64, offset: 640)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !49, line: 387, size: 64, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2143, file: !49, line: 388, baseType: !163, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2143, file: !49, line: 389, baseType: !191, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1954, file: !49, line: 391, baseType: !163, size: 64, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !49, line: 394, baseType: !87, size: 32, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !1954, file: !49, line: 397, baseType: !87, size: 32, offset: 800)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !1954, file: !49, line: 398, baseType: !2151, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !1954, file: !49, line: 399, baseType: !2153, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !49, line: 399, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !1954, file: !49, line: 401, baseType: !2156, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!87, !1953, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !120, line: 671, size: 8512, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2695, !2696, !2697, !2698, !2704, !2705, !2706, !2707, !2708, !2792, !2793, !2794, !2795, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2915, !2916, !2917, !2918, !2919, !2920, !2935, !2936, !2937, !2938, !2939, !2945, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2962, !3135, !3136, !3137, !3138, !3151, !3152, !3153}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2160, file: !120, line: 678, baseType: !239, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2160, file: !120, line: 684, baseType: !239, size: 128, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2160, file: !120, line: 685, baseType: !239, size: 128, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2160, file: !120, line: 689, baseType: !452, size: 192, align: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2160, file: !120, line: 690, baseType: !460, size: 64, offset: 576)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2160, file: !120, line: 696, baseType: !239, size: 128, offset: 640)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2160, file: !120, line: 698, baseType: !815, size: 128, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2160, file: !120, line: 699, baseType: !239, size: 128, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2160, file: !120, line: 700, baseType: !87, size: 32, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2160, file: !120, line: 703, baseType: !87, size: 32, offset: 1056)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2160, file: !120, line: 705, baseType: !87, size: 32, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2160, file: !120, line: 707, baseType: !7, size: 32, offset: 1120)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2160, file: !120, line: 708, baseType: !2159, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2160, file: !120, line: 714, baseType: !2176, size: 64, offset: 1216)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !120, line: 302, size: 2432, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2604, !2605, !2606, !2607, !2608, !2612, !2613, !2617, !2621, !2622, !2626, !2630, !2631, !2632, !2636, !2640, !2644, !2645, !2646, !2650, !2651, !2655, !2660, !2661, !2681, !2685, !2686, !2687, !2691}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2177, file: !120, line: 303, baseType: !239, size: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2177, file: !120, line: 305, baseType: !1421, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2177, file: !120, line: 306, baseType: !2182, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !72, line: 705, size: 5824, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2190, !2191, !2244, !2314, !2315, !2316, !2317, !2318, !2325, !2417, !2430, !2440, !2444, !2446, !2447, !2448, !2452, !2459, !2460, !2463, !2466, !2470, !2473, !2474, !2475, !2476, !2477, !2478, !2508, !2509, !2510, !2513, !2516, !2525, !2526, !2527, !2528, !2529, !2530}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2183, file: !72, line: 706, baseType: !1434, size: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2183, file: !72, line: 707, baseType: !2182, size: 64, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2183, file: !72, line: 709, baseType: !2188, size: 64, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !72, line: 37, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2183, file: !72, line: 711, baseType: !159, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2183, file: !72, line: 712, baseType: !2192, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !72, line: 89, size: 384, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2204, !2209, !2213}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2194, file: !72, line: 90, baseType: !159, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2194, file: !72, line: 91, baseType: !1516, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2194, file: !72, line: 92, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!87, !2202, !1470}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2194, file: !72, line: 93, baseType: !2205, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!1060, !2202, !2208, !1592, !1593}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2194, file: !72, line: 95, baseType: !2210, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2182}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2194, file: !72, line: 97, baseType: !2214, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !79, line: 286, size: 1472, elements: !2217)
!2217 = !{!2218, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2216, file: !79, line: 287, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!87, !2182}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2216, file: !79, line: 288, baseType: !2210, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2216, file: !79, line: 289, baseType: !2219, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2216, file: !79, line: 290, baseType: !2219, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2216, file: !79, line: 291, baseType: !2219, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2216, file: !79, line: 292, baseType: !2219, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2216, file: !79, line: 293, baseType: !2219, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2216, file: !79, line: 294, baseType: !2219, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2216, file: !79, line: 295, baseType: !2219, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2216, file: !79, line: 296, baseType: !2219, size: 64, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2216, file: !79, line: 297, baseType: !2219, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2216, file: !79, line: 298, baseType: !2219, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2216, file: !79, line: 299, baseType: !2219, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2216, file: !79, line: 300, baseType: !2219, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2216, file: !79, line: 301, baseType: !2219, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2216, file: !79, line: 302, baseType: !2219, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2216, file: !79, line: 303, baseType: !2219, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2216, file: !79, line: 304, baseType: !2219, size: 64, offset: 1088)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2216, file: !79, line: 305, baseType: !2219, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2216, file: !79, line: 306, baseType: !2219, size: 64, offset: 1216)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2216, file: !79, line: 307, baseType: !2219, size: 64, offset: 1280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2216, file: !79, line: 308, baseType: !2219, size: 64, offset: 1344)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2216, file: !79, line: 309, baseType: !2219, size: 64, offset: 1408)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2183, file: !72, line: 714, baseType: !2245, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2248, line: 80, size: 1344, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2313}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2247, file: !2248, line: 81, baseType: !159, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2247, file: !2248, line: 82, baseType: !159, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2247, file: !2248, line: 83, baseType: !1516, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2247, file: !2248, line: 84, baseType: !1516, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2247, file: !2248, line: 85, baseType: !1516, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2247, file: !2248, line: 87, baseType: !2256, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!87, !2182, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !66, line: 96, size: 1152, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2272, !2276, !2277, !2278, !2279, !2280, !2288, !2289, !2290, !2291, !2292, !2293}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2260, file: !66, line: 97, baseType: !159, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2260, file: !66, line: 98, baseType: !2245, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2260, file: !66, line: 100, baseType: !1421, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2260, file: !66, line: 101, baseType: !159, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2260, file: !66, line: 103, baseType: !1102, size: 8, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2260, file: !66, line: 104, baseType: !65, size: 32, offset: 288)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2260, file: !66, line: 106, baseType: !2269, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !66, line: 106, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2260, file: !66, line: 107, baseType: !2273, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !66, line: 107, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2260, file: !66, line: 109, baseType: !2219, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2260, file: !66, line: 110, baseType: !2210, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2260, file: !66, line: 111, baseType: !2219, size: 64, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2260, file: !66, line: 112, baseType: !2210, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2260, file: !66, line: 113, baseType: !2281, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!87, !2182, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !79, line: 60, baseType: !2285)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !79, line: 58, size: 32, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2285, file: !79, line: 59, baseType: !87, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2260, file: !66, line: 114, baseType: !2219, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2260, file: !66, line: 115, baseType: !1516, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2260, file: !66, line: 116, baseType: !1516, size: 64, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2260, file: !66, line: 118, baseType: !2214, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2260, file: !66, line: 119, baseType: !2210, size: 64, offset: 1024)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2260, file: !66, line: 121, baseType: !2294, size: 64, offset: 1088)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !66, line: 121, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2247, file: !2248, line: 88, baseType: !2199, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2247, file: !2248, line: 89, baseType: !2219, size: 64, offset: 448)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2247, file: !2248, line: 90, baseType: !2210, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2247, file: !2248, line: 91, baseType: !2210, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2247, file: !2248, line: 92, baseType: !2210, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2247, file: !2248, line: 94, baseType: !2219, size: 64, offset: 704)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2247, file: !2248, line: 95, baseType: !2219, size: 64, offset: 768)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2247, file: !2248, line: 97, baseType: !2281, size: 64, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2247, file: !2248, line: 98, baseType: !2219, size: 64, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2247, file: !2248, line: 100, baseType: !2219, size: 64, offset: 960)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2247, file: !2248, line: 102, baseType: !2219, size: 64, offset: 1024)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2247, file: !2248, line: 103, baseType: !2210, size: 64, offset: 1088)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2247, file: !2248, line: 105, baseType: !2214, size: 64, offset: 1152)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2247, file: !2248, line: 107, baseType: !2310, size: 64, offset: 1216)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2248, line: 107, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2247, file: !2248, line: 109, baseType: !1102, size: 8, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2183, file: !72, line: 715, baseType: !2259, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2183, file: !72, line: 717, baseType: !163, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2183, file: !72, line: 719, baseType: !163, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2183, file: !72, line: 721, baseType: !763, size: 256, offset: 1024)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2183, file: !72, line: 725, baseType: !2319, size: 448, offset: 1280)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !72, line: 517, size: 448, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2319, file: !72, line: 518, baseType: !239, size: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2319, file: !72, line: 519, baseType: !239, size: 128, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2319, file: !72, line: 520, baseType: !239, size: 128, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2319, file: !72, line: 521, baseType: !71, size: 32, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2183, file: !72, line: 726, baseType: !2326, size: 2496, offset: 1728)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !79, line: 663, size: 2496, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2410, !2414}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2326, file: !79, line: 664, baseType: !2284, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2326, file: !79, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2326, file: !79, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2326, file: !79, line: 667, baseType: !1102, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2326, file: !79, line: 668, baseType: !1102, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2326, file: !79, line: 669, baseType: !1102, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2326, file: !79, line: 670, baseType: !1102, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2326, file: !79, line: 671, baseType: !1102, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2326, file: !79, line: 672, baseType: !1102, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2326, file: !79, line: 673, baseType: !1102, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2326, file: !79, line: 674, baseType: !1102, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2326, file: !79, line: 675, baseType: !396, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2326, file: !79, line: 676, baseType: !201, size: 32, offset: 96)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2326, file: !79, line: 678, baseType: !239, size: 128, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2326, file: !79, line: 679, baseType: !1612, size: 256, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2326, file: !79, line: 680, baseType: !2344, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2346, line: 43, size: 1536, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2345, file: !2346, line: 44, baseType: !159, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2345, file: !2346, line: 45, baseType: !87, size: 32, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2345, file: !2346, line: 46, baseType: !239, size: 128, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2345, file: !2346, line: 47, baseType: !201, size: 32, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2345, file: !2346, line: 48, baseType: !2353, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !79, line: 629, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2345, file: !2346, line: 49, baseType: !1862, size: 320, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2345, file: !2346, line: 50, baseType: !181, size: 64, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2345, file: !2346, line: 51, baseType: !535, size: 64, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2345, file: !2346, line: 52, baseType: !535, size: 64, offset: 832)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2345, file: !2346, line: 53, baseType: !535, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2345, file: !2346, line: 54, baseType: !535, size: 64, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2345, file: !2346, line: 55, baseType: !535, size: 64, offset: 1024)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2345, file: !2346, line: 56, baseType: !181, size: 64, offset: 1088)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2345, file: !2346, line: 57, baseType: !181, size: 64, offset: 1152)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2345, file: !2346, line: 58, baseType: !181, size: 64, offset: 1216)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2345, file: !2346, line: 59, baseType: !181, size: 64, offset: 1280)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2345, file: !2346, line: 60, baseType: !181, size: 64, offset: 1344)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2345, file: !2346, line: 61, baseType: !2182, size: 64, offset: 1408)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2345, file: !2346, line: 62, baseType: !1102, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2345, file: !2346, line: 63, baseType: !1102, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2326, file: !79, line: 681, baseType: !1102, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2326, file: !79, line: 682, baseType: !1102, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2326, file: !79, line: 683, baseType: !1102, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2326, file: !79, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2326, file: !79, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2326, file: !79, line: 690, baseType: !527, size: 512, offset: 640)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2326, file: !79, line: 691, baseType: !460, size: 64, offset: 1152)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2326, file: !79, line: 692, baseType: !1874, size: 256, offset: 1216)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2326, file: !79, line: 693, baseType: !196, size: 192, offset: 1472)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2326, file: !79, line: 694, baseType: !2353, size: 64, offset: 1664)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2326, file: !79, line: 695, baseType: !191, size: 32, offset: 1728)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2326, file: !79, line: 696, baseType: !191, size: 32, offset: 1760)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2326, file: !79, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2326, file: !79, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2326, file: !79, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2326, file: !79, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2326, file: !79, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2326, file: !79, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2326, file: !79, line: 703, baseType: !1102, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2326, file: !79, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2326, file: !79, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2326, file: !79, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2326, file: !79, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2326, file: !79, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2326, file: !79, line: 709, baseType: !7, size: 32, offset: 1824)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2326, file: !79, line: 710, baseType: !78, size: 32, offset: 1856)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2326, file: !79, line: 711, baseType: !86, size: 32, offset: 1888)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2326, file: !79, line: 712, baseType: !86, size: 32, offset: 1920)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2326, file: !79, line: 713, baseType: !87, size: 32, offset: 1952)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2326, file: !79, line: 714, baseType: !87, size: 32, offset: 1984)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2326, file: !79, line: 715, baseType: !460, size: 64, offset: 2048)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2326, file: !79, line: 716, baseType: !460, size: 64, offset: 2112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2326, file: !79, line: 717, baseType: !460, size: 64, offset: 2176)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2326, file: !79, line: 718, baseType: !460, size: 64, offset: 2240)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2326, file: !79, line: 720, baseType: !2405, size: 64, offset: 2304)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !79, line: 632, size: 64, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2406, file: !79, line: 633, baseType: !201, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2406, file: !79, line: 634, baseType: !7, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2326, file: !79, line: 721, baseType: !2411, size: 64, offset: 2368)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !2182, !1658}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2326, file: !79, line: 722, baseType: !2415, size: 64, offset: 2432)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !79, line: 722, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2183, file: !72, line: 727, baseType: !2418, size: 64, offset: 4224)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !79, line: 742, size: 1792, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2427, !2428, !2429}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2419, file: !79, line: 743, baseType: !2216, size: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2419, file: !79, line: 744, baseType: !2219, size: 64, offset: 1472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2419, file: !79, line: 745, baseType: !2424, size: 64, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{null, !2182, !1102}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2419, file: !79, line: 746, baseType: !2219, size: 64, offset: 1600)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2419, file: !79, line: 747, baseType: !2210, size: 64, offset: 1664)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2419, file: !79, line: 748, baseType: !2210, size: 64, offset: 1728)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2183, file: !72, line: 736, baseType: !2431, size: 128, offset: 4288)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !72, line: 529, size: 128, elements: !2432)
!2432 = !{!2433, !2437}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2431, file: !72, line: 531, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2436, line: 13, flags: DIFlagFwdDecl)
!2436 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2431, file: !72, line: 532, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !72, line: 49, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2183, file: !72, line: 738, baseType: !2441, size: 64, offset: 4416)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !72, line: 738, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2183, file: !72, line: 740, baseType: !2445, size: 64, offset: 4480)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2183, file: !72, line: 741, baseType: !460, size: 64, offset: 4544)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2183, file: !72, line: 746, baseType: !460, size: 64, offset: 4608)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2183, file: !72, line: 747, baseType: !2449, size: 64, offset: 4672)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !72, line: 747, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2183, file: !72, line: 749, baseType: !2453, size: 64, offset: 4736)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !72, line: 428, size: 128, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2454, file: !72, line: 433, baseType: !7, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2454, file: !72, line: 434, baseType: !7, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2454, file: !72, line: 435, baseType: !181, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2183, file: !72, line: 751, baseType: !239, size: 128, offset: 4800)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2183, file: !72, line: 762, baseType: !2461, size: 64, offset: 4928)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !72, line: 762, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2183, file: !72, line: 770, baseType: !2464, offset: 4992)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2465, line: 5, elements: !728)
!2465 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2183, file: !72, line: 772, baseType: !2467, size: 64, offset: 4992)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2469, line: 18, flags: DIFlagFwdDecl)
!2469 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2183, file: !72, line: 773, baseType: !2471, size: 64, offset: 5056)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2248, line: 22, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2183, file: !72, line: 776, baseType: !87, size: 32, offset: 5120)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2183, file: !72, line: 778, baseType: !1391, size: 32, offset: 5152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2183, file: !72, line: 779, baseType: !396, size: 32, offset: 5184)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2183, file: !72, line: 781, baseType: !201, size: 32, offset: 5216)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2183, file: !72, line: 782, baseType: !239, size: 128, offset: 5248)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2183, file: !72, line: 784, baseType: !2479, size: 64, offset: 5376)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2482, line: 52, size: 768, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2492, !2496, !2497, !2498, !2499, !2503, !2507}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2481, file: !2482, line: 53, baseType: !159, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2481, file: !2482, line: 55, baseType: !1516, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2481, file: !2482, line: 56, baseType: !1516, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2481, file: !2482, line: 58, baseType: !2199, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2481, file: !2482, line: 59, baseType: !2489, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!1060, !2202, !2208}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2481, file: !2482, line: 61, baseType: !2493, size: 64, offset: 320)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !2479}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2481, file: !2482, line: 62, baseType: !2210, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2481, file: !2482, line: 64, baseType: !2219, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2481, file: !2482, line: 66, baseType: !1557, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2481, file: !2482, line: 67, baseType: !2500, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!1018, !2202}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2481, file: !2482, line: 69, baseType: !2504, size: 64, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2202, !1592, !1593}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2481, file: !2482, line: 71, baseType: !2214, size: 64, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2183, file: !72, line: 785, baseType: !1516, size: 64, offset: 5440)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2183, file: !72, line: 787, baseType: !2210, size: 64, offset: 5504)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2183, file: !72, line: 788, baseType: !2511, size: 64, offset: 5568)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !72, line: 46, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2183, file: !72, line: 789, baseType: !2514, size: 64, offset: 5632)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !72, line: 48, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2183, file: !72, line: 791, baseType: !2517, size: 64, offset: 5696)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !72, line: 597, size: 128, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2518, file: !72, line: 598, baseType: !94, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2518, file: !72, line: 599, baseType: !103, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2518, file: !72, line: 600, baseType: !108, size: 32, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2518, file: !72, line: 601, baseType: !1102, size: 8, offset: 96)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2518, file: !72, line: 602, baseType: !1102, size: 8, offset: 104)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2183, file: !72, line: 793, baseType: !113, size: 32, offset: 5760)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2183, file: !72, line: 795, baseType: !1102, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2183, file: !72, line: 796, baseType: !1102, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2183, file: !72, line: 797, baseType: !1102, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2183, file: !72, line: 798, baseType: !1102, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2183, file: !72, line: 799, baseType: !1102, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2177, file: !120, line: 307, baseType: !2182, size: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2177, file: !120, line: 308, baseType: !1516, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2177, file: !120, line: 309, baseType: !1516, size: 64, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !120, line: 310, baseType: !159, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2177, file: !120, line: 311, baseType: !87, size: 32, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2177, file: !120, line: 316, baseType: !87, size: 32, offset: 544)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2177, file: !120, line: 318, baseType: !1760, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2177, file: !120, line: 319, baseType: !2539, size: 64, offset: 640)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !120, line: 977, size: 1856, elements: !2541)
!2541 = !{!2542, !2594, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !2540, file: !120, line: 978, baseType: !2543, size: 896)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !120, line: 873, size: 896, elements: !2544)
!2544 = !{!2545, !2546, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2543, file: !120, line: 874, baseType: !2176, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2543, file: !120, line: 875, baseType: !2547, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !120, line: 912, size: 1792, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2548, file: !120, line: 917, baseType: !552, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2548, file: !120, line: 923, baseType: !763, size: 256, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2548, file: !120, line: 925, baseType: !239, size: 128, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2548, file: !120, line: 926, baseType: !2554, size: 128, offset: 448)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !120, line: 901, size: 128, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2554, file: !120, line: 902, baseType: !593, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2554, file: !120, line: 903, baseType: !460, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2548, file: !120, line: 927, baseType: !2554, size: 128, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2548, file: !120, line: 928, baseType: !239, size: 128, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2548, file: !120, line: 930, baseType: !87, size: 32, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2548, file: !120, line: 931, baseType: !87, size: 32, offset: 864)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2548, file: !120, line: 932, baseType: !87, size: 32, offset: 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2548, file: !120, line: 934, baseType: !87, size: 32, offset: 928)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2548, file: !120, line: 935, baseType: !87, size: 32, offset: 960)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2548, file: !120, line: 936, baseType: !87, size: 32, offset: 992)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2548, file: !120, line: 937, baseType: !87, size: 32, offset: 1024)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2548, file: !120, line: 939, baseType: !409, size: 32, offset: 1056)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2548, file: !120, line: 940, baseType: !401, size: 64, offset: 1088)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2548, file: !120, line: 945, baseType: !460, size: 64, offset: 1152)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2548, file: !120, line: 946, baseType: !460, size: 64, offset: 1216)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2548, file: !120, line: 947, baseType: !460, size: 64, offset: 1280)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2548, file: !120, line: 953, baseType: !2547, size: 64, offset: 1344)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2548, file: !120, line: 954, baseType: !460, size: 64, offset: 1408)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2548, file: !120, line: 955, baseType: !460, size: 64, offset: 1472)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2548, file: !120, line: 956, baseType: !87, size: 32, offset: 1536)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2548, file: !120, line: 958, baseType: !87, size: 32, offset: 1568)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2548, file: !120, line: 960, baseType: !743, size: 128, align: 64, offset: 1600)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2548, file: !120, line: 968, baseType: !2579, size: 64, offset: 1728)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2580, line: 12, baseType: !2581)
!2580 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2580, line: 10, size: 64, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2581, file: !2580, line: 11, baseType: !756, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !2543, file: !120, line: 877, baseType: !239, size: 128, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !2543, file: !120, line: 879, baseType: !239, size: 128, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !2543, file: !120, line: 880, baseType: !239, size: 128, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !2543, file: !120, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2543, file: !120, line: 885, baseType: !7, size: 32, offset: 544)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2543, file: !120, line: 886, baseType: !7, size: 32, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2543, file: !120, line: 888, baseType: !191, size: 32, offset: 608)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2543, file: !120, line: 889, baseType: !743, size: 128, align: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !2543, file: !120, line: 891, baseType: !163, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !2543, file: !120, line: 898, baseType: !87, size: 32, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !2540, file: !120, line: 979, baseType: !2595, size: 64, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !2540, file: !120, line: 981, baseType: !239, size: 128, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !2540, file: !120, line: 982, baseType: !87, size: 32, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !2540, file: !120, line: 984, baseType: !87, size: 32, offset: 1120)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2540, file: !120, line: 985, baseType: !87, size: 32, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !2540, file: !120, line: 987, baseType: !552, size: 32, offset: 1184)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !2540, file: !120, line: 988, baseType: !527, size: 512, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !2540, file: !120, line: 989, baseType: !535, size: 64, offset: 1728)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !2540, file: !120, line: 990, baseType: !7, size: 32, offset: 1792)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2177, file: !120, line: 320, baseType: !191, size: 32, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2177, file: !120, line: 321, baseType: !87, size: 32, offset: 736)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2177, file: !120, line: 322, baseType: !87, size: 32, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2177, file: !120, line: 325, baseType: !7, size: 32, offset: 800)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2177, file: !120, line: 331, baseType: !2609, size: 64, offset: 832)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2176}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2177, file: !120, line: 332, baseType: !2609, size: 64, offset: 896)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2177, file: !120, line: 350, baseType: !2614, size: 64, offset: 960)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!87, !2159}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2177, file: !120, line: 356, baseType: !2618, size: 64, offset: 1024)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2159, !707}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2177, file: !120, line: 357, baseType: !2618, size: 64, offset: 1088)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2177, file: !120, line: 385, baseType: !2623, size: 64, offset: 1152)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!87, !2159, !87}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2177, file: !120, line: 386, baseType: !2627, size: 64, offset: 1216)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !2159, !87}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2177, file: !120, line: 406, baseType: !2627, size: 64, offset: 1280)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2177, file: !120, line: 407, baseType: !2627, size: 64, offset: 1344)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2177, file: !120, line: 415, baseType: !2633, size: 64, offset: 1408)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2159}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2177, file: !120, line: 427, baseType: !2637, size: 64, offset: 1472)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2176, !7}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2177, file: !120, line: 436, baseType: !2641, size: 64, offset: 1536)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!87, !2176}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2177, file: !120, line: 443, baseType: !2609, size: 64, offset: 1600)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2177, file: !120, line: 450, baseType: !2614, size: 64, offset: 1664)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2177, file: !120, line: 455, baseType: !2647, size: 64, offset: 1728)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2595, !1102}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2177, file: !120, line: 461, baseType: !853, size: 64, offset: 1792)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2177, file: !120, line: 469, baseType: !2652, size: 64, offset: 1856)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !2595, !2595}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2177, file: !120, line: 476, baseType: !2656, size: 64, offset: 1920)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!163, !2159, !2659, !87, !1102}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2177, file: !120, line: 483, baseType: !1581, size: 64, offset: 1984)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2177, file: !120, line: 494, baseType: !2662, size: 64, offset: 2048)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!345, !2159, !2665, !181}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !120, line: 1014, size: 448, elements: !2667)
!2667 = !{!2668, !2669, !2672, !2673, !2674, !2675, !2680}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2666, file: !120, line: 1015, baseType: !2159, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2666, file: !120, line: 1016, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !120, line: 641, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2666, file: !120, line: 1017, baseType: !181, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2666, file: !120, line: 1018, baseType: !181, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !2666, file: !120, line: 1019, baseType: !460, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !120, line: 1020, baseType: !2676, size: 64, offset: 320)
!2676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2666, file: !120, line: 1020, size: 64, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2676, file: !120, line: 1021, baseType: !163, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2676, file: !120, line: 1022, baseType: !181, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2666, file: !120, line: 1024, baseType: !87, size: 32, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2177, file: !120, line: 506, baseType: !2682, size: 64, offset: 2112)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!87, !242}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2177, file: !120, line: 520, baseType: !2633, size: 64, offset: 2176)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2177, file: !120, line: 530, baseType: !2614, size: 64, offset: 2240)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2177, file: !120, line: 537, baseType: !2688, size: 64, offset: 2304)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!1102, !2176, !87}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2177, file: !120, line: 542, baseType: !2692, size: 64, offset: 2368)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!87, !2159, !460}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2160, file: !120, line: 715, baseType: !163, size: 64, offset: 1280)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2160, file: !120, line: 717, baseType: !119, size: 32, offset: 1344)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2160, file: !120, line: 718, baseType: !7, size: 32, offset: 1376)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2160, file: !120, line: 719, baseType: !2699, size: 64, offset: 1408)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !2700, line: 26, baseType: !2701)
!2700 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2700, line: 24, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2701, file: !2700, line: 25, baseType: !2579, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2160, file: !120, line: 720, baseType: !758, size: 64, offset: 1472)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2160, file: !120, line: 728, baseType: !460, size: 64, offset: 1536)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2160, file: !120, line: 729, baseType: !460, size: 64, offset: 1600)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2160, file: !120, line: 730, baseType: !460, size: 64, offset: 1664)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2160, file: !120, line: 732, baseType: !2709, size: 1088, offset: 1728)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !2710, line: 385, size: 1088, elements: !2711)
!2710 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!2711 = !{!2712, !2713, !2714, !2715, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2765, !2766, !2773, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2709, file: !2710, line: 390, baseType: !371, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2709, file: !2710, line: 395, baseType: !371, size: 32, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2709, file: !2710, line: 400, baseType: !461, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !2710, line: 402, baseType: !2716, size: 64, offset: 128)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !2710, line: 402, size: 64, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !2716, file: !2710, line: 403, baseType: !461, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !2716, file: !2710, line: 404, baseType: !461, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !2709, file: !2710, line: 407, baseType: !461, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !2709, file: !2710, line: 408, baseType: !461, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !2709, file: !2710, line: 410, baseType: !461, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !2709, file: !2710, line: 411, baseType: !461, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !2709, file: !2710, line: 412, baseType: !461, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2709, file: !2710, line: 413, baseType: !461, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !2709, file: !2710, line: 414, baseType: !461, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !2709, file: !2710, line: 415, baseType: !461, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !2709, file: !2710, line: 416, baseType: !461, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !2709, file: !2710, line: 417, baseType: !461, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2709, file: !2710, line: 418, baseType: !461, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2709, file: !2710, line: 419, baseType: !461, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2709, file: !2710, line: 420, baseType: !461, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !2709, file: !2710, line: 421, baseType: !461, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !2709, file: !2710, line: 422, baseType: !461, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2709, file: !2710, line: 423, baseType: !461, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !2709, file: !2710, line: 424, baseType: !461, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !2709, file: !2710, line: 435, baseType: !461, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !2709, file: !2710, line: 436, baseType: !461, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !2709, file: !2710, line: 437, baseType: !461, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !2709, file: !2710, line: 439, baseType: !461, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !2709, file: !2710, line: 440, baseType: !461, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !2709, file: !2710, line: 442, baseType: !461, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !2709, file: !2710, line: 443, baseType: !461, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !2709, file: !2710, line: 444, baseType: !461, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !2709, file: !2710, line: 445, baseType: !461, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !2709, file: !2710, line: 446, baseType: !461, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !2709, file: !2710, line: 447, baseType: !461, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !2709, file: !2710, line: 448, baseType: !461, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !2709, file: !2710, line: 449, baseType: !461, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !2709, file: !2710, line: 450, baseType: !461, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !2709, file: !2710, line: 451, baseType: !461, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !2709, file: !2710, line: 452, baseType: !461, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2709, file: !2710, line: 453, baseType: !461, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !2709, file: !2710, line: 454, baseType: !461, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !2709, file: !2710, line: 455, baseType: !461, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !2709, file: !2710, line: 456, baseType: !461, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !2709, file: !2710, line: 457, baseType: !461, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !2709, file: !2710, line: 458, baseType: !461, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !2709, file: !2710, line: 459, baseType: !461, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !2710, line: 461, baseType: !2761, size: 32, offset: 384)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !2710, line: 461, size: 32, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !2761, file: !2710, line: 462, baseType: !371, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !2761, file: !2710, line: 463, baseType: !371, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !2709, file: !2710, line: 466, baseType: !371, size: 32, offset: 416)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !2710, line: 467, baseType: !2767, size: 64, offset: 448)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !2710, line: 467, size: 64, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !2767, file: !2710, line: 468, baseType: !461, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !2767, file: !2710, line: 469, baseType: !461, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !2767, file: !2710, line: 470, baseType: !461, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !2767, file: !2710, line: 471, baseType: !461, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !2710, line: 473, baseType: !2774, size: 64, offset: 512)
!2774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !2710, line: 473, size: 64, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !2774, file: !2710, line: 474, baseType: !461, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !2774, file: !2710, line: 475, baseType: !461, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !2774, file: !2710, line: 476, baseType: !461, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !2774, file: !2710, line: 477, baseType: !461, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !2709, file: !2710, line: 479, baseType: !461, size: 64, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !2709, file: !2710, line: 485, baseType: !461, size: 64, offset: 640)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !2709, file: !2710, line: 490, baseType: !371, size: 32, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2709, file: !2710, line: 492, baseType: !1659, size: 32, offset: 736)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !2709, file: !2710, line: 501, baseType: !461, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !2709, file: !2710, line: 506, baseType: !371, size: 32, offset: 832)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !2709, file: !2710, line: 507, baseType: !236, size: 16, offset: 864)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !2709, file: !2710, line: 508, baseType: !236, size: 16, offset: 880)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !2709, file: !2710, line: 509, baseType: !371, size: 32, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !2709, file: !2710, line: 510, baseType: !371, size: 32, offset: 928)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !2709, file: !2710, line: 518, baseType: !461, size: 64, offset: 960)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !2709, file: !2710, line: 520, baseType: !461, size: 64, offset: 1024)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2160, file: !120, line: 733, baseType: !235, size: 16, offset: 2816)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2160, file: !120, line: 734, baseType: !235, size: 16, offset: 2832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2160, file: !120, line: 735, baseType: !235, size: 16, offset: 2848)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2160, file: !120, line: 736, baseType: !2796, size: 1536, offset: 2880)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !120, line: 155, size: 1536, elements: !2797)
!2797 = !{!2798, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2882, !2883, !2884, !2885}
!2798 = !DIDerivedType(tag: DW_TAG_member, scope: !2796, file: !120, line: 157, baseType: !2799, size: 768)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2796, file: !120, line: 157, size: 768, elements: !2800)
!2800 = !{!2801, !2820, !2824, !2828, !2833, !2855}
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 158, baseType: !2802, size: 768)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 158, size: 768, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2819}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2802, file: !120, line: 159, baseType: !460, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !2802, file: !120, line: 160, baseType: !460, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !2802, file: !120, line: 161, baseType: !181, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !2802, file: !120, line: 162, baseType: !181, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !2802, file: !120, line: 163, baseType: !87, size: 32, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2802, file: !120, line: 164, baseType: !87, size: 32, offset: 288)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2802, file: !120, line: 165, baseType: !87, size: 32, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !120, line: 166, baseType: !87, size: 32, offset: 352)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !2802, file: !120, line: 168, baseType: !2813, size: 192, offset: 384)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !120, line: 134, size: 192, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2818}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2813, file: !120, line: 135, baseType: !460, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2813, file: !120, line: 136, baseType: !7, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2813, file: !120, line: 137, baseType: !87, size: 32, offset: 96)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2813, file: !120, line: 138, baseType: !87, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !2802, file: !120, line: 169, baseType: !2813, size: 192, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 171, baseType: !2821, size: 512)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 171, size: 512, elements: !2822)
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !2821, file: !120, line: 172, baseType: !527, size: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 174, baseType: !2825, size: 128)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 174, size: 128, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !2825, file: !120, line: 176, baseType: !239, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 178, baseType: !2829, size: 128)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 178, size: 128, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !2829, file: !120, line: 179, baseType: !460, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !2829, file: !120, line: 180, baseType: !460, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 183, baseType: !2834, size: 320)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 183, size: 320, elements: !2835)
!2835 = !{!2836, !2844}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2834, file: !120, line: 189, baseType: !2837, size: 192)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !2838, line: 14, size: 192, elements: !2839)
!2838 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2837, file: !2838, line: 15, baseType: !181, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2837, file: !2838, line: 16, baseType: !181, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2837, file: !2838, line: 17, baseType: !225, size: 8, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2837, file: !2838, line: 18, baseType: !225, size: 8, offset: 136)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !2834, file: !120, line: 190, baseType: !2845, size: 128, offset: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !2846, line: 21, size: 128, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!2847 = !{!2848, !2853}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !2845, file: !2846, line: 22, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !2846, line: 17, size: 64, elements: !2850)
!2850 = !{!2851}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2849, file: !2846, line: 18, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2845, file: !2846, line: 23, baseType: !2854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !120, line: 193, baseType: !2856, size: 192)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !120, line: 193, size: 192, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2862}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !2856, file: !120, line: 194, baseType: !225, size: 8)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !2856, file: !120, line: 195, baseType: !225, size: 8, offset: 8)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2856, file: !120, line: 196, baseType: !235, size: 16, offset: 16)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2856, file: !120, line: 197, baseType: !460, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !2856, file: !120, line: 198, baseType: !460, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2796, file: !120, line: 205, baseType: !401, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2796, file: !120, line: 211, baseType: !163, size: 64, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2796, file: !120, line: 214, baseType: !181, size: 64, offset: 896)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2796, file: !120, line: 223, baseType: !87, size: 32, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !2796, file: !120, line: 229, baseType: !2699, size: 64, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !2796, file: !120, line: 234, baseType: !460, size: 64, offset: 1088)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2796, file: !120, line: 236, baseType: !2870, size: 128, offset: 1152)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2796, file: !120, line: 236, size: 128, elements: !2871)
!2871 = !{!2872, !2877}
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !120, line: 237, baseType: !2873, size: 128)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !120, line: 237, size: 128, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !2873, file: !120, line: 241, baseType: !460, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !2873, file: !120, line: 249, baseType: !2699, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !120, line: 251, baseType: !2878, size: 128)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !120, line: 251, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !2878, file: !120, line: 252, baseType: !460, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !2878, file: !120, line: 253, baseType: !460, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !2796, file: !120, line: 261, baseType: !460, size: 64, offset: 1280)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2796, file: !120, line: 262, baseType: !460, size: 64, offset: 1344)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !2796, file: !120, line: 268, baseType: !460, size: 64, offset: 1408)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !2796, file: !120, line: 269, baseType: !460, size: 64, offset: 1472)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2160, file: !120, line: 738, baseType: !2547, size: 64, offset: 4416)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2160, file: !120, line: 744, baseType: !2595, size: 64, offset: 4480)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2160, file: !120, line: 745, baseType: !756, size: 64, offset: 4544)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2160, file: !120, line: 751, baseType: !758, size: 64, offset: 4608)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2160, file: !120, line: 752, baseType: !758, size: 64, offset: 4672)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2160, file: !120, line: 757, baseType: !763, size: 256, offset: 4736)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2160, file: !120, line: 758, baseType: !239, size: 128, offset: 4992)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2160, file: !120, line: 759, baseType: !2159, size: 64, offset: 5120)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2160, file: !120, line: 761, baseType: !87, size: 32, offset: 5184)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2160, file: !120, line: 762, baseType: !87, size: 32, offset: 5216)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2160, file: !120, line: 764, baseType: !239, size: 128, offset: 5248)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2160, file: !120, line: 765, baseType: !401, size: 64, offset: 5376)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2160, file: !120, line: 768, baseType: !763, size: 256, offset: 5440)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2160, file: !120, line: 769, baseType: !191, size: 32, offset: 5696)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2160, file: !120, line: 771, baseType: !2670, size: 64, offset: 5760)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2160, file: !120, line: 772, baseType: !239, size: 128, offset: 5824)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2160, file: !120, line: 773, baseType: !181, size: 64, offset: 5952)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2160, file: !120, line: 774, baseType: !87, size: 32, offset: 6016)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2160, file: !120, line: 777, baseType: !196, size: 192, offset: 6080)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2160, file: !120, line: 778, baseType: !2906, size: 64, offset: 6272)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !129, line: 1083, size: 384, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2907, file: !129, line: 1084, baseType: !780, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2907, file: !129, line: 1085, baseType: !87, size: 32, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2907, file: !129, line: 1086, baseType: !87, size: 32, offset: 96)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2907, file: !129, line: 1087, baseType: !2906, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2907, file: !129, line: 1088, baseType: !735, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2907, file: !129, line: 1089, baseType: !743, size: 128, align: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2160, file: !120, line: 781, baseType: !7, size: 32, offset: 6336)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2160, file: !120, line: 782, baseType: !7, size: 32, offset: 6368)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2160, file: !120, line: 783, baseType: !7, size: 32, offset: 6400)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2160, file: !120, line: 784, baseType: !7, size: 32, offset: 6432)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2160, file: !120, line: 785, baseType: !181, size: 64, offset: 6464)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2160, file: !120, line: 786, baseType: !2921, size: 256, offset: 6528)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2922, line: 17, size: 256, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!2923 = !{!2924, !2925, !2930}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2921, file: !2922, line: 18, baseType: !417, size: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2921, file: !2922, line: 19, baseType: !2926, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !2921, file: !2922, line: 20, baseType: !2931, size: 64, offset: 192)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2932, line: 16, size: 64, elements: !2933)
!2932 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2933 = !{!2934}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2931, file: !2932, line: 17, baseType: !401, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2160, file: !120, line: 787, baseType: !743, size: 128, align: 64, offset: 6784)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2160, file: !120, line: 788, baseType: !7, size: 32, offset: 6912)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2160, file: !120, line: 789, baseType: !2931, size: 64, offset: 6976)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2160, file: !120, line: 791, baseType: !191, size: 32, offset: 7040)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2160, file: !120, line: 794, baseType: !2940, size: 192, offset: 7104)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !120, line: 579, size: 192, elements: !2941)
!2941 = !{!2942, !2943, !2944}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2940, file: !120, line: 580, baseType: !239, size: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !120, line: 581, baseType: !552, size: 32, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !2940, file: !120, line: 582, baseType: !7, size: 32, offset: 160)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2160, file: !120, line: 796, baseType: !2946, size: 64, offset: 7296)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !120, line: 585, size: 128, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2947, file: !120, line: 586, baseType: !181, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2947, file: !120, line: 587, baseType: !181, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2160, file: !120, line: 797, baseType: !181, size: 64, offset: 7360)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2160, file: !120, line: 800, baseType: !2159, size: 64, offset: 7424)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2160, file: !120, line: 802, baseType: !2633, size: 64, offset: 7488)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2160, file: !120, line: 803, baseType: !743, size: 128, align: 64, offset: 7552)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2160, file: !120, line: 805, baseType: !831, size: 64, offset: 7680)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2160, file: !120, line: 806, baseType: !460, size: 64, offset: 7744)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2160, file: !120, line: 808, baseType: !758, size: 64, offset: 7808)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2160, file: !120, line: 810, baseType: !2959, size: 64, offset: 7872)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!460}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2160, file: !120, line: 811, baseType: !2963, size: 64, offset: 7936)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !120, line: 605, baseType: !2964)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2159, !2967, !3074}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !120, line: 1148, size: 2048, align: 512, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2979, !2980, !2981, !2986, !2987, !2996, !3017, !3039, !3049, !3067, !3068, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !2968, file: !120, line: 1153, baseType: !460, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2968, file: !120, line: 1154, baseType: !460, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !2968, file: !120, line: 1155, baseType: !460, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2968, file: !120, line: 1161, baseType: !460, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !2968, file: !120, line: 1165, baseType: !2975, size: 64, offset: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !120, line: 1162, size: 64, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2975, file: !120, line: 1163, baseType: !396, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2975, file: !120, line: 1164, baseType: !396, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2968, file: !120, line: 1166, baseType: !460, size: 64, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2968, file: !120, line: 1167, baseType: !460, size: 64, offset: 384)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !2968, file: !120, line: 1171, baseType: !2982, size: 64, offset: 448)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !120, line: 1168, size: 64, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2982, file: !120, line: 1169, baseType: !396, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2982, file: !120, line: 1170, baseType: !396, size: 32, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2968, file: !120, line: 1177, baseType: !460, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !2968, file: !120, line: 1178, baseType: !2988, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !120, line: 67, size: 64, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2989, file: !120, line: 68, baseType: !461, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2989, file: !120, line: 69, baseType: !2993, offset: 64)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, elements: !2994)
!2994 = !{!2995}
!2995 = !DISubrange(count: -1)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2968, file: !120, line: 1179, baseType: !2997, size: 64, offset: 640)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !120, line: 93, size: 256, elements: !2999)
!2999 = !{!3000, !3016}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !2998, file: !120, line: 94, baseType: !3001, size: 224)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !120, line: 83, size: 224, elements: !3002)
!3002 = !{!3003, !3009, !3014, !3015}
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !120, line: 84, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !120, line: 84, size: 64, elements: !3005)
!3005 = !{!3006, !3008}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3004, file: !120, line: 85, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3004, file: !120, line: 86, baseType: !181, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3001, file: !120, line: 88, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !120, line: 80, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!181, !163, !1018, !181, !181}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3001, file: !120, line: 89, baseType: !163, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3001, file: !120, line: 90, baseType: !396, size: 32, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2998, file: !120, line: 95, baseType: !396, size: 32, offset: 224)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !2968, file: !120, line: 1180, baseType: !3018, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !120, line: 123, size: 128, elements: !3020)
!3020 = !{!3021, !3022, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3019, file: !120, line: 124, baseType: !461, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3019, file: !120, line: 125, baseType: !461, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3019, file: !120, line: 126, baseType: !3024, offset: 128)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, elements: !2994)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !2710, line: 1415, size: 192, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3025, file: !2710, line: 1416, baseType: !461, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3025, file: !2710, line: 1417, baseType: !461, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3025, file: !2710, line: 1418, baseType: !461, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3025, file: !2710, line: 1419, baseType: !461, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3025, file: !2710, line: 1420, baseType: !461, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3025, file: !2710, line: 1421, baseType: !461, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3025, file: !2710, line: 1422, baseType: !461, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3025, file: !2710, line: 1423, baseType: !461, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3025, file: !2710, line: 1424, baseType: !461, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3025, file: !2710, line: 1425, baseType: !461, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3025, file: !2710, line: 1426, baseType: !461, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3025, file: !2710, line: 1427, baseType: !461, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2968, file: !120, line: 1181, baseType: !3040, size: 64, offset: 768)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !2710, line: 1430, size: 64, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3040, file: !2710, line: 1431, baseType: !461, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !2710, line: 1433, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3040, file: !2710, line: 1433, size: 64, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3044, file: !2710, line: 1434, baseType: !371, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3044, file: !2710, line: 1435, baseType: !236, size: 16, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3044, file: !2710, line: 1436, baseType: !236, size: 16, offset: 48)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !2968, file: !120, line: 1182, baseType: !3050, size: 64, offset: 832)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !2710, line: 1267, size: 64, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3050, file: !2710, line: 1268, baseType: !461, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !2710, line: 1269, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !2710, line: 1269, size: 64, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3054, file: !2710, line: 1270, baseType: !461, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3054, file: !2710, line: 1271, baseType: !461, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3054, file: !2710, line: 1272, baseType: !461, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3054, file: !2710, line: 1273, baseType: !461, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3054, file: !2710, line: 1274, baseType: !461, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3054, file: !2710, line: 1275, baseType: !461, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3054, file: !2710, line: 1276, baseType: !461, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3054, file: !2710, line: 1277, baseType: !461, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3054, file: !2710, line: 1278, baseType: !461, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3054, file: !2710, line: 1279, baseType: !461, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3054, file: !2710, line: 1280, baseType: !461, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !2968, file: !120, line: 1183, baseType: !460, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !2968, file: !120, line: 1185, baseType: !3069, size: 128, offset: 960)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3070, line: 7, size: 128, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3069, file: !3070, line: 8, baseType: !461, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3069, file: !3070, line: 9, baseType: !3074, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3076, line: 103, size: 1344, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3106, !3107, !3108}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3075, file: !3076, line: 109, baseType: !181, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3075, file: !3076, line: 110, baseType: !181, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3075, file: !3076, line: 111, baseType: !181, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3075, file: !3076, line: 112, baseType: !181, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3075, file: !3076, line: 113, baseType: !181, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3075, file: !3076, line: 114, baseType: !181, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3075, file: !3076, line: 117, baseType: !181, size: 64, offset: 384)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3075, file: !3076, line: 118, baseType: !181, size: 64, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3075, file: !3076, line: 119, baseType: !181, size: 64, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3075, file: !3076, line: 120, baseType: !181, size: 64, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3075, file: !3076, line: 121, baseType: !181, size: 64, offset: 640)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3075, file: !3076, line: 122, baseType: !181, size: 64, offset: 704)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3075, file: !3076, line: 123, baseType: !181, size: 64, offset: 768)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3075, file: !3076, line: 124, baseType: !181, size: 64, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3075, file: !3076, line: 125, baseType: !181, size: 64, offset: 896)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3075, file: !3076, line: 139, baseType: !181, size: 64, offset: 960)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3075, file: !3076, line: 142, baseType: !181, size: 64, offset: 1024)
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3076, line: 144, baseType: !3096, size: 64, offset: 1088)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3075, file: !3076, line: 144, size: 64, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3096, file: !3076, line: 146, baseType: !235, size: 16)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3096, file: !3076, line: 148, baseType: !460, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3096, file: !3076, line: 150, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3076, line: 59, size: 64, elements: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3101, file: !3076, line: 61, baseType: !460, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3101, file: !3076, line: 63, baseType: !460, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3101, file: !3076, line: 65, baseType: !460, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3075, file: !3076, line: 153, baseType: !181, size: 64, offset: 1152)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3075, file: !3076, line: 154, baseType: !181, size: 64, offset: 1216)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3076, line: 156, baseType: !3109, size: 64, offset: 1280)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3075, file: !3076, line: 156, size: 64, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3109, file: !3076, line: 158, baseType: !235, size: 16)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3109, file: !3076, line: 160, baseType: !460, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3109, file: !3076, line: 162, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3076, line: 69, size: 64, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3114, file: !3076, line: 71, baseType: !460, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3114, file: !3076, line: 73, baseType: !460, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3114, file: !3076, line: 75, baseType: !460, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3114, file: !3076, line: 77, baseType: !460, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3114, file: !3076, line: 80, baseType: !460, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3114, file: !3076, line: 83, baseType: !460, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3114, file: !3076, line: 86, baseType: !460, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3114, file: !3076, line: 88, baseType: !460, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3114, file: !3076, line: 93, baseType: !460, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3114, file: !3076, line: 100, baseType: !460, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !2968, file: !120, line: 1186, baseType: !3069, size: 128, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !2968, file: !120, line: 1187, baseType: !460, size: 64, offset: 1216)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !2968, file: !120, line: 1189, baseType: !460, size: 64, offset: 1280)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2968, file: !120, line: 1190, baseType: !460, size: 64, offset: 1344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2968, file: !120, line: 1191, baseType: !460, size: 64, offset: 1408)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2968, file: !120, line: 1192, baseType: !460, size: 64, offset: 1472)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !2968, file: !120, line: 1193, baseType: !460, size: 64, offset: 1536)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !2968, file: !120, line: 1194, baseType: !460, size: 64, offset: 1600)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !2968, file: !120, line: 1195, baseType: !460, size: 64, offset: 1664)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2160, file: !120, line: 812, baseType: !163, size: 64, offset: 8000)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2160, file: !120, line: 820, baseType: !1953, size: 64, offset: 8064)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2160, file: !120, line: 821, baseType: !2140, size: 64, offset: 8128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2160, file: !120, line: 828, baseType: !3139, size: 64, offset: 8192)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !120, line: 1046, size: 1664, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3140, file: !120, line: 1047, baseType: !989, size: 1600)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3140, file: !120, line: 1048, baseType: !3144, size: 64, offset: 1600)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !120, line: 1039, size: 256, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3145, file: !120, line: 1040, baseType: !460, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3145, file: !120, line: 1041, baseType: !460, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3145, file: !120, line: 1042, baseType: !460, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3145, file: !120, line: 1043, baseType: !87, size: 32, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2160, file: !120, line: 832, baseType: !163, size: 64, offset: 8256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2160, file: !120, line: 834, baseType: !239, size: 128, offset: 8320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2160, file: !120, line: 842, baseType: !371, size: 32, offset: 8448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1422, file: !36, line: 524, baseType: !7, size: 32, offset: 8320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1422, file: !36, line: 525, baseType: !3156, size: 64, offset: 8384)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3159, line: 28, size: 192, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3158, file: !3159, line: 29, baseType: !159, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3158, file: !3159, line: 30, baseType: !159, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3158, file: !3159, line: 31, baseType: !181, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1422, file: !36, line: 526, baseType: !7, size: 32, offset: 8448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1422, file: !36, line: 533, baseType: !163, size: 64, offset: 8512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1422, file: !36, line: 534, baseType: !7, size: 32, offset: 8576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1422, file: !36, line: 535, baseType: !3168, size: 64, offset: 8640)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1422, file: !36, line: 536, baseType: !7, size: 32, offset: 8704)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1422, file: !36, line: 539, baseType: !87, size: 32, offset: 8736)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1422, file: !36, line: 540, baseType: !2036, size: 64, offset: 8768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1422, file: !36, line: 563, baseType: !239, size: 128, offset: 8832)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1422, file: !36, line: 565, baseType: !239, size: 128, offset: 8960)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1422, file: !36, line: 568, baseType: !2047, size: 64, offset: 9088)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1422, file: !36, line: 570, baseType: !191, size: 32, offset: 9152)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !129, line: 2382, baseType: !1397, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1398, file: !129, line: 2383, baseType: !811, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1398, file: !129, line: 2385, baseType: !3179, offset: 576)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1902, line: 206, elements: !728)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1398, file: !129, line: 2386, baseType: !3179, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1398, file: !129, line: 2387, baseType: !3179, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1398, file: !129, line: 2388, baseType: !3183, offset: 576)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3179, elements: !799)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1398, file: !129, line: 2390, baseType: !3179, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1398, file: !129, line: 2391, baseType: !3179, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1398, file: !129, line: 2392, baseType: !3179, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1398, file: !129, line: 2393, baseType: !3179, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1387, file: !129, line: 1197, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !129, line: 2057, size: 1664, elements: !3192)
!3192 = !{!3193, !3197, !3201, !3202, !3206, !3212, !3216, !3217, !3218, !3222, !3226, !3230, !3231, !3232, !3238, !3242, !3243, !3247, !3248, !3249, !3250, !3254, !3258, !3307, !3322, !3323}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3191, file: !129, line: 2058, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!1258, !1386}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3191, file: !129, line: 2059, baseType: !3198, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !1258}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3191, file: !129, line: 2060, baseType: !3198, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3191, file: !129, line: 2062, baseType: !3203, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !1258, !87}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3191, file: !129, line: 2063, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!87, !1258, !3210}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !129, line: 309, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3191, file: !129, line: 2064, baseType: !3213, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!87, !1258}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3191, file: !129, line: 2065, baseType: !3198, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3191, file: !129, line: 2066, baseType: !1417, size: 64, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3191, file: !129, line: 2067, baseType: !3219, size: 64, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!87, !1386, !87}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3191, file: !129, line: 2068, baseType: !3223, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!87, !1386, !128}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3191, file: !129, line: 2069, baseType: !3227, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!87, !1386}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3191, file: !129, line: 2070, baseType: !3223, size: 64, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3191, file: !129, line: 2071, baseType: !3227, size: 64, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3191, file: !129, line: 2072, baseType: !3233, size: 64, offset: 832)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!87, !1280, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !129, line: 62, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3191, file: !129, line: 2073, baseType: !3239, size: 64, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!87, !1386, !1760, !1060}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3191, file: !129, line: 2074, baseType: !1417, size: 64, offset: 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3191, file: !129, line: 2076, baseType: !3244, size: 64, offset: 1024)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!87, !1055, !1280}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3191, file: !129, line: 2077, baseType: !3244, size: 64, offset: 1088)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3191, file: !129, line: 2078, baseType: !3244, size: 64, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3191, file: !129, line: 2079, baseType: !3244, size: 64, offset: 1216)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3191, file: !129, line: 2081, baseType: !3251, size: 64, offset: 1280)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!1504, !1386, !87, !1060, !177, !183}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3191, file: !129, line: 2082, baseType: !3255, size: 64, offset: 1344)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!1504, !1386, !87, !159, !177, !183}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3191, file: !129, line: 2083, baseType: !3259, size: 64, offset: 1408)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!3262, !1258}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !134, line: 296, size: 1664, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3290, !3291, !3292}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3264, file: !134, line: 297, baseType: !815, size: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3264, file: !134, line: 298, baseType: !239, size: 128, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3264, file: !134, line: 299, baseType: !239, size: 128, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3264, file: !134, line: 300, baseType: !239, size: 128, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3264, file: !134, line: 301, baseType: !763, size: 256, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3264, file: !134, line: 302, baseType: !201, size: 32, offset: 768)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3264, file: !134, line: 303, baseType: !191, size: 32, offset: 800)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3264, file: !134, line: 304, baseType: !1386, size: 64, offset: 832)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3264, file: !134, line: 305, baseType: !3275, size: 64, offset: 896)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !134, line: 68, size: 64, elements: !3276)
!3276 = !{!3277, !3289}
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !134, line: 69, baseType: !3278, size: 32)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !134, line: 69, size: 32, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3278, file: !134, line: 70, baseType: !892, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3278, file: !134, line: 71, baseType: !899, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3278, file: !134, line: 72, baseType: !3283, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3284, line: 24, baseType: !3285)
!3284 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3284, line: 22, size: 32, elements: !3286)
!3286 = !{!3287}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3285, file: !3284, line: 23, baseType: !3288, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3284, line: 20, baseType: !316)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3275, file: !134, line: 74, baseType: !133, size: 32, offset: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3264, file: !134, line: 306, baseType: !183, size: 64, offset: 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3264, file: !134, line: 307, baseType: !181, size: 64, offset: 1024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3264, file: !134, line: 308, baseType: !3293, size: 576, offset: 1088)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !134, line: 205, size: 576, elements: !3294)
!3294 = !{!3295, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3293, file: !134, line: 206, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !134, line: 66, baseType: !185)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3293, file: !134, line: 207, baseType: !3296, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3293, file: !134, line: 208, baseType: !3296, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3293, file: !134, line: 209, baseType: !3296, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3293, file: !134, line: 210, baseType: !3296, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3293, file: !134, line: 211, baseType: !3296, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3293, file: !134, line: 212, baseType: !3296, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3293, file: !134, line: 213, baseType: !3304, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !3305, line: 8, baseType: !472)
!3305 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3293, file: !134, line: 214, baseType: !3304, size: 64, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3191, file: !129, line: 2085, baseType: !3308, size: 64, offset: 1472)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!345, !1386, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3313, line: 15, size: 256, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3314 = !{!3315, !3316, !3317, !3318, !3319}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3312, file: !3313, line: 16, baseType: !845, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3312, file: !3313, line: 19, baseType: !87, size: 32, offset: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3312, file: !3313, line: 26, baseType: !181, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3312, file: !3313, line: 33, baseType: !181, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3312, file: !3313, line: 36, baseType: !3320, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !20, line: 33, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3191, file: !129, line: 2087, baseType: !3308, size: 64, offset: 1536)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3191, file: !129, line: 2089, baseType: !1417, size: 64, offset: 1600)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1387, file: !129, line: 1198, baseType: !3325, size: 64, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !134, line: 324, size: 704, elements: !3328)
!3328 = !{!3329, !3333, !3337, !3341, !3342, !3343, !3344, !3345, !3350, !3355, !3359}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3327, file: !134, line: 325, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!87, !3263}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3327, file: !134, line: 326, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!3263, !1386, !87}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3327, file: !134, line: 327, baseType: !3338, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3263}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3327, file: !134, line: 328, baseType: !3330, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3327, file: !134, line: 329, baseType: !3330, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3327, file: !134, line: 330, baseType: !3330, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3327, file: !134, line: 331, baseType: !3219, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3327, file: !134, line: 334, baseType: !3346, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!3349, !1258}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3327, file: !134, line: 335, baseType: !3351, size: 64, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!87, !1258, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3327, file: !134, line: 337, baseType: !3356, size: 64, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!87, !1258, !3349}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3327, file: !134, line: 339, baseType: !3360, size: 64, offset: 640)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!87, !1386, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1387, file: !129, line: 1199, baseType: !3365, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !134, line: 430, size: 704, elements: !3368)
!3368 = !{!3369, !3380, !3381, !3385, !3386, !3387, !3402, !3425, !3429, !3430, !3453}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3367, file: !134, line: 431, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!87, !1386, !87, !87, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3376, line: 8, size: 128, elements: !3377)
!3376 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3375, file: !3376, line: 9, baseType: !1380, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3375, file: !3376, line: 10, baseType: !1280, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3367, file: !134, line: 432, baseType: !3219, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3367, file: !134, line: 433, baseType: !3382, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!87, !1386, !7}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3367, file: !134, line: 434, baseType: !3382, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3367, file: !134, line: 435, baseType: !3219, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3367, file: !134, line: 436, baseType: !3388, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!87, !1386, !87, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !134, line: 417, size: 256, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3392, file: !134, line: 418, baseType: !87, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3392, file: !134, line: 419, baseType: !7, size: 32, offset: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3392, file: !134, line: 420, baseType: !7, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3392, file: !134, line: 422, baseType: !7, size: 32, offset: 96)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3392, file: !134, line: 423, baseType: !7, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3392, file: !134, line: 424, baseType: !7, size: 32, offset: 160)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3392, file: !134, line: 425, baseType: !7, size: 32, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3392, file: !134, line: 426, baseType: !7, size: 32, offset: 224)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3367, file: !134, line: 437, baseType: !3403, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!87, !1386, !3275, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !134, line: 345, size: 960, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3407, file: !134, line: 346, baseType: !87, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3407, file: !134, line: 347, baseType: !460, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3407, file: !134, line: 348, baseType: !460, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3407, file: !134, line: 349, baseType: !460, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3407, file: !134, line: 350, baseType: !460, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3407, file: !134, line: 351, baseType: !460, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3407, file: !134, line: 352, baseType: !460, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3407, file: !134, line: 353, baseType: !471, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3407, file: !134, line: 355, baseType: !471, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3407, file: !134, line: 356, baseType: !87, size: 32, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3407, file: !134, line: 357, baseType: !87, size: 32, offset: 608)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3407, file: !134, line: 358, baseType: !460, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3407, file: !134, line: 359, baseType: !460, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3407, file: !134, line: 360, baseType: !460, size: 64, offset: 768)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3407, file: !134, line: 361, baseType: !471, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3407, file: !134, line: 362, baseType: !87, size: 32, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3367, file: !134, line: 438, baseType: !3426, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!87, !1386, !3363, !3406}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3367, file: !134, line: 440, baseType: !3403, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3367, file: !134, line: 441, baseType: !3431, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!87, !1386, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !134, line: 411, size: 1408, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3435, file: !134, line: 412, baseType: !7, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3435, file: !134, line: 413, baseType: !3439, size: 1344, offset: 64)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3440, size: 1344, elements: !799)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !134, line: 397, size: 448, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3452}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3440, file: !134, line: 398, baseType: !7, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3440, file: !134, line: 399, baseType: !7, size: 32, offset: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3440, file: !134, line: 401, baseType: !7, size: 32, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3440, file: !134, line: 402, baseType: !7, size: 32, offset: 96)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3440, file: !134, line: 403, baseType: !7, size: 32, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3440, file: !134, line: 404, baseType: !7, size: 32, offset: 160)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3440, file: !134, line: 405, baseType: !7, size: 32, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3440, file: !134, line: 406, baseType: !462, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3440, file: !134, line: 407, baseType: !3451, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !167, line: 132, baseType: !460)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3440, file: !134, line: 408, baseType: !3451, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3367, file: !134, line: 442, baseType: !3382, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1387, file: !129, line: 1200, baseType: !3455, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !129, line: 54, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1387, file: !129, line: 1201, baseType: !181, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1387, file: !129, line: 1202, baseType: !181, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1387, file: !129, line: 1203, baseType: !181, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1387, file: !129, line: 1204, baseType: !1280, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1387, file: !129, line: 1205, baseType: !1149, size: 320, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1387, file: !129, line: 1206, baseType: !87, size: 32, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1387, file: !129, line: 1207, baseType: !191, size: 32, offset: 1248)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1387, file: !129, line: 1209, baseType: !163, size: 64, offset: 1280)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1387, file: !129, line: 1211, baseType: !3467, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3470)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !129, line: 1211, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1387, file: !129, line: 1223, baseType: !3472, size: 64, offset: 1408)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1292, line: 34, size: 64, elements: !3473)
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3472, file: !1292, line: 35, baseType: !1295, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1387, file: !129, line: 1224, baseType: !239, size: 128, offset: 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1387, file: !129, line: 1225, baseType: !3477, size: 64, offset: 1600)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !129, line: 1225, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1387, file: !129, line: 1226, baseType: !3480, size: 64, offset: 1664)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !129, line: 1226, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1387, file: !129, line: 1227, baseType: !3483, size: 64, offset: 1728)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !129, line: 50, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1387, file: !129, line: 1228, baseType: !3486, size: 64, offset: 1792)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !129, line: 1228, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1387, file: !129, line: 1229, baseType: !815, size: 128, offset: 1856)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1387, file: !129, line: 1230, baseType: !7, size: 32, offset: 1984)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1387, file: !129, line: 1231, baseType: !3491, size: 2496, offset: 2048)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !134, line: 521, size: 2496, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3497, !3529}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3491, file: !134, line: 522, baseType: !7, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3491, file: !134, line: 523, baseType: !1149, size: 320, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3491, file: !134, line: 524, baseType: !3496, size: 192, offset: 384)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, size: 192, elements: !799)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3491, file: !134, line: 525, baseType: !3498, size: 1728, offset: 576)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3499, size: 1728, elements: !799)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !134, line: 222, size: 576, elements: !3500)
!3500 = !{!3501, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3499, file: !134, line: 223, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !134, line: 445, size: 256, elements: !3504)
!3504 = !{!3505, !3506, !3519, !3520}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3503, file: !134, line: 446, baseType: !87, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3503, file: !134, line: 447, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !134, line: 312, size: 512, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3509, file: !134, line: 313, baseType: !3219, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3509, file: !134, line: 314, baseType: !3219, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3509, file: !134, line: 315, baseType: !3219, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3509, file: !134, line: 316, baseType: !3219, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3509, file: !134, line: 317, baseType: !3330, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3509, file: !134, line: 318, baseType: !3330, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3509, file: !134, line: 319, baseType: !3330, size: 64, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3509, file: !134, line: 320, baseType: !3360, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3503, file: !134, line: 448, baseType: !1421, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3503, file: !134, line: 449, baseType: !3502, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3499, file: !134, line: 224, baseType: !87, size: 32, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3499, file: !134, line: 226, baseType: !239, size: 128, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3499, file: !134, line: 227, baseType: !181, size: 64, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3499, file: !134, line: 228, baseType: !7, size: 32, offset: 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3499, file: !134, line: 229, baseType: !7, size: 32, offset: 352)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3499, file: !134, line: 230, baseType: !3296, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3499, file: !134, line: 231, baseType: !3296, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3499, file: !134, line: 232, baseType: !163, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3491, file: !134, line: 526, baseType: !3530, size: 192, offset: 2304)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3507, size: 192, elements: !799)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1387, file: !129, line: 1233, baseType: !3532, size: 2368, offset: 4544)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !129, line: 1184, size: 2368, elements: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3532, file: !129, line: 1185, baseType: !168, size: 16)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3532, file: !129, line: 1186, baseType: !168, size: 16, offset: 16)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3532, file: !129, line: 1187, baseType: !3537, size: 2304, offset: 64)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3538, size: 2304, elements: !799)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3539, line: 12, size: 768, elements: !3540)
!3539 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3540 = !{!3541, !3549, !3550, !3551, !3552}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3538, file: !3539, line: 13, baseType: !3542, size: 384)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3543, line: 17, size: 384, elements: !3544)
!3543 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3542, file: !3543, line: 18, baseType: !87, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3542, file: !3543, line: 19, baseType: !87, size: 32, offset: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3542, file: !3543, line: 20, baseType: !196, size: 192, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3542, file: !3543, line: 22, baseType: !743, size: 128, align: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3538, file: !3539, line: 14, baseType: !1712, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3538, file: !3539, line: 15, baseType: !2931, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3538, file: !3539, line: 16, baseType: !196, size: 192, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3538, file: !3539, line: 17, baseType: !191, size: 32, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1387, file: !129, line: 1240, baseType: !163, size: 64, offset: 6912)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1387, file: !129, line: 1243, baseType: !396, size: 32, offset: 6976)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1387, file: !129, line: 1245, baseType: !3304, size: 64, offset: 7040)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1387, file: !129, line: 1246, baseType: !3304, size: 64, offset: 7104)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1387, file: !129, line: 1248, baseType: !371, size: 32, offset: 7168)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1387, file: !129, line: 1249, baseType: !3559, size: 64, offset: 7232)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !129, line: 634, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1387, file: !129, line: 1252, baseType: !3562, size: 256, offset: 7296)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1317)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1387, file: !129, line: 1253, baseType: !3564, size: 128, offset: 7552)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3565, line: 21, baseType: !3566)
!3565 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3565, line: 19, size: 128, elements: !3567)
!3567 = !{!3568}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3566, file: !3565, line: 20, baseType: !3569, size: 128)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !3570)
!3570 = !{!3571}
!3571 = !DISubrange(count: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1387, file: !129, line: 1255, baseType: !7, size: 32, offset: 7680)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1387, file: !129, line: 1261, baseType: !763, size: 256, offset: 7744)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1387, file: !129, line: 1267, baseType: !159, size: 64, offset: 8000)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1387, file: !129, line: 1269, baseType: !1333, size: 64, offset: 8064)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1387, file: !129, line: 1271, baseType: !3577, size: 448, offset: 8128)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3313, line: 63, size: 448, elements: !3578)
!3578 = !{!3579, !3584, !3585, !3586, !3587, !3588, !3589}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3577, file: !3313, line: 64, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!181, !3583, !3311}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3577, file: !3313, line: 66, baseType: !3580, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3577, file: !3313, line: 69, baseType: !345, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3577, file: !3313, line: 70, baseType: !87, size: 32, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !3313, line: 71, baseType: !7, size: 32, offset: 224)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3577, file: !3313, line: 74, baseType: !239, size: 128, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3577, file: !3313, line: 85, baseType: !3590, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1387, file: !129, line: 1274, baseType: !756, size: 64, offset: 8576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1387, file: !129, line: 1280, baseType: !756, size: 64, offset: 8640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1387, file: !129, line: 1283, baseType: !87, size: 32, offset: 8704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1387, file: !129, line: 1286, baseType: !3595, size: 32, offset: 8736)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3596, line: 8, baseType: !396)
!3596 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1387, file: !129, line: 1289, baseType: !1935, size: 64, offset: 8768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1387, file: !129, line: 1290, baseType: !811, size: 64, offset: 8832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1387, file: !129, line: 1297, baseType: !862, size: 64, offset: 8896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1387, file: !129, line: 1304, baseType: !3601, size: 64, offset: 8960)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3602, line: 49, size: 64, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3603 = !{!3604}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3601, file: !3602, line: 50, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3602, line: 41, size: 512, align: 512, elements: !3607)
!3607 = !{!3608, !3609, !3614}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3606, file: !3602, line: 43, baseType: !201, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3606, file: !3602, line: 45, baseType: !3610, size: 192, offset: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3602, line: 29, size: 192, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3610, file: !3602, line: 30, baseType: !239, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3610, file: !3602, line: 32, baseType: !345, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3606, file: !3602, line: 46, baseType: !345, size: 64, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1387, file: !129, line: 1305, baseType: !3601, size: 64, offset: 9024)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1387, file: !129, line: 1306, baseType: !743, size: 128, align: 64, offset: 9088)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1387, file: !129, line: 1307, baseType: !1874, size: 256, offset: 9216)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1387, file: !129, line: 1309, baseType: !763, size: 256, offset: 9472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1387, file: !129, line: 1314, baseType: !87, size: 32, offset: 9728)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1387, file: !129, line: 1317, baseType: !201, size: 32, align: 512, offset: 10240)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1387, file: !129, line: 1318, baseType: !239, size: 128, offset: 10304)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1387, file: !129, line: 1320, baseType: !201, size: 32, offset: 10432)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1387, file: !129, line: 1321, baseType: !239, size: 128, offset: 10496)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1381, file: !1382, line: 73, baseType: !87, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1381, file: !1382, line: 74, baseType: !3626, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !3628, line: 42, flags: DIFlagFwdDecl)
!3628 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1335, file: !1282, line: 141, baseType: !3631, size: 64, offset: 704)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!87, !3373, !1102}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1335, file: !1282, line: 142, baseType: !3635, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!1280, !1280, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1281, file: !1282, line: 96, baseType: !1386, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1281, file: !1282, line: 97, baseType: !181, size: 64, offset: 896)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1281, file: !1282, line: 98, baseType: !163, size: 64, offset: 960)
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1282, line: 100, baseType: !3644, size: 128, offset: 1024)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1282, line: 100, size: 128, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3644, file: !1282, line: 101, baseType: !239, size: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3644, file: !1282, line: 102, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1281, file: !1282, line: 104, baseType: !239, size: 128, offset: 1152)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1281, file: !1282, line: 105, baseType: !239, size: 128, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1281, file: !1282, line: 113, baseType: !3652, size: 128, offset: 1408)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1282, line: 109, size: 128, elements: !3653)
!3653 = !{!3654, !3655, !3656}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3652, file: !1282, line: 110, baseType: !815, size: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3652, file: !1282, line: 111, baseType: !1291, size: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3652, file: !1282, line: 112, baseType: !743, size: 128, align: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1274, file: !129, line: 1968, baseType: !3658, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!159, !1280, !1258, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3663, line: 10, size: 128, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3662, file: !3663, line: 11, baseType: !1581, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3662, file: !3663, line: 12, baseType: !163, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1274, file: !129, line: 1969, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!87, !3626, !1258, !87}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1274, file: !129, line: 1970, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!1268, !1258, !87, !1102}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1274, file: !129, line: 1972, baseType: !3676, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!87, !1280, !1060, !87}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1274, file: !129, line: 1974, baseType: !3680, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!87, !3626, !1258, !1280, !166, !1102}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1274, file: !129, line: 1976, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!87, !1280, !1258, !1280}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1274, file: !129, line: 1977, baseType: !3688, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!87, !1258, !1280}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1274, file: !129, line: 1978, baseType: !3692, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!87, !3626, !1258, !1280, !159}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1274, file: !129, line: 1980, baseType: !3696, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!87, !3626, !1258, !1280, !166}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1274, file: !129, line: 1982, baseType: !3688, size: 64, offset: 640)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1274, file: !129, line: 1983, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!87, !3626, !1258, !1280, !166, !1391}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1274, file: !129, line: 1985, baseType: !3705, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!87, !3626, !1258, !1280, !1258, !1280, !7}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1274, file: !129, line: 1987, baseType: !3709, size: 64, offset: 832)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!87, !3626, !1280, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !129, line: 226, size: 640, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3727, !3736, !3737, !3742, !3743, !3744}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3713, file: !129, line: 227, baseType: !7, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3713, file: !129, line: 228, baseType: !166, size: 16, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !129, line: 241, baseType: !3718, size: 32, offset: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3713, file: !129, line: 241, size: 32, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3718, file: !129, line: 242, baseType: !892, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3718, file: !129, line: 243, baseType: !3722, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3723, line: 16, baseType: !3724)
!3723 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3723, line: 14, size: 32, elements: !3725)
!3725 = !{!3726}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3724, file: !3723, line: 15, baseType: !897, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !129, line: 245, baseType: !3728, size: 32, offset: 96)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3713, file: !129, line: 245, size: 32, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3728, file: !129, line: 246, baseType: !899, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3728, file: !129, line: 247, baseType: !3732, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3723, line: 20, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3723, line: 18, size: 32, elements: !3734)
!3734 = !{!3735}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3733, file: !3723, line: 19, baseType: !903, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3713, file: !129, line: 249, baseType: !183, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3713, file: !129, line: 250, baseType: !3738, size: 128, offset: 192)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !3305, line: 13, size: 128, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3738, file: !3305, line: 14, baseType: !3304, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3738, file: !3305, line: 15, baseType: !345, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3713, file: !129, line: 251, baseType: !3738, size: 128, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3713, file: !129, line: 252, baseType: !3738, size: 128, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3713, file: !129, line: 259, baseType: !735, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1274, file: !129, line: 1988, baseType: !3746, size: 64, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!87, !3626, !3373, !3749, !396, !7}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3751, line: 22, size: 1280, elements: !3752)
!3751 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3752 = !{!3753, !3754, !3755, !3756, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3750, file: !3751, line: 23, baseType: !396, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3750, file: !3751, line: 24, baseType: !166, size: 16, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3750, file: !3751, line: 25, baseType: !7, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3750, file: !3751, line: 26, baseType: !3757, size: 32, offset: 96)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 110, baseType: !396)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3750, file: !3751, line: 27, baseType: !460, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3750, file: !3751, line: 28, baseType: !460, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3750, file: !3751, line: 41, baseType: !460, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3750, file: !3751, line: 42, baseType: !1391, size: 32, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3750, file: !3751, line: 43, baseType: !1391, size: 32, offset: 352)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3750, file: !3751, line: 44, baseType: !892, size: 32, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3750, file: !3751, line: 45, baseType: !899, size: 32, offset: 416)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3750, file: !3751, line: 46, baseType: !183, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3750, file: !3751, line: 47, baseType: !3738, size: 128, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3750, file: !3751, line: 48, baseType: !3738, size: 128, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3750, file: !3751, line: 49, baseType: !3738, size: 128, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3750, file: !3751, line: 50, baseType: !3738, size: 128, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3750, file: !3751, line: 51, baseType: !460, size: 64, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3750, file: !3751, line: 52, baseType: !460, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3750, file: !3751, line: 53, baseType: !396, size: 32, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3750, file: !3751, line: 54, baseType: !396, size: 32, offset: 1184)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3750, file: !3751, line: 55, baseType: !460, size: 64, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1274, file: !129, line: 1990, baseType: !3776, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!1504, !1280, !1060, !177}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1274, file: !129, line: 1991, baseType: !3780, size: 64, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!87, !1258, !3783, !460, !460}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !129, line: 55, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1274, file: !129, line: 1993, baseType: !3786, size: 64, offset: 1088)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!87, !1258, !87}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1274, file: !129, line: 1994, baseType: !3790, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!87, !1258, !1280, !735, !7, !166}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1274, file: !129, line: 1997, baseType: !3794, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!87, !3626, !1258, !735, !166}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1274, file: !129, line: 1999, baseType: !3798, size: 64, offset: 1280)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!1268, !3626, !1280, !87}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1274, file: !129, line: 2001, baseType: !3802, size: 64, offset: 1344)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!87, !3626, !1280, !1268, !87}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1274, file: !129, line: 2003, baseType: !3806, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!87, !3626, !1280, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !129, line: 76, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1274, file: !129, line: 2005, baseType: !3812, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!87, !1280, !3809}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1274, file: !129, line: 2006, baseType: !3816, size: 64, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!3819, !1258}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !129, line: 3192, size: 192, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3820, file: !129, line: 3193, baseType: !840, size: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3820, file: !129, line: 3194, baseType: !396, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1259, file: !129, line: 655, baseType: !1386, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1259, file: !129, line: 656, baseType: !1254, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1259, file: !129, line: 659, baseType: !163, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1259, file: !129, line: 663, baseType: !181, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !129, line: 671, baseType: !3829, size: 32, offset: 704)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !129, line: 671, size: 32, elements: !3830)
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3829, file: !129, line: 672, baseType: !1983, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3829, file: !129, line: 673, baseType: !7, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1259, file: !129, line: 675, baseType: !1391, size: 32, offset: 736)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1259, file: !129, line: 676, baseType: !183, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1259, file: !129, line: 677, baseType: !3738, size: 128, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1259, file: !129, line: 678, baseType: !3738, size: 128, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1259, file: !129, line: 679, baseType: !3738, size: 128, offset: 1088)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1259, file: !129, line: 680, baseType: !201, size: 32, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1259, file: !129, line: 681, baseType: !168, size: 16, offset: 1248)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1259, file: !129, line: 682, baseType: !225, size: 8, offset: 1264)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1259, file: !129, line: 683, baseType: !225, size: 8, offset: 1272)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1259, file: !129, line: 684, baseType: !3451, size: 64, offset: 1280)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1259, file: !129, line: 691, baseType: !181, size: 64, offset: 1344)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1259, file: !129, line: 692, baseType: !1149, size: 320, offset: 1408)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1259, file: !129, line: 694, baseType: !181, size: 64, offset: 1728)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1259, file: !129, line: 695, baseType: !181, size: 64, offset: 1792)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1259, file: !129, line: 697, baseType: !815, size: 128, offset: 1856)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1259, file: !129, line: 698, baseType: !239, size: 128, offset: 1984)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1259, file: !129, line: 707, baseType: !239, size: 128, offset: 2112)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1259, file: !129, line: 708, baseType: !239, size: 128, offset: 2240)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !129, line: 709, baseType: !3852, size: 128, offset: 2368)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !129, line: 709, size: 128, elements: !3853)
!3853 = !{!3854, !3855}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3852, file: !129, line: 710, baseType: !811, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3852, file: !129, line: 711, baseType: !743, size: 128, align: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1259, file: !129, line: 713, baseType: !758, size: 64, offset: 2496)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1259, file: !129, line: 714, baseType: !758, size: 64, offset: 2560)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1259, file: !129, line: 715, baseType: !191, size: 32, offset: 2624)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1259, file: !129, line: 716, baseType: !191, size: 32, offset: 2656)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1259, file: !129, line: 717, baseType: !191, size: 32, offset: 2688)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1259, file: !129, line: 719, baseType: !191, size: 32, offset: 2720)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !129, line: 721, baseType: !3863, size: 64, offset: 2752)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !129, line: 721, size: 64, elements: !3864)
!3864 = !{!3865, !4033}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3863, file: !129, line: 722, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3868)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !129, line: 1914, size: 2112, elements: !3869)
!3869 = !{!3870, !3871, !3875, !3879, !3883, !3911, !3912, !3918, !3931, !3947, !3951, !3952, !3956, !3957, !3961, !3966, !3967, !3971, !3975, !3981, !3982, !3986, !3987, !3993, !3997, !4001, !4006, !4010, !4014, !4018, !4022, !4023, !4029}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3868, file: !129, line: 1915, baseType: !1421, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3868, file: !129, line: 1916, baseType: !3872, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!183, !735, !183, !87}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3868, file: !129, line: 1917, baseType: !3876, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!1504, !735, !1060, !177, !182}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3868, file: !129, line: 1918, baseType: !3880, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!1504, !735, !159, !177, !182}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3868, file: !129, line: 1919, baseType: !3884, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!1504, !3887, !3909}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !129, line: 373, size: 384, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3896, !3897, !3898, !3899}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3888, file: !129, line: 374, baseType: !735, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3888, file: !129, line: 375, baseType: !183, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3888, file: !129, line: 376, baseType: !3893, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3887, !345}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3888, file: !129, line: 377, baseType: !163, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3888, file: !129, line: 378, baseType: !87, size: 32, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3888, file: !129, line: 379, baseType: !235, size: 16, offset: 288)
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3888, file: !129, line: 380, baseType: !3900, size: 64, offset: 320)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3888, file: !129, line: 380, size: 64, elements: !3901)
!3901 = !{!3902, !3905}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3900, file: !129, line: 386, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !129, line: 386, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3900, file: !129, line: 395, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!1504, !163}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !129, line: 69, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3868, file: !129, line: 1920, baseType: !3884, size: 64, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3868, file: !129, line: 1921, baseType: !3913, size: 64, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!87, !3887, !3916, !7}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !129, line: 53, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3868, file: !129, line: 1923, baseType: !3919, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!87, !735, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !129, line: 1858, size: 128, elements: !3924)
!3924 = !{!3925, !3930}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3923, file: !129, line: 1859, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !129, line: 1855, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!1102, !3922, !159, !87, !183, !460, !7}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3923, file: !129, line: 1860, baseType: !183, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3868, file: !129, line: 1924, baseType: !3932, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!3935, !735, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3936, line: 59, baseType: !7)
!3936 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3939, line: 37, size: 128, elements: !3940)
!3939 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3940 = !{!3941, !3946}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3938, file: !3939, line: 38, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3939, line: 31, baseType: !3943)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !735, !3648, !3937}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3938, file: !3939, line: 39, baseType: !3935, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3868, file: !129, line: 1925, baseType: !3948, size: 64, offset: 576)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!345, !735, !7, !181}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3868, file: !129, line: 1926, baseType: !3948, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3868, file: !129, line: 1927, baseType: !3953, size: 64, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!87, !735, !1115}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3868, file: !129, line: 1928, baseType: !181, size: 64, offset: 768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3868, file: !129, line: 1929, baseType: !3958, size: 64, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!87, !1258, !735}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3868, file: !129, line: 1930, baseType: !3962, size: 64, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!87, !735, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !129, line: 1061, baseType: !163)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3868, file: !129, line: 1931, baseType: !3958, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3868, file: !129, line: 1932, baseType: !3968, size: 64, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!87, !735, !183, !183, !87}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3868, file: !129, line: 1933, baseType: !3972, size: 64, offset: 1088)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!87, !87, !735, !87}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3868, file: !129, line: 1934, baseType: !3976, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!87, !735, !87, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !129, line: 1063, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3868, file: !129, line: 1935, baseType: !732, size: 64, offset: 1216)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3868, file: !129, line: 1936, baseType: !3983, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!87, !87}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3868, file: !129, line: 1937, baseType: !3976, size: 64, offset: 1344)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3868, file: !129, line: 1938, baseType: !3988, size: 64, offset: 1408)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!1504, !3991, !735, !182, !177, !7}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !403, line: 59, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3868, file: !129, line: 1939, baseType: !3994, size: 64, offset: 1472)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!1504, !735, !182, !3991, !177, !7}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3868, file: !129, line: 1940, baseType: !3998, size: 64, offset: 1536)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !735}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3868, file: !129, line: 1941, baseType: !4002, size: 64, offset: 1600)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!87, !735, !87, !4005, !2659}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3868, file: !129, line: 1942, baseType: !4007, size: 64, offset: 1664)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!345, !735, !87, !183, !183}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3868, file: !129, line: 1944, baseType: !4011, size: 64, offset: 1728)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !1055, !735}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3868, file: !129, line: 1948, baseType: !4015, size: 64, offset: 1792)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!1504, !735, !183, !735, !183, !177, !7}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3868, file: !129, line: 1950, baseType: !4019, size: 64, offset: 1856)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!183, !735, !183, !735, !183, !183, !7}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3868, file: !129, line: 1953, baseType: !3968, size: 64, offset: 1920)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3868, file: !129, line: 1954, baseType: !4024, size: 64, offset: 1984)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!87, !4027, !7}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !129, line: 1911, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3868, file: !129, line: 1955, baseType: !4030, size: 64, offset: 2048)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!87, !4027, !3916, !7}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3863, file: !129, line: 723, baseType: !3198, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1259, file: !129, line: 725, baseType: !4035, size: 64, offset: 2816)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !129, line: 725, flags: DIFlagFwdDecl)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1259, file: !129, line: 726, baseType: !1255, size: 1536, align: 64, offset: 2880)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1259, file: !129, line: 727, baseType: !239, size: 128, offset: 4416)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !129, line: 728, baseType: !4040, size: 64, offset: 4544)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !129, line: 728, size: 64, elements: !4041)
!4041 = !{!4042, !4043, !4046, !4047}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4040, file: !129, line: 729, baseType: !3991, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4040, file: !129, line: 730, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !129, line: 730, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4040, file: !129, line: 731, baseType: !1060, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4040, file: !129, line: 732, baseType: !7, size: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1259, file: !129, line: 735, baseType: !371, size: 32, offset: 4608)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1259, file: !129, line: 738, baseType: !371, size: 32, offset: 4640)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1259, file: !129, line: 739, baseType: !3559, size: 64, offset: 4672)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1259, file: !129, line: 750, baseType: !163, size: 64, offset: 4736)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1255, file: !129, line: 474, baseType: !840, size: 128, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1255, file: !129, line: 475, baseType: !1149, size: 320, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1255, file: !129, line: 476, baseType: !845, size: 32, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1255, file: !129, line: 477, baseType: !191, size: 32, offset: 544)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1255, file: !129, line: 482, baseType: !590, size: 128, offset: 576)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1255, file: !129, line: 483, baseType: !181, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1255, file: !129, line: 484, baseType: !181, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1255, file: !129, line: 485, baseType: !4060, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !129, line: 404, size: 1280, elements: !4063)
!4063 = !{!4064, !4068, !4138, !4142, !4146, !4152, !4157, !4161, !4166, !4170, !4174, !4178, !4179, !4183, !4187, !4191, !4196, !4200, !4207, !4208}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4062, file: !129, line: 405, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!87, !1232, !3210}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4062, file: !129, line: 406, baseType: !4069, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!87, !735, !4072}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !20, line: 293, size: 1536, elements: !4074)
!4074 = !{!4075, !4105, !4119}
!4075 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !20, line: 295, baseType: !4076, size: 512)
!4076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !20, line: 295, size: 512, elements: !4077)
!4077 = !{!4078, !4104}
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !20, line: 296, baseType: !4079, size: 448)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4076, file: !20, line: 296, size: 448, elements: !4080)
!4080 = !{!4081, !4082, !4091, !4092, !4093, !4102, !4103}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4079, file: !20, line: 298, baseType: !181, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4079, file: !20, line: 299, baseType: !4083, size: 128, offset: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4079, file: !20, line: 299, size: 128, elements: !4084)
!4084 = !{!4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4083, file: !20, line: 300, baseType: !239, size: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, scope: !4083, file: !20, line: 302, baseType: !4087, size: 128)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4083, file: !20, line: 302, size: 128, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4087, file: !20, line: 303, baseType: !163, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4087, file: !20, line: 305, baseType: !7, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4079, file: !20, line: 310, baseType: !1254, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4079, file: !20, line: 311, baseType: !181, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4079, file: !20, line: 312, baseType: !4094, size: 64, offset: 320)
!4094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4079, file: !20, line: 312, size: 64, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4094, file: !20, line: 313, baseType: !163, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4094, file: !20, line: 314, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !20, line: 257, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 255, size: 64, elements: !4100)
!4100 = !{!4101}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4099, file: !20, line: 256, baseType: !181, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4079, file: !20, line: 316, baseType: !191, size: 32, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4079, file: !20, line: 317, baseType: !191, size: 32, offset: 416)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4076, file: !20, line: 323, baseType: !1233, size: 512, align: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !20, line: 325, baseType: !4106, size: 512, offset: 512)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !20, line: 325, size: 512, elements: !4107)
!4107 = !{!4108, !4118}
!4108 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !20, line: 326, baseType: !4109, size: 320)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !20, line: 326, size: 320, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4109, file: !20, line: 327, baseType: !181, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4109, file: !20, line: 328, baseType: !181, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4109, file: !20, line: 329, baseType: !181, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4109, file: !20, line: 331, baseType: !191, size: 32, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4109, file: !20, line: 332, baseType: !191, size: 32, offset: 224)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4109, file: !20, line: 333, baseType: !191, size: 32, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4109, file: !20, line: 335, baseType: !7, size: 32, offset: 288)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4106, file: !20, line: 339, baseType: !1233, size: 512, align: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !20, line: 341, baseType: !4120, size: 512, offset: 1024)
!4120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !20, line: 341, size: 512, elements: !4121)
!4121 = !{!4122, !4131, !4137}
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !20, line: 342, baseType: !4123, size: 384)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4120, file: !20, line: 342, size: 384, elements: !4124)
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4123, file: !20, line: 343, baseType: !181, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4123, file: !20, line: 344, baseType: !181, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4123, file: !20, line: 346, baseType: !163, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4123, file: !20, line: 347, baseType: !163, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4123, file: !20, line: 348, baseType: !163, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4123, file: !20, line: 349, baseType: !163, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !20, line: 352, baseType: !4132, size: 256)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4120, file: !20, line: 352, size: 256, elements: !4133)
!4133 = !{!4134, !4135, !4136}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4132, file: !20, line: 353, baseType: !181, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4132, file: !20, line: 354, baseType: !181, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4132, file: !20, line: 356, baseType: !239, size: 128, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4120, file: !20, line: 359, baseType: !1233, size: 512, align: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4062, file: !129, line: 409, baseType: !4139, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!87, !1254, !3210}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4062, file: !129, line: 412, baseType: !4143, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!1102, !1254, !4072}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4062, file: !129, line: 414, baseType: !4147, size: 64, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !129, line: 310, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4062, file: !129, line: 416, baseType: !4153, size: 64, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!87, !735, !1254, !183, !7, !4156, !2659}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4062, file: !129, line: 419, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!87, !735, !1254, !183, !7, !7, !1232, !163}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4062, file: !129, line: 424, baseType: !4162, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!4165, !1254, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !167, line: 131, baseType: !460)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4062, file: !129, line: 425, baseType: !4167, size: 64, offset: 512)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !4072, !177, !177}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4062, file: !129, line: 426, baseType: !4171, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!1102, !4072, !845}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4062, file: !129, line: 427, baseType: !4175, size: 64, offset: 640)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4072}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4062, file: !129, line: 428, baseType: !3884, size: 64, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4062, file: !129, line: 433, baseType: !4180, size: 64, offset: 768)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!87, !1254, !4072, !4072, !139}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4062, file: !129, line: 435, baseType: !4184, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!87, !4072}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4062, file: !129, line: 436, baseType: !4188, size: 64, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!1102, !4072, !177, !177}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4062, file: !129, line: 438, baseType: !4192, size: 64, offset: 960)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4072, !4195, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4062, file: !129, line: 439, baseType: !4197, size: 64, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!87, !1254, !1232}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4062, file: !129, line: 442, baseType: !4201, size: 64, offset: 1088)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!87, !4204, !735, !4206}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !129, line: 66, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4062, file: !129, line: 444, baseType: !3998, size: 64, offset: 1152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4062, file: !129, line: 445, baseType: !4209, size: 64, offset: 1216)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!87, !3887, !3909}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !129, line: 486, baseType: !181, size: 64, offset: 896)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1255, file: !129, line: 487, baseType: !1149, size: 320, offset: 960)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1255, file: !129, line: 488, baseType: !3595, size: 32, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1255, file: !129, line: 489, baseType: !201, size: 32, offset: 1312)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1255, file: !129, line: 490, baseType: !239, size: 128, offset: 1344)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1255, file: !129, line: 491, baseType: !163, size: 64, offset: 1472)
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !20, line: 107, baseType: !4219, size: 64, offset: 192)
!4219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !20, line: 107, size: 64, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4219, file: !20, line: 108, baseType: !181, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4219, file: !20, line: 109, baseType: !181, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1240, file: !20, line: 117, baseType: !181, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !20, line: 119, baseType: !4225, size: 320)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !20, line: 119, size: 320, elements: !4226)
!4226 = !{!4227, !4228, !4231, !4232, !4233}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4225, file: !20, line: 124, baseType: !181, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4225, file: !20, line: 125, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !20, line: 125, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4225, file: !20, line: 126, baseType: !181, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4225, file: !20, line: 127, baseType: !181, size: 64, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4225, file: !20, line: 128, baseType: !4234, size: 64, offset: 256)
!4234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4225, file: !20, line: 128, size: 64, elements: !4235)
!4235 = !{!4236, !4237}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4234, file: !20, line: 133, baseType: !181, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4234, file: !20, line: 138, baseType: !756, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !20, line: 141, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !20, line: 141, size: 64, elements: !4240)
!4240 = !{!4241}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4239, file: !20, line: 142, baseType: !181, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !20, line: 144, baseType: !4243, size: 128)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !20, line: 144, size: 128, elements: !4244)
!4244 = !{!4245, !4316}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4243, file: !20, line: 146, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !147, line: 126, size: 1216, elements: !4248)
!4248 = !{!4249, !4259, !4280, !4281, !4282, !4283, !4284, !4298, !4299, !4300}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4247, file: !147, line: 127, baseType: !4250, size: 384)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !147, line: 21, size: 384, elements: !4251)
!4251 = !{!4252, !4253, !4255, !4256, !4257, !4258}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4250, file: !147, line: 22, baseType: !181, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4250, file: !147, line: 23, baseType: !4254, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4250, file: !147, line: 24, baseType: !4254, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4250, file: !147, line: 25, baseType: !181, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4250, file: !147, line: 26, baseType: !181, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4250, file: !147, line: 27, baseType: !181, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4247, file: !147, line: 128, baseType: !4260, size: 128, offset: 384)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4261, line: 105, size: 128, elements: !4262)
!4261 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4262 = !{!4263, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4260, file: !4261, line: 110, baseType: !181, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4260, file: !4261, line: 118, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4261, line: 95, size: 448, elements: !4267)
!4267 = !{!4268, !4269, !4275, !4276, !4277, !4278, !4279}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4266, file: !4261, line: 96, baseType: !756, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4266, file: !4261, line: 97, baseType: !4270, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4261, line: 60, baseType: !4272)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4266, file: !4261, line: 98, baseType: !4270, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4266, file: !4261, line: 99, baseType: !1102, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4266, file: !4261, line: 100, baseType: !1102, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4266, file: !4261, line: 101, baseType: !743, size: 128, align: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4266, file: !4261, line: 102, baseType: !4274, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4247, file: !147, line: 129, baseType: !1612, size: 256, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4247, file: !147, line: 130, baseType: !146, size: 32, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4247, file: !147, line: 131, baseType: !7, size: 32, offset: 800)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4247, file: !147, line: 132, baseType: !181, size: 64, offset: 832)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4247, file: !147, line: 133, baseType: !4285, size: 64, offset: 896)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !147, line: 77, size: 192, elements: !4288)
!4288 = !{!4289, !4293, !4294}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4287, file: !147, line: 83, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !1232}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4287, file: !147, line: 89, baseType: !1191, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4287, file: !147, line: 100, baseType: !4295, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!87, !4246, !181, !181, !87}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4247, file: !147, line: 134, baseType: !163, size: 64, offset: 960)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4247, file: !147, line: 135, baseType: !87, size: 32, offset: 1024)
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !147, line: 136, baseType: !4301, size: 128, offset: 1088)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !147, line: 136, size: 128, elements: !4302)
!4302 = !{!4303, !4309}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4301, file: !147, line: 137, baseType: !4304, size: 128)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4305, line: 6, size: 128, elements: !4306)
!4305 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4304, file: !4305, line: 7, baseType: !460, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4304, file: !4305, line: 8, baseType: !460, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !147, line: 138, baseType: !4310)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4301, file: !147, line: 138, elements: !4311)
!4311 = !{!4312, !4314}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4310, file: !147, line: 138, baseType: !4313)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4310, file: !147, line: 138, elements: !728)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4310, file: !147, line: 138, baseType: !4315)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4304, elements: !2994)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4243, file: !20, line: 147, baseType: !163, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1237, file: !20, line: 161, baseType: !743, size: 128, align: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !20, line: 164, baseType: !4319, size: 32, offset: 384)
!4319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !20, line: 164, size: 32, elements: !4320)
!4320 = !{!4321, !4322}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4319, file: !20, line: 169, baseType: !191, size: 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4319, file: !20, line: 177, baseType: !7, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1233, file: !20, line: 181, baseType: !191, size: 32, offset: 416)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1196, file: !1109, line: 535, baseType: !1232, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1196, file: !1109, line: 541, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1196, file: !1109, line: 545, baseType: !4328, size: 64, offset: 768)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1196, file: !1109, line: 549, baseType: !4330, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1130, line: 520, baseType: !1232)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1108, file: !1109, line: 581, baseType: !4332, size: 64, offset: 384)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!1194, !1195, !7}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1108, file: !1109, line: 582, baseType: !4336, size: 64, offset: 448)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!1194, !1195, !181, !181}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1108, file: !1109, line: 584, baseType: !4340, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!181, !1115}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1108, file: !1109, line: 588, baseType: !1191, size: 64, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1108, file: !1109, line: 591, baseType: !1191, size: 64, offset: 640)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1108, file: !1109, line: 597, baseType: !4346, size: 64, offset: 704)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!87, !1115, !181, !163, !87, !87}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1108, file: !1109, line: 603, baseType: !4350, size: 64, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!159, !1115}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1108, file: !1109, line: 613, baseType: !4354, size: 64, offset: 832)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!87, !1115, !1173}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1108, file: !1109, line: 625, baseType: !4358, size: 64, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!1173, !1115, !181}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1108, file: !1109, line: 633, baseType: !4362, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!1232, !1115, !181}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1043, file: !1010, line: 277, baseType: !4366, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !1049}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1043, file: !1010, line: 290, baseType: !1086, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1043, file: !1010, line: 292, baseType: !1074, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1043, file: !1010, line: 293, baseType: !1082, size: 64, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1043, file: !1010, line: 294, baseType: !1078, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1043, file: !1010, line: 296, baseType: !4374, size: 64, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!1504, !1049, !1060, !177, !183}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1043, file: !1010, line: 306, baseType: !177, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1043, file: !1010, line: 313, baseType: !1102, size: 8, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1043, file: !1010, line: 314, baseType: !4374, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1043, file: !1010, line: 317, baseType: !4381, size: 64, offset: 640)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!3935, !1049, !3937}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1043, file: !1010, line: 320, baseType: !4385, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!87, !1049, !1115}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1038, file: !1010, line: 176, baseType: !4389, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1010, line: 35, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1038, file: !1010, line: 177, baseType: !183, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1038, file: !1010, line: 178, baseType: !1008, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1009, file: !1010, line: 215, baseType: !163, size: 64, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1009, file: !1010, line: 221, baseType: !460, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 223, baseType: !168, size: 16, offset: 896)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1009, file: !1010, line: 224, baseType: !166, size: 16, offset: 912)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1009, file: !1010, line: 225, baseType: !4398, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1010, line: 36, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1009, file: !1010, line: 227, baseType: !743, size: 128, align: 64, offset: 1024)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !993, file: !984, line: 442, baseType: !4402, size: 448, offset: 2048)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !984, line: 138, size: 448, elements: !4403)
!4403 = !{!4404, !4405, !4406}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4402, file: !984, line: 140, baseType: !1008, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4402, file: !984, line: 141, baseType: !181, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4402, file: !984, line: 142, baseType: !1862, size: 320, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !993, file: !984, line: 443, baseType: !4402, size: 448, offset: 2496)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !993, file: !984, line: 446, baseType: !4409, offset: 2944)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4402, elements: !4410)
!4410 = !{!4411}
!4411 = !DISubrange(count: 0)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !993, file: !984, line: 455, baseType: !235, size: 16, offset: 2944)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !993, file: !984, line: 456, baseType: !235, size: 16, offset: 2960)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !993, file: !984, line: 457, baseType: !235, size: 16, offset: 2976)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !993, file: !984, line: 458, baseType: !235, size: 16, offset: 2992)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !993, file: !984, line: 461, baseType: !987, size: 896, offset: 3008)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !993, file: !984, line: 463, baseType: !4418, size: 64, offset: 3904)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !984, line: 537, size: 41664, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4419, file: !984, line: 538, baseType: !1030, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4419, file: !984, line: 541, baseType: !7, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4419, file: !984, line: 544, baseType: !87, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4419, file: !984, line: 547, baseType: !239, size: 128, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4419, file: !984, line: 548, baseType: !743, size: 128, align: 64, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4419, file: !984, line: 555, baseType: !993, size: 7872, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4419, file: !984, line: 558, baseType: !992, size: 64, offset: 8256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4419, file: !984, line: 561, baseType: !191, size: 32, offset: 8320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4419, file: !984, line: 564, baseType: !7, size: 32, offset: 8352)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4419, file: !984, line: 567, baseType: !2102, size: 32768, offset: 8384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4419, file: !984, line: 570, baseType: !4432, size: 512, offset: 41152)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 512, elements: !1477)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !993, file: !984, line: 469, baseType: !239, size: 128, offset: 3968)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !993, file: !984, line: 478, baseType: !4435, size: 1792, offset: 4096)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1792, elements: !4436)
!4436 = !{!4437}
!4437 = !DISubrange(count: 14)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !993, file: !984, line: 487, baseType: !992, size: 64, offset: 5888)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !993, file: !984, line: 488, baseType: !992, size: 64, offset: 5952)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !993, file: !984, line: 491, baseType: !4441, size: 64, offset: 6016)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !984, line: 327, size: 896, elements: !4443)
!4443 = !{!4444, !4447, !4457, !4458, !4459, !4460, !4461}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4442, file: !984, line: 332, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4446, line: 64, elements: !728)
!4446 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4442, file: !984, line: 333, baseType: !4448, size: 192)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !984, line: 299, size: 192, elements: !4449)
!4449 = !{!4450}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4448, file: !984, line: 300, baseType: !4451, size: 192)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4452, line: 17, size: 192, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4451, file: !4452, line: 18, baseType: !460, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4451, file: !4452, line: 19, baseType: !460, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4451, file: !4452, line: 20, baseType: !462, size: 64, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4442, file: !984, line: 339, baseType: !4448, size: 192, offset: 192)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4442, file: !984, line: 347, baseType: !4448, size: 192, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4442, file: !984, line: 353, baseType: !4448, size: 192, offset: 576)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4442, file: !984, line: 366, baseType: !992, size: 64, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4442, file: !984, line: 367, baseType: !992, size: 64, offset: 832)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !993, file: !984, line: 492, baseType: !239, size: 128, offset: 6080)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !993, file: !984, line: 495, baseType: !4448, size: 192, offset: 6208)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !993, file: !984, line: 496, baseType: !4448, size: 192, offset: 6400)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !993, file: !984, line: 497, baseType: !4466, size: 192, offset: 6592)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !403, line: 324, size: 192, elements: !4467)
!4467 = !{!4468, !4469, !4470}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4466, file: !403, line: 326, baseType: !460, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4466, file: !403, line: 327, baseType: !460, size: 64, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4466, file: !403, line: 328, baseType: !552, size: 32, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !993, file: !984, line: 503, baseType: !239, size: 128, offset: 6784)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !993, file: !984, line: 504, baseType: !763, size: 256, offset: 6912)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !993, file: !984, line: 507, baseType: !196, size: 192, offset: 7168)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !993, file: !984, line: 510, baseType: !1874, size: 256, offset: 7360)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !993, file: !984, line: 513, baseType: !4476, size: 64, offset: 7616)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4478, line: 214, elements: !728)
!4478 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !993, file: !984, line: 516, baseType: !4480, offset: 7680)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4481, line: 76, elements: !728)
!4481 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !993, file: !984, line: 519, baseType: !191, size: 32, offset: 7680)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !993, file: !984, line: 522, baseType: !4484, size: 128, offset: 7712)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !984, line: 370, size: 128, elements: !4485)
!4485 = !{!4486, !4487, !4488, !4489}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4484, file: !984, line: 372, baseType: !1102, size: 8)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4484, file: !984, line: 375, baseType: !87, size: 32, offset: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4484, file: !984, line: 380, baseType: !87, size: 32, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4484, file: !984, line: 386, baseType: !87, size: 32, offset: 96)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !993, file: !984, line: 529, baseType: !4491, offset: 7872)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, elements: !2994)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !989, file: !984, line: 157, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !984, line: 669, size: 1984, elements: !4495)
!4495 = !{!4496, !4500, !4504, !4508, !4509, !4510, !4511, !4515, !4519, !4520, !4526, !4530, !4531, !4532, !4536, !4540, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4593, !4594}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4494, file: !984, line: 670, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!988, !988}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4494, file: !984, line: 671, baseType: !4501, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!87, !988}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4494, file: !984, line: 672, baseType: !4505, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !988}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4494, file: !984, line: 673, baseType: !4505, size: 64, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4494, file: !984, line: 674, baseType: !4505, size: 64, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4494, file: !984, line: 675, baseType: !4505, size: 64, offset: 320)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4494, file: !984, line: 676, baseType: !4512, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !988, !87}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4494, file: !984, line: 677, baseType: !4516, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!87, !1055, !988}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4494, file: !984, line: 679, baseType: !4516, size: 64, offset: 512)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4494, file: !984, line: 682, baseType: !4521, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!87, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !984, line: 30, flags: DIFlagFwdDecl)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4494, file: !984, line: 683, baseType: !4527, size: 64, offset: 640)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{null, !4524}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4494, file: !984, line: 684, baseType: !4527, size: 64, offset: 704)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4494, file: !984, line: 685, baseType: !2047, size: 64, offset: 768)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4494, file: !984, line: 686, baseType: !4533, size: 64, offset: 832)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!87, !401, !982}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4494, file: !984, line: 688, baseType: !4537, size: 64, offset: 896)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !401, !982}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4494, file: !984, line: 689, baseType: !4541, size: 64, offset: 960)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !401}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4494, file: !984, line: 690, baseType: !4541, size: 64, offset: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4494, file: !984, line: 691, baseType: !4541, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4494, file: !984, line: 692, baseType: !4505, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4494, file: !984, line: 694, baseType: !1102, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4494, file: !984, line: 707, baseType: !1102, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4494, file: !984, line: 719, baseType: !1102, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4494, file: !984, line: 722, baseType: !87, size: 32, offset: 1248)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4494, file: !984, line: 723, baseType: !159, size: 64, offset: 1280)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4494, file: !984, line: 726, baseType: !159, size: 64, offset: 1344)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4494, file: !984, line: 729, baseType: !4418, size: 64, offset: 1408)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4494, file: !984, line: 732, baseType: !836, size: 192, offset: 1472)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4494, file: !984, line: 738, baseType: !239, size: 128, offset: 1664)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4494, file: !984, line: 744, baseType: !4557, size: 64, offset: 1792)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !984, line: 580, size: 1728, elements: !4559)
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4569, !4570, !4571, !4575, !4579, !4580, !4581, !4582, !4583, !4587, !4591, !4592}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4558, file: !984, line: 586, baseType: !4432, size: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4558, file: !984, line: 587, baseType: !181, size: 64, offset: 512)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4558, file: !984, line: 593, baseType: !177, size: 64, offset: 576)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4558, file: !984, line: 596, baseType: !7, size: 32, offset: 640)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4558, file: !984, line: 604, baseType: !7, size: 32, offset: 672)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4558, file: !984, line: 610, baseType: !4493, size: 64, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4558, file: !984, line: 611, baseType: !239, size: 128, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4558, file: !984, line: 612, baseType: !4568, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4558, file: !984, line: 614, baseType: !1046, size: 64, offset: 960)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4558, file: !984, line: 615, baseType: !4366, size: 64, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4558, file: !984, line: 621, baseType: !4572, size: 64, offset: 1088)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!460, !988, !4557}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4558, file: !984, line: 625, baseType: !4576, size: 64, offset: 1152)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!471, !988, !4557}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4558, file: !984, line: 628, baseType: !1086, size: 64, offset: 1216)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4558, file: !984, line: 631, baseType: !1074, size: 64, offset: 1280)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4558, file: !984, line: 632, baseType: !1082, size: 64, offset: 1344)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4558, file: !984, line: 633, baseType: !1078, size: 64, offset: 1408)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4558, file: !984, line: 640, baseType: !4584, size: 64, offset: 1472)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!87, !988, !4557, !460}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4558, file: !984, line: 645, baseType: !4588, size: 64, offset: 1536)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!87, !988, !4557, !471}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4558, file: !984, line: 654, baseType: !4374, size: 64, offset: 1600)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4558, file: !984, line: 657, baseType: !4381, size: 64, offset: 1664)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4494, file: !984, line: 745, baseType: !4557, size: 64, offset: 1856)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4494, file: !984, line: 754, baseType: !7, size: 32, offset: 1920)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !989, file: !984, line: 160, baseType: !4260, size: 128, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !989, file: !984, line: 163, baseType: !239, size: 128, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !989, file: !984, line: 164, baseType: !239, size: 128, offset: 384)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !989, file: !984, line: 167, baseType: !239, size: 128, offset: 512)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !989, file: !984, line: 173, baseType: !87, size: 32, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !984, line: 175, baseType: !7, size: 32, offset: 672)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !989, file: !984, line: 183, baseType: !460, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !989, file: !984, line: 189, baseType: !191, size: 32, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !989, file: !984, line: 192, baseType: !1874, size: 256, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !989, file: !984, line: 193, baseType: !4605, size: 448, offset: 1088)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1875, line: 120, size: 448, elements: !4606)
!4606 = !{!4607, !4608, !4609}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4605, file: !1875, line: 121, baseType: !1874, size: 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4605, file: !1875, line: 122, baseType: !743, size: 128, align: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4605, file: !1875, line: 125, baseType: !1935, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !989, file: !984, line: 199, baseType: !988, size: 64, offset: 1536)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !983, file: !984, line: 218, baseType: !409, size: 32, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !983, file: !984, line: 226, baseType: !982, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !983, file: !984, line: 229, baseType: !992, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !983, file: !984, line: 232, baseType: !87, size: 32, offset: 1088)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !983, file: !984, line: 241, baseType: !239, size: 128, offset: 1152)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !983, file: !984, line: 242, baseType: !239, size: 128, offset: 1280)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !983, file: !984, line: 243, baseType: !239, size: 128, offset: 1408)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !983, file: !984, line: 246, baseType: !239, size: 128, offset: 1536)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !983, file: !984, line: 255, baseType: !4435, size: 1792, offset: 1664)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !983, file: !984, line: 258, baseType: !239, size: 128, offset: 3456)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !983, file: !984, line: 259, baseType: !239, size: 128, offset: 3584)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !983, file: !984, line: 265, baseType: !815, size: 128, offset: 3712)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !983, file: !984, line: 271, baseType: !239, size: 128, offset: 3840)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !983, file: !984, line: 277, baseType: !239, size: 128, offset: 3968)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !983, file: !984, line: 278, baseType: !239, size: 128, offset: 4096)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !983, file: !984, line: 279, baseType: !239, size: 128, offset: 4224)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !983, file: !984, line: 288, baseType: !992, size: 64, offset: 4352)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !983, file: !984, line: 289, baseType: !992, size: 64, offset: 4416)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !983, file: !984, line: 290, baseType: !982, size: 64, offset: 4480)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !983, file: !984, line: 293, baseType: !1102, size: 8, offset: 4544)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !983, file: !984, line: 296, baseType: !743, size: 128, align: 64, offset: 4608)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !933, file: !934, line: 56, baseType: !4633, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !403, line: 50, flags: DIFlagFwdDecl)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !933, file: !934, line: 57, baseType: !4636, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !4639, line: 110, size: 1472, elements: !4640)
!4639 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4656, !4657, !4658, !4659, !4660, !4661, !4767, !4768, !4769, !4770, !4771, !4802, !4803, !4804, !4812}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4638, file: !4639, line: 111, baseType: !756, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4638, file: !4639, line: 112, baseType: !892, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4638, file: !4639, line: 113, baseType: !899, size: 32, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !4638, file: !4639, line: 114, baseType: !892, size: 32, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !4638, file: !4639, line: 115, baseType: !899, size: 32, offset: 160)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4638, file: !4639, line: 116, baseType: !892, size: 32, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !4638, file: !4639, line: 117, baseType: !899, size: 32, offset: 224)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !4638, file: !4639, line: 118, baseType: !892, size: 32, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !4638, file: !4639, line: 119, baseType: !899, size: 32, offset: 288)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !4638, file: !4639, line: 120, baseType: !7, size: 32, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !4638, file: !4639, line: 121, baseType: !4652, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !3628, line: 24, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3628, line: 24, size: 64, elements: !4654)
!4654 = !{!4655}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4653, file: !3628, line: 24, baseType: !460, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !4638, file: !4639, line: 122, baseType: !4652, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !4638, file: !4639, line: 123, baseType: !4652, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !4638, file: !4639, line: 124, baseType: !4652, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !4638, file: !4639, line: 125, baseType: !4652, size: 64, offset: 640)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !4638, file: !4639, line: 127, baseType: !229, size: 8, offset: 704)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !4638, file: !4639, line: 129, baseType: !4662, size: 64, offset: 768)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !955, line: 195, size: 1728, elements: !4664)
!4664 = !{!4665, !4666, !4669, !4674, !4675, !4678, !4679, !4684, !4685, !4686, !4687, !4689, !4690, !4691, !4692, !4693, !4731, !4752}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4663, file: !955, line: 196, baseType: !409, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4663, file: !955, line: 197, baseType: !4667, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !955, line: 28, baseType: !4668)
!4668 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !167, line: 104, baseType: !1658)
!4669 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !955, line: 198, baseType: !4670, size: 192, offset: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !955, line: 198, size: 192, elements: !4671)
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !4670, file: !955, line: 199, baseType: !239, size: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !4670, file: !955, line: 200, baseType: !452, size: 192, align: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !4663, file: !955, line: 205, baseType: !1149, size: 320, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4663, file: !955, line: 206, baseType: !4676, size: 64, offset: 576)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !955, line: 206, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4663, file: !955, line: 207, baseType: !163, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !955, line: 208, baseType: !4680, size: 64, offset: 704)
!4680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !955, line: 208, size: 64, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !4680, file: !955, line: 209, baseType: !3304, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !4680, file: !955, line: 210, baseType: !3304, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !4663, file: !955, line: 212, baseType: !3304, size: 64, offset: 768)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4663, file: !955, line: 213, baseType: !892, size: 32, offset: 832)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4663, file: !955, line: 214, baseType: !899, size: 32, offset: 864)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4663, file: !955, line: 215, baseType: !4688, size: 32, offset: 896)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !955, line: 31, baseType: !3757)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !4663, file: !955, line: 216, baseType: !168, size: 16, offset: 928)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !4663, file: !955, line: 217, baseType: !168, size: 16, offset: 944)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4663, file: !955, line: 221, baseType: !356, size: 16, offset: 960)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4663, file: !955, line: 228, baseType: !181, size: 64, offset: 1024)
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !955, line: 245, baseType: !4694, size: 320, offset: 1088)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !955, line: 245, size: 320, elements: !4695)
!4695 = !{!4696, !4723}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !4694, file: !955, line: 246, baseType: !4697, size: 320)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !955, line: 114, size: 320, elements: !4698)
!4698 = !{!4699, !4700, !4712, !4715, !4722}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4697, file: !955, line: 116, baseType: !181, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, scope: !4697, file: !955, line: 117, baseType: !4701, size: 64, offset: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4697, file: !955, line: 117, size: 64, elements: !4702)
!4702 = !{!4703, !4711}
!4703 = !DIDerivedType(tag: DW_TAG_member, scope: !4701, file: !955, line: 118, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4701, file: !955, line: 118, size: 64, elements: !4705)
!4705 = !{!4706, !4707}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !4704, file: !955, line: 120, baseType: !235, size: 16)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4704, file: !955, line: 121, baseType: !4708, size: 48, offset: 16)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 48, elements: !4709)
!4709 = !{!4710}
!4710 = !DISubrange(count: 6)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4701, file: !955, line: 127, baseType: !181, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4697, file: !955, line: 129, baseType: !4713, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !955, line: 102, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !4697, file: !955, line: 130, baseType: !4716, size: 64, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !955, line: 108, size: 192, elements: !4718)
!4718 = !{!4719, !4720, !4721}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4717, file: !955, line: 109, baseType: !743, size: 128, align: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4717, file: !955, line: 110, baseType: !409, size: 32, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !4717, file: !955, line: 111, baseType: !1102, size: 8, offset: 160)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4697, file: !955, line: 131, baseType: !159, size: 64, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, scope: !4694, file: !955, line: 247, baseType: !4724, size: 320)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4694, file: !955, line: 247, size: 320, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4724, file: !955, line: 248, baseType: !181, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !4724, file: !955, line: 249, baseType: !181, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4724, file: !955, line: 250, baseType: !4713, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !4724, file: !955, line: 251, baseType: !4716, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4724, file: !955, line: 252, baseType: !1060, size: 64, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !955, line: 260, baseType: !4732, size: 256, offset: 1408)
!4732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !955, line: 260, size: 256, elements: !4733)
!4733 = !{!4734, !4740}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !4732, file: !955, line: 261, baseType: !4735, size: 256)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !955, line: 134, size: 256, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !4735, file: !955, line: 135, baseType: !163, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4735, file: !955, line: 136, baseType: !4739, size: 256)
!4739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !820)
!4740 = !DIDerivedType(tag: DW_TAG_member, scope: !4732, file: !955, line: 262, baseType: !4741, size: 256)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4732, file: !955, line: 262, size: 256, elements: !4742)
!4742 = !{!4743, !4744}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !4741, file: !955, line: 264, baseType: !239, size: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !4741, file: !955, line: 265, baseType: !4745, size: 128, offset: 128)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !4746, line: 22, size: 128, elements: !4747)
!4746 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!4747 = !{!4748, !4751}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4745, file: !4746, line: 23, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !4746, line: 23, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !4745, file: !4746, line: 24, baseType: !181, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !4663, file: !955, line: 280, baseType: !4753, size: 64, offset: 1664)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !955, line: 176, size: 192, elements: !4755)
!4755 = !{!4756, !4765, !4766}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !4754, file: !955, line: 177, baseType: !4757, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !955, line: 171, baseType: !4758)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!87, !4662, !4761, !4763, !4662}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4714)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4735)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4754, file: !955, line: 178, baseType: !4662, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !4754, file: !955, line: 179, baseType: !4713, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !4638, file: !4639, line: 130, baseType: !4662, size: 64, offset: 832)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !4638, file: !4639, line: 131, baseType: !4662, size: 64, offset: 896)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !4638, file: !4639, line: 132, baseType: !4662, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4638, file: !4639, line: 135, baseType: !163, size: 64, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4638, file: !4639, line: 137, baseType: !4772, size: 64, offset: 1088)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !4774, line: 14, size: 1088, elements: !4775)
!4774 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!4775 = !{!4776, !4777, !4786, !4787, !4788, !4789, !4790, !4791}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4773, file: !4774, line: 15, baseType: !409, size: 32)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !4773, file: !4774, line: 17, baseType: !4778, size: 320, offset: 64)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !4779, line: 22, size: 320, elements: !4780)
!4779 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!4780 = !{!4781, !4782, !4783, !4784}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4778, file: !4779, line: 23, baseType: !552, size: 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4778, file: !4779, line: 24, baseType: !471, size: 64, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4778, file: !4779, line: 26, baseType: !239, size: 128, offset: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !4778, file: !4779, line: 28, baseType: !4785, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !4773, file: !4774, line: 19, baseType: !181, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !4773, file: !4774, line: 20, baseType: !756, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !4773, file: !4774, line: 23, baseType: !815, size: 128, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4773, file: !4774, line: 24, baseType: !892, size: 32, offset: 640)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !4773, file: !4774, line: 29, baseType: !756, size: 64, offset: 704)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4773, file: !4774, line: 36, baseType: !4792, size: 320, offset: 768)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !4793, line: 15, size: 320, elements: !4794)
!4793 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!4794 = !{!4795, !4796, !4797, !4798, !4799, !4800, !4801}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4792, file: !4793, line: 16, baseType: !552, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4792, file: !4793, line: 18, baseType: !87, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !4792, file: !4793, line: 19, baseType: !87, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !4792, file: !4793, line: 20, baseType: !87, size: 32, offset: 96)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !4792, file: !4793, line: 21, baseType: !87, size: 32, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !4792, file: !4793, line: 22, baseType: !181, size: 64, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4792, file: !4793, line: 23, baseType: !181, size: 64, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4638, file: !4639, line: 138, baseType: !862, size: 64, offset: 1152)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4638, file: !4639, line: 139, baseType: !968, size: 64, offset: 1216)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !4638, file: !4639, line: 140, baseType: !4805, size: 64, offset: 1280)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !4639, line: 25, size: 64, elements: !4807)
!4807 = !{!4808, !4809, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4806, file: !4639, line: 26, baseType: !191, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !4806, file: !4639, line: 27, baseType: !87, size: 32, offset: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4806, file: !4639, line: 28, baseType: !4811, offset: 64)
!4811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, elements: !2994)
!4812 = !DIDerivedType(tag: DW_TAG_member, scope: !4638, file: !4639, line: 142, baseType: !4813, size: 128, offset: 1344)
!4813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4638, file: !4639, line: 142, size: 128, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !4813, file: !4639, line: 143, baseType: !87, size: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4813, file: !4639, line: 144, baseType: !743, size: 128, align: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !913, file: !914, line: 23, baseType: !4818, size: 64, offset: 384)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!862, !923}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !913, file: !914, line: 24, baseType: !4822, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!923, !923}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !906, file: !907, line: 12, baseType: !7, size: 32, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !907, line: 13, baseType: !409, size: 32, offset: 160)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !276, line: 77, baseType: !181, size: 64, offset: 2112)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !863, file: !276, line: 80, baseType: !1102, size: 8, offset: 2176)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !863, file: !276, line: 88, baseType: !239, size: 128, offset: 2240)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !863, file: !276, line: 89, baseType: !4662, size: 64, offset: 2368)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !863, file: !276, line: 90, baseType: !1149, size: 320, offset: 2432)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !863, file: !276, line: 97, baseType: !1874, size: 256, offset: 2752)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !863, file: !276, line: 99, baseType: !4834, size: 768, offset: 3008)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !155, line: 199, size: 768, elements: !4835)
!4835 = !{!4836, !4841}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !4834, file: !155, line: 200, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!87, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4834, file: !155, line: 201, baseType: !4842, size: 704, offset: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !155, line: 193, size: 704, elements: !4843)
!4843 = !{!4844, !4889}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4842, file: !155, line: 195, baseType: !4845, size: 640)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !155, line: 173, size: 640, elements: !4846)
!4846 = !{!4847, !4859, !4860, !4861, !4879, !4880, !4882, !4888}
!4847 = !DIDerivedType(tag: DW_TAG_member, scope: !4845, file: !155, line: 174, baseType: !4848, size: 192)
!4848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4845, file: !155, line: 174, size: 192, elements: !4849)
!4849 = !{!4850, !4858}
!4850 = !DIDerivedType(tag: DW_TAG_member, scope: !4848, file: !155, line: 175, baseType: !4851, size: 192)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4848, file: !155, line: 175, size: 192, elements: !4852)
!4852 = !{!4853, !4854, !4855, !4856, !4857}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !4851, file: !155, line: 176, baseType: !175, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !4851, file: !155, line: 177, baseType: !87, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4851, file: !155, line: 178, baseType: !87, size: 32, offset: 96)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4851, file: !155, line: 179, baseType: !87, size: 32, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !4851, file: !155, line: 180, baseType: !87, size: 32, offset: 160)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4848, file: !155, line: 182, baseType: !743, size: 128, align: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4845, file: !155, line: 184, baseType: !1611, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !4845, file: !155, line: 185, baseType: !175, size: 64, offset: 256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4845, file: !155, line: 186, baseType: !4862, size: 64, offset: 320)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !155, line: 204, size: 960, elements: !4864)
!4864 = !{!4865, !4866, !4870, !4875}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !4863, file: !155, line: 205, baseType: !4834, size: 768)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4863, file: !155, line: 206, baseType: !4867, size: 64, offset: 768)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!4840, !4862}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !4863, file: !155, line: 207, baseType: !4871, size: 64, offset: 832)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{null, !4874, !1592, !1593}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !4863, file: !155, line: 209, baseType: !4876, size: 64, offset: 896)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!87, !4874, !175}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4845, file: !155, line: 187, baseType: !4840, size: 64, offset: 384)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4845, file: !155, line: 188, baseType: !4881, size: 64, offset: 448)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4845, file: !155, line: 189, baseType: !4883, size: 64, offset: 512)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !155, line: 157, size: 256, elements: !4885)
!4885 = !{!4886, !4887}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4884, file: !155, line: 158, baseType: !452, size: 192, align: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4884, file: !155, line: 159, baseType: !4874, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !4845, file: !155, line: 190, baseType: !811, size: 64, offset: 576)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4842, file: !155, line: 196, baseType: !593, size: 64, offset: 640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !863, file: !276, line: 100, baseType: !4874, size: 64, offset: 3776)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !863, file: !276, line: 102, baseType: !968, size: 64, offset: 3840)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !863, file: !276, line: 103, baseType: !4893, size: 640, offset: 3904)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 640, elements: !977)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !863, file: !276, line: 104, baseType: !1856, size: 256, offset: 4544)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !832, file: !833, line: 38, baseType: !968, size: 64, offset: 768)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !832, file: !833, line: 39, baseType: !87, size: 32, offset: 832)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !832, file: !833, line: 40, baseType: !906, size: 192, offset: 896)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !832, file: !833, line: 42, baseType: !87, size: 32, offset: 1088)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !777, file: !129, line: 951, baseType: !11, size: 32, offset: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !129, line: 952, baseType: !892, size: 32, offset: 160)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !777, file: !129, line: 952, baseType: !892, size: 32, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !777, file: !129, line: 953, baseType: !87, size: 32, offset: 224)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !736, file: !129, line: 1012, baseType: !4636, size: 64, offset: 896)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !736, file: !129, line: 1013, baseType: !4905, size: 256, offset: 960)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !129, line: 970, size: 256, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4905, file: !129, line: 971, baseType: !181, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4905, file: !129, line: 972, baseType: !7, size: 32, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4905, file: !129, line: 973, baseType: !7, size: 32, offset: 96)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4905, file: !129, line: 974, baseType: !7, size: 32, offset: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4905, file: !129, line: 975, baseType: !7, size: 32, offset: 160)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4905, file: !129, line: 976, baseType: !183, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !736, file: !129, line: 1014, baseType: !3375, size: 128, offset: 1216)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !736, file: !129, line: 1015, baseType: !1258, size: 64, offset: 1344)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !736, file: !129, line: 1016, baseType: !3866, size: 64, offset: 1408)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !736, file: !129, line: 1018, baseType: !460, size: 64, offset: 1472)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !736, file: !129, line: 1020, baseType: !163, size: 64, offset: 1536)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !736, file: !129, line: 1023, baseType: !163, size: 64, offset: 1600)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !736, file: !129, line: 1027, baseType: !2151, size: 64, offset: 1664)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !736, file: !129, line: 1029, baseType: !1254, size: 64, offset: 1728)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !736, file: !129, line: 1030, baseType: !3595, size: 32, offset: 1792)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !736, file: !129, line: 1031, baseType: !3595, size: 32, offset: 1824)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !711, file: !20, line: 756, baseType: !181, size: 64, offset: 704)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !711, file: !20, line: 757, baseType: !181, size: 64, offset: 768)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !711, file: !20, line: 760, baseType: !181, size: 64, offset: 832)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !711, file: !20, line: 761, baseType: !181, size: 64, offset: 896)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !711, file: !20, line: 763, baseType: !181, size: 64, offset: 960)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !711, file: !20, line: 764, baseType: !4929, size: 64, offset: 1024)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1130, line: 299, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1130, line: 299, size: 64, elements: !4932)
!4932 = !{!4933}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4931, file: !1130, line: 299, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1135, line: 18, baseType: !181)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !711, file: !20, line: 773, baseType: !191, size: 32, offset: 1088)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !711, file: !20, line: 785, baseType: !191, size: 32, offset: 1120)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !711, file: !20, line: 795, baseType: !4938, size: 64, offset: 1152)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !20, line: 726, size: 128, elements: !4940)
!4940 = !{!4941, !4942}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4939, file: !20, line: 727, baseType: !460, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4939, file: !20, line: 728, baseType: !87, size: 32, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !711, file: !20, line: 801, baseType: !181, size: 64, offset: 1216)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !711, file: !20, line: 804, baseType: !756, size: 64, offset: 1280)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !711, file: !20, line: 806, baseType: !87, size: 32, offset: 1344)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !711, file: !20, line: 808, baseType: !201, size: 32, offset: 1376)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !711, file: !20, line: 823, baseType: !1149, size: 320, offset: 1408)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !711, file: !20, line: 825, baseType: !239, size: 128, offset: 1728)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !711, file: !20, line: 845, baseType: !87, size: 32, offset: 1856)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !711, file: !20, line: 849, baseType: !181, size: 64, offset: 1920)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !711, file: !20, line: 850, baseType: !181, size: 64, offset: 1984)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !711, file: !20, line: 852, baseType: !181, size: 64, offset: 2048)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !711, file: !20, line: 853, baseType: !181, size: 64, offset: 2112)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !711, file: !20, line: 854, baseType: !758, size: 64, offset: 2176)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !711, file: !20, line: 855, baseType: !181, size: 64, offset: 2240)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !711, file: !20, line: 856, baseType: !181, size: 64, offset: 2304)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !711, file: !20, line: 857, baseType: !181, size: 64, offset: 2368)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !711, file: !20, line: 858, baseType: !181, size: 64, offset: 2432)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !711, file: !20, line: 865, baseType: !581, size: 32, offset: 2496)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !711, file: !20, line: 867, baseType: !201, size: 32, offset: 2528)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !711, file: !20, line: 869, baseType: !181, size: 64, offset: 2560)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !711, file: !20, line: 869, baseType: !181, size: 64, offset: 2624)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !711, file: !20, line: 869, baseType: !181, size: 64, offset: 2688)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !711, file: !20, line: 869, baseType: !181, size: 64, offset: 2752)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !711, file: !20, line: 870, baseType: !181, size: 64, offset: 2816)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !711, file: !20, line: 870, baseType: !181, size: 64, offset: 2880)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !711, file: !20, line: 870, baseType: !181, size: 64, offset: 2944)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !711, file: !20, line: 871, baseType: !181, size: 64, offset: 3008)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !711, file: !20, line: 871, baseType: !181, size: 64, offset: 3072)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !711, file: !20, line: 871, baseType: !181, size: 64, offset: 3136)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !711, file: !20, line: 871, baseType: !181, size: 64, offset: 3200)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !711, file: !20, line: 873, baseType: !4973, size: 3328, offset: 3264)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 3328, elements: !4974)
!4974 = !{!4975}
!4975 = !DISubrange(count: 52)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !711, file: !20, line: 875, baseType: !4977, size: 1280, offset: 6592)
!4977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4778, size: 1280, elements: !820)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !711, file: !20, line: 877, baseType: !4979, size: 64, offset: 7872)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !20, line: 877, flags: DIFlagFwdDecl)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !20, line: 880, baseType: !4982, size: 1088, offset: 7936)
!4982 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4983, line: 72, baseType: !4984)
!4983 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4983, line: 23, size: 1088, elements: !4985)
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4993, !4994, !4995, !4996, !5021, !5022, !5023}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4984, file: !4983, line: 28, baseType: !460, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4984, file: !4983, line: 38, baseType: !758, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4984, file: !4983, line: 40, baseType: !181, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4984, file: !4983, line: 43, baseType: !1149, size: 320, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4984, file: !4983, line: 44, baseType: !4991, size: 64, offset: 512)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4983, line: 44, flags: DIFlagFwdDecl)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4984, file: !4983, line: 48, baseType: !181, size: 64, offset: 576)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4984, file: !4983, line: 59, baseType: !763, size: 256, offset: 640)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4984, file: !4983, line: 60, baseType: !163, size: 64, offset: 896)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4984, file: !4983, line: 61, baseType: !4997, size: 64, offset: 960)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4999)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5000, line: 13, size: 1216, elements: !5001)
!5000 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5001 = !{!5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4999, file: !5000, line: 14, baseType: !163, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4999, file: !5000, line: 15, baseType: !181, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4999, file: !5000, line: 17, baseType: !181, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4999, file: !5000, line: 17, baseType: !181, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4999, file: !5000, line: 18, baseType: !181, size: 64, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4999, file: !5000, line: 18, baseType: !181, size: 64, offset: 320)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4999, file: !5000, line: 19, baseType: !1018, size: 64, offset: 384)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4999, file: !5000, line: 21, baseType: !345, size: 64, offset: 448)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4999, file: !5000, line: 23, baseType: !345, size: 64, offset: 512)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4999, file: !5000, line: 24, baseType: !345, size: 64, offset: 576)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4999, file: !5000, line: 25, baseType: !345, size: 64, offset: 640)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4999, file: !5000, line: 26, baseType: !345, size: 64, offset: 704)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4999, file: !5000, line: 27, baseType: !345, size: 64, offset: 768)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4999, file: !5000, line: 28, baseType: !345, size: 64, offset: 832)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4999, file: !5000, line: 29, baseType: !345, size: 64, offset: 896)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4999, file: !5000, line: 30, baseType: !345, size: 64, offset: 960)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4999, file: !5000, line: 31, baseType: !345, size: 64, offset: 1024)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4999, file: !5000, line: 32, baseType: !345, size: 64, offset: 1088)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4999, file: !5000, line: 33, baseType: !345, size: 64, offset: 1152)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4984, file: !4983, line: 63, baseType: !191, size: 32, offset: 1024)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4984, file: !4983, line: 69, baseType: !235, size: 16, offset: 1056)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4984, file: !4983, line: 70, baseType: !1767, size: 16, offset: 1072)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !20, line: 882, baseType: !181, size: 64, offset: 9024)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !711, file: !20, line: 885, baseType: !201, size: 32, offset: 9088)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !711, file: !20, line: 886, baseType: !5027, size: 64, offset: 9152)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !20, line: 732, flags: DIFlagFwdDecl)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !711, file: !20, line: 901, baseType: !862, size: 64, offset: 9216)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !711, file: !20, line: 904, baseType: !735, size: 64, offset: 9280)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !711, file: !20, line: 906, baseType: !5032, size: 64, offset: 9344)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !20, line: 906, flags: DIFlagFwdDecl)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !711, file: !20, line: 930, baseType: !191, size: 32, offset: 9408)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !711, file: !20, line: 933, baseType: !191, size: 32, offset: 9440)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !711, file: !20, line: 935, baseType: !5037, size: 64, offset: 9472)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !256, line: 103, size: 64, elements: !5038)
!5038 = !{!5039}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5037, file: !256, line: 104, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !256, line: 101, flags: DIFlagFwdDecl)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !711, file: !20, line: 940, baseType: !756, size: 64, offset: 9536)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !711, file: !20, line: 942, baseType: !1874, size: 256, offset: 9600)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !708, file: !20, line: 986, baseType: !5045, offset: 10240)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !2994)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !402, file: !403, line: 882, baseType: !707, size: 64, offset: 9792)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !402, file: !403, line: 884, baseType: !87, size: 32, offset: 9856)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !402, file: !403, line: 885, baseType: !87, size: 32, offset: 9888)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !402, file: !403, line: 886, baseType: !87, size: 32, offset: 9920)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !402, file: !403, line: 888, baseType: !87, size: 32, offset: 9952)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !402, file: !403, line: 890, baseType: !181, size: 64, offset: 9984)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !402, file: !403, line: 893, baseType: !7, size: 32, offset: 10048)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !402, file: !403, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !402, file: !403, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !402, file: !403, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !402, file: !403, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !402, file: !403, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !402, file: !403, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !402, file: !403, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !402, file: !403, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !402, file: !403, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !402, file: !403, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !402, file: !403, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !402, file: !403, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !402, file: !403, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !402, file: !403, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !402, file: !403, line: 969, baseType: !181, size: 64, offset: 10176)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !402, file: !403, line: 971, baseType: !5069, size: 448, offset: 10240)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !250, line: 25, size: 448, elements: !5070)
!5070 = !{!5071, !5072, !5077}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5069, file: !250, line: 26, baseType: !181, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5069, file: !250, line: 27, baseType: !5073, size: 64, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!345, !5076}
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, scope: !5069, file: !250, line: 28, baseType: !5078, size: 320, offset: 128)
!5078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5069, file: !250, line: 28, size: 320, elements: !5079)
!5079 = !{!5080, !5090, !5115}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5078, file: !250, line: 37, baseType: !5081, size: 320)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !250, line: 30, size: 320, elements: !5082)
!5082 = !{!5083, !5085, !5086, !5087, !5088, !5089}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5081, file: !250, line: 31, baseType: !5084, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5081, file: !250, line: 32, baseType: !396, size: 32, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5081, file: !250, line: 33, baseType: !396, size: 32, offset: 96)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5081, file: !250, line: 34, baseType: !396, size: 32, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5081, file: !250, line: 35, baseType: !460, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5081, file: !250, line: 36, baseType: !5084, size: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5078, file: !250, line: 47, baseType: !5091, size: 192)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !250, line: 39, size: 192, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5114}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5091, file: !250, line: 40, baseType: !573, size: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5091, file: !250, line: 41, baseType: !249, size: 32, offset: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, scope: !5091, file: !250, line: 42, baseType: !5096, size: 64, offset: 64)
!5096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5091, file: !250, line: 42, size: 64, elements: !5097)
!5097 = !{!5098, !5106}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5096, file: !250, line: 43, baseType: !5099, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5101, line: 7, size: 128, elements: !5102)
!5101 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5102 = !{!5103, !5105}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5100, file: !5101, line: 8, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !179, line: 93, baseType: !185)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5100, file: !5101, line: 9, baseType: !185, size: 64, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5096, file: !250, line: 44, baseType: !5107, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5109, line: 7, size: 64, elements: !5110)
!5109 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5110 = !{!5111, !5113}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5108, file: !5109, line: 8, baseType: !5112, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5109, line: 5, baseType: !1658)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5108, file: !5109, line: 9, baseType: !1658, size: 32, offset: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5091, file: !250, line: 46, baseType: !460, size: 64, offset: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5078, file: !250, line: 55, baseType: !5116, size: 256)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !250, line: 49, size: 256, elements: !5117)
!5117 = !{!5118, !5126, !5127, !5128, !5129}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5116, file: !250, line: 50, baseType: !5119, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5121, line: 36, size: 64, elements: !5122)
!5121 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5122 = !{!5123, !5124, !5125}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5120, file: !5121, line: 37, baseType: !87, size: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5120, file: !5121, line: 38, baseType: !356, size: 16, offset: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5120, file: !5121, line: 39, baseType: !356, size: 16, offset: 48)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5116, file: !250, line: 51, baseType: !87, size: 32, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5116, file: !250, line: 52, baseType: !87, size: 32, offset: 96)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5116, file: !250, line: 53, baseType: !181, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5116, file: !250, line: 54, baseType: !181, size: 64, offset: 192)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !402, file: !403, line: 973, baseType: !5131, size: 32, offset: 10688)
!5131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !167, line: 27, baseType: !314)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !402, file: !403, line: 974, baseType: !5131, size: 32, offset: 10720)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !402, file: !403, line: 978, baseType: !181, size: 64, offset: 10752)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !402, file: !403, line: 987, baseType: !401, size: 64, offset: 10816)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !402, file: !403, line: 990, baseType: !401, size: 64, offset: 10880)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !402, file: !403, line: 995, baseType: !239, size: 128, offset: 10944)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !402, file: !403, line: 996, baseType: !239, size: 128, offset: 11072)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !402, file: !403, line: 997, baseType: !401, size: 64, offset: 11200)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !402, file: !403, line: 1005, baseType: !239, size: 128, offset: 11264)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !402, file: !403, line: 1006, baseType: !239, size: 128, offset: 11392)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !402, file: !403, line: 1009, baseType: !803, size: 64, offset: 11520)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !402, file: !403, line: 1010, baseType: !5143, size: 512, offset: 11584)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 512, elements: !820)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !402, file: !403, line: 1011, baseType: !239, size: 128, offset: 12096)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !402, file: !403, line: 1012, baseType: !239, size: 128, offset: 12224)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !402, file: !403, line: 1014, baseType: !1611, size: 64, offset: 12352)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !402, file: !403, line: 1017, baseType: !1760, size: 64, offset: 12416)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !402, file: !403, line: 1020, baseType: !1760, size: 64, offset: 12480)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !402, file: !403, line: 1023, baseType: !163, size: 64, offset: 12544)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !402, file: !403, line: 1025, baseType: !460, size: 64, offset: 12608)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !402, file: !403, line: 1026, baseType: !460, size: 64, offset: 12672)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !402, file: !403, line: 1031, baseType: !460, size: 64, offset: 12736)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !402, file: !403, line: 1032, baseType: !4466, size: 192, offset: 12800)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !402, file: !403, line: 1041, baseType: !181, size: 64, offset: 12992)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !402, file: !403, line: 1042, baseType: !181, size: 64, offset: 13056)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !402, file: !403, line: 1045, baseType: !460, size: 64, offset: 13120)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !402, file: !403, line: 1048, baseType: !460, size: 64, offset: 13184)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !402, file: !403, line: 1051, baseType: !181, size: 64, offset: 13248)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !402, file: !403, line: 1052, baseType: !181, size: 64, offset: 13312)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !402, file: !403, line: 1055, baseType: !5161, size: 640, offset: 13376)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5162, line: 132, size: 640, elements: !5163)
!5162 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5163 = !{!5164, !5170, !5171}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5161, file: !5162, line: 133, baseType: !5165, size: 576)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5166, size: 576, elements: !799)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5162, line: 117, size: 192, elements: !5167)
!5167 = !{!5168, !5169}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5166, file: !5162, line: 118, baseType: !460, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5166, file: !5162, line: 119, baseType: !587, size: 128, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5161, file: !5162, line: 134, baseType: !7, size: 32, offset: 576)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5161, file: !5162, line: 135, baseType: !7, size: 32, offset: 608)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !402, file: !403, line: 1058, baseType: !5173, size: 448, offset: 14016)
!5173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5162, line: 144, size: 448, elements: !5174)
!5174 = !{!5175, !5176, !5177}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5173, file: !5162, line: 145, baseType: !743, size: 128, align: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5173, file: !5162, line: 146, baseType: !763, size: 256, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5173, file: !5162, line: 147, baseType: !7, size: 32, offset: 384)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !402, file: !403, line: 1064, baseType: !4636, size: 64, offset: 14464)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !402, file: !403, line: 1067, baseType: !4636, size: 64, offset: 14528)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !402, file: !403, line: 1070, baseType: !4636, size: 64, offset: 14592)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !402, file: !403, line: 1074, baseType: !4662, size: 64, offset: 14656)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !402, file: !403, line: 1084, baseType: !5183, size: 128, offset: 14720)
!5183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !3570)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !402, file: !403, line: 1086, baseType: !5185, size: 64, offset: 14848)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !403, line: 55, flags: DIFlagFwdDecl)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !402, file: !403, line: 1089, baseType: !5188, size: 64, offset: 14912)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5189, line: 12, size: 64, elements: !5190)
!5189 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5190 = !{!5191}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5188, file: !5189, line: 13, baseType: !5192, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5189, line: 8, flags: DIFlagFwdDecl)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !402, file: !403, line: 1090, baseType: !5195, size: 128, offset: 14976)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5196, line: 13, size: 128, elements: !5197)
!5196 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5197 = !{!5198}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5195, file: !5196, line: 14, baseType: !239, size: 128)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !402, file: !403, line: 1097, baseType: !4633, size: 64, offset: 15104)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !402, file: !403, line: 1100, baseType: !5201, size: 64, offset: 15168)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !403, line: 1100, flags: DIFlagFwdDecl)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !402, file: !403, line: 1103, baseType: !5204, size: 64, offset: 15232)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !403, line: 53, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !402, file: !403, line: 1107, baseType: !938, size: 64, offset: 15296)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !402, file: !403, line: 1110, baseType: !5208, size: 64, offset: 15360)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5210, line: 93, size: 8768, elements: !5211)
!5210 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5259, !5268, !5269, !5271, !5272, !5273, !5276, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5314, !5315, !5322, !5332, !5394, !5395, !5398, !5399, !5400, !5401, !5402, !5403}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5209, file: !5210, line: 94, baseType: !409, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5209, file: !5210, line: 95, baseType: !191, size: 32, offset: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5209, file: !5210, line: 96, baseType: !87, size: 32, offset: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5209, file: !5210, line: 97, baseType: !87, size: 32, offset: 96)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5209, file: !5210, line: 98, baseType: !239, size: 128, offset: 128)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5209, file: !5210, line: 100, baseType: !196, size: 192, offset: 256)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5209, file: !5210, line: 103, baseType: !401, size: 64, offset: 448)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5209, file: !5210, line: 106, baseType: !5220, size: 192, offset: 512)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !298, line: 32, size: 192, elements: !5221)
!5221 = !{!5222, !5223}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5220, file: !298, line: 33, baseType: !239, size: 128)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5220, file: !298, line: 34, baseType: !5224, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5225, line: 25, baseType: !5226)
!5225 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5225, line: 23, size: 64, elements: !5227)
!5227 = !{!5228}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5226, file: !5225, line: 24, baseType: !658, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5209, file: !5210, line: 109, baseType: !811, size: 64, offset: 704)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5209, file: !5210, line: 112, baseType: !87, size: 32, offset: 768)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5209, file: !5210, line: 114, baseType: !87, size: 32, offset: 800)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5209, file: !5210, line: 115, baseType: !401, size: 64, offset: 832)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5209, file: !5210, line: 118, baseType: !87, size: 32, offset: 896)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5209, file: !5210, line: 119, baseType: !7, size: 32, offset: 928)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5209, file: !5210, line: 121, baseType: !5236, size: 64, offset: 960)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5210, line: 80, size: 448, elements: !5238)
!5238 = !{!5239, !5240, !5246}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5237, file: !5210, line: 81, baseType: !191, size: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5237, file: !5210, line: 82, baseType: !5241, size: 128, offset: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5210, line: 75, size: 128, elements: !5242)
!5242 = !{!5243, !5244}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5241, file: !5210, line: 76, baseType: !401, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5241, file: !5210, line: 77, baseType: !5245, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5237, file: !5210, line: 83, baseType: !1612, size: 256, offset: 192)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5209, file: !5210, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5209, file: !5210, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5209, file: !5210, line: 138, baseType: !7, size: 32, offset: 1056)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5209, file: !5210, line: 139, baseType: !239, size: 128, offset: 1088)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5209, file: !5210, line: 142, baseType: !527, size: 512, offset: 1216)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5209, file: !5210, line: 143, baseType: !535, size: 64, offset: 1728)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5209, file: !5210, line: 150, baseType: !5254, size: 256, offset: 1792)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5255, size: 256, elements: !1750)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5210, line: 38, size: 128, elements: !5256)
!5256 = !{!5257, !5258}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5255, file: !5210, line: 39, baseType: !460, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5255, file: !5210, line: 40, baseType: !460, size: 64, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5209, file: !5210, line: 156, baseType: !5260, size: 192, offset: 2048)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5210, line: 66, size: 192, elements: !5261)
!5261 = !{!5262}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5260, file: !5210, line: 67, baseType: !5263, size: 192)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5210, line: 47, size: 192, elements: !5264)
!5264 = !{!5265, !5266, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5263, file: !5210, line: 48, baseType: !758, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5263, file: !5210, line: 49, baseType: !758, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5263, file: !5210, line: 50, baseType: !758, size: 64, offset: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5209, file: !5210, line: 160, baseType: !5161, size: 640, offset: 2240)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5209, file: !5210, line: 163, baseType: !5270, size: 256, offset: 2880)
!5270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 256, elements: !820)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5209, file: !5210, line: 169, baseType: !803, size: 64, offset: 3136)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5209, file: !5210, line: 172, baseType: !87, size: 32, offset: 3200)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5209, file: !5210, line: 174, baseType: !5274, size: 64, offset: 3264)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5210, line: 174, flags: DIFlagFwdDecl)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5209, file: !5210, line: 185, baseType: !5277, size: 64, offset: 3328)
!5277 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !577, line: 860, baseType: !5278)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 853, size: 64, elements: !5279)
!5279 = !{!5280, !5281}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5278, file: !577, line: 858, baseType: !1286, size: 32)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5278, file: !577, line: 859, baseType: !201, size: 32, offset: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5209, file: !5210, line: 186, baseType: !460, size: 64, offset: 3392)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5209, file: !5210, line: 186, baseType: !460, size: 64, offset: 3456)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5209, file: !5210, line: 186, baseType: !460, size: 64, offset: 3520)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5209, file: !5210, line: 186, baseType: !460, size: 64, offset: 3584)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5209, file: !5210, line: 187, baseType: !460, size: 64, offset: 3648)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5209, file: !5210, line: 188, baseType: !460, size: 64, offset: 3712)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5209, file: !5210, line: 189, baseType: !4466, size: 192, offset: 3776)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5209, file: !5210, line: 190, baseType: !181, size: 64, offset: 3968)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5209, file: !5210, line: 190, baseType: !181, size: 64, offset: 4032)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5209, file: !5210, line: 190, baseType: !181, size: 64, offset: 4096)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5209, file: !5210, line: 190, baseType: !181, size: 64, offset: 4160)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5209, file: !5210, line: 191, baseType: !181, size: 64, offset: 4224)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5209, file: !5210, line: 191, baseType: !181, size: 64, offset: 4288)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5209, file: !5210, line: 191, baseType: !181, size: 64, offset: 4352)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5209, file: !5210, line: 191, baseType: !181, size: 64, offset: 4416)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5209, file: !5210, line: 192, baseType: !181, size: 64, offset: 4480)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5209, file: !5210, line: 192, baseType: !181, size: 64, offset: 4544)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5209, file: !5210, line: 192, baseType: !181, size: 64, offset: 4608)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5209, file: !5210, line: 192, baseType: !181, size: 64, offset: 4672)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5209, file: !5210, line: 193, baseType: !181, size: 64, offset: 4736)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5209, file: !5210, line: 193, baseType: !181, size: 64, offset: 4800)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5209, file: !5210, line: 194, baseType: !5304, size: 448, offset: 4864)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5305, line: 12, size: 448, elements: !5306)
!5305 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5306 = !{!5307, !5308, !5309, !5310, !5311, !5312, !5313}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5304, file: !5305, line: 15, baseType: !460, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5304, file: !5305, line: 17, baseType: !460, size: 64, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5304, file: !5305, line: 19, baseType: !460, size: 64, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5304, file: !5305, line: 21, baseType: !460, size: 64, offset: 192)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5304, file: !5305, line: 29, baseType: !460, size: 64, offset: 256)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5304, file: !5305, line: 35, baseType: !460, size: 64, offset: 320)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5304, file: !5305, line: 44, baseType: !460, size: 64, offset: 384)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5209, file: !5210, line: 202, baseType: !462, size: 64, offset: 5312)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5209, file: !5210, line: 213, baseType: !5316, size: 2048, offset: 5376)
!5316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5317, size: 2048, elements: !3570)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5318, line: 43, size: 128, elements: !5319)
!5318 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5319 = !{!5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5317, file: !5318, line: 44, baseType: !180, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5317, file: !5318, line: 45, baseType: !180, size: 64, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5209, file: !5210, line: 216, baseType: !5323, size: 448, offset: 7424)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5210, line: 30, size: 448, elements: !5324)
!5324 = !{!5325, !5326, !5327, !5328, !5329, !5330, !5331}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5323, file: !5210, line: 31, baseType: !87, size: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5323, file: !5210, line: 32, baseType: !345, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5323, file: !5210, line: 33, baseType: !181, size: 64, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5323, file: !5210, line: 34, baseType: !460, size: 64, offset: 192)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5323, file: !5210, line: 34, baseType: !460, size: 64, offset: 256)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5323, file: !5210, line: 35, baseType: !181, size: 64, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5323, file: !5210, line: 35, baseType: !181, size: 64, offset: 384)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5209, file: !5210, line: 219, baseType: !5333, size: 64, offset: 7872)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5335, line: 41, size: 3456, elements: !5336)
!5335 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5336 = !{!5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5334, file: !5335, line: 47, baseType: !236, size: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5334, file: !5335, line: 48, baseType: !371, size: 32, offset: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5334, file: !5335, line: 54, baseType: !227, size: 8, offset: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5334, file: !5335, line: 55, baseType: !227, size: 8, offset: 72)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5334, file: !5335, line: 73, baseType: !461, size: 64, align: 64, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5334, file: !5335, line: 74, baseType: !461, size: 64, offset: 192)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5334, file: !5335, line: 81, baseType: !461, size: 64, offset: 256)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5334, file: !5335, line: 82, baseType: !461, size: 64, offset: 320)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5334, file: !5335, line: 85, baseType: !461, size: 64, offset: 384)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5334, file: !5335, line: 86, baseType: !461, size: 64, offset: 448)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5334, file: !5335, line: 94, baseType: !461, size: 64, offset: 512)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5334, file: !5335, line: 102, baseType: !461, size: 64, offset: 576)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5334, file: !5335, line: 107, baseType: !3562, size: 256, offset: 640)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5334, file: !5335, line: 108, baseType: !227, size: 8, align: 64, offset: 896)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5334, file: !5335, line: 110, baseType: !5352, size: 24, offset: 904)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 24, elements: !799)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5334, file: !5335, line: 111, baseType: !371, size: 32, align: 64, offset: 960)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5334, file: !5335, line: 113, baseType: !371, size: 32, offset: 992)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5334, file: !5335, line: 114, baseType: !371, size: 32, offset: 1024)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5334, file: !5335, line: 115, baseType: !371, size: 32, offset: 1056)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5334, file: !5335, line: 117, baseType: !371, size: 32, offset: 1088)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5334, file: !5335, line: 118, baseType: !461, size: 64, align: 64, offset: 1152)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5334, file: !5335, line: 120, baseType: !461, size: 64, offset: 1216)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5334, file: !5335, line: 121, baseType: !461, size: 64, offset: 1280)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5334, file: !5335, line: 122, baseType: !461, size: 64, offset: 1344)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5334, file: !5335, line: 123, baseType: !461, size: 64, offset: 1408)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5334, file: !5335, line: 133, baseType: !461, size: 64, offset: 1472)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5334, file: !5335, line: 137, baseType: !461, size: 64, offset: 1536)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5334, file: !5335, line: 142, baseType: !461, size: 64, offset: 1600)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5334, file: !5335, line: 143, baseType: !461, size: 64, offset: 1664)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5334, file: !5335, line: 146, baseType: !461, size: 64, offset: 1728)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5334, file: !5335, line: 147, baseType: !461, size: 64, offset: 1792)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5334, file: !5335, line: 148, baseType: !461, size: 64, offset: 1856)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5334, file: !5335, line: 149, baseType: !461, size: 64, offset: 1920)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5334, file: !5335, line: 154, baseType: !461, size: 64, offset: 1984)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5334, file: !5335, line: 155, baseType: !461, size: 64, offset: 2048)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5334, file: !5335, line: 156, baseType: !461, size: 64, offset: 2112)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5334, file: !5335, line: 158, baseType: !461, size: 64, offset: 2176)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5334, file: !5335, line: 159, baseType: !461, size: 64, offset: 2240)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5334, file: !5335, line: 162, baseType: !461, size: 64, offset: 2304)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5334, file: !5335, line: 163, baseType: !461, size: 64, offset: 2368)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5334, file: !5335, line: 164, baseType: !461, size: 64, offset: 2432)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5334, file: !5335, line: 167, baseType: !461, size: 64, offset: 2496)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5334, file: !5335, line: 168, baseType: !461, size: 64, offset: 2560)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5334, file: !5335, line: 171, baseType: !461, size: 64, offset: 2624)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5334, file: !5335, line: 172, baseType: !461, size: 64, offset: 2688)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5334, file: !5335, line: 175, baseType: !461, size: 64, offset: 2752)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5334, file: !5335, line: 178, baseType: !461, size: 64, offset: 2816)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5334, file: !5335, line: 179, baseType: !461, size: 64, offset: 2880)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5334, file: !5335, line: 182, baseType: !371, size: 32, offset: 2944)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5334, file: !5335, line: 186, baseType: !461, size: 64, align: 64, offset: 3008)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5334, file: !5335, line: 194, baseType: !461, size: 64, offset: 3072)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5334, file: !5335, line: 195, baseType: !461, size: 64, offset: 3136)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5334, file: !5335, line: 199, baseType: !461, size: 64, offset: 3200)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5334, file: !5335, line: 200, baseType: !461, size: 64, offset: 3264)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5334, file: !5335, line: 203, baseType: !461, size: 64, offset: 3328)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5334, file: !5335, line: 204, baseType: !461, size: 64, offset: 3392)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5209, file: !5210, line: 222, baseType: !7, size: 32, offset: 7936)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5209, file: !5210, line: 223, baseType: !5396, size: 64, offset: 8000)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5210, line: 223, flags: DIFlagFwdDecl)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5209, file: !5210, line: 230, baseType: !1102, size: 8, offset: 8064)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5209, file: !5210, line: 231, baseType: !356, size: 16, offset: 8080)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5209, file: !5210, line: 232, baseType: !356, size: 16, offset: 8096)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5209, file: !5210, line: 234, baseType: !707, size: 64, offset: 8128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5209, file: !5210, line: 237, baseType: !763, size: 256, offset: 8192)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5209, file: !5210, line: 243, baseType: !1149, size: 320, offset: 8448)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !402, file: !403, line: 1111, baseType: !5405, size: 64, offset: 15424)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5210, line: 20, size: 16640, elements: !5407)
!5407 = !{!5408, !5409, !5410, !5411}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5406, file: !5210, line: 21, baseType: !201, size: 32)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5406, file: !5210, line: 22, baseType: !409, size: 32, offset: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5406, file: !5210, line: 23, baseType: !196, size: 192, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5406, file: !5210, line: 24, baseType: !5412, size: 16384, offset: 256)
!5412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5413, size: 16384, elements: !1477)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !298, line: 51, size: 256, elements: !5414)
!5414 = !{!5415}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5413, file: !298, line: 52, baseType: !5416, size: 256)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !298, line: 37, size: 256, elements: !5417)
!5417 = !{!5418, !5419, !5420, !5424}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5416, file: !298, line: 39, baseType: !290, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5416, file: !298, line: 40, baseType: !181, size: 64, offset: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5416, file: !298, line: 46, baseType: !5421, size: 64, offset: 128)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !291, line: 86, baseType: !5422)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !291, line: 85, baseType: !2048)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5416, file: !298, line: 48, baseType: !5224, size: 64, offset: 192)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !402, file: !403, line: 1112, baseType: !5224, size: 64, offset: 15488)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !402, file: !403, line: 1113, baseType: !5224, size: 64, offset: 15552)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !402, file: !403, line: 1115, baseType: !5224, size: 64, offset: 15616)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !402, file: !403, line: 1116, baseType: !5220, size: 192, offset: 15680)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !402, file: !403, line: 1117, baseType: !181, size: 64, offset: 15872)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !402, file: !403, line: 1118, baseType: !177, size: 64, offset: 15936)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !402, file: !403, line: 1119, baseType: !7, size: 32, offset: 16000)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !402, file: !403, line: 1121, baseType: !746, size: 64, offset: 16064)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !402, file: !403, line: 1125, baseType: !5434, size: 64, offset: 16128)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !403, line: 43, flags: DIFlagFwdDecl)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !402, file: !403, line: 1127, baseType: !892, size: 32, offset: 16192)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !402, file: !403, line: 1128, baseType: !7, size: 32, offset: 16224)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !402, file: !403, line: 1130, baseType: !5439, size: 128, offset: 16256)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5440, line: 37, size: 128, elements: !5441)
!5440 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5441 = !{!5442, !5443, !5444}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5439, file: !5440, line: 38, baseType: !87, size: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5439, file: !5440, line: 39, baseType: !191, size: 32, offset: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5439, file: !5440, line: 40, baseType: !5445, size: 64, offset: 64)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5440, line: 24, flags: DIFlagFwdDecl)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !402, file: !403, line: 1131, baseType: !5448, size: 256, offset: 16384)
!5448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5449, line: 12, size: 256, elements: !5450)
!5449 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5450 = !{!5451, !5452, !5453, !5454}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5448, file: !5449, line: 13, baseType: !1060, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5448, file: !5449, line: 14, baseType: !181, size: 64, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5448, file: !5449, line: 15, baseType: !181, size: 64, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5448, file: !5449, line: 16, baseType: !1102, size: 8, offset: 192)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !402, file: !403, line: 1134, baseType: !460, size: 64, offset: 16640)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !402, file: !403, line: 1135, baseType: !460, size: 64, offset: 16704)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !402, file: !403, line: 1138, baseType: !201, size: 32, offset: 16768)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !402, file: !403, line: 1141, baseType: !552, size: 32, offset: 16800)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !402, file: !403, line: 1143, baseType: !5460, size: 64, offset: 16832)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !403, line: 735, size: 64, elements: !5461)
!5461 = !{!5462}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5460, file: !403, line: 736, baseType: !5463, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !402, file: !403, line: 1147, baseType: !590, size: 128, offset: 16896)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !402, file: !403, line: 1149, baseType: !401, size: 64, offset: 17024)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !402, file: !403, line: 1151, baseType: !5467, size: 64, offset: 17088)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !403, line: 1151, flags: DIFlagFwdDecl)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !402, file: !403, line: 1188, baseType: !163, size: 64, offset: 17152)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !402, file: !403, line: 1191, baseType: !5471, size: 64, offset: 17216)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !403, line: 44, flags: DIFlagFwdDecl)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !402, file: !403, line: 1194, baseType: !5474, size: 64, offset: 17280)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !403, line: 45, flags: DIFlagFwdDecl)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !402, file: !403, line: 1197, baseType: !5477, size: 64, offset: 17344)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !403, line: 61, flags: DIFlagFwdDecl)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !402, file: !403, line: 1199, baseType: !5480, size: 64, offset: 17408)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5482, line: 99, size: 128, elements: !5483)
!5482 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5483 = !{!5484, !5485, !5486}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5481, file: !5482, line: 100, baseType: !756, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5481, file: !5482, line: 101, baseType: !191, size: 32, offset: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5481, file: !5482, line: 103, baseType: !168, size: 16, offset: 96)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !402, file: !403, line: 1202, baseType: !5488, size: 64, offset: 17472)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !403, line: 48, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !402, file: !403, line: 1205, baseType: !181, size: 64, offset: 17536)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !402, file: !403, line: 1206, baseType: !5492, size: 64, offset: 17600)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !298, line: 14, baseType: !297)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !402, file: !403, line: 1208, baseType: !5304, size: 448, offset: 17664)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !402, file: !403, line: 1215, baseType: !460, size: 64, offset: 18112)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !402, file: !403, line: 1217, baseType: !460, size: 64, offset: 18176)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !402, file: !403, line: 1219, baseType: !460, size: 64, offset: 18240)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !402, file: !403, line: 1223, baseType: !5499, size: 64, offset: 18304)
!5499 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5500, line: 99, baseType: !5501)
!5500 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5500, line: 99, size: 64, elements: !5502)
!5502 = !{!5503}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5501, file: !5500, line: 99, baseType: !658, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !402, file: !403, line: 1225, baseType: !1286, size: 32, offset: 18368)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !402, file: !403, line: 1226, baseType: !87, size: 32, offset: 18400)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !402, file: !403, line: 1227, baseType: !87, size: 32, offset: 18432)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !402, file: !403, line: 1231, baseType: !982, size: 64, offset: 18496)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !402, file: !403, line: 1233, baseType: !239, size: 128, offset: 18560)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !402, file: !403, line: 1240, baseType: !5510, size: 64, offset: 18688)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !403, line: 62, flags: DIFlagFwdDecl)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !402, file: !403, line: 1242, baseType: !5513, size: 64, offset: 18752)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !403, line: 1242, flags: DIFlagFwdDecl)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !402, file: !403, line: 1244, baseType: !239, size: 128, offset: 18816)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !402, file: !403, line: 1245, baseType: !5517, size: 64, offset: 18944)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !403, line: 51, flags: DIFlagFwdDecl)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !402, file: !403, line: 1246, baseType: !763, size: 256, offset: 19008)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !402, file: !403, line: 1247, baseType: !7, size: 32, offset: 19264)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !402, file: !403, line: 1250, baseType: !2547, size: 64, offset: 19328)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !402, file: !403, line: 1251, baseType: !763, size: 256, offset: 19392)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !402, file: !403, line: 1252, baseType: !239, size: 128, offset: 19648)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !402, file: !403, line: 1259, baseType: !1173, size: 64, offset: 19776)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !402, file: !403, line: 1260, baseType: !356, size: 16, offset: 19840)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !402, file: !403, line: 1261, baseType: !356, size: 16, offset: 19856)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !402, file: !403, line: 1314, baseType: !5528, size: 64, offset: 19904)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5530, line: 62, size: 256, align: 256, elements: !5531)
!5530 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5531 = !{!5532, !5533, !5534, !5535, !5536, !5537, !5538}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5529, file: !5530, line: 75, baseType: !371, size: 32)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5529, file: !5530, line: 90, baseType: !371, size: 32, offset: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5529, file: !5530, line: 112, baseType: !461, size: 64, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5529, file: !5530, line: 132, baseType: !371, size: 32, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5529, file: !5530, line: 140, baseType: !371, size: 32, offset: 160)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5529, file: !5530, line: 149, baseType: !371, size: 32, offset: 192)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5529, file: !5530, line: 154, baseType: !5539, offset: 224)
!5539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !2994)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !402, file: !403, line: 1315, baseType: !396, size: 32, offset: 19968)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !402, file: !403, line: 1316, baseType: !396, size: 32, offset: 20000)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !402, file: !403, line: 1321, baseType: !181, size: 64, offset: 20032)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !402, file: !403, line: 1325, baseType: !87, size: 32, offset: 20096)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !402, file: !403, line: 1326, baseType: !87, size: 32, offset: 20128)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !402, file: !403, line: 1327, baseType: !87, size: 32, offset: 20160)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !402, file: !403, line: 1328, baseType: !87, size: 32, offset: 20192)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !402, file: !403, line: 1329, baseType: !743, size: 128, align: 64, offset: 20224)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !402, file: !403, line: 1332, baseType: !5549, size: 128, offset: 20352)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5550, line: 51, size: 128, elements: !5551)
!5550 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5551 = !{!5552, !5557, !5558}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5549, file: !5550, line: 60, baseType: !5553, size: 64)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5554, line: 7, size: 64, elements: !5555)
!5554 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5555 = !{!5556}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5553, file: !5554, line: 12, baseType: !655, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5549, file: !5550, line: 63, baseType: !1102, size: 8, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5549, file: !5550, line: 70, baseType: !1102, size: 8, offset: 72)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !402, file: !403, line: 1335, baseType: !3991, size: 64, offset: 20480)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !402, file: !403, line: 1337, baseType: !5561, size: 128, offset: 20544)
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5550, line: 39, size: 128, elements: !5562)
!5562 = !{!5563, !5564, !5565}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5561, file: !5550, line: 40, baseType: !1232, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5561, file: !5550, line: 42, baseType: !371, size: 32, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5561, file: !5550, line: 43, baseType: !371, size: 32, offset: 96)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !402, file: !403, line: 1340, baseType: !5567, size: 64, offset: 20672)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !403, line: 69, flags: DIFlagFwdDecl)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !402, file: !403, line: 1351, baseType: !87, size: 32, offset: 20736)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !402, file: !403, line: 1352, baseType: !87, size: 32, offset: 20768)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !402, file: !403, line: 1354, baseType: !181, size: 64, offset: 20800)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !402, file: !403, line: 1364, baseType: !460, size: 64, offset: 20864)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !402, file: !403, line: 1365, baseType: !460, size: 64, offset: 20928)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !402, file: !403, line: 1412, baseType: !181, size: 64, offset: 20992)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !402, file: !403, line: 1453, baseType: !5576, size: 64, offset: 21056)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !403, line: 1453, flags: DIFlagFwdDecl)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !402, file: !403, line: 1457, baseType: !5579, size: 64, offset: 21120)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !256, line: 61, size: 576, elements: !5581)
!5581 = !{!5582, !5583, !5602, !5605, !5606, !5639, !5649}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5580, file: !256, line: 62, baseType: !255, size: 32)
!5583 = !DIDerivedType(tag: DW_TAG_member, scope: !5580, file: !256, line: 64, baseType: !5584, size: 192, offset: 64)
!5584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5580, file: !256, line: 64, size: 192, elements: !5585)
!5585 = !{!5586, !5597}
!5586 = !DIDerivedType(tag: DW_TAG_member, scope: !5584, file: !256, line: 65, baseType: !5587, size: 192)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5584, file: !256, line: 65, size: 192, elements: !5588)
!5588 = !{!5589, !5596}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5587, file: !256, line: 66, baseType: !5590, size: 128)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5591, line: 50, size: 128, elements: !5592)
!5591 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5592 = !{!5593, !5594, !5595}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5590, file: !5591, line: 52, baseType: !181, size: 64)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5590, file: !5591, line: 54, baseType: !7, size: 32, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5590, file: !5591, line: 55, baseType: !7, size: 32, offset: 96)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5587, file: !256, line: 67, baseType: !181, size: 64, offset: 128)
!5597 = !DIDerivedType(tag: DW_TAG_member, scope: !5584, file: !256, line: 70, baseType: !5598, size: 192)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5584, file: !256, line: 70, size: 192, elements: !5599)
!5599 = !{!5600, !5601}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5598, file: !256, line: 71, baseType: !743, size: 128, align: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5598, file: !256, line: 72, baseType: !181, size: 64, offset: 128)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5580, file: !256, line: 76, baseType: !5603, size: 64, offset: 256)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5604, size: 64)
!5604 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !256, line: 76, flags: DIFlagFwdDecl)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5580, file: !256, line: 77, baseType: !181, size: 64, offset: 320)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5580, file: !256, line: 79, baseType: !5607, size: 64, offset: 384)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5591, line: 25, size: 256, elements: !5609)
!5609 = !{!5610, !5616, !5620}
!5610 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !5591, line: 26, baseType: !5611, size: 128)
!5611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5608, file: !5591, line: 26, size: 128, elements: !5612)
!5612 = !{!5613, !5615}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5611, file: !5591, line: 27, baseType: !5614, size: 128)
!5614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !3570)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5611, file: !5591, line: 28, baseType: !5614, size: 128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5608, file: !5591, line: 31, baseType: !5617, size: 64, offset: 128)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5619)
!5619 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5591, line: 23, flags: DIFlagFwdDecl)
!5620 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !5591, line: 33, baseType: !5621, size: 64, offset: 192)
!5621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5608, file: !5591, line: 33, size: 64, elements: !5622)
!5622 = !{!5623, !5629, !5634}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5621, file: !5591, line: 38, baseType: !5624, size: 64)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5621, file: !5591, line: 34, size: 64, elements: !5625)
!5625 = !{!5626, !5627, !5628}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5624, file: !5591, line: 35, baseType: !1658, size: 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5624, file: !5591, line: 36, baseType: !225, size: 8, offset: 32)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5624, file: !5591, line: 37, baseType: !225, size: 8, offset: 40)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5621, file: !5591, line: 42, baseType: !5630, size: 16)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5621, file: !5591, line: 39, size: 16, elements: !5631)
!5631 = !{!5632, !5633}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5630, file: !5591, line: 40, baseType: !225, size: 8)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5630, file: !5591, line: 41, baseType: !225, size: 8, offset: 8)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5621, file: !5591, line: 46, baseType: !5635, size: 16)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5621, file: !5591, line: 43, size: 16, elements: !5636)
!5636 = !{!5637, !5638}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5635, file: !5591, line: 44, baseType: !225, size: 8)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5635, file: !5591, line: 45, baseType: !225, size: 8, offset: 8)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5580, file: !256, line: 81, baseType: !5640, size: 64, offset: 448)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !256, line: 85, size: 384, elements: !5642)
!5642 = !{!5643, !5644, !5645, !5646, !5647, !5648}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5641, file: !256, line: 86, baseType: !5603, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5641, file: !256, line: 87, baseType: !181, size: 64, offset: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5641, file: !256, line: 88, baseType: !181, size: 64, offset: 128)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5641, file: !256, line: 89, baseType: !181, size: 64, offset: 192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5641, file: !256, line: 90, baseType: !1102, size: 8, offset: 256)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5641, file: !256, line: 92, baseType: !5640, size: 64, offset: 320)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5580, file: !256, line: 82, baseType: !7, size: 32, offset: 512)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !402, file: !403, line: 1463, baseType: !5651, offset: 21184)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !403, line: 739, elements: !728)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !402, file: !403, line: 1470, baseType: !743, size: 128, align: 64, offset: 21184)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !402, file: !403, line: 1471, baseType: !409, size: 32, offset: 21312)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !402, file: !403, line: 1472, baseType: !87, size: 32, offset: 21344)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !402, file: !403, line: 1474, baseType: !401, size: 64, offset: 21376)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !402, file: !403, line: 1475, baseType: !1862, size: 320, offset: 21440)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !402, file: !403, line: 1478, baseType: !5658, size: 64, offset: 21760)
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !403, line: 1478, flags: DIFlagFwdDecl)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !402, file: !403, line: 1482, baseType: !409, size: 32, offset: 21824)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !402, file: !403, line: 1489, baseType: !163, size: 64, offset: 21888)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !402, file: !403, line: 1504, baseType: !163, size: 64, offset: 21952)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !402, file: !403, line: 1505, baseType: !461, size: 64, offset: 22016)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !402, file: !403, line: 1506, baseType: !460, size: 64, offset: 22080)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !402, file: !403, line: 1507, baseType: !461, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !402, file: !403, line: 1508, baseType: !461, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !402, file: !403, line: 1509, baseType: !461, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !402, file: !403, line: 1510, baseType: !743, size: 128, align: 64, offset: 22208)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !402, file: !403, line: 1511, baseType: !87, size: 32, offset: 22336)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !402, file: !403, line: 1515, baseType: !5671, size: 64, offset: 22400)
!5671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !422, line: 56, size: 64, elements: !5672)
!5672 = !{!5673}
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5671, file: !422, line: 57, baseType: !425, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !402, file: !403, line: 1518, baseType: !5671, size: 64, offset: 22464)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !402, file: !403, line: 1528, baseType: !743, size: 128, align: 64, offset: 22528)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !402, file: !403, line: 1552, baseType: !5677, size: 35328, offset: 23040)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5678, line: 430, size: 35328, elements: !5679)
!5678 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5679 = !{!5680, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5707, !5708, !5709, !5710, !5711, !5712, !5715, !5716, !5717, !5718}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5677, file: !5678, line: 432, baseType: !5681, size: 192)
!5681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5682, size: 192, elements: !799)
!5682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5683, line: 16, size: 64, elements: !5684)
!5683 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5684 = !{!5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5682, file: !5683, line: 17, baseType: !235, size: 16)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5682, file: !5683, line: 18, baseType: !235, size: 16, offset: 16)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5682, file: !5683, line: 19, baseType: !235, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5682, file: !5683, line: 19, baseType: !235, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5682, file: !5683, line: 19, baseType: !235, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5682, file: !5683, line: 19, baseType: !235, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5682, file: !5683, line: 19, baseType: !235, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5682, file: !5683, line: 20, baseType: !235, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5682, file: !5683, line: 20, baseType: !235, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5682, file: !5683, line: 20, baseType: !235, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5682, file: !5683, line: 20, baseType: !235, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5682, file: !5683, line: 20, baseType: !235, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5682, file: !5683, line: 20, baseType: !235, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5677, file: !5678, line: 436, baseType: !181, size: 64, offset: 192)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5677, file: !5678, line: 440, baseType: !168, size: 16, offset: 256)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5677, file: !5678, line: 441, baseType: !168, size: 16, offset: 272)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5677, file: !5678, line: 442, baseType: !168, size: 16, offset: 288)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5677, file: !5678, line: 443, baseType: !168, size: 16, offset: 304)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5677, file: !5678, line: 447, baseType: !181, size: 64, offset: 320)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5677, file: !5678, line: 448, baseType: !181, size: 64, offset: 384)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5677, file: !5678, line: 459, baseType: !5706, size: 256, offset: 448)
!5706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2159, size: 256, elements: !820)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5677, file: !5678, line: 461, baseType: !181, size: 64, offset: 704)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5677, file: !5678, line: 463, baseType: !181, size: 64, offset: 768)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5677, file: !5678, line: 465, baseType: !181, size: 64, offset: 832)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5677, file: !5678, line: 466, baseType: !181, size: 64, offset: 896)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5677, file: !5678, line: 467, baseType: !181, size: 64, offset: 960)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5677, file: !5678, line: 473, baseType: !5713, size: 64, offset: 1024)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5678, line: 10, flags: DIFlagFwdDecl)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5677, file: !5678, line: 480, baseType: !181, size: 64, offset: 1088)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5677, file: !5678, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5677, file: !5678, line: 491, baseType: !396, size: 32, offset: 1184)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5677, file: !5678, line: 501, baseType: !5719, size: 33792, offset: 1536)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5720, line: 448, size: 33792, elements: !5721)
!5720 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5721 = !{!5722, !5723, !5724, !5832, !5833, !5839, !5840}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5719, file: !5720, line: 461, baseType: !7, size: 32)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5719, file: !5720, line: 468, baseType: !181, size: 64, offset: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5719, file: !5720, line: 476, baseType: !5725, size: 64, offset: 128)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5720, line: 356, size: 33280, align: 512, elements: !5727)
!5727 = !{!5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5726, file: !5720, line: 358, baseType: !7, size: 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5726, file: !5720, line: 361, baseType: !7, size: 32, offset: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5726, file: !5720, line: 364, baseType: !460, size: 64, offset: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5726, file: !5720, line: 367, baseType: !460, size: 64, offset: 128)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5726, file: !5720, line: 370, baseType: !460, size: 64, offset: 192)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5726, file: !5720, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5726, file: !5720, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5726, file: !5720, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5726, file: !5720, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5726, file: !5720, line: 397, baseType: !5738, size: 32768, offset: 512)
!5738 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5720, line: 348, size: 32768, elements: !5739)
!5739 = !{!5740, !5755, !5792, !5817, !5830}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5738, file: !5720, line: 349, baseType: !5741, size: 896)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5720, line: 12, size: 896, elements: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5754}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5741, file: !5720, line: 13, baseType: !396, size: 32)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5741, file: !5720, line: 14, baseType: !396, size: 32, offset: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5741, file: !5720, line: 15, baseType: !396, size: 32, offset: 64)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5741, file: !5720, line: 16, baseType: !396, size: 32, offset: 96)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5741, file: !5720, line: 17, baseType: !396, size: 32, offset: 128)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5741, file: !5720, line: 18, baseType: !396, size: 32, offset: 160)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5741, file: !5720, line: 19, baseType: !396, size: 32, offset: 192)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5741, file: !5720, line: 22, baseType: !5751, size: 640, offset: 224)
!5751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 640, elements: !5752)
!5752 = !{!5753}
!5753 = !DISubrange(count: 20)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5741, file: !5720, line: 25, baseType: !396, size: 32, offset: 864)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5738, file: !5720, line: 350, baseType: !5756, size: 4096, align: 128)
!5756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5720, line: 34, size: 4096, align: 128, elements: !5757)
!5757 = !{!5758, !5759, !5760, !5761, !5762, !5777, !5778, !5779, !5781, !5783, !5787}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5756, file: !5720, line: 35, baseType: !235, size: 16)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5756, file: !5720, line: 36, baseType: !235, size: 16, offset: 16)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5756, file: !5720, line: 37, baseType: !235, size: 16, offset: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5756, file: !5720, line: 38, baseType: !235, size: 16, offset: 48)
!5762 = !DIDerivedType(tag: DW_TAG_member, scope: !5756, file: !5720, line: 39, baseType: !5763, size: 128, offset: 64)
!5763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5756, file: !5720, line: 39, size: 128, elements: !5764)
!5764 = !{!5765, !5770}
!5765 = !DIDerivedType(tag: DW_TAG_member, scope: !5763, file: !5720, line: 40, baseType: !5766, size: 128)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5763, file: !5720, line: 40, size: 128, elements: !5767)
!5767 = !{!5768, !5769}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5766, file: !5720, line: 41, baseType: !460, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5766, file: !5720, line: 42, baseType: !460, size: 64, offset: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, scope: !5763, file: !5720, line: 44, baseType: !5771, size: 128)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5763, file: !5720, line: 44, size: 128, elements: !5772)
!5772 = !{!5773, !5774, !5775, !5776}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5771, file: !5720, line: 45, baseType: !396, size: 32)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5771, file: !5720, line: 46, baseType: !396, size: 32, offset: 32)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5771, file: !5720, line: 47, baseType: !396, size: 32, offset: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5771, file: !5720, line: 48, baseType: !396, size: 32, offset: 96)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5756, file: !5720, line: 51, baseType: !396, size: 32, offset: 192)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5756, file: !5720, line: 52, baseType: !396, size: 32, offset: 224)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5756, file: !5720, line: 55, baseType: !5780, size: 1024, offset: 256)
!5780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 1024, elements: !1317)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5756, file: !5720, line: 58, baseType: !5782, size: 2048, offset: 1280)
!5782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 2048, elements: !1477)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5756, file: !5720, line: 60, baseType: !5784, size: 384, offset: 3328)
!5784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 384, elements: !5785)
!5785 = !{!5786}
!5786 = !DISubrange(count: 12)
!5787 = !DIDerivedType(tag: DW_TAG_member, scope: !5756, file: !5720, line: 62, baseType: !5788, size: 384, offset: 3712)
!5788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5756, file: !5720, line: 62, size: 384, elements: !5789)
!5789 = !{!5790, !5791}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5788, file: !5720, line: 63, baseType: !5784, size: 384)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5788, file: !5720, line: 64, baseType: !5784, size: 384)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5738, file: !5720, line: 351, baseType: !5793, size: 1088)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5720, line: 79, size: 1088, elements: !5794)
!5794 = !{!5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5816}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5793, file: !5720, line: 80, baseType: !396, size: 32)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5793, file: !5720, line: 81, baseType: !396, size: 32, offset: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5793, file: !5720, line: 82, baseType: !396, size: 32, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5793, file: !5720, line: 83, baseType: !396, size: 32, offset: 96)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5793, file: !5720, line: 84, baseType: !396, size: 32, offset: 128)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5793, file: !5720, line: 85, baseType: !396, size: 32, offset: 160)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5793, file: !5720, line: 86, baseType: !396, size: 32, offset: 192)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5793, file: !5720, line: 88, baseType: !5751, size: 640, offset: 224)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5793, file: !5720, line: 89, baseType: !225, size: 8, offset: 864)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5793, file: !5720, line: 90, baseType: !225, size: 8, offset: 872)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5793, file: !5720, line: 91, baseType: !225, size: 8, offset: 880)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5793, file: !5720, line: 92, baseType: !225, size: 8, offset: 888)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5793, file: !5720, line: 93, baseType: !225, size: 8, offset: 896)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5793, file: !5720, line: 94, baseType: !225, size: 8, offset: 904)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5793, file: !5720, line: 95, baseType: !5810, size: 64, offset: 960)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5812, line: 11, size: 128, elements: !5813)
!5812 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5813 = !{!5814, !5815}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5811, file: !5812, line: 12, baseType: !345, size: 64)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5811, file: !5812, line: 13, baseType: !3074, size: 64, offset: 64)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5793, file: !5720, line: 96, baseType: !396, size: 32, offset: 1024)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5738, file: !5720, line: 352, baseType: !5818, size: 4608, align: 512)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5720, line: 333, size: 4608, align: 512, elements: !5819)
!5819 = !{!5820, !5821, !5828}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5818, file: !5720, line: 334, baseType: !5756, size: 4096, align: 128)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5818, file: !5720, line: 335, baseType: !5822, size: 512, offset: 4096)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5720, line: 312, size: 512, elements: !5823)
!5823 = !{!5824, !5825, !5826}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5822, file: !5720, line: 313, baseType: !460, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5822, file: !5720, line: 314, baseType: !460, size: 64, offset: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5822, file: !5720, line: 315, baseType: !5827, size: 384, offset: 128)
!5827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !4709)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5818, file: !5720, line: 336, baseType: !5829, offset: 4608)
!5829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !2994)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5738, file: !5720, line: 353, baseType: !5831, size: 32768)
!5831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 32768, elements: !2103)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5719, file: !5720, line: 484, baseType: !5725, size: 64, offset: 192)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5719, file: !5720, line: 491, baseType: !5834, size: 128, offset: 256)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5720, line: 404, size: 128, elements: !5835)
!5835 = !{!5836, !5837, !5838}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5834, file: !5720, line: 424, baseType: !460, size: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5834, file: !5720, line: 432, baseType: !7, size: 32, offset: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5834, file: !5720, line: 440, baseType: !7, size: 32, offset: 96)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5719, file: !5720, line: 498, baseType: !5834, size: 128, offset: 384)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5719, file: !5720, line: 508, baseType: !5726, size: 33280, align: 512, offset: 512)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5843)
!5843 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !853)
!5844 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !167, line: 155, baseType: !7)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !471)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5848)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !345)
!5855 = !{!0, !5856, !5859, !5861, !5866, !5868, !5870, !5872, !5875, !5878, !5880, !5883, !5887, !5892}
!5856 = !DIGlobalVariableExpression(var: !5857, expr: !DIExpression())
!5857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !5858, isLocal: true, isDefinition: true)
!5858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32, elements: !820)
!5859 = !DIGlobalVariableExpression(var: !5860, expr: !DIExpression())
!5860 = distinct !DIGlobalVariable(name: "pidns_operations", scope: !2, file: !3, line: 450, type: !912, isLocal: false, isDefinition: true)
!5861 = !DIGlobalVariableExpression(var: !5862, expr: !DIExpression())
!5862 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !5863, isLocal: true, isDefinition: true)
!5863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 136, elements: !5864)
!5864 = !{!5865}
!5865 = !DISubrange(count: 17)
!5866 = !DIGlobalVariableExpression(var: !5867, expr: !DIExpression())
!5867 = distinct !DIGlobalVariable(name: "pidns_for_children_operations", scope: !2, file: !3, line: 460, type: !912, isLocal: false, isDefinition: true)
!5868 = !DIGlobalVariableExpression(var: !5869, expr: !DIExpression())
!5869 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pid_namespace__322_483_pid_namespaces_init6323", scope: !2, file: !3, line: 483, type: !163, isLocal: true, isDefinition: true)
!5870 = !DIGlobalVariableExpression(var: !5871, expr: !DIExpression())
!5871 = distinct !DIGlobalVariable(name: "pid_ns_cachep", scope: !2, file: !3, line: 29, type: !853, isLocal: true, isDefinition: true)
!5872 = !DIGlobalVariableExpression(var: !5873, expr: !DIExpression())
!5873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !5874, isLocal: true, isDefinition: true)
!5874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 56, elements: !1752)
!5875 = !DIGlobalVariableExpression(var: !5876, expr: !DIExpression())
!5876 = distinct !DIGlobalVariable(name: "pid_cache", scope: !2, file: !3, line: 31, type: !5877, isLocal: true, isDefinition: true)
!5877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 2048, elements: !1317)
!5878 = !DIGlobalVariableExpression(var: !5879, expr: !DIExpression())
!5879 = distinct !DIGlobalVariable(name: "pid_caches_mutex", scope: !2, file: !3, line: 28, type: !763, isLocal: true, isDefinition: true)
!5880 = !DIGlobalVariableExpression(var: !5881, expr: !DIExpression())
!5881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !5882, isLocal: true, isDefinition: true)
!5882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 112, elements: !4436)
!5883 = !DIGlobalVariableExpression(var: !5884, expr: !DIExpression())
!5884 = distinct !DIGlobalVariable(scope: null, file: !5885, line: 48, type: !5886, isLocal: true, isDefinition: true)
!5885 = !DIFile(filename: "kernel/pid_sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06c91c094f43b1aa5a51251999fe7053")
!5886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !799)
!5887 = !DIGlobalVariableExpression(var: !5888, expr: !DIExpression())
!5888 = distinct !DIGlobalVariable(scope: null, file: !5885, line: 36, type: !5889, isLocal: true, isDefinition: true)
!5889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 104, elements: !5890)
!5890 = !{!5891}
!5891 = !DISubrange(count: 13)
!5892 = !DIGlobalVariableExpression(var: !5893, expr: !DIExpression())
!5893 = distinct !DIGlobalVariable(name: "pid_ns_ctl_table_vm", scope: !2, file: !5885, line: 34, type: !5894, isLocal: true, isDefinition: true)
!5894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1024, elements: !1750)
!5895 = !{i32 7, !"Dwarf Version", i32 5}
!5896 = !{i32 2, !"Debug Info Version", i32 3}
!5897 = !{i32 1, !"wchar_size", i32 2}
!5898 = !{i32 8, !"cf-protection-branch", i32 1}
!5899 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5900 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5901 = !{i32 1, !"Code Model", i32 2}
!5902 = !{i32 1, !"override-stack-alignment", i32 8}
!5903 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5904 = distinct !DISubprogram(name: "copy_pid_ns", scope: !3, file: !3, line: 145, type: !5905, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!831, !181, !862, !831}
!5907 = !{!5908, !5909, !5910}
!5908 = !DILocalVariable(name: "flags", arg: 1, scope: !5904, file: !3, line: 145, type: !181)
!5909 = !DILocalVariable(name: "user_ns", arg: 2, scope: !5904, file: !3, line: 146, type: !862)
!5910 = !DILocalVariable(name: "old_ns", arg: 3, scope: !5904, file: !3, line: 146, type: !831)
!5911 = !DILocation(line: 145, column: 49, scope: !5904)
!5912 = !DILocation(line: 146, column: 25, scope: !5904)
!5913 = !DILocation(line: 146, column: 56, scope: !5904)
!5914 = !DILocation(line: 148, column: 8, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 148, column: 6)
!5916 = !DILocation(line: 148, column: 14, scope: !5915)
!5917 = !DILocation(line: 148, column: 6, scope: !5904)
!5918 = !DILocation(line: 149, column: 21, scope: !5915)
!5919 = !DILocation(line: 149, column: 10, scope: !5915)
!5920 = !DILocation(line: 149, column: 3, scope: !5915)
!5921 = !DILocation(line: 150, column: 25, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 150, column: 6)
!5923 = !DILocation(line: 150, column: 6, scope: !5922)
!5924 = !DILocation(line: 150, column: 37, scope: !5922)
!5925 = !DILocation(line: 150, column: 34, scope: !5922)
!5926 = !DILocation(line: 150, column: 6, scope: !5904)
!5927 = !DILocation(line: 151, column: 10, scope: !5922)
!5928 = !DILocation(line: 151, column: 3, scope: !5922)
!5929 = !DILocation(line: 152, column: 30, scope: !5904)
!5930 = !DILocation(line: 152, column: 39, scope: !5904)
!5931 = !DILocation(line: 152, column: 9, scope: !5904)
!5932 = !DILocation(line: 152, column: 2, scope: !5904)
!5933 = !DILocation(line: 153, column: 1, scope: !5904)
!5934 = distinct !DISubprogram(name: "get_pid_ns", scope: !833, file: !833, line: 51, type: !5935, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5937)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!831, !831}
!5937 = !{!5938}
!5938 = !DILocalVariable(name: "ns", arg: 1, scope: !5934, file: !833, line: 51, type: !831)
!5939 = !DILocation(line: 51, column: 70, scope: !5934)
!5940 = !DILocation(line: 53, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5934, file: !833, line: 53, column: 6)
!5942 = !DILocation(line: 53, column: 9, scope: !5941)
!5943 = !DILocation(line: 53, column: 6, scope: !5934)
!5944 = !DILocation(line: 54, column: 17, scope: !5941)
!5945 = !DILocation(line: 54, column: 21, scope: !5941)
!5946 = !DILocation(line: 54, column: 24, scope: !5941)
!5947 = !DILocation(line: 54, column: 3, scope: !5941)
!5948 = !DILocation(line: 55, column: 9, scope: !5934)
!5949 = !DILocation(line: 55, column: 2, scope: !5934)
!5950 = !DISubprogram(name: "task_active_pid_ns", scope: !833, file: !833, line: 117, type: !5951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!831, !401}
!5953 = distinct !DISubprogram(name: "get_current", scope: !5954, file: !5954, line: 39, type: !5955, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5954 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!401}
!5957 = !{!5958, !5960, !5962}
!5958 = !DILocalVariable(name: "pscr_ret__", scope: !5959, file: !5954, line: 41, type: !401)
!5959 = distinct !DILexicalBlock(scope: !5953, file: !5954, line: 41, column: 9)
!5960 = !DILocalVariable(name: "__vpp_verify", scope: !5961, file: !5954, line: 41, type: !1018)
!5961 = distinct !DILexicalBlock(scope: !5959, file: !5954, line: 41, column: 9)
!5962 = !DILocalVariable(name: "pfo_val__", scope: !5963, file: !5954, line: 41, type: !460)
!5963 = distinct !DILexicalBlock(scope: !5959, file: !5954, line: 41, column: 9)
!5964 = !DILocation(line: 41, column: 9, scope: !5959)
!5965 = !DILocation(line: 41, column: 9, scope: !5961)
!5966 = !DILocation(line: 41, column: 9, scope: !5963)
!5967 = !{i64 2148958754}
!5968 = !DILocation(line: 41, column: 9, scope: !5953)
!5969 = !DILocation(line: 41, column: 2, scope: !5953)
!5970 = distinct !DISubprogram(name: "ERR_PTR", scope: !5971, file: !5971, line: 39, type: !5972, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5971 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!163, !345}
!5974 = !{!5975}
!5975 = !DILocalVariable(name: "error", arg: 1, scope: !5970, file: !5971, line: 39, type: !345)
!5976 = !DILocation(line: 39, column: 48, scope: !5970)
!5977 = !DILocation(line: 41, column: 18, scope: !5970)
!5978 = !DILocation(line: 41, column: 9, scope: !5970)
!5979 = !DILocation(line: 41, column: 2, scope: !5970)
!5980 = distinct !DISubprogram(name: "create_pid_namespace", scope: !3, file: !3, line: 72, type: !5981, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5983)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!831, !862, !831}
!5983 = !{!5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992}
!5984 = !DILocalVariable(name: "user_ns", arg: 1, scope: !5980, file: !3, line: 72, type: !862)
!5985 = !DILocalVariable(name: "parent_pid_ns", arg: 2, scope: !5980, file: !3, line: 73, type: !831)
!5986 = !DILocalVariable(name: "ns", scope: !5980, file: !3, line: 75, type: !831)
!5987 = !DILocalVariable(name: "level", scope: !5980, file: !3, line: 76, type: !7)
!5988 = !DILocalVariable(name: "ucounts", scope: !5980, file: !3, line: 77, type: !968)
!5989 = !DILocalVariable(name: "err", scope: !5980, file: !3, line: 78, type: !87)
!5990 = !DILabel(scope: !5980, name: "out_free_idr", file: !3, line: 118)
!5991 = !DILabel(scope: !5980, name: "out_dec", file: !3, line: 121)
!5992 = !DILabel(scope: !5980, name: "out", file: !3, line: 123)
!5993 = !DILocation(line: 72, column: 74, scope: !5980)
!5994 = !DILocation(line: 73, column: 24, scope: !5980)
!5995 = !DILocation(line: 75, column: 2, scope: !5980)
!5996 = !DILocation(line: 75, column: 24, scope: !5980)
!5997 = !DILocation(line: 76, column: 2, scope: !5980)
!5998 = !DILocation(line: 76, column: 15, scope: !5980)
!5999 = !DILocation(line: 76, column: 23, scope: !5980)
!6000 = !DILocation(line: 76, column: 38, scope: !5980)
!6001 = !DILocation(line: 76, column: 44, scope: !5980)
!6002 = !DILocation(line: 77, column: 2, scope: !5980)
!6003 = !DILocation(line: 77, column: 18, scope: !5980)
!6004 = !DILocation(line: 78, column: 2, scope: !5980)
!6005 = !DILocation(line: 78, column: 6, scope: !5980)
!6006 = !DILocation(line: 80, column: 6, scope: !5980)
!6007 = !DILocation(line: 81, column: 17, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 81, column: 6)
!6009 = !DILocation(line: 81, column: 32, scope: !6008)
!6010 = !DILocation(line: 81, column: 41, scope: !6008)
!6011 = !DILocation(line: 81, column: 7, scope: !6008)
!6012 = !DILocation(line: 81, column: 6, scope: !5980)
!6013 = !DILocation(line: 82, column: 3, scope: !6008)
!6014 = !DILocation(line: 84, column: 6, scope: !5980)
!6015 = !DILocation(line: 85, column: 6, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 85, column: 6)
!6017 = !DILocation(line: 85, column: 12, scope: !6016)
!6018 = !DILocation(line: 85, column: 6, scope: !5980)
!6019 = !DILocation(line: 86, column: 3, scope: !6016)
!6020 = !DILocation(line: 87, column: 31, scope: !5980)
!6021 = !DILocation(line: 87, column: 12, scope: !5980)
!6022 = !DILocation(line: 87, column: 10, scope: !5980)
!6023 = !DILocation(line: 88, column: 7, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 88, column: 6)
!6025 = !DILocation(line: 88, column: 6, scope: !5980)
!6026 = !DILocation(line: 89, column: 3, scope: !6024)
!6027 = !DILocation(line: 91, column: 6, scope: !5980)
!6028 = !DILocation(line: 92, column: 25, scope: !5980)
!6029 = !DILocation(line: 92, column: 7, scope: !5980)
!6030 = !DILocation(line: 92, column: 5, scope: !5980)
!6031 = !DILocation(line: 93, column: 6, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 93, column: 6)
!6033 = !DILocation(line: 93, column: 9, scope: !6032)
!6034 = !DILocation(line: 93, column: 6, scope: !5980)
!6035 = !DILocation(line: 94, column: 3, scope: !6032)
!6036 = !DILocation(line: 96, column: 12, scope: !5980)
!6037 = !DILocation(line: 96, column: 16, scope: !5980)
!6038 = !DILocation(line: 96, column: 2, scope: !5980)
!6039 = !DILocation(line: 98, column: 37, scope: !5980)
!6040 = !DILocation(line: 98, column: 19, scope: !5980)
!6041 = !DILocation(line: 98, column: 2, scope: !5980)
!6042 = !DILocation(line: 98, column: 6, scope: !5980)
!6043 = !DILocation(line: 98, column: 17, scope: !5980)
!6044 = !DILocation(line: 99, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 99, column: 6)
!6046 = !DILocation(line: 99, column: 10, scope: !6045)
!6047 = !DILocation(line: 99, column: 21, scope: !6045)
!6048 = !DILocation(line: 99, column: 6, scope: !5980)
!6049 = !DILocation(line: 100, column: 3, scope: !6045)
!6050 = !DILocation(line: 102, column: 23, scope: !5980)
!6051 = !DILocation(line: 102, column: 27, scope: !5980)
!6052 = !DILocation(line: 102, column: 8, scope: !5980)
!6053 = !DILocation(line: 102, column: 6, scope: !5980)
!6054 = !DILocation(line: 103, column: 6, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 103, column: 6)
!6056 = !DILocation(line: 103, column: 6, scope: !5980)
!6057 = !DILocation(line: 104, column: 3, scope: !6055)
!6058 = !DILocation(line: 105, column: 2, scope: !5980)
!6059 = !DILocation(line: 105, column: 6, scope: !5980)
!6060 = !DILocation(line: 105, column: 9, scope: !5980)
!6061 = !DILocation(line: 105, column: 13, scope: !5980)
!6062 = !DILocation(line: 107, column: 16, scope: !5980)
!6063 = !DILocation(line: 107, column: 20, scope: !5980)
!6064 = !DILocation(line: 107, column: 23, scope: !5980)
!6065 = !DILocation(line: 107, column: 2, scope: !5980)
!6066 = !DILocation(line: 108, column: 14, scope: !5980)
!6067 = !DILocation(line: 108, column: 2, scope: !5980)
!6068 = !DILocation(line: 108, column: 6, scope: !5980)
!6069 = !DILocation(line: 108, column: 12, scope: !5980)
!6070 = !DILocation(line: 109, column: 26, scope: !5980)
!6071 = !DILocation(line: 109, column: 15, scope: !5980)
!6072 = !DILocation(line: 109, column: 2, scope: !5980)
!6073 = !DILocation(line: 109, column: 6, scope: !5980)
!6074 = !DILocation(line: 109, column: 13, scope: !5980)
!6075 = !DILocation(line: 110, column: 28, scope: !5980)
!6076 = !DILocation(line: 110, column: 16, scope: !5980)
!6077 = !DILocation(line: 110, column: 2, scope: !5980)
!6078 = !DILocation(line: 110, column: 6, scope: !5980)
!6079 = !DILocation(line: 110, column: 14, scope: !5980)
!6080 = !DILocation(line: 111, column: 16, scope: !5980)
!6081 = !DILocation(line: 111, column: 2, scope: !5980)
!6082 = !DILocation(line: 111, column: 6, scope: !5980)
!6083 = !DILocation(line: 111, column: 14, scope: !5980)
!6084 = !DILocation(line: 112, column: 2, scope: !5980)
!6085 = !DILocation(line: 112, column: 6, scope: !5980)
!6086 = !DILocation(line: 112, column: 20, scope: !5980)
!6087 = !DILocation(line: 114, column: 52, scope: !5980)
!6088 = !DILocation(line: 114, column: 27, scope: !5980)
!6089 = !DILocation(line: 114, column: 2, scope: !5980)
!6090 = !DILocation(line: 114, column: 6, scope: !5980)
!6091 = !DILocation(line: 114, column: 25, scope: !5980)
!6092 = !DILocation(line: 116, column: 9, scope: !5980)
!6093 = !DILocation(line: 116, column: 2, scope: !5980)
!6094 = !DILocation(line: 118, column: 1, scope: !5980)
!6095 = !DILocation(line: 119, column: 15, scope: !5980)
!6096 = !DILocation(line: 119, column: 19, scope: !5980)
!6097 = !DILocation(line: 119, column: 2, scope: !5980)
!6098 = !DILocation(line: 120, column: 18, scope: !5980)
!6099 = !DILocation(line: 120, column: 33, scope: !5980)
!6100 = !DILocation(line: 120, column: 2, scope: !5980)
!6101 = !DILocation(line: 121, column: 1, scope: !5980)
!6102 = !DILocation(line: 122, column: 21, scope: !5980)
!6103 = !DILocation(line: 122, column: 2, scope: !5980)
!6104 = !DILocation(line: 123, column: 1, scope: !5980)
!6105 = !DILocation(line: 124, column: 17, scope: !5980)
!6106 = !DILocation(line: 124, column: 9, scope: !5980)
!6107 = !DILocation(line: 124, column: 2, scope: !5980)
!6108 = !DILocation(line: 125, column: 1, scope: !5980)
!6109 = distinct !DISubprogram(name: "put_pid_ns", scope: !3, file: !3, line: 155, type: !6110, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6112)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{null, !831}
!6112 = !{!6113, !6114}
!6113 = !DILocalVariable(name: "ns", arg: 1, scope: !6109, file: !3, line: 155, type: !831)
!6114 = !DILocalVariable(name: "parent", scope: !6109, file: !3, line: 157, type: !831)
!6115 = !DILocation(line: 155, column: 39, scope: !6109)
!6116 = !DILocation(line: 157, column: 2, scope: !6109)
!6117 = !DILocation(line: 157, column: 24, scope: !6109)
!6118 = !DILocation(line: 159, column: 2, scope: !6109)
!6119 = !DILocation(line: 159, column: 9, scope: !6109)
!6120 = !DILocation(line: 159, column: 12, scope: !6109)
!6121 = !DILocation(line: 160, column: 12, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 159, column: 29)
!6123 = !DILocation(line: 160, column: 16, scope: !6122)
!6124 = !DILocation(line: 160, column: 10, scope: !6122)
!6125 = !DILocation(line: 161, column: 31, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 161, column: 7)
!6127 = !DILocation(line: 161, column: 35, scope: !6126)
!6128 = !DILocation(line: 161, column: 38, scope: !6126)
!6129 = !DILocation(line: 161, column: 8, scope: !6126)
!6130 = !DILocation(line: 161, column: 7, scope: !6122)
!6131 = !DILocation(line: 162, column: 4, scope: !6126)
!6132 = !DILocation(line: 163, column: 25, scope: !6122)
!6133 = !DILocation(line: 163, column: 3, scope: !6122)
!6134 = !DILocation(line: 164, column: 8, scope: !6122)
!6135 = !DILocation(line: 164, column: 6, scope: !6122)
!6136 = distinct !{!6136, !6118, !6137, !6138, !6139}
!6137 = !DILocation(line: 165, column: 2, scope: !6109)
!6138 = !{!"llvm.loop.mustprogress"}
!6139 = !{!"llvm.loop.unroll.disable"}
!6140 = !DILocation(line: 166, column: 1, scope: !6109)
!6141 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !263, file: !263, line: 331, type: !6142, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6145)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{!1102, !6144}
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!6145 = !{!6146}
!6146 = !DILocalVariable(name: "r", arg: 1, scope: !6141, file: !263, line: 331, type: !6144)
!6147 = !DILocation(line: 331, column: 67, scope: !6141)
!6148 = !DILocation(line: 333, column: 33, scope: !6141)
!6149 = !DILocation(line: 333, column: 9, scope: !6141)
!6150 = !DILocation(line: 333, column: 2, scope: !6141)
!6151 = distinct !DISubprogram(name: "destroy_pid_namespace", scope: !3, file: !3, line: 137, type: !6110, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6152 = !{!6153}
!6153 = !DILocalVariable(name: "ns", arg: 1, scope: !6151, file: !3, line: 137, type: !831)
!6154 = !DILocation(line: 137, column: 57, scope: !6151)
!6155 = !DILocation(line: 139, column: 2, scope: !6151)
!6156 = !DILocation(line: 141, column: 15, scope: !6151)
!6157 = !DILocation(line: 141, column: 19, scope: !6151)
!6158 = !DILocation(line: 141, column: 2, scope: !6151)
!6159 = !DILocation(line: 142, column: 12, scope: !6151)
!6160 = !DILocation(line: 142, column: 16, scope: !6151)
!6161 = !DILocation(line: 142, column: 2, scope: !6151)
!6162 = !DILocation(line: 143, column: 1, scope: !6151)
!6163 = distinct !DISubprogram(name: "zap_pid_ns_processes", scope: !3, file: !3, line: 169, type: !6110, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6164)
!6164 = !{!6165, !6166, !6167, !6168, !6169, !6170, !6171, !6172, !6180}
!6165 = !DILocalVariable(name: "pid_ns", arg: 1, scope: !6163, file: !3, line: 169, type: !831)
!6166 = !DILocalVariable(name: "nr", scope: !6163, file: !3, line: 171, type: !87)
!6167 = !DILocalVariable(name: "rc", scope: !6163, file: !3, line: 172, type: !87)
!6168 = !DILocalVariable(name: "task", scope: !6163, file: !3, line: 173, type: !401)
!6169 = !DILocalVariable(name: "me", scope: !6163, file: !3, line: 173, type: !401)
!6170 = !DILocalVariable(name: "init_pids", scope: !6163, file: !3, line: 174, type: !87)
!6171 = !DILocalVariable(name: "pid", scope: !6163, file: !3, line: 175, type: !803)
!6172 = !DILocalVariable(name: "__ai_ptr", scope: !6173, file: !3, line: 248, type: !1712)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 248, column: 3)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 248, column: 3)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 248, column: 3)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 248, column: 3)
!6177 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 247, column: 11)
!6178 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 247, column: 2)
!6179 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 247, column: 2)
!6180 = !DILocalVariable(name: "__ret", scope: !6181, file: !3, line: 248, type: !7)
!6181 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 248, column: 3)
!6182 = !DILocation(line: 169, column: 49, scope: !6163)
!6183 = !DILocation(line: 171, column: 2, scope: !6163)
!6184 = !DILocation(line: 171, column: 6, scope: !6163)
!6185 = !DILocation(line: 172, column: 2, scope: !6163)
!6186 = !DILocation(line: 172, column: 6, scope: !6163)
!6187 = !DILocation(line: 173, column: 2, scope: !6163)
!6188 = !DILocation(line: 173, column: 22, scope: !6163)
!6189 = !DILocation(line: 173, column: 29, scope: !6163)
!6190 = !DILocation(line: 173, column: 34, scope: !6163)
!6191 = !DILocation(line: 174, column: 2, scope: !6163)
!6192 = !DILocation(line: 174, column: 6, scope: !6163)
!6193 = !DILocation(line: 174, column: 38, scope: !6163)
!6194 = !DILocation(line: 174, column: 18, scope: !6163)
!6195 = !DILocation(line: 175, column: 2, scope: !6163)
!6196 = !DILocation(line: 175, column: 14, scope: !6163)
!6197 = !DILocation(line: 178, column: 25, scope: !6163)
!6198 = !DILocation(line: 178, column: 2, scope: !6163)
!6199 = !DILocation(line: 185, column: 17, scope: !6163)
!6200 = !DILocation(line: 185, column: 21, scope: !6163)
!6201 = !DILocation(line: 185, column: 30, scope: !6163)
!6202 = !DILocation(line: 185, column: 2, scope: !6163)
!6203 = !DILocation(line: 186, column: 2, scope: !6163)
!6204 = !DILocation(line: 186, column: 6, scope: !6163)
!6205 = !DILocation(line: 186, column: 15, scope: !6163)
!6206 = !DILocation(line: 186, column: 35, scope: !6163)
!6207 = !DILocation(line: 186, column: 38, scope: !6163)
!6208 = !DILocation(line: 186, column: 49, scope: !6163)
!6209 = !DILocation(line: 187, column: 19, scope: !6163)
!6210 = !DILocation(line: 187, column: 23, scope: !6163)
!6211 = !DILocation(line: 187, column: 32, scope: !6163)
!6212 = !DILocation(line: 187, column: 2, scope: !6163)
!6213 = !DILocation(line: 202, column: 2, scope: !6163)
!6214 = !DILocation(line: 203, column: 2, scope: !6163)
!6215 = !DILocation(line: 204, column: 5, scope: !6163)
!6216 = !DILocation(line: 205, column: 2, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 205, column: 2)
!6218 = !DILocation(line: 205, column: 2, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 205, column: 2)
!6220 = !DILocation(line: 206, column: 19, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 205, column: 53)
!6222 = !DILocation(line: 206, column: 10, scope: !6221)
!6223 = !DILocation(line: 206, column: 8, scope: !6221)
!6224 = !DILocation(line: 207, column: 7, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 207, column: 7)
!6226 = !DILocation(line: 207, column: 12, scope: !6225)
!6227 = !DILocation(line: 207, column: 39, scope: !6225)
!6228 = !DILocation(line: 207, column: 16, scope: !6225)
!6229 = !DILocation(line: 207, column: 7, scope: !6221)
!6230 = !DILocation(line: 208, column: 48, scope: !6225)
!6231 = !DILocation(line: 208, column: 4, scope: !6225)
!6232 = !DILocation(line: 209, column: 2, scope: !6221)
!6233 = distinct !{!6233, !6216, !6234, !6138, !6139}
!6234 = !DILocation(line: 209, column: 2, scope: !6217)
!6235 = !DILocation(line: 210, column: 2, scope: !6163)
!6236 = !DILocation(line: 211, column: 2, scope: !6163)
!6237 = !DILocation(line: 218, column: 2, scope: !6163)
!6238 = !DILocation(line: 219, column: 3, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 218, column: 5)
!6240 = !DILocation(line: 220, column: 3, scope: !6239)
!6241 = !DILocation(line: 221, column: 8, scope: !6239)
!6242 = !DILocation(line: 221, column: 6, scope: !6239)
!6243 = !DILocation(line: 222, column: 2, scope: !6239)
!6244 = !DILocation(line: 222, column: 11, scope: !6163)
!6245 = !DILocation(line: 222, column: 14, scope: !6163)
!6246 = distinct !{!6246, !6237, !6247, !6138, !6139}
!6247 = !DILocation(line: 222, column: 24, scope: !6163)
!6248 = !DILocation(line: 247, column: 2, scope: !6163)
!6249 = !DILocation(line: 248, column: 3, scope: !6177)
!6250 = !DILocation(line: 248, column: 3, scope: !6176)
!6251 = !DILocation(line: 248, column: 3, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 248, column: 3)
!6253 = !DILocation(line: 248, column: 3, scope: !6175)
!6254 = !DILocation(line: 248, column: 3, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 248, column: 3)
!6256 = !DILocation(line: 248, column: 3, scope: !6173)
!6257 = !DILocation(line: 248, column: 3, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 248, column: 3)
!6259 = !DILocation(line: 248, column: 3, scope: !6181)
!6260 = !{i64 2155591160}
!6261 = !DILocation(line: 248, column: 3, scope: !6174)
!6262 = !DILocation(line: 249, column: 7, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 249, column: 7)
!6264 = !DILocation(line: 249, column: 15, scope: !6263)
!6265 = !DILocation(line: 249, column: 32, scope: !6263)
!6266 = !DILocation(line: 249, column: 29, scope: !6263)
!6267 = !DILocation(line: 249, column: 7, scope: !6177)
!6268 = !DILocation(line: 250, column: 4, scope: !6263)
!6269 = !DILocation(line: 266, column: 3, scope: !6177)
!6270 = !DILocation(line: 267, column: 3, scope: !6177)
!6271 = !DILocation(line: 268, column: 3, scope: !6177)
!6272 = !DILocation(line: 247, column: 2, scope: !6178)
!6273 = distinct !{!6273, !6274, !6275, !6139}
!6274 = !DILocation(line: 247, column: 2, scope: !6179)
!6275 = !DILocation(line: 269, column: 2, scope: !6179)
!6276 = !DILocation(line: 270, column: 2, scope: !6163)
!6277 = !DILocation(line: 270, column: 2, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 270, column: 2)
!6279 = !DILocation(line: 270, column: 2, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 270, column: 2)
!6281 = !DILocation(line: 270, column: 2, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 270, column: 2)
!6283 = !DILocation(line: 270, column: 2, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 270, column: 2)
!6285 = !DILocation(line: 270, column: 2, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 270, column: 2)
!6287 = !DILocation(line: 272, column: 6, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 272, column: 6)
!6289 = !DILocation(line: 272, column: 14, scope: !6288)
!6290 = !DILocation(line: 272, column: 6, scope: !6163)
!6291 = !DILocation(line: 273, column: 38, scope: !6288)
!6292 = !DILocation(line: 273, column: 46, scope: !6288)
!6293 = !DILocation(line: 273, column: 3, scope: !6288)
!6294 = !DILocation(line: 273, column: 12, scope: !6288)
!6295 = !DILocation(line: 273, column: 20, scope: !6288)
!6296 = !DILocation(line: 273, column: 36, scope: !6288)
!6297 = !DILocation(line: 275, column: 15, scope: !6163)
!6298 = !DILocation(line: 275, column: 2, scope: !6163)
!6299 = !DILocation(line: 277, column: 1, scope: !6163)
!6300 = distinct !DISubprogram(name: "thread_group_leader", scope: !5210, file: !5210, line: 707, type: !6301, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{!1102, !401}
!6303 = !{!6304}
!6304 = !DILocalVariable(name: "p", arg: 1, scope: !6300, file: !5210, line: 707, type: !401)
!6305 = !DILocation(line: 707, column: 60, scope: !6300)
!6306 = !DILocation(line: 709, column: 9, scope: !6300)
!6307 = !DILocation(line: 709, column: 12, scope: !6300)
!6308 = !DILocation(line: 709, column: 24, scope: !6300)
!6309 = !DILocation(line: 709, column: 2, scope: !6300)
!6310 = !DISubprogram(name: "disable_pid_allocation", scope: !12, file: !12, line: 140, type: !6110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6311 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6312, file: !6312, line: 374, type: !6313, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6315)
!6312 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6313 = !DISubroutineType(types: !6314)
!6314 = !{null, !4328}
!6315 = !{!6316}
!6316 = !DILocalVariable(name: "lock", arg: 1, scope: !6311, file: !6312, line: 374, type: !4328)
!6317 = !DILocation(line: 374, column: 55, scope: !6311)
!6318 = !DILocation(line: 376, column: 2, scope: !6311)
!6319 = !DILocation(line: 377, column: 1, scope: !6311)
!6320 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6312, file: !6312, line: 399, type: !6313, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6321)
!6321 = !{!6322}
!6322 = !DILocalVariable(name: "lock", arg: 1, scope: !6320, file: !6312, line: 399, type: !4328)
!6323 = !DILocation(line: 399, column: 57, scope: !6320)
!6324 = !DILocation(line: 401, column: 2, scope: !6320)
!6325 = !DILocation(line: 402, column: 1, scope: !6320)
!6326 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6327, file: !6327, line: 782, type: !2048, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6327 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6328 = !DILocation(line: 784, column: 2, scope: !6326)
!6329 = !DILocation(line: 786, column: 2, scope: !6326)
!6330 = !DILocation(line: 786, column: 2, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6326, file: !6327, line: 786, column: 2)
!6332 = !DILocation(line: 787, column: 2, scope: !6326)
!6333 = !DILocation(line: 787, column: 2, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6326, file: !6327, line: 787, column: 2)
!6335 = !DILocation(line: 789, column: 1, scope: !6326)
!6336 = !DISubprogram(name: "_raw_read_lock", scope: !6337, file: !6337, line: 18, type: !6338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6337 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !6340}
!6340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!6341 = !DISubprogram(name: "idr_get_next", scope: !837, file: !837, line: 122, type: !6342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!163, !6344, !1760}
!6344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!6345 = !DISubprogram(name: "pid_task", scope: !12, file: !12, line: 93, type: !6346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DISubroutineType(types: !6347)
!6347 = !{!401, !803, !11}
!6348 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !5210, file: !5210, line: 404, type: !6349, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6351)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!87, !401}
!6351 = !{!6352}
!6352 = !DILocalVariable(name: "p", arg: 1, scope: !6348, file: !5210, line: 404, type: !401)
!6353 = !DILocation(line: 404, column: 62, scope: !6348)
!6354 = !DILocation(line: 406, column: 9, scope: !6348)
!6355 = !DILocation(line: 406, column: 2, scope: !6348)
!6356 = !DISubprogram(name: "group_send_sig_info", scope: !6357, file: !6357, line: 283, type: !6358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6357 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6358 = !DISubroutineType(types: !6359)
!6359 = !{!87, !87, !296, !401, !11}
!6360 = !DISubprogram(name: "_raw_read_unlock", scope: !6337, file: !6337, line: 31, type: !6338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6361 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6327, file: !6327, line: 813, type: !2048, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6362 = !DILocation(line: 815, column: 2, scope: !6361)
!6363 = !DILocation(line: 815, column: 2, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6361, file: !6327, line: 815, column: 2)
!6365 = !DILocation(line: 818, column: 2, scope: !6361)
!6366 = !DILocation(line: 819, column: 2, scope: !6361)
!6367 = !DILocation(line: 819, column: 2, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6361, file: !6327, line: 819, column: 2)
!6369 = !DILocation(line: 820, column: 1, scope: !6361)
!6370 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !6371, file: !6371, line: 92, type: !6372, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6374)
!6371 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6372 = !DISubroutineType(types: !6373)
!6373 = !{null, !389, !87}
!6374 = !{!6375, !6376}
!6375 = !DILocalVariable(name: "ti", arg: 1, scope: !6370, file: !6371, line: 92, type: !389)
!6376 = !DILocalVariable(name: "flag", arg: 2, scope: !6370, file: !6371, line: 92, type: !87)
!6377 = !DILocation(line: 92, column: 61, scope: !6370)
!6378 = !DILocation(line: 92, column: 69, scope: !6370)
!6379 = !DILocation(line: 94, column: 12, scope: !6370)
!6380 = !DILocation(line: 94, column: 36, scope: !6370)
!6381 = !DILocation(line: 94, column: 40, scope: !6370)
!6382 = !DILocation(line: 94, column: 2, scope: !6370)
!6383 = !DILocation(line: 95, column: 1, scope: !6370)
!6384 = !DISubprogram(name: "kernel_wait4", scope: !6385, file: !6385, line: 103, type: !6386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6385 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!6386 = !DISubroutineType(types: !6387)
!6387 = !{!345, !5131, !1760, !87, !6388}
!6388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6389, size: 64)
!6389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !5318, line: 24, size: 1152, elements: !6390)
!6390 = !{!6391, !6396, !6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6406, !6407, !6408, !6409, !6410}
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !6389, file: !5318, line: 25, baseType: !6392, size: 128)
!6392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_timeval", file: !5101, line: 25, size: 128, elements: !6393)
!6393 = !{!6394, !6395}
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6392, file: !5101, line: 26, baseType: !344, size: 64)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6392, file: !5101, line: 27, baseType: !344, size: 64, offset: 64)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !6389, file: !5318, line: 26, baseType: !6392, size: 128, offset: 128)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !6389, file: !5318, line: 27, baseType: !344, size: 64, offset: 256)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !6389, file: !5318, line: 28, baseType: !344, size: 64, offset: 320)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !6389, file: !5318, line: 29, baseType: !344, size: 64, offset: 384)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !6389, file: !5318, line: 30, baseType: !344, size: 64, offset: 448)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !6389, file: !5318, line: 31, baseType: !344, size: 64, offset: 512)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !6389, file: !5318, line: 32, baseType: !344, size: 64, offset: 576)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !6389, file: !5318, line: 33, baseType: !344, size: 64, offset: 640)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !6389, file: !5318, line: 34, baseType: !344, size: 64, offset: 704)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !6389, file: !5318, line: 35, baseType: !344, size: 64, offset: 768)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !6389, file: !5318, line: 36, baseType: !344, size: 64, offset: 832)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !6389, file: !5318, line: 37, baseType: !344, size: 64, offset: 896)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !6389, file: !5318, line: 38, baseType: !344, size: 64, offset: 960)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !6389, file: !5318, line: 39, baseType: !344, size: 64, offset: 1024)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !6389, file: !5318, line: 40, baseType: !344, size: 64, offset: 1088)
!6411 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6412, file: !6412, line: 94, type: !6413, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6412 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6413 = !DISubroutineType(types: !6414)
!6414 = !{null, !6415, !177}
!6415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6416, size: 64)
!6416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6417)
!6417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6418 = !{!6419, !6420}
!6419 = !DILocalVariable(name: "v", arg: 1, scope: !6411, file: !6412, line: 94, type: !6415)
!6420 = !DILocalVariable(name: "size", arg: 2, scope: !6411, file: !6412, line: 94, type: !177)
!6421 = !DILocation(line: 94, column: 79, scope: !6411)
!6422 = !DILocation(line: 94, column: 89, scope: !6411)
!6423 = !DILocation(line: 96, column: 20, scope: !6411)
!6424 = !DILocation(line: 96, column: 23, scope: !6411)
!6425 = !DILocation(line: 96, column: 2, scope: !6411)
!6426 = !DILocation(line: 97, column: 2, scope: !6411)
!6427 = !DILocation(line: 98, column: 1, scope: !6411)
!6428 = !DISubprogram(name: "exit_tasks_rcu_stop", scope: !6327, file: !6327, line: 217, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6429 = !DISubprogram(name: "schedule", scope: !403, file: !403, line: 303, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6430 = !DISubprogram(name: "exit_tasks_rcu_start", scope: !6327, file: !6327, line: 216, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6431 = !DISubprogram(name: "acct_exit_ns", scope: !6432, file: !6432, line: 26, type: !6110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6432 = !DIFile(filename: "./include/linux/acct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6afb12fe366bcdd5232fc314af24509")
!6433 = distinct !DISubprogram(name: "reboot_pid_ns", scope: !3, file: !3, line: 320, type: !6434, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6436)
!6434 = !DISubroutineType(types: !6435)
!6435 = !{!87, !831, !87}
!6436 = !{!6437, !6438}
!6437 = !DILocalVariable(name: "pid_ns", arg: 1, scope: !6433, file: !3, line: 320, type: !831)
!6438 = !DILocalVariable(name: "cmd", arg: 2, scope: !6433, file: !3, line: 320, type: !87)
!6439 = !DILocation(line: 320, column: 41, scope: !6433)
!6440 = !DILocation(line: 320, column: 53, scope: !6433)
!6441 = !DILocation(line: 322, column: 6, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 322, column: 6)
!6443 = !DILocation(line: 322, column: 13, scope: !6442)
!6444 = !DILocation(line: 322, column: 6, scope: !6433)
!6445 = !DILocation(line: 323, column: 3, scope: !6442)
!6446 = !DILocation(line: 325, column: 10, scope: !6433)
!6447 = !DILocation(line: 325, column: 2, scope: !6433)
!6448 = !DILocation(line: 328, column: 3, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 325, column: 15)
!6450 = !DILocation(line: 328, column: 11, scope: !6449)
!6451 = !DILocation(line: 328, column: 18, scope: !6449)
!6452 = !DILocation(line: 329, column: 3, scope: !6449)
!6453 = !DILocation(line: 333, column: 3, scope: !6449)
!6454 = !DILocation(line: 333, column: 11, scope: !6449)
!6455 = !DILocation(line: 333, column: 18, scope: !6449)
!6456 = !DILocation(line: 334, column: 3, scope: !6449)
!6457 = !DILocation(line: 336, column: 3, scope: !6449)
!6458 = !DILocation(line: 339, column: 2, scope: !6433)
!6459 = !DILocation(line: 340, column: 20, scope: !6433)
!6460 = !DILocation(line: 340, column: 28, scope: !6433)
!6461 = !DILocation(line: 340, column: 2, scope: !6433)
!6462 = !DILocation(line: 341, column: 2, scope: !6433)
!6463 = !DILocation(line: 343, column: 2, scope: !6433)
!6464 = !DILocation(line: 347, column: 1, scope: !6433)
!6465 = !DISubprogram(name: "send_sig", scope: !5210, file: !5210, line: 348, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!87, !87, !401, !87}
!6468 = !DISubprogram(name: "do_exit", scope: !6469, file: !6469, line: 205, type: !6470, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6469 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6470 = !DISubroutineType(types: !6471)
!6471 = !{null, !345}
!6472 = distinct !DISubprogram(name: "pidns_get", scope: !3, file: !3, line: 354, type: !921, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6473 = !{!6474, !6475}
!6474 = !DILocalVariable(name: "task", arg: 1, scope: !6472, file: !3, line: 354, type: !401)
!6475 = !DILocalVariable(name: "ns", scope: !6472, file: !3, line: 356, type: !831)
!6476 = !DILocation(line: 354, column: 56, scope: !6472)
!6477 = !DILocation(line: 356, column: 2, scope: !6472)
!6478 = !DILocation(line: 356, column: 24, scope: !6472)
!6479 = !DILocation(line: 358, column: 2, scope: !6472)
!6480 = !DILocation(line: 359, column: 26, scope: !6472)
!6481 = !DILocation(line: 359, column: 7, scope: !6472)
!6482 = !DILocation(line: 359, column: 5, scope: !6472)
!6483 = !DILocation(line: 360, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 360, column: 6)
!6485 = !DILocation(line: 360, column: 6, scope: !6472)
!6486 = !DILocation(line: 361, column: 14, scope: !6484)
!6487 = !DILocation(line: 361, column: 3, scope: !6484)
!6488 = !DILocation(line: 362, column: 2, scope: !6472)
!6489 = !DILocation(line: 364, column: 9, scope: !6472)
!6490 = !DILocation(line: 364, column: 15, scope: !6472)
!6491 = !DILocation(line: 364, column: 19, scope: !6472)
!6492 = !DILocation(line: 365, column: 1, scope: !6472)
!6493 = !DILocation(line: 364, column: 2, scope: !6472)
!6494 = distinct !DISubprogram(name: "pidns_put", scope: !3, file: !3, line: 390, type: !926, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6495 = !{!6496}
!6496 = !DILocalVariable(name: "ns", arg: 1, scope: !6494, file: !3, line: 390, type: !923)
!6497 = !DILocation(line: 390, column: 41, scope: !6494)
!6498 = !DILocation(line: 392, column: 23, scope: !6494)
!6499 = !DILocation(line: 392, column: 13, scope: !6494)
!6500 = !DILocation(line: 392, column: 2, scope: !6494)
!6501 = !DILocation(line: 393, column: 1, scope: !6494)
!6502 = distinct !DISubprogram(name: "pidns_install", scope: !3, file: !3, line: 395, type: !930, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6503)
!6503 = !{!6504, !6505, !6506, !6507, !6508, !6509}
!6504 = !DILocalVariable(name: "nsset", arg: 1, scope: !6502, file: !3, line: 395, type: !932)
!6505 = !DILocalVariable(name: "ns", arg: 2, scope: !6502, file: !3, line: 395, type: !923)
!6506 = !DILocalVariable(name: "nsproxy", scope: !6502, file: !3, line: 397, type: !938)
!6507 = !DILocalVariable(name: "active", scope: !6502, file: !3, line: 398, type: !831)
!6508 = !DILocalVariable(name: "ancestor", scope: !6502, file: !3, line: 399, type: !831)
!6509 = !DILocalVariable(name: "new", scope: !6502, file: !3, line: 399, type: !831)
!6510 = !DILocation(line: 395, column: 40, scope: !6502)
!6511 = !DILocation(line: 395, column: 65, scope: !6502)
!6512 = !DILocation(line: 397, column: 2, scope: !6502)
!6513 = !DILocation(line: 397, column: 18, scope: !6502)
!6514 = !DILocation(line: 397, column: 28, scope: !6502)
!6515 = !DILocation(line: 397, column: 35, scope: !6502)
!6516 = !DILocation(line: 398, column: 2, scope: !6502)
!6517 = !DILocation(line: 398, column: 24, scope: !6502)
!6518 = !DILocation(line: 398, column: 52, scope: !6502)
!6519 = !DILocation(line: 398, column: 33, scope: !6502)
!6520 = !DILocation(line: 399, column: 2, scope: !6502)
!6521 = !DILocation(line: 399, column: 24, scope: !6502)
!6522 = !DILocation(line: 399, column: 35, scope: !6502)
!6523 = !DILocation(line: 399, column: 51, scope: !6502)
!6524 = !DILocation(line: 399, column: 41, scope: !6502)
!6525 = !DILocation(line: 401, column: 18, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 401, column: 6)
!6527 = !DILocation(line: 401, column: 23, scope: !6526)
!6528 = !DILocation(line: 401, column: 7, scope: !6526)
!6529 = !DILocation(line: 401, column: 47, scope: !6526)
!6530 = !DILocation(line: 402, column: 18, scope: !6526)
!6531 = !DILocation(line: 402, column: 25, scope: !6526)
!6532 = !DILocation(line: 402, column: 31, scope: !6526)
!6533 = !DILocation(line: 402, column: 7, scope: !6526)
!6534 = !DILocation(line: 401, column: 6, scope: !6502)
!6535 = !DILocation(line: 403, column: 3, scope: !6526)
!6536 = !DILocation(line: 413, column: 6, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 413, column: 6)
!6538 = !DILocation(line: 413, column: 11, scope: !6537)
!6539 = !DILocation(line: 413, column: 19, scope: !6537)
!6540 = !DILocation(line: 413, column: 27, scope: !6537)
!6541 = !DILocation(line: 413, column: 17, scope: !6537)
!6542 = !DILocation(line: 413, column: 6, scope: !6502)
!6543 = !DILocation(line: 414, column: 3, scope: !6537)
!6544 = !DILocation(line: 416, column: 13, scope: !6502)
!6545 = !DILocation(line: 416, column: 11, scope: !6502)
!6546 = !DILocation(line: 417, column: 2, scope: !6502)
!6547 = !DILocation(line: 417, column: 9, scope: !6502)
!6548 = !DILocation(line: 417, column: 19, scope: !6502)
!6549 = !DILocation(line: 417, column: 27, scope: !6502)
!6550 = !DILocation(line: 417, column: 35, scope: !6502)
!6551 = !DILocation(line: 417, column: 25, scope: !6502)
!6552 = !DILocation(line: 418, column: 14, scope: !6502)
!6553 = !DILocation(line: 418, column: 24, scope: !6502)
!6554 = !DILocation(line: 418, column: 12, scope: !6502)
!6555 = distinct !{!6555, !6546, !6553, !6138, !6139}
!6556 = !DILocation(line: 419, column: 6, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 419, column: 6)
!6558 = !DILocation(line: 419, column: 18, scope: !6557)
!6559 = !DILocation(line: 419, column: 15, scope: !6557)
!6560 = !DILocation(line: 419, column: 6, scope: !6502)
!6561 = !DILocation(line: 420, column: 3, scope: !6557)
!6562 = !DILocation(line: 422, column: 13, scope: !6502)
!6563 = !DILocation(line: 422, column: 22, scope: !6502)
!6564 = !DILocation(line: 422, column: 2, scope: !6502)
!6565 = !DILocation(line: 423, column: 44, scope: !6502)
!6566 = !DILocation(line: 423, column: 33, scope: !6502)
!6567 = !DILocation(line: 423, column: 2, scope: !6502)
!6568 = !DILocation(line: 423, column: 11, scope: !6502)
!6569 = !DILocation(line: 423, column: 31, scope: !6502)
!6570 = !DILocation(line: 424, column: 2, scope: !6502)
!6571 = !DILocation(line: 425, column: 1, scope: !6502)
!6572 = distinct !DISubprogram(name: "pidns_owner", scope: !3, file: !3, line: 445, type: !4819, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6573)
!6573 = !{!6574}
!6574 = !DILocalVariable(name: "ns", arg: 1, scope: !6572, file: !3, line: 445, type: !923)
!6575 = !DILocation(line: 445, column: 61, scope: !6572)
!6576 = !DILocation(line: 447, column: 19, scope: !6572)
!6577 = !DILocation(line: 447, column: 9, scope: !6572)
!6578 = !DILocation(line: 447, column: 24, scope: !6572)
!6579 = !DILocation(line: 447, column: 2, scope: !6572)
!6580 = distinct !DISubprogram(name: "pidns_get_parent", scope: !3, file: !3, line: 427, type: !4823, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6581)
!6581 = !{!6582, !6583, !6584, !6585}
!6582 = !DILocalVariable(name: "ns", arg: 1, scope: !6580, file: !3, line: 427, type: !923)
!6583 = !DILocalVariable(name: "active", scope: !6580, file: !3, line: 429, type: !831)
!6584 = !DILocalVariable(name: "pid_ns", scope: !6580, file: !3, line: 430, type: !831)
!6585 = !DILocalVariable(name: "p", scope: !6580, file: !3, line: 430, type: !831)
!6586 = !DILocation(line: 427, column: 61, scope: !6580)
!6587 = !DILocation(line: 429, column: 2, scope: !6580)
!6588 = !DILocation(line: 429, column: 24, scope: !6580)
!6589 = !DILocation(line: 429, column: 52, scope: !6580)
!6590 = !DILocation(line: 429, column: 33, scope: !6580)
!6591 = !DILocation(line: 430, column: 2, scope: !6580)
!6592 = !DILocation(line: 430, column: 24, scope: !6580)
!6593 = !DILocation(line: 430, column: 33, scope: !6580)
!6594 = !DILocation(line: 433, column: 25, scope: !6580)
!6595 = !DILocation(line: 433, column: 15, scope: !6580)
!6596 = !DILocation(line: 433, column: 30, scope: !6580)
!6597 = !DILocation(line: 433, column: 13, scope: !6580)
!6598 = !DILocation(line: 433, column: 9, scope: !6580)
!6599 = !DILocation(line: 434, column: 2, scope: !6580)
!6600 = !DILocation(line: 435, column: 8, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 435, column: 7)
!6602 = distinct !DILexicalBlock(scope: !6603, file: !3, line: 434, column: 11)
!6603 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 434, column: 2)
!6604 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 434, column: 2)
!6605 = !DILocation(line: 435, column: 7, scope: !6602)
!6606 = !DILocation(line: 436, column: 11, scope: !6601)
!6607 = !DILocation(line: 436, column: 4, scope: !6601)
!6608 = !DILocation(line: 437, column: 7, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 437, column: 7)
!6610 = !DILocation(line: 437, column: 12, scope: !6609)
!6611 = !DILocation(line: 437, column: 9, scope: !6609)
!6612 = !DILocation(line: 437, column: 7, scope: !6602)
!6613 = !DILocation(line: 438, column: 4, scope: !6609)
!6614 = !DILocation(line: 439, column: 7, scope: !6602)
!6615 = !DILocation(line: 439, column: 10, scope: !6602)
!6616 = !DILocation(line: 439, column: 5, scope: !6602)
!6617 = !DILocation(line: 434, column: 2, scope: !6603)
!6618 = distinct !{!6618, !6619, !6620, !6139}
!6619 = !DILocation(line: 434, column: 2, scope: !6604)
!6620 = !DILocation(line: 440, column: 2, scope: !6604)
!6621 = !DILocation(line: 442, column: 21, scope: !6580)
!6622 = !DILocation(line: 442, column: 10, scope: !6580)
!6623 = !DILocation(line: 442, column: 30, scope: !6580)
!6624 = !DILocation(line: 442, column: 2, scope: !6580)
!6625 = !DILocation(line: 443, column: 1, scope: !6580)
!6626 = distinct !DISubprogram(name: "pidns_for_children_get", scope: !3, file: !3, line: 367, type: !921, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "task", arg: 1, scope: !6626, file: !3, line: 367, type: !401)
!6629 = !DILocalVariable(name: "ns", scope: !6626, file: !3, line: 369, type: !831)
!6630 = !DILocation(line: 367, column: 69, scope: !6626)
!6631 = !DILocation(line: 369, column: 2, scope: !6626)
!6632 = !DILocation(line: 369, column: 24, scope: !6626)
!6633 = !DILocation(line: 371, column: 12, scope: !6626)
!6634 = !DILocation(line: 371, column: 2, scope: !6626)
!6635 = !DILocation(line: 372, column: 6, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 372, column: 6)
!6637 = !DILocation(line: 372, column: 12, scope: !6636)
!6638 = !DILocation(line: 372, column: 6, scope: !6626)
!6639 = !DILocation(line: 373, column: 8, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6636, file: !3, line: 372, column: 21)
!6641 = !DILocation(line: 373, column: 14, scope: !6640)
!6642 = !DILocation(line: 373, column: 23, scope: !6640)
!6643 = !DILocation(line: 373, column: 6, scope: !6640)
!6644 = !DILocation(line: 374, column: 14, scope: !6640)
!6645 = !DILocation(line: 374, column: 3, scope: !6640)
!6646 = !DILocation(line: 375, column: 2, scope: !6640)
!6647 = !DILocation(line: 376, column: 14, scope: !6626)
!6648 = !DILocation(line: 376, column: 2, scope: !6626)
!6649 = !DILocation(line: 378, column: 6, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 378, column: 6)
!6651 = !DILocation(line: 378, column: 6, scope: !6626)
!6652 = !DILocation(line: 379, column: 3, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6650, file: !3, line: 378, column: 10)
!6654 = !DILocation(line: 380, column: 8, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6653, file: !3, line: 380, column: 7)
!6656 = !DILocation(line: 380, column: 12, scope: !6655)
!6657 = !DILocation(line: 380, column: 7, scope: !6653)
!6658 = !DILocation(line: 381, column: 15, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 380, column: 26)
!6660 = !DILocation(line: 381, column: 4, scope: !6659)
!6661 = !DILocation(line: 382, column: 7, scope: !6659)
!6662 = !DILocation(line: 383, column: 3, scope: !6659)
!6663 = !DILocation(line: 384, column: 3, scope: !6653)
!6664 = !DILocation(line: 385, column: 2, scope: !6653)
!6665 = !DILocation(line: 387, column: 9, scope: !6626)
!6666 = !DILocation(line: 387, column: 15, scope: !6626)
!6667 = !DILocation(line: 387, column: 19, scope: !6626)
!6668 = !DILocation(line: 388, column: 1, scope: !6626)
!6669 = !DILocation(line: 387, column: 2, scope: !6626)
!6670 = distinct !DISubprogram(name: "__initstub__kmod_pid_namespace__322_483_pid_namespaces_init6", scope: !3, file: !3, line: 483, type: !1732, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6671 = !DILocation(line: 483, column: 1, scope: !6670)
!6672 = distinct !DISubprogram(name: "pid_namespaces_init", scope: !3, file: !3, line: 471, type: !1732, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6673 = !DILocation(line: 473, column: 18, scope: !6672)
!6674 = !DILocation(line: 473, column: 16, scope: !6672)
!6675 = !DILocation(line: 479, column: 2, scope: !6672)
!6676 = !DILocation(line: 480, column: 2, scope: !6672)
!6677 = distinct !DISubprogram(name: "refcount_inc", scope: !263, file: !263, line: 265, type: !6678, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6678 = !DISubroutineType(types: !6679)
!6679 = !{null, !6144}
!6680 = !{!6681}
!6681 = !DILocalVariable(name: "r", arg: 1, scope: !6677, file: !263, line: 265, type: !6144)
!6682 = !DILocation(line: 265, column: 45, scope: !6677)
!6683 = !DILocation(line: 267, column: 17, scope: !6677)
!6684 = !DILocation(line: 267, column: 2, scope: !6677)
!6685 = !DILocation(line: 268, column: 1, scope: !6677)
!6686 = distinct !DISubprogram(name: "__refcount_inc", scope: !263, file: !263, line: 248, type: !6687, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6689)
!6687 = !DISubroutineType(types: !6688)
!6688 = !{null, !6144, !1760}
!6689 = !{!6690, !6691}
!6690 = !DILocalVariable(name: "r", arg: 1, scope: !6686, file: !263, line: 248, type: !6144)
!6691 = !DILocalVariable(name: "oldp", arg: 2, scope: !6686, file: !263, line: 248, type: !1760)
!6692 = !DILocation(line: 248, column: 47, scope: !6686)
!6693 = !DILocation(line: 248, column: 55, scope: !6686)
!6694 = !DILocation(line: 250, column: 20, scope: !6686)
!6695 = !DILocation(line: 250, column: 23, scope: !6686)
!6696 = !DILocation(line: 250, column: 2, scope: !6686)
!6697 = !DILocation(line: 251, column: 1, scope: !6686)
!6698 = distinct !DISubprogram(name: "__refcount_add", scope: !263, file: !263, line: 191, type: !6699, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6701)
!6699 = !DISubroutineType(types: !6700)
!6700 = !{null, !87, !6144, !1760}
!6701 = !{!6702, !6703, !6704, !6705}
!6702 = !DILocalVariable(name: "i", arg: 1, scope: !6698, file: !263, line: 191, type: !87)
!6703 = !DILocalVariable(name: "r", arg: 2, scope: !6698, file: !263, line: 191, type: !6144)
!6704 = !DILocalVariable(name: "oldp", arg: 3, scope: !6698, file: !263, line: 191, type: !1760)
!6705 = !DILocalVariable(name: "old", scope: !6698, file: !263, line: 193, type: !87)
!6706 = !DILocation(line: 191, column: 39, scope: !6698)
!6707 = !DILocation(line: 191, column: 54, scope: !6698)
!6708 = !DILocation(line: 191, column: 62, scope: !6698)
!6709 = !DILocation(line: 193, column: 2, scope: !6698)
!6710 = !DILocation(line: 193, column: 6, scope: !6698)
!6711 = !DILocation(line: 193, column: 37, scope: !6698)
!6712 = !DILocation(line: 193, column: 41, scope: !6698)
!6713 = !DILocation(line: 193, column: 44, scope: !6698)
!6714 = !DILocation(line: 193, column: 12, scope: !6698)
!6715 = !DILocation(line: 195, column: 6, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6698, file: !263, line: 195, column: 6)
!6717 = !DILocation(line: 195, column: 6, scope: !6698)
!6718 = !DILocation(line: 196, column: 11, scope: !6716)
!6719 = !DILocation(line: 196, column: 4, scope: !6716)
!6720 = !DILocation(line: 196, column: 9, scope: !6716)
!6721 = !DILocation(line: 196, column: 3, scope: !6716)
!6722 = !DILocation(line: 198, column: 6, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6698, file: !263, line: 198, column: 6)
!6724 = !DILocation(line: 198, column: 6, scope: !6698)
!6725 = !DILocation(line: 199, column: 26, scope: !6723)
!6726 = !DILocation(line: 199, column: 3, scope: !6723)
!6727 = !DILocation(line: 200, column: 11, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6723, file: !263, line: 200, column: 11)
!6729 = !DILocation(line: 200, column: 11, scope: !6723)
!6730 = !DILocation(line: 201, column: 26, scope: !6728)
!6731 = !DILocation(line: 201, column: 3, scope: !6728)
!6732 = !DILocation(line: 202, column: 1, scope: !6698)
!6733 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6734, file: !6734, line: 250, type: !6735, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6738)
!6734 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!87, !87, !6737}
!6737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!6738 = !{!6739, !6740}
!6739 = !DILocalVariable(name: "i", arg: 1, scope: !6733, file: !6734, line: 250, type: !87)
!6740 = !DILocalVariable(name: "v", arg: 2, scope: !6733, file: !6734, line: 250, type: !6737)
!6741 = !DILocation(line: 250, column: 30, scope: !6733)
!6742 = !DILocation(line: 250, column: 43, scope: !6733)
!6743 = !DILocation(line: 252, column: 31, scope: !6733)
!6744 = !DILocation(line: 252, column: 2, scope: !6733)
!6745 = !DILocation(line: 253, column: 38, scope: !6733)
!6746 = !DILocation(line: 253, column: 41, scope: !6733)
!6747 = !DILocation(line: 253, column: 9, scope: !6733)
!6748 = !DILocation(line: 253, column: 2, scope: !6733)
!6749 = !DISubprogram(name: "refcount_warn_saturate", scope: !263, file: !263, line: 127, type: !6750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{null, !6144, !262}
!6752 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6753, file: !6753, line: 731, type: !6735, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6754)
!6753 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6754 = !{!6755, !6756}
!6755 = !DILocalVariable(name: "i", arg: 1, scope: !6752, file: !6753, line: 731, type: !87)
!6756 = !DILocalVariable(name: "v", arg: 2, scope: !6752, file: !6753, line: 731, type: !6737)
!6757 = !DILocation(line: 731, column: 34, scope: !6752)
!6758 = !DILocation(line: 731, column: 47, scope: !6752)
!6759 = !DILocation(line: 736, column: 31, scope: !6752)
!6760 = !DILocation(line: 736, column: 34, scope: !6752)
!6761 = !DILocation(line: 736, column: 9, scope: !6752)
!6762 = !DILocation(line: 736, column: 2, scope: !6752)
!6763 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6764, file: !6764, line: 95, type: !6735, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6765)
!6764 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6765 = !{!6766, !6767, !6768}
!6766 = !DILocalVariable(name: "i", arg: 1, scope: !6763, file: !6764, line: 95, type: !87)
!6767 = !DILocalVariable(name: "v", arg: 2, scope: !6763, file: !6764, line: 95, type: !6737)
!6768 = !DILocalVariable(name: "__ret", scope: !6769, file: !6764, line: 97, type: !87)
!6769 = distinct !DILexicalBlock(scope: !6763, file: !6764, line: 97, column: 9)
!6770 = !DILocation(line: 95, column: 54, scope: !6763)
!6771 = !DILocation(line: 95, column: 67, scope: !6763)
!6772 = !DILocation(line: 97, column: 9, scope: !6769)
!6773 = !{i64 2147971271, i64 2147971310, i64 2147971331, i64 2147971368, i64 2147971391, i64 2147971400}
!6774 = !DILocation(line: 97, column: 9, scope: !6763)
!6775 = !DILocation(line: 97, column: 2, scope: !6763)
!6776 = distinct !DISubprogram(name: "in_userns", scope: !276, file: !276, line: 212, type: !6777, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6777 = !DISubroutineType(types: !6778)
!6778 = !{!1102, !6779, !6779}
!6779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6780, size: 64)
!6780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!6781 = !{!6782, !6783}
!6782 = !DILocalVariable(name: "ancestor", arg: 1, scope: !6776, file: !276, line: 212, type: !6779)
!6783 = !DILocalVariable(name: "child", arg: 2, scope: !6776, file: !276, line: 213, type: !6779)
!6784 = !DILocation(line: 212, column: 59, scope: !6776)
!6785 = !DILocation(line: 213, column: 38, scope: !6776)
!6786 = !DILocation(line: 215, column: 2, scope: !6776)
!6787 = distinct !DISubprogram(name: "inc_pid_namespaces", scope: !3, file: !3, line: 62, type: !6788, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6790)
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!968, !862}
!6790 = !{!6791}
!6791 = !DILocalVariable(name: "ns", arg: 1, scope: !6787, file: !3, line: 62, type: !862)
!6792 = !DILocation(line: 62, column: 66, scope: !6787)
!6793 = !DILocation(line: 64, column: 20, scope: !6787)
!6794 = !DILocation(line: 64, column: 24, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 64, column: 24)
!6796 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 64, column: 24)
!6797 = !DILocation(line: 64, column: 24, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6795, file: !3, line: 64, column: 24)
!6799 = !DILocation(line: 64, column: 24, scope: !6796)
!6800 = !DILocation(line: 64, column: 9, scope: !6787)
!6801 = !DILocation(line: 64, column: 2, scope: !6787)
!6802 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !6803, file: !6803, line: 709, type: !6804, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6806)
!6803 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6804 = !DISubroutineType(types: !6805)
!6805 = !{!163, !853, !845}
!6806 = !{!6807, !6808}
!6807 = !DILocalVariable(name: "k", arg: 1, scope: !6802, file: !6803, line: 709, type: !853)
!6808 = !DILocalVariable(name: "flags", arg: 2, scope: !6802, file: !6803, line: 709, type: !845)
!6809 = !DILocation(line: 709, column: 58, scope: !6802)
!6810 = !DILocation(line: 709, column: 67, scope: !6802)
!6811 = !DILocation(line: 711, column: 26, scope: !6802)
!6812 = !DILocation(line: 711, column: 29, scope: !6802)
!6813 = !DILocation(line: 711, column: 35, scope: !6802)
!6814 = !DILocation(line: 711, column: 9, scope: !6802)
!6815 = !DILocation(line: 711, column: 2, scope: !6802)
!6816 = distinct !DISubprogram(name: "idr_init", scope: !837, file: !837, line: 149, type: !6817, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6819)
!6817 = !DISubroutineType(types: !6818)
!6818 = !{null, !6344}
!6819 = !{!6820}
!6820 = !DILocalVariable(name: "idr", arg: 1, scope: !6816, file: !837, line: 149, type: !6344)
!6821 = !DILocation(line: 149, column: 41, scope: !6816)
!6822 = !DILocation(line: 151, column: 16, scope: !6816)
!6823 = !DILocation(line: 151, column: 2, scope: !6816)
!6824 = !DILocation(line: 152, column: 1, scope: !6816)
!6825 = distinct !DISubprogram(name: "create_pid_cachep", scope: !3, file: !3, line: 38, type: !6826, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6828)
!6826 = !DISubroutineType(types: !6827)
!6827 = !{!853, !7}
!6828 = !{!6829, !6830, !6832, !6833, !6837}
!6829 = !DILocalVariable(name: "level", arg: 1, scope: !6825, file: !3, line: 38, type: !7)
!6830 = !DILocalVariable(name: "pkc", scope: !6825, file: !3, line: 41, type: !6831)
!6831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!6832 = !DILocalVariable(name: "kc", scope: !6825, file: !3, line: 42, type: !853)
!6833 = !DILocalVariable(name: "name", scope: !6825, file: !3, line: 43, type: !6834)
!6834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 120, elements: !6835)
!6835 = !{!6836}
!6836 = !DISubrange(count: 15)
!6837 = !DILocalVariable(name: "len", scope: !6825, file: !3, line: 44, type: !7)
!6838 = !DILocation(line: 38, column: 58, scope: !6825)
!6839 = !DILocation(line: 41, column: 2, scope: !6825)
!6840 = !DILocation(line: 41, column: 22, scope: !6825)
!6841 = !DILocation(line: 41, column: 39, scope: !6825)
!6842 = !DILocation(line: 41, column: 45, scope: !6825)
!6843 = !DILocation(line: 41, column: 29, scope: !6825)
!6844 = !DILocation(line: 42, column: 2, scope: !6825)
!6845 = !DILocation(line: 42, column: 21, scope: !6825)
!6846 = !DILocation(line: 43, column: 2, scope: !6825)
!6847 = !DILocation(line: 43, column: 7, scope: !6825)
!6848 = !DILocation(line: 44, column: 2, scope: !6825)
!6849 = !DILocation(line: 44, column: 15, scope: !6825)
!6850 = !DILocation(line: 46, column: 7, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 46, column: 7)
!6852 = !DILocation(line: 46, column: 7, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 46, column: 7)
!6854 = !DILocation(line: 46, column: 5, scope: !6825)
!6855 = !DILocation(line: 47, column: 6, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 47, column: 6)
!6857 = !DILocation(line: 47, column: 6, scope: !6825)
!6858 = !DILocation(line: 48, column: 10, scope: !6856)
!6859 = !DILocation(line: 48, column: 3, scope: !6856)
!6860 = !DILocation(line: 50, column: 11, scope: !6825)
!6861 = !DILocation(line: 50, column: 41, scope: !6825)
!6862 = !DILocation(line: 50, column: 47, scope: !6825)
!6863 = !DILocation(line: 50, column: 2, scope: !6825)
!6864 = !DILocation(line: 51, column: 8, scope: !6825)
!6865 = !DILocation(line: 51, column: 6, scope: !6825)
!6866 = !DILocation(line: 52, column: 2, scope: !6825)
!6867 = !DILocation(line: 54, column: 8, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 54, column: 6)
!6869 = !DILocation(line: 54, column: 7, scope: !6868)
!6870 = !DILocation(line: 54, column: 6, scope: !6825)
!6871 = !DILocation(line: 55, column: 28, scope: !6868)
!6872 = !DILocation(line: 55, column: 34, scope: !6868)
!6873 = !DILocation(line: 55, column: 10, scope: !6868)
!6874 = !DILocation(line: 55, column: 4, scope: !6868)
!6875 = !DILocation(line: 55, column: 8, scope: !6868)
!6876 = !DILocation(line: 55, column: 3, scope: !6868)
!6877 = !DILocation(line: 57, column: 2, scope: !6825)
!6878 = !DILocation(line: 59, column: 9, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 59, column: 9)
!6880 = !DILocation(line: 59, column: 9, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6879, file: !3, line: 59, column: 9)
!6882 = !DILocation(line: 59, column: 2, scope: !6825)
!6883 = !DILocation(line: 60, column: 1, scope: !6825)
!6884 = distinct !DISubprogram(name: "ns_alloc_inum", scope: !914, file: !914, line: 67, type: !6885, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6887)
!6885 = !DISubroutineType(types: !6886)
!6886 = !{!87, !923}
!6887 = !{!6888}
!6888 = !DILocalVariable(name: "ns", arg: 1, scope: !6884, file: !914, line: 67, type: !923)
!6889 = !DILocation(line: 67, column: 51, scope: !6884)
!6890 = !DILocation(line: 69, column: 19, scope: !6884)
!6891 = !DILocation(line: 69, column: 23, scope: !6884)
!6892 = !DILocation(line: 69, column: 2, scope: !6884)
!6893 = !DILocation(line: 70, column: 26, scope: !6884)
!6894 = !DILocation(line: 70, column: 30, scope: !6884)
!6895 = !DILocation(line: 70, column: 9, scope: !6884)
!6896 = !DILocation(line: 70, column: 2, scope: !6884)
!6897 = distinct !DISubprogram(name: "refcount_set", scope: !263, file: !263, line: 134, type: !6898, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6898 = !DISubroutineType(types: !6899)
!6899 = !{null, !6144, !87}
!6900 = !{!6901, !6902}
!6901 = !DILocalVariable(name: "r", arg: 1, scope: !6897, file: !263, line: 134, type: !6144)
!6902 = !DILocalVariable(name: "n", arg: 2, scope: !6897, file: !263, line: 134, type: !87)
!6903 = !DILocation(line: 134, column: 45, scope: !6897)
!6904 = !DILocation(line: 134, column: 52, scope: !6897)
!6905 = !DILocation(line: 136, column: 14, scope: !6897)
!6906 = !DILocation(line: 136, column: 17, scope: !6897)
!6907 = !DILocation(line: 136, column: 23, scope: !6897)
!6908 = !DILocation(line: 136, column: 2, scope: !6897)
!6909 = !DILocation(line: 137, column: 1, scope: !6897)
!6910 = distinct !DISubprogram(name: "get_user_ns", scope: !276, file: !276, line: 185, type: !6911, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6913)
!6911 = !DISubroutineType(types: !6912)
!6912 = !{!862, !862}
!6913 = !{!6914}
!6914 = !DILocalVariable(name: "ns", arg: 1, scope: !6910, file: !276, line: 185, type: !862)
!6915 = !DILocation(line: 185, column: 73, scope: !6910)
!6916 = !DILocation(line: 187, column: 2, scope: !6910)
!6917 = distinct !DISubprogram(name: "pidns_memfd_noexec_scope", scope: !833, file: !833, line: 59, type: !6918, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6920)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{!87, !831}
!6920 = !{!6921, !6922, !6923, !6927}
!6921 = !DILocalVariable(name: "ns", arg: 1, scope: !6917, file: !833, line: 59, type: !831)
!6922 = !DILocalVariable(name: "scope", scope: !6917, file: !833, line: 61, type: !87)
!6923 = !DILocalVariable(name: "__UNIQUE_ID___x281", scope: !6924, file: !833, line: 64, type: !87)
!6924 = distinct !DILexicalBlock(scope: !6925, file: !833, line: 64, column: 11)
!6925 = distinct !DILexicalBlock(scope: !6926, file: !833, line: 63, column: 2)
!6926 = distinct !DILexicalBlock(scope: !6917, file: !833, line: 63, column: 2)
!6927 = !DILocalVariable(name: "__UNIQUE_ID___y282", scope: !6924, file: !833, line: 64, type: !87)
!6928 = !DILocation(line: 59, column: 66, scope: !6917)
!6929 = !DILocation(line: 61, column: 2, scope: !6917)
!6930 = !DILocation(line: 61, column: 6, scope: !6917)
!6931 = !DILocation(line: 63, column: 2, scope: !6917)
!6932 = !DILocation(line: 63, column: 9, scope: !6925)
!6933 = !DILocation(line: 63, column: 2, scope: !6926)
!6934 = !DILocation(line: 64, column: 11, scope: !6924)
!6935 = !DILocation(line: 64, column: 11, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6924, file: !833, line: 64, column: 11)
!6937 = !DILocation(line: 64, column: 11, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6936, file: !833, line: 64, column: 11)
!6939 = !DILocation(line: 64, column: 11, scope: !6925)
!6940 = !DILocation(line: 64, column: 9, scope: !6925)
!6941 = !DILocation(line: 64, column: 3, scope: !6925)
!6942 = !DILocation(line: 63, column: 18, scope: !6925)
!6943 = !DILocation(line: 63, column: 22, scope: !6925)
!6944 = !DILocation(line: 63, column: 16, scope: !6925)
!6945 = !DILocation(line: 63, column: 2, scope: !6925)
!6946 = distinct !{!6946, !6933, !6947, !6138, !6139}
!6947 = !DILocation(line: 64, column: 11, scope: !6926)
!6948 = !DILocation(line: 66, column: 9, scope: !6917)
!6949 = !DILocation(line: 67, column: 1, scope: !6917)
!6950 = !DILocation(line: 66, column: 2, scope: !6917)
!6951 = !DISubprogram(name: "idr_destroy", scope: !837, file: !837, line: 125, type: !6817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DISubprogram(name: "kmem_cache_free", scope: !6803, file: !6803, line: 503, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{null, !853, !163}
!6955 = distinct !DISubprogram(name: "dec_pid_namespaces", scope: !3, file: !3, line: 67, type: !6956, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6958)
!6956 = !DISubroutineType(types: !6957)
!6957 = !{null, !968}
!6958 = !{!6959}
!6959 = !DILocalVariable(name: "ucounts", arg: 1, scope: !6955, file: !3, line: 67, type: !968)
!6960 = !DILocation(line: 67, column: 48, scope: !6955)
!6961 = !DILocation(line: 69, column: 13, scope: !6955)
!6962 = !DILocation(line: 69, column: 2, scope: !6955)
!6963 = !DILocation(line: 70, column: 1, scope: !6955)
!6964 = !DISubprogram(name: "inc_ucount", scope: !276, file: !276, line: 121, type: !6965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{!968, !862, !892, !275}
!6967 = !DISubprogram(name: "kmem_cache_alloc", scope: !6803, file: !6803, line: 500, type: !6804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6968 = distinct !DISubprogram(name: "idr_init_base", scope: !837, file: !837, line: 135, type: !6969, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6969 = !DISubroutineType(types: !6970)
!6970 = !{null, !6344, !87}
!6971 = !{!6972, !6973}
!6972 = !DILocalVariable(name: "idr", arg: 1, scope: !6968, file: !837, line: 135, type: !6344)
!6973 = !DILocalVariable(name: "base", arg: 2, scope: !6968, file: !837, line: 135, type: !87)
!6974 = !DILocation(line: 135, column: 46, scope: !6968)
!6975 = !DILocation(line: 135, column: 55, scope: !6968)
!6976 = !DILocation(line: 137, column: 2, scope: !6968)
!6977 = !DILocation(line: 138, column: 18, scope: !6968)
!6978 = !DILocation(line: 138, column: 2, scope: !6968)
!6979 = !DILocation(line: 138, column: 7, scope: !6968)
!6980 = !DILocation(line: 138, column: 16, scope: !6968)
!6981 = !DILocation(line: 139, column: 2, scope: !6968)
!6982 = !DILocation(line: 139, column: 7, scope: !6968)
!6983 = !DILocation(line: 139, column: 16, scope: !6968)
!6984 = !DILocation(line: 140, column: 1, scope: !6968)
!6985 = distinct !DISubprogram(name: "xa_init_flags", scope: !841, file: !841, line: 378, type: !6986, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6989)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{null, !6988, !845}
!6988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!6989 = !{!6990, !6991}
!6990 = !DILocalVariable(name: "xa", arg: 1, scope: !6985, file: !841, line: 378, type: !6988)
!6991 = !DILocalVariable(name: "flags", arg: 2, scope: !6985, file: !841, line: 378, type: !845)
!6992 = !DILocation(line: 378, column: 49, scope: !6985)
!6993 = !DILocation(line: 378, column: 59, scope: !6985)
!6994 = !DILocation(line: 380, column: 2, scope: !6985)
!6995 = !DILocation(line: 380, column: 2, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6985, file: !841, line: 380, column: 2)
!6997 = !DILocation(line: 381, column: 17, scope: !6985)
!6998 = !DILocation(line: 381, column: 2, scope: !6985)
!6999 = !DILocation(line: 381, column: 6, scope: !6985)
!7000 = !DILocation(line: 381, column: 15, scope: !6985)
!7001 = !DILocation(line: 382, column: 2, scope: !6985)
!7002 = !DILocation(line: 382, column: 6, scope: !6985)
!7003 = !DILocation(line: 382, column: 14, scope: !6985)
!7004 = !DILocation(line: 383, column: 1, scope: !6985)
!7005 = distinct !DISubprogram(name: "spinlock_check", scope: !6312, file: !6312, line: 324, type: !7006, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7009)
!7006 = !DISubroutineType(types: !7007)
!7007 = !{!7008, !4328}
!7008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!7009 = !{!7010}
!7010 = !DILocalVariable(name: "lock", arg: 1, scope: !7005, file: !6312, line: 324, type: !4328)
!7011 = !DILocation(line: 324, column: 67, scope: !7005)
!7012 = !DILocation(line: 326, column: 10, scope: !7005)
!7013 = !DILocation(line: 326, column: 16, scope: !7005)
!7014 = !DILocation(line: 326, column: 2, scope: !7005)
!7015 = !DISubprogram(name: "snprintf", scope: !7016, file: !7016, line: 12, type: !7017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7016 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7017 = !DISubroutineType(types: !7018)
!7018 = !{!87, !1060, !177, !159, null}
!7019 = distinct !DISubprogram(name: "size_add", scope: !7020, file: !7020, line: 208, type: !7021, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7023)
!7020 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!7021 = !DISubroutineType(types: !7022)
!7022 = !{!177, !177, !177}
!7023 = !{!7024, !7025, !7026}
!7024 = !DILocalVariable(name: "addend1", arg: 1, scope: !7019, file: !7020, line: 208, type: !177)
!7025 = !DILocalVariable(name: "addend2", arg: 2, scope: !7019, file: !7020, line: 208, type: !177)
!7026 = !DILocalVariable(name: "bytes", scope: !7019, file: !7020, line: 210, type: !177)
!7027 = !DILocation(line: 208, column: 51, scope: !7019)
!7028 = !DILocation(line: 208, column: 67, scope: !7019)
!7029 = !DILocation(line: 210, column: 2, scope: !7019)
!7030 = !DILocation(line: 210, column: 9, scope: !7019)
!7031 = !DILocation(line: 212, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7019, file: !7020, line: 212, column: 6)
!7033 = !DILocation(line: 212, column: 6, scope: !7019)
!7034 = !DILocation(line: 213, column: 3, scope: !7032)
!7035 = !DILocation(line: 215, column: 9, scope: !7019)
!7036 = !DILocation(line: 215, column: 2, scope: !7019)
!7037 = !DILocation(line: 216, column: 1, scope: !7019)
!7038 = distinct !DISubprogram(name: "size_mul", scope: !7020, file: !7020, line: 189, type: !7021, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7039)
!7039 = !{!7040, !7041, !7042}
!7040 = !DILocalVariable(name: "factor1", arg: 1, scope: !7038, file: !7020, line: 189, type: !177)
!7041 = !DILocalVariable(name: "factor2", arg: 2, scope: !7038, file: !7020, line: 189, type: !177)
!7042 = !DILocalVariable(name: "bytes", scope: !7038, file: !7020, line: 191, type: !177)
!7043 = !DILocation(line: 189, column: 51, scope: !7038)
!7044 = !DILocation(line: 189, column: 67, scope: !7038)
!7045 = !DILocation(line: 191, column: 2, scope: !7038)
!7046 = !DILocation(line: 191, column: 9, scope: !7038)
!7047 = !DILocation(line: 193, column: 6, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !7038, file: !7020, line: 193, column: 6)
!7049 = !DILocation(line: 193, column: 6, scope: !7038)
!7050 = !DILocation(line: 194, column: 3, scope: !7048)
!7051 = !DILocation(line: 196, column: 9, scope: !7038)
!7052 = !DILocation(line: 196, column: 2, scope: !7038)
!7053 = !DILocation(line: 197, column: 1, scope: !7038)
!7054 = !DISubprogram(name: "mutex_lock", scope: !764, file: !764, line: 227, type: !7055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7055 = !DISubroutineType(types: !7056)
!7056 = !{null, !7057}
!7057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!7058 = !DISubprogram(name: "kmem_cache_create", scope: !6803, file: !6803, line: 189, type: !7059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7059 = !DISubroutineType(types: !7060)
!7060 = !{!853, !159, !7, !7, !5844, !1581}
!7061 = !DISubprogram(name: "mutex_unlock", scope: !764, file: !764, line: 246, type: !7055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7062 = distinct !DISubprogram(name: "__must_check_overflow", scope: !7020, file: !7020, line: 51, type: !7063, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7065)
!7063 = !DISubroutineType(types: !7064)
!7064 = !{!1102, !1102}
!7065 = !{!7066}
!7066 = !DILocalVariable(name: "overflow", arg: 1, scope: !7062, file: !7020, line: 51, type: !1102)
!7067 = !DILocation(line: 51, column: 60, scope: !7062)
!7068 = !DILocation(line: 53, column: 9, scope: !7062)
!7069 = !{i8 0, i8 2}
!7070 = !DILocation(line: 53, column: 2, scope: !7062)
!7071 = distinct !DISubprogram(name: "atomic_long_set", scope: !6734, file: !6734, line: 3193, type: !7072, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7074)
!7072 = !DISubroutineType(types: !7073)
!7073 = !{null, !3590, !345}
!7074 = !{!7075, !7076}
!7075 = !DILocalVariable(name: "v", arg: 1, scope: !7071, file: !6734, line: 3193, type: !3590)
!7076 = !DILocalVariable(name: "i", arg: 2, scope: !7071, file: !6734, line: 3193, type: !345)
!7077 = !DILocation(line: 3193, column: 32, scope: !7071)
!7078 = !DILocation(line: 3193, column: 40, scope: !7071)
!7079 = !DILocation(line: 3195, column: 26, scope: !7071)
!7080 = !DILocation(line: 3195, column: 2, scope: !7071)
!7081 = !DILocation(line: 3196, column: 22, scope: !7071)
!7082 = !DILocation(line: 3196, column: 25, scope: !7071)
!7083 = !DILocation(line: 3196, column: 2, scope: !7071)
!7084 = !DILocation(line: 3197, column: 1, scope: !7071)
!7085 = !DISubprogram(name: "proc_alloc_inum", scope: !914, file: !914, line: 53, type: !7086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7086 = !DISubroutineType(types: !7087)
!7087 = !{!87, !1712}
!7088 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6412, file: !6412, line: 80, type: !6413, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7089)
!7089 = !{!7090, !7091}
!7090 = !DILocalVariable(name: "v", arg: 1, scope: !7088, file: !6412, line: 80, type: !6415)
!7091 = !DILocalVariable(name: "size", arg: 2, scope: !7088, file: !6412, line: 80, type: !177)
!7092 = !DILocation(line: 80, column: 74, scope: !7088)
!7093 = !DILocation(line: 80, column: 84, scope: !7088)
!7094 = !DILocation(line: 82, column: 20, scope: !7088)
!7095 = !DILocation(line: 82, column: 23, scope: !7088)
!7096 = !DILocation(line: 82, column: 2, scope: !7088)
!7097 = !DILocation(line: 83, column: 2, scope: !7088)
!7098 = !DILocation(line: 84, column: 1, scope: !7088)
!7099 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !757, file: !757, line: 76, type: !7072, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7100)
!7100 = !{!7101, !7102}
!7101 = !DILocalVariable(name: "v", arg: 1, scope: !7099, file: !757, line: 76, type: !3590)
!7102 = !DILocalVariable(name: "i", arg: 2, scope: !7099, file: !757, line: 76, type: !345)
!7103 = !DILocation(line: 76, column: 36, scope: !7099)
!7104 = !DILocation(line: 76, column: 44, scope: !7099)
!7105 = !DILocation(line: 79, column: 19, scope: !7099)
!7106 = !DILocation(line: 79, column: 22, scope: !7099)
!7107 = !DILocation(line: 79, column: 2, scope: !7099)
!7108 = !DILocation(line: 83, column: 1, scope: !7099)
!7109 = distinct !DISubprogram(name: "kasan_check_write", scope: !7110, file: !7110, line: 44, type: !7111, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7113)
!7110 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7111 = !DISubroutineType(types: !7112)
!7112 = !{!1102, !6415, !7}
!7113 = !{!7114, !7115}
!7114 = !DILocalVariable(name: "p", arg: 1, scope: !7109, file: !7110, line: 44, type: !6415)
!7115 = !DILocalVariable(name: "size", arg: 2, scope: !7109, file: !7110, line: 44, type: !7)
!7116 = !DILocation(line: 44, column: 59, scope: !7109)
!7117 = !DILocation(line: 44, column: 75, scope: !7109)
!7118 = !DILocation(line: 46, column: 2, scope: !7109)
!7119 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7120, file: !7120, line: 229, type: !7121, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7123)
!7120 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7121 = !DISubroutineType(types: !7122)
!7122 = !{null, !6415, !177, !87}
!7123 = !{!7124, !7125, !7126}
!7124 = !DILocalVariable(name: "ptr", arg: 1, scope: !7119, file: !7120, line: 229, type: !6415)
!7125 = !DILocalVariable(name: "size", arg: 2, scope: !7119, file: !7120, line: 229, type: !177)
!7126 = !DILocalVariable(name: "type", arg: 3, scope: !7119, file: !7120, line: 230, type: !87)
!7127 = !DILocation(line: 229, column: 60, scope: !7119)
!7128 = !DILocation(line: 229, column: 72, scope: !7119)
!7129 = !DILocation(line: 230, column: 15, scope: !7119)
!7130 = !DILocation(line: 230, column: 23, scope: !7119)
!7131 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !6753, file: !6753, line: 2600, type: !7132, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7135)
!7132 = !DISubroutineType(types: !7133)
!7133 = !{null, !7134, !471}
!7134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!7135 = !{!7136, !7137}
!7136 = !DILocalVariable(name: "v", arg: 1, scope: !7131, file: !6753, line: 2600, type: !7134)
!7137 = !DILocalVariable(name: "i", arg: 2, scope: !7131, file: !6753, line: 2600, type: !471)
!7138 = !DILocation(line: 2600, column: 30, scope: !7131)
!7139 = !DILocation(line: 2600, column: 37, scope: !7131)
!7140 = !DILocation(line: 2602, column: 20, scope: !7131)
!7141 = !DILocation(line: 2602, column: 23, scope: !7131)
!7142 = !DILocation(line: 2602, column: 2, scope: !7131)
!7143 = !DILocation(line: 2603, column: 1, scope: !7131)
!7144 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !7145, file: !7145, line: 18, type: !7132, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7146)
!7145 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7146 = !{!7147, !7148}
!7147 = !DILocalVariable(name: "v", arg: 1, scope: !7144, file: !7145, line: 18, type: !7134)
!7148 = !DILocalVariable(name: "i", arg: 2, scope: !7144, file: !7145, line: 18, type: !471)
!7149 = !DILocation(line: 18, column: 59, scope: !7144)
!7150 = !DILocation(line: 18, column: 66, scope: !7144)
!7151 = !DILocation(line: 20, column: 2, scope: !7144)
!7152 = !DILocation(line: 20, column: 2, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7144, file: !7145, line: 20, column: 2)
!7154 = !DILocation(line: 21, column: 1, scope: !7144)
!7155 = distinct !DISubprogram(name: "atomic_set", scope: !6734, file: !6734, line: 65, type: !7156, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7158)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{null, !6737, !87}
!7158 = !{!7159, !7160}
!7159 = !DILocalVariable(name: "v", arg: 1, scope: !7155, file: !6734, line: 65, type: !6737)
!7160 = !DILocalVariable(name: "i", arg: 2, scope: !7155, file: !6734, line: 65, type: !87)
!7161 = !DILocation(line: 65, column: 22, scope: !7155)
!7162 = !DILocation(line: 65, column: 29, scope: !7155)
!7163 = !DILocation(line: 67, column: 26, scope: !7155)
!7164 = !DILocation(line: 67, column: 2, scope: !7155)
!7165 = !DILocation(line: 68, column: 17, scope: !7155)
!7166 = !DILocation(line: 68, column: 20, scope: !7155)
!7167 = !DILocation(line: 68, column: 2, scope: !7155)
!7168 = !DILocation(line: 69, column: 1, scope: !7155)
!7169 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6753, file: !6753, line: 488, type: !7156, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7170)
!7170 = !{!7171, !7172}
!7171 = !DILocalVariable(name: "v", arg: 1, scope: !7169, file: !6753, line: 488, type: !6737)
!7172 = !DILocalVariable(name: "i", arg: 2, scope: !7169, file: !6753, line: 488, type: !87)
!7173 = !DILocation(line: 488, column: 26, scope: !7169)
!7174 = !DILocation(line: 488, column: 33, scope: !7169)
!7175 = !DILocation(line: 490, column: 18, scope: !7169)
!7176 = !DILocation(line: 490, column: 21, scope: !7169)
!7177 = !DILocation(line: 490, column: 2, scope: !7169)
!7178 = !DILocation(line: 491, column: 1, scope: !7169)
!7179 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6764, file: !6764, line: 26, type: !7156, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7180)
!7180 = !{!7181, !7182}
!7181 = !DILocalVariable(name: "v", arg: 1, scope: !7179, file: !6764, line: 26, type: !6737)
!7182 = !DILocalVariable(name: "i", arg: 2, scope: !7179, file: !6764, line: 26, type: !87)
!7183 = !DILocation(line: 26, column: 55, scope: !7179)
!7184 = !DILocation(line: 26, column: 62, scope: !7179)
!7185 = !DILocation(line: 28, column: 2, scope: !7179)
!7186 = !DILocation(line: 28, column: 2, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7179, file: !6764, line: 28, column: 2)
!7188 = !DILocation(line: 29, column: 1, scope: !7179)
!7189 = !DISubprogram(name: "dec_ucount", scope: !276, file: !276, line: 122, type: !7190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7190 = !DISubroutineType(types: !7191)
!7191 = !{null, !968, !275}
!7192 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !263, file: !263, line: 313, type: !7193, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7195)
!7193 = !DISubroutineType(types: !7194)
!7194 = !{!1102, !6144, !1760}
!7195 = !{!7196, !7197}
!7196 = !DILocalVariable(name: "r", arg: 1, scope: !7192, file: !263, line: 313, type: !6144)
!7197 = !DILocalVariable(name: "oldp", arg: 2, scope: !7192, file: !263, line: 313, type: !1760)
!7198 = !DILocation(line: 313, column: 69, scope: !7192)
!7199 = !DILocation(line: 313, column: 77, scope: !7192)
!7200 = !DILocation(line: 315, column: 36, scope: !7192)
!7201 = !DILocation(line: 315, column: 39, scope: !7192)
!7202 = !DILocation(line: 315, column: 9, scope: !7192)
!7203 = !DILocation(line: 315, column: 2, scope: !7192)
!7204 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !263, file: !263, line: 270, type: !7205, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7207)
!7205 = !DISubroutineType(types: !7206)
!7206 = !{!1102, !87, !6144, !1760}
!7207 = !{!7208, !7209, !7210, !7211}
!7208 = !DILocalVariable(name: "i", arg: 1, scope: !7204, file: !263, line: 270, type: !87)
!7209 = !DILocalVariable(name: "r", arg: 2, scope: !7204, file: !263, line: 270, type: !6144)
!7210 = !DILocalVariable(name: "oldp", arg: 3, scope: !7204, file: !263, line: 270, type: !1760)
!7211 = !DILocalVariable(name: "old", scope: !7204, file: !263, line: 272, type: !87)
!7212 = !DILocation(line: 270, column: 61, scope: !7204)
!7213 = !DILocation(line: 270, column: 76, scope: !7204)
!7214 = !DILocation(line: 270, column: 84, scope: !7204)
!7215 = !DILocation(line: 272, column: 2, scope: !7204)
!7216 = !DILocation(line: 272, column: 6, scope: !7204)
!7217 = !DILocation(line: 272, column: 37, scope: !7204)
!7218 = !DILocation(line: 272, column: 41, scope: !7204)
!7219 = !DILocation(line: 272, column: 44, scope: !7204)
!7220 = !DILocation(line: 272, column: 12, scope: !7204)
!7221 = !DILocation(line: 274, column: 6, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7204, file: !263, line: 274, column: 6)
!7223 = !DILocation(line: 274, column: 6, scope: !7204)
!7224 = !DILocation(line: 275, column: 11, scope: !7222)
!7225 = !DILocation(line: 275, column: 4, scope: !7222)
!7226 = !DILocation(line: 275, column: 9, scope: !7222)
!7227 = !DILocation(line: 275, column: 3, scope: !7222)
!7228 = !DILocation(line: 277, column: 6, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7204, file: !263, line: 277, column: 6)
!7230 = !DILocation(line: 277, column: 13, scope: !7229)
!7231 = !DILocation(line: 277, column: 10, scope: !7229)
!7232 = !DILocation(line: 277, column: 6, scope: !7204)
!7233 = !DILocation(line: 278, column: 3, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7229, file: !263, line: 277, column: 16)
!7235 = !DILocation(line: 278, column: 3, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7234, file: !263, line: 278, column: 3)
!7237 = !DILocation(line: 278, column: 3, scope: !7238)
!7238 = distinct !DILexicalBlock(scope: !7236, file: !263, line: 278, column: 3)
!7239 = !DILocation(line: 278, column: 3, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7236, file: !263, line: 278, column: 3)
!7241 = !DILocation(line: 278, column: 3, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7240, file: !263, line: 278, column: 3)
!7243 = !{i64 2150051856}
!7244 = !DILocation(line: 279, column: 3, scope: !7234)
!7245 = !DILocation(line: 282, column: 6, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7204, file: !263, line: 282, column: 6)
!7247 = !DILocation(line: 282, column: 6, scope: !7204)
!7248 = !DILocation(line: 283, column: 26, scope: !7246)
!7249 = !DILocation(line: 283, column: 3, scope: !7246)
!7250 = !DILocation(line: 285, column: 2, scope: !7204)
!7251 = !DILocation(line: 286, column: 1, scope: !7204)
!7252 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6734, file: !6734, line: 397, type: !6735, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7253)
!7253 = !{!7254, !7255}
!7254 = !DILocalVariable(name: "i", arg: 1, scope: !7252, file: !6734, line: 397, type: !87)
!7255 = !DILocalVariable(name: "v", arg: 2, scope: !7252, file: !6734, line: 397, type: !6737)
!7256 = !DILocation(line: 397, column: 30, scope: !7252)
!7257 = !DILocation(line: 397, column: 43, scope: !7252)
!7258 = !DILocation(line: 399, column: 2, scope: !7252)
!7259 = !DILocation(line: 399, column: 2, scope: !7260)
!7260 = distinct !DILexicalBlock(scope: !7252, file: !6734, line: 399, column: 2)
!7261 = !DILocation(line: 400, column: 31, scope: !7252)
!7262 = !DILocation(line: 400, column: 2, scope: !7252)
!7263 = !DILocation(line: 401, column: 38, scope: !7252)
!7264 = !DILocation(line: 401, column: 41, scope: !7252)
!7265 = !DILocation(line: 401, column: 9, scope: !7252)
!7266 = !DILocation(line: 401, column: 2, scope: !7252)
!7267 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6753, file: !6753, line: 928, type: !6735, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7268)
!7268 = !{!7269, !7270}
!7269 = !DILocalVariable(name: "i", arg: 1, scope: !7267, file: !6753, line: 928, type: !87)
!7270 = !DILocalVariable(name: "v", arg: 2, scope: !7267, file: !6753, line: 928, type: !6737)
!7271 = !DILocation(line: 928, column: 34, scope: !7267)
!7272 = !DILocation(line: 928, column: 47, scope: !7267)
!7273 = !DILocation(line: 936, column: 31, scope: !7267)
!7274 = !DILocation(line: 936, column: 34, scope: !7267)
!7275 = !DILocation(line: 936, column: 9, scope: !7267)
!7276 = !DILocation(line: 936, column: 2, scope: !7267)
!7277 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6764, file: !6764, line: 101, type: !6735, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7278)
!7278 = !{!7279, !7280, !7281}
!7279 = !DILocalVariable(name: "i", arg: 1, scope: !7277, file: !6764, line: 101, type: !87)
!7280 = !DILocalVariable(name: "v", arg: 2, scope: !7277, file: !6764, line: 101, type: !6737)
!7281 = !DILocalVariable(name: "__ret", scope: !7282, file: !6764, line: 103, type: !87)
!7282 = distinct !DILexicalBlock(scope: !7277, file: !6764, line: 103, column: 9)
!7283 = !DILocation(line: 101, column: 54, scope: !7277)
!7284 = !DILocation(line: 101, column: 67, scope: !7277)
!7285 = !DILocation(line: 103, column: 9, scope: !7282)
!7286 = !{i64 2147973460, i64 2147973499, i64 2147973520, i64 2147973557, i64 2147973580, i64 2147973589}
!7287 = !DILocation(line: 103, column: 9, scope: !7277)
!7288 = !DILocation(line: 103, column: 2, scope: !7277)
!7289 = !DISubprogram(name: "proc_free_inum", scope: !914, file: !914, line: 54, type: !7290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7290 = !DISubroutineType(types: !7291)
!7291 = !{null, !7}
!7292 = !DISubprogram(name: "call_rcu", scope: !6327, file: !6327, line: 42, type: !7293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7293 = !DISubroutineType(types: !7294)
!7294 = !{null, !746, !7295}
!7295 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !167, line: 238, baseType: !748)
!7296 = distinct !DISubprogram(name: "delayed_free_pidns", scope: !3, file: !3, line: 127, type: !749, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7297)
!7297 = !{!7298, !7299, !7300}
!7298 = !DILocalVariable(name: "p", arg: 1, scope: !7296, file: !3, line: 127, type: !746)
!7299 = !DILocalVariable(name: "ns", scope: !7296, file: !3, line: 129, type: !831)
!7300 = !DILocalVariable(name: "__mptr", scope: !7301, file: !3, line: 129, type: !163)
!7301 = distinct !DILexicalBlock(scope: !7296, file: !3, line: 129, column: 29)
!7302 = !DILocation(line: 127, column: 49, scope: !7296)
!7303 = !DILocation(line: 129, column: 2, scope: !7296)
!7304 = !DILocation(line: 129, column: 24, scope: !7296)
!7305 = !DILocation(line: 129, column: 29, scope: !7301)
!7306 = !DILocation(line: 129, column: 29, scope: !7296)
!7307 = !DILocation(line: 131, column: 21, scope: !7296)
!7308 = !DILocation(line: 131, column: 25, scope: !7296)
!7309 = !DILocation(line: 131, column: 2, scope: !7296)
!7310 = !DILocation(line: 132, column: 14, scope: !7296)
!7311 = !DILocation(line: 132, column: 18, scope: !7296)
!7312 = !DILocation(line: 132, column: 2, scope: !7296)
!7313 = !DILocation(line: 134, column: 18, scope: !7296)
!7314 = !DILocation(line: 134, column: 33, scope: !7296)
!7315 = !DILocation(line: 134, column: 2, scope: !7296)
!7316 = !DILocation(line: 135, column: 1, scope: !7296)
!7317 = distinct !DISubprogram(name: "put_user_ns", scope: !276, file: !276, line: 203, type: !7318, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7320)
!7318 = !DISubroutineType(types: !7319)
!7319 = !{null, !862}
!7320 = !{!7321}
!7321 = !DILocalVariable(name: "ns", arg: 1, scope: !7317, file: !276, line: 203, type: !862)
!7322 = !DILocation(line: 203, column: 55, scope: !7317)
!7323 = !DILocation(line: 205, column: 1, scope: !7317)
!7324 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !7325, file: !7325, line: 29, type: !7326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7325 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7326 = !DISubroutineType(types: !7327)
!7327 = !{null, !7008}
!7328 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !7325, file: !7325, line: 41, type: !7326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7329 = !DISubprogram(name: "__rcu_read_lock", scope: !6327, file: !6327, line: 74, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7330 = distinct !DISubprogram(name: "sigismember", scope: !6357, file: !6357, line: 82, type: !7331, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7334)
!7331 = !DISubroutineType(types: !7332)
!7332 = !{!87, !7333, !87}
!7333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!7334 = !{!7335, !7336, !7337}
!7335 = !DILocalVariable(name: "set", arg: 1, scope: !7330, file: !6357, line: 82, type: !7333)
!7336 = !DILocalVariable(name: "_sig", arg: 2, scope: !7330, file: !6357, line: 82, type: !87)
!7337 = !DILocalVariable(name: "sig", scope: !7330, file: !6357, line: 84, type: !181)
!7338 = !DILocation(line: 82, column: 41, scope: !7330)
!7339 = !DILocation(line: 82, column: 50, scope: !7330)
!7340 = !DILocation(line: 84, column: 2, scope: !7330)
!7341 = !DILocation(line: 84, column: 16, scope: !7330)
!7342 = !DILocation(line: 84, column: 22, scope: !7330)
!7343 = !DILocation(line: 84, column: 27, scope: !7330)
!7344 = !DILocation(line: 86, column: 15, scope: !7345)
!7345 = distinct !DILexicalBlock(scope: !7330, file: !6357, line: 85, column: 6)
!7346 = !DILocation(line: 86, column: 20, scope: !7345)
!7347 = !DILocation(line: 86, column: 30, scope: !7345)
!7348 = !DILocation(line: 86, column: 27, scope: !7345)
!7349 = !DILocation(line: 86, column: 12, scope: !7345)
!7350 = !DILocation(line: 86, column: 10, scope: !7345)
!7351 = !DILocation(line: 89, column: 1, scope: !7330)
!7352 = !DILocation(line: 86, column: 3, scope: !7345)
!7353 = !DISubprogram(name: "__rcu_read_unlock", scope: !6327, file: !6327, line: 75, type: !2048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7354 = distinct !DISubprogram(name: "clear_bit", scope: !7355, file: !7355, line: 39, type: !7356, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7360)
!7355 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7356 = !DISubroutineType(types: !7357)
!7357 = !{null, !345, !7358}
!7358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7359, size: 64)
!7359 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!7360 = !{!7361, !7362}
!7361 = !DILocalVariable(name: "nr", arg: 1, scope: !7354, file: !7355, line: 39, type: !345)
!7362 = !DILocalVariable(name: "addr", arg: 2, scope: !7354, file: !7355, line: 39, type: !7358)
!7363 = !DILocation(line: 39, column: 44, scope: !7354)
!7364 = !DILocation(line: 39, column: 72, scope: !7354)
!7365 = !DILocation(line: 41, column: 26, scope: !7354)
!7366 = !DILocation(line: 41, column: 33, scope: !7354)
!7367 = !DILocation(line: 41, column: 31, scope: !7354)
!7368 = !DILocation(line: 41, column: 2, scope: !7354)
!7369 = !DILocation(line: 42, column: 17, scope: !7354)
!7370 = !DILocation(line: 42, column: 21, scope: !7354)
!7371 = !DILocation(line: 42, column: 2, scope: !7354)
!7372 = !DILocation(line: 43, column: 1, scope: !7354)
!7373 = distinct !DISubprogram(name: "arch_clear_bit", scope: !7374, file: !7374, line: 72, type: !7356, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7375)
!7374 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7375 = !{!7376, !7377}
!7376 = !DILocalVariable(name: "nr", arg: 1, scope: !7373, file: !7374, line: 72, type: !345)
!7377 = !DILocalVariable(name: "addr", arg: 2, scope: !7373, file: !7374, line: 72, type: !7358)
!7378 = !DILocation(line: 72, column: 21, scope: !7373)
!7379 = !DILocation(line: 72, column: 49, scope: !7373)
!7380 = !DILocation(line: 74, column: 27, scope: !7381)
!7381 = distinct !DILexicalBlock(scope: !7373, file: !7374, line: 74, column: 6)
!7382 = !DILocation(line: 74, column: 6, scope: !7381)
!7383 = !DILocation(line: 74, column: 6, scope: !7373)
!7384 = !DILocation(line: 76, column: 6, scope: !7385)
!7385 = distinct !DILexicalBlock(scope: !7381, file: !7374, line: 74, column: 32)
!7386 = !DILocation(line: 77, column: 13, scope: !7385)
!7387 = !DILocation(line: 77, column: 12, scope: !7385)
!7388 = !DILocation(line: 75, column: 3, scope: !7385)
!7389 = !{i64 2148745159, i64 2148745198, i64 2148745219, i64 2148745256, i64 2148745279, i64 2148745149}
!7390 = !DILocation(line: 78, column: 2, scope: !7385)
!7391 = !DILocation(line: 80, column: 8, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7381, file: !7374, line: 78, column: 9)
!7393 = !DILocation(line: 80, column: 32, scope: !7392)
!7394 = !DILocation(line: 79, column: 3, scope: !7392)
!7395 = !{i64 2148745444, i64 2148745483, i64 2148745504, i64 2148745541, i64 2148745564, i64 2148745434}
!7396 = !DILocation(line: 82, column: 1, scope: !7373)
!7397 = distinct !DISubprogram(name: "to_pid_ns", scope: !3, file: !3, line: 349, type: !7398, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7400)
!7398 = !DISubroutineType(types: !7399)
!7399 = !{!831, !923}
!7400 = !{!7401, !7402}
!7401 = !DILocalVariable(name: "ns", arg: 1, scope: !7397, file: !3, line: 349, type: !923)
!7402 = !DILocalVariable(name: "__mptr", scope: !7403, file: !3, line: 351, type: !163)
!7403 = distinct !DILexicalBlock(scope: !7397, file: !3, line: 351, column: 9)
!7404 = !DILocation(line: 349, column: 65, scope: !7397)
!7405 = !DILocation(line: 351, column: 9, scope: !7403)
!7406 = !DILocation(line: 351, column: 9, scope: !7397)
!7407 = !DILocation(line: 351, column: 2, scope: !7397)
!7408 = !DISubprogram(name: "ns_capable", scope: !3628, file: !3628, line: 149, type: !7409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7409 = !DISubroutineType(types: !7410)
!7410 = !{!1102, !862, !87}
!7411 = distinct !DISubprogram(name: "task_lock", scope: !6385, file: !6385, line: 220, type: !4542, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7412)
!7412 = !{!7413}
!7413 = !DILocalVariable(name: "p", arg: 1, scope: !7411, file: !6385, line: 220, type: !401)
!7414 = !DILocation(line: 220, column: 50, scope: !7411)
!7415 = !DILocation(line: 222, column: 13, scope: !7411)
!7416 = !DILocation(line: 222, column: 16, scope: !7411)
!7417 = !DILocation(line: 222, column: 2, scope: !7411)
!7418 = !DILocation(line: 223, column: 1, scope: !7411)
!7419 = distinct !DISubprogram(name: "task_unlock", scope: !6385, file: !6385, line: 225, type: !4542, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7420)
!7420 = !{!7421}
!7421 = !DILocalVariable(name: "p", arg: 1, scope: !7419, file: !6385, line: 225, type: !401)
!7422 = !DILocation(line: 225, column: 52, scope: !7419)
!7423 = !DILocation(line: 227, column: 15, scope: !7419)
!7424 = !DILocation(line: 227, column: 18, scope: !7419)
!7425 = !DILocation(line: 227, column: 2, scope: !7419)
!7426 = !DILocation(line: 228, column: 1, scope: !7419)
!7427 = distinct !DISubprogram(name: "spin_lock", scope: !6312, file: !6312, line: 349, type: !6313, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7428)
!7428 = !{!7429}
!7429 = !DILocalVariable(name: "lock", arg: 1, scope: !7427, file: !6312, line: 349, type: !4328)
!7430 = !DILocation(line: 349, column: 51, scope: !7427)
!7431 = !DILocation(line: 351, column: 2, scope: !7427)
!7432 = !DILocation(line: 352, column: 1, scope: !7427)
!7433 = !DISubprogram(name: "_raw_spin_lock", scope: !7325, file: !7325, line: 22, type: !7326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7434 = distinct !DISubprogram(name: "spin_unlock", scope: !6312, file: !6312, line: 389, type: !6313, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7435)
!7435 = !{!7436}
!7436 = !DILocalVariable(name: "lock", arg: 1, scope: !7434, file: !6312, line: 389, type: !4328)
!7437 = !DILocation(line: 389, column: 53, scope: !7434)
!7438 = !DILocation(line: 391, column: 2, scope: !7434)
!7439 = !DILocation(line: 392, column: 1, scope: !7434)
!7440 = !DISubprogram(name: "_raw_spin_unlock", scope: !7325, file: !7325, line: 39, type: !7326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7441 = distinct !DISubprogram(name: "register_pid_ns_sysctl_table_vm", scope: !5885, file: !5885, line: 46, type: !2048, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7442 = !DILocation(line: 48, column: 2, scope: !7441)
!7443 = !DILocation(line: 49, column: 1, scope: !7441)
!7444 = !DISubprogram(name: "register_sysctl_sz", scope: !155, file: !155, line: 232, type: !7445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7445 = !DISubroutineType(types: !7446)
!7446 = !{!4874, !159, !175, !177}
!7447 = distinct !DISubprogram(name: "pid_mfd_noexec_dointvec_minmax", scope: !5885, file: !5885, line: 8, type: !173, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7448)
!7448 = !{!7449, !7450, !7451, !7452, !7453, !7454, !7455, !7456, !7457, !7458, !7459, !7461}
!7449 = !DILocalVariable(name: "table", arg: 1, scope: !7447, file: !5885, line: 8, type: !175)
!7450 = !DILocalVariable(name: "write", arg: 2, scope: !7447, file: !5885, line: 9, type: !87)
!7451 = !DILocalVariable(name: "buf", arg: 3, scope: !7447, file: !5885, line: 9, type: !163)
!7452 = !DILocalVariable(name: "lenp", arg: 4, scope: !7447, file: !5885, line: 9, type: !176)
!7453 = !DILocalVariable(name: "ppos", arg: 5, scope: !7447, file: !5885, line: 9, type: !182)
!7454 = !DILocalVariable(name: "ns", scope: !7447, file: !5885, line: 11, type: !831)
!7455 = !DILocalVariable(name: "table_copy", scope: !7447, file: !5885, line: 12, type: !156)
!7456 = !DILocalVariable(name: "err", scope: !7447, file: !5885, line: 13, type: !87)
!7457 = !DILocalVariable(name: "scope", scope: !7447, file: !5885, line: 13, type: !87)
!7458 = !DILocalVariable(name: "parent_scope", scope: !7447, file: !5885, line: 13, type: !87)
!7459 = !DILocalVariable(name: "__UNIQUE_ID___x315", scope: !7460, file: !5885, line: 23, type: !87)
!7460 = distinct !DILexicalBlock(scope: !7447, file: !5885, line: 23, column: 10)
!7461 = !DILocalVariable(name: "__UNIQUE_ID___y316", scope: !7460, file: !5885, line: 23, type: !87)
!7462 = !DILocation(line: 8, column: 61, scope: !7447)
!7463 = !DILocation(line: 9, column: 6, scope: !7447)
!7464 = !DILocation(line: 9, column: 19, scope: !7447)
!7465 = !DILocation(line: 9, column: 32, scope: !7447)
!7466 = !DILocation(line: 9, column: 46, scope: !7447)
!7467 = !DILocation(line: 11, column: 2, scope: !7447)
!7468 = !DILocation(line: 11, column: 24, scope: !7447)
!7469 = !DILocation(line: 11, column: 48, scope: !7447)
!7470 = !DILocation(line: 11, column: 29, scope: !7447)
!7471 = !DILocation(line: 12, column: 2, scope: !7447)
!7472 = !DILocation(line: 12, column: 19, scope: !7447)
!7473 = !DILocation(line: 13, column: 2, scope: !7447)
!7474 = !DILocation(line: 13, column: 6, scope: !7447)
!7475 = !DILocation(line: 13, column: 11, scope: !7447)
!7476 = !DILocation(line: 13, column: 18, scope: !7447)
!7477 = !DILocation(line: 15, column: 6, scope: !7478)
!7478 = distinct !DILexicalBlock(scope: !7447, file: !5885, line: 15, column: 6)
!7479 = !DILocation(line: 15, column: 12, scope: !7478)
!7480 = !DILocation(line: 15, column: 27, scope: !7478)
!7481 = !DILocation(line: 15, column: 31, scope: !7478)
!7482 = !DILocation(line: 15, column: 16, scope: !7478)
!7483 = !DILocation(line: 15, column: 6, scope: !7447)
!7484 = !DILocation(line: 16, column: 3, scope: !7478)
!7485 = !DILocation(line: 18, column: 16, scope: !7447)
!7486 = !DILocation(line: 18, column: 15, scope: !7447)
!7487 = !DILocation(line: 21, column: 42, scope: !7447)
!7488 = !DILocation(line: 21, column: 46, scope: !7447)
!7489 = !DILocation(line: 21, column: 17, scope: !7447)
!7490 = !DILocation(line: 21, column: 15, scope: !7447)
!7491 = !DILocation(line: 23, column: 10, scope: !7460)
!7492 = !DILocation(line: 23, column: 10, scope: !7493)
!7493 = distinct !DILexicalBlock(scope: !7460, file: !5885, line: 23, column: 10)
!7494 = !DILocation(line: 23, column: 10, scope: !7495)
!7495 = distinct !DILexicalBlock(scope: !7493, file: !5885, line: 23, column: 10)
!7496 = !DILocation(line: 23, column: 10, scope: !7447)
!7497 = !DILocation(line: 23, column: 8, scope: !7447)
!7498 = !DILocation(line: 25, column: 13, scope: !7447)
!7499 = !DILocation(line: 25, column: 18, scope: !7447)
!7500 = !DILocation(line: 26, column: 13, scope: !7447)
!7501 = !DILocation(line: 26, column: 20, scope: !7447)
!7502 = !DILocation(line: 28, column: 42, scope: !7447)
!7503 = !DILocation(line: 28, column: 49, scope: !7447)
!7504 = !DILocation(line: 28, column: 54, scope: !7447)
!7505 = !DILocation(line: 28, column: 60, scope: !7447)
!7506 = !DILocation(line: 28, column: 8, scope: !7447)
!7507 = !DILocation(line: 28, column: 6, scope: !7447)
!7508 = !DILocation(line: 29, column: 7, scope: !7509)
!7509 = distinct !DILexicalBlock(scope: !7447, file: !5885, line: 29, column: 6)
!7510 = !DILocation(line: 29, column: 11, scope: !7509)
!7511 = !DILocation(line: 29, column: 14, scope: !7509)
!7512 = !DILocation(line: 29, column: 6, scope: !7447)
!7513 = !DILocation(line: 30, column: 3, scope: !7509)
!7514 = !DILocation(line: 30, column: 3, scope: !7515)
!7515 = distinct !DILexicalBlock(scope: !7509, file: !5885, line: 30, column: 3)
!7516 = !DILocation(line: 30, column: 3, scope: !7517)
!7517 = distinct !DILexicalBlock(scope: !7515, file: !5885, line: 30, column: 3)
!7518 = !DILocation(line: 30, column: 3, scope: !7519)
!7519 = distinct !DILexicalBlock(scope: !7515, file: !5885, line: 30, column: 3)
!7520 = !DILocation(line: 31, column: 9, scope: !7447)
!7521 = !DILocation(line: 31, column: 2, scope: !7447)
!7522 = !DILocation(line: 32, column: 1, scope: !7447)
!7523 = !DISubprogram(name: "proc_dointvec_minmax", scope: !155, file: !155, line: 72, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
