; ModuleID = 'kernel/utsname.c'
source_filename = "kernel/utsname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [48 x i8] }
%struct.anon.17 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.13 }
%struct.kernel_cap_t = type { i64 }
%union.anon.13 = type { %struct.callback_head }

@.str = private unnamed_addr constant [17 x i8] c"kernel/utsname.c\00", align 1, !dbg !0
@uts_ns_cache = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !7
@.str.1 = private unnamed_addr constant [4 x i8] c"uts\00", align 1, !dbg !1946
@utsns_operations = hidden constant %struct.proc_ns_operations { ptr @.str.1, ptr null, i32 67108864, ptr @utsns_get, ptr @utsns_put, ptr @utsns_install, ptr @utsns_owner, ptr null }, align 8, !dbg !1949
@.str.2 = private unnamed_addr constant [14 x i8] c"uts_namespace\00", align 1, !dbg !1951
@uts_sem = external dso_local global %struct.rw_semaphore, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_utsname(i64 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !1968 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  %new_ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1972, metadata !DIExpression()), !dbg !1976
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !1973, metadata !DIExpression()), !dbg !1977
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ns) #9, !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %new_ns, metadata !1975, metadata !DIExpression()), !dbg !1980
  br label %do.body, !dbg !1981

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %old_ns.addr, align 8, !dbg !1982
  %tobool = icmp ne ptr %0, null, !dbg !1982
  %lnot = xor i1 %tobool, true, !dbg !1982
  %lnot1 = xor i1 %lnot, true, !dbg !1982
  %lnot2 = xor i1 %lnot1, true, !dbg !1982
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1982
  %conv = sext i32 %lnot.ext to i64, !dbg !1982
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1982
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1982
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1985

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1982

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1986

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !1988

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1988

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1986

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 94, i32 0, i64 12) #9, !dbg !1990, !srcloc !1992
  br label %do.cond7, !dbg !1990

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !1990

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !1986

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !1986

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !1986

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !1985

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !1985

do.end12:                                         ; preds = %do.cond11
  %1 = load ptr, ptr %old_ns.addr, align 8, !dbg !1993
  call void @get_uts_ns(ptr noundef %1) #10, !dbg !1994
  %2 = load i64, ptr %flags.addr, align 8, !dbg !1995
  %and = and i64 %2, 67108864, !dbg !1997
  %tobool13 = icmp ne i64 %and, 0, !dbg !1997
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1998

if.then14:                                        ; preds = %do.end12
  %3 = load ptr, ptr %old_ns.addr, align 8, !dbg !1999
  store ptr %3, ptr %retval, align 8, !dbg !2000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000

if.end15:                                         ; preds = %do.end12
  %4 = load ptr, ptr %user_ns.addr, align 8, !dbg !2001
  %5 = load ptr, ptr %old_ns.addr, align 8, !dbg !2002
  %call = call ptr @clone_uts_ns(ptr noundef %4, ptr noundef %5) #10, !dbg !2003
  store ptr %call, ptr %new_ns, align 8, !dbg !2004
  %6 = load ptr, ptr %old_ns.addr, align 8, !dbg !2005
  call void @put_uts_ns(ptr noundef %6) #10, !dbg !2006
  %7 = load ptr, ptr %new_ns, align 8, !dbg !2007
  store ptr %7, ptr %retval, align 8, !dbg !2008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2008

cleanup:                                          ; preds = %if.end15, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ns) #9, !dbg !2009
  %8 = load ptr, ptr %retval, align 8, !dbg !2009
  ret ptr %8, !dbg !2009
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_uts_ns(ptr noundef %ns) #4 align 16 !dbg !2010 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2016
  %ns1 = getelementptr inbounds %struct.uts_namespace, ptr %0, i32 0, i32 3, !dbg !2017
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !2018
  call void @refcount_inc(ptr noundef %count) #10, !dbg !2019
  ret void, !dbg !2020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @clone_uts_ns(ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !2021 {
entry:
  %retval = alloca ptr, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !2025, metadata !DIExpression()), !dbg !2033
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !2026, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #9, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2027, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #9, !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !2028, metadata !DIExpression()), !dbg !2038
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !2039
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2029, metadata !DIExpression()), !dbg !2040
  store i32 -28, ptr %err, align 4, !dbg !2041
  %0 = load ptr, ptr %user_ns.addr, align 8, !dbg !2042
  %call = call ptr @inc_uts_namespaces(ptr noundef %0) #10, !dbg !2043
  store ptr %call, ptr %ucounts, align 8, !dbg !2044
  %1 = load ptr, ptr %ucounts, align 8, !dbg !2045
  %tobool = icmp ne ptr %1, null, !dbg !2045
  br i1 %tobool, label %if.end, label %if.then, !dbg !2047

if.then:                                          ; preds = %entry
  br label %fail, !dbg !2048

if.end:                                           ; preds = %entry
  store i32 -12, ptr %err, align 4, !dbg !2049
  %call1 = call ptr @create_uts_ns() #10, !dbg !2050
  store ptr %call1, ptr %ns, align 8, !dbg !2051
  %2 = load ptr, ptr %ns, align 8, !dbg !2052
  %tobool2 = icmp ne ptr %2, null, !dbg !2052
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2054

if.then3:                                         ; preds = %if.end
  br label %fail_dec, !dbg !2055

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %ns, align 8, !dbg !2056
  %ns5 = getelementptr inbounds %struct.uts_namespace, ptr %3, i32 0, i32 3, !dbg !2057
  %call6 = call i32 @ns_alloc_inum(ptr noundef %ns5) #10, !dbg !2058
  store i32 %call6, ptr %err, align 4, !dbg !2059
  %4 = load i32, ptr %err, align 4, !dbg !2060
  %tobool7 = icmp ne i32 %4, 0, !dbg !2060
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2062

if.then8:                                         ; preds = %if.end4
  br label %fail_free, !dbg !2063

if.end9:                                          ; preds = %if.end4
  %5 = load ptr, ptr %ucounts, align 8, !dbg !2064
  %6 = load ptr, ptr %ns, align 8, !dbg !2065
  %ucounts10 = getelementptr inbounds %struct.uts_namespace, ptr %6, i32 0, i32 2, !dbg !2066
  store ptr %5, ptr %ucounts10, align 8, !dbg !2067
  %7 = load ptr, ptr %ns, align 8, !dbg !2068
  %ns11 = getelementptr inbounds %struct.uts_namespace, ptr %7, i32 0, i32 3, !dbg !2069
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns11, i32 0, i32 1, !dbg !2070
  store ptr @utsns_operations, ptr %ops, align 8, !dbg !2071
  call void @down_read(ptr noundef @uts_sem) #10, !dbg !2072
  %8 = load ptr, ptr %ns, align 8, !dbg !2073
  %name = getelementptr inbounds %struct.uts_namespace, ptr %8, i32 0, i32 0, !dbg !2074
  %9 = load ptr, ptr %old_ns.addr, align 8, !dbg !2075
  %name12 = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 0, !dbg !2076
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 %name12, i64 390, i1 false), !dbg !2077
  %10 = load ptr, ptr %user_ns.addr, align 8, !dbg !2078
  %call13 = call ptr @get_user_ns(ptr noundef %10) #10, !dbg !2079
  %11 = load ptr, ptr %ns, align 8, !dbg !2080
  %user_ns14 = getelementptr inbounds %struct.uts_namespace, ptr %11, i32 0, i32 1, !dbg !2081
  store ptr %call13, ptr %user_ns14, align 8, !dbg !2082
  call void @up_read(ptr noundef @uts_sem) #10, !dbg !2083
  %12 = load ptr, ptr %ns, align 8, !dbg !2084
  store ptr %12, ptr %retval, align 8, !dbg !2085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2085

fail_free:                                        ; preds = %if.then8
  call void @llvm.dbg.label(metadata !2030), !dbg !2086
  %13 = load ptr, ptr @uts_ns_cache, align 8, !dbg !2087
  %14 = load ptr, ptr %ns, align 8, !dbg !2088
  call void @kmem_cache_free(ptr noundef %13, ptr noundef %14) #10, !dbg !2089
  br label %fail_dec, !dbg !2089

fail_dec:                                         ; preds = %fail_free, %if.then3
  call void @llvm.dbg.label(metadata !2031), !dbg !2090
  %15 = load ptr, ptr %ucounts, align 8, !dbg !2091
  call void @dec_uts_namespaces(ptr noundef %15) #10, !dbg !2092
  br label %fail, !dbg !2092

fail:                                             ; preds = %fail_dec, %if.then
  call void @llvm.dbg.label(metadata !2032), !dbg !2093
  %16 = load i32, ptr %err, align 4, !dbg !2094
  %conv = sext i32 %16 to i64, !dbg !2094
  %call15 = call ptr @ERR_PTR(i64 noundef %conv) #10, !dbg !2095
  store ptr %call15, ptr %retval, align 8, !dbg !2096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2096

cleanup:                                          ; preds = %fail, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !2097
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #9, !dbg !2097
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #9, !dbg !2097
  %17 = load ptr, ptr %retval, align 8, !dbg !2097
  ret ptr %17, !dbg !2097
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_uts_ns(ptr noundef %ns) #4 align 16 !dbg !2098 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2100, metadata !DIExpression()), !dbg !2101
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2102
  %ns1 = getelementptr inbounds %struct.uts_namespace, ptr %0, i32 0, i32 3, !dbg !2104
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !2105
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #10, !dbg !2106
  br i1 %call, label %if.then, label %if.end, !dbg !2107

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !2108
  call void @free_uts_ns(ptr noundef %1) #10, !dbg !2109
  br label %if.end, !dbg !2109

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_uts_ns(ptr noundef %ns) #0 align 16 !dbg !2111 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2113, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2115
  %ucounts = getelementptr inbounds %struct.uts_namespace, ptr %0, i32 0, i32 2, !dbg !2116
  %1 = load ptr, ptr %ucounts, align 8, !dbg !2116
  call void @dec_uts_namespaces(ptr noundef %1) #10, !dbg !2117
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !2118
  %user_ns = getelementptr inbounds %struct.uts_namespace, ptr %2, i32 0, i32 1, !dbg !2119
  %3 = load ptr, ptr %user_ns, align 8, !dbg !2119
  call void @put_user_ns(ptr noundef %3) #10, !dbg !2120
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !2121
  %ns1 = getelementptr inbounds %struct.uts_namespace, ptr %4, i32 0, i32 3, !dbg !2121
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 2, !dbg !2121
  %5 = load i32, ptr %inum, align 8, !dbg !2121
  call void @proc_free_inum(i32 noundef %5) #10, !dbg !2121
  %6 = load ptr, ptr @uts_ns_cache, align 8, !dbg !2122
  %7 = load ptr, ptr %ns.addr, align 8, !dbg !2123
  call void @kmem_cache_free(ptr noundef %6, ptr noundef %7) #10, !dbg !2124
  ret void, !dbg !2125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_uts_namespaces(ptr noundef %ucounts) #0 align 16 !dbg !2126 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !2132
  call void @dec_ucount(ptr noundef %0, i32 noundef 2) #10, !dbg !2133
  ret void, !dbg !2134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #4 align 16 !dbg !2135 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2139, metadata !DIExpression()), !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2142 dso_local void @proc_free_inum(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2145 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @utsns_get(ptr noundef %task) #0 align 16 !dbg !2149 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #9, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2152, metadata !DIExpression()), !dbg !2156
  store ptr null, ptr %ns, align 8, !dbg !2156
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #9, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !2153, metadata !DIExpression()), !dbg !2158
  %0 = load ptr, ptr %task.addr, align 8, !dbg !2159
  call void @task_lock(ptr noundef %0) #10, !dbg !2160
  %1 = load ptr, ptr %task.addr, align 8, !dbg !2161
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !2162
  %2 = load ptr, ptr %nsproxy1, align 8, !dbg !2162
  store ptr %2, ptr %nsproxy, align 8, !dbg !2163
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !2164
  %tobool = icmp ne ptr %3, null, !dbg !2164
  br i1 %tobool, label %if.then, label %if.end, !dbg !2166

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !2167
  %uts_ns = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 1, !dbg !2169
  %5 = load ptr, ptr %uts_ns, align 8, !dbg !2169
  store ptr %5, ptr %ns, align 8, !dbg !2170
  %6 = load ptr, ptr %ns, align 8, !dbg !2171
  call void @get_uts_ns(ptr noundef %6) #10, !dbg !2172
  br label %if.end, !dbg !2173

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %task.addr, align 8, !dbg !2174
  call void @task_unlock(ptr noundef %7) #10, !dbg !2175
  %8 = load ptr, ptr %ns, align 8, !dbg !2176
  %tobool2 = icmp ne ptr %8, null, !dbg !2176
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2176

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %ns, align 8, !dbg !2177
  %ns3 = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 3, !dbg !2178
  br label %cond.end, !dbg !2176

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !2176
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #9, !dbg !2179
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #9, !dbg !2179
  ret ptr %cond, !dbg !2180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @utsns_put(ptr noundef %ns) #0 align 16 !dbg !2181 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2183, metadata !DIExpression()), !dbg !2184
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2185
  %call = call ptr @to_uts_ns(ptr noundef %0) #10, !dbg !2186
  call void @put_uts_ns(ptr noundef %call) #10, !dbg !2187
  ret void, !dbg !2188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @utsns_install(ptr noundef %nsset, ptr noundef %new) #0 align 16 !dbg !2189 {
entry:
  %retval = alloca i32, align 4
  %nsset.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsset, ptr %nsset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsset.addr, metadata !2191, metadata !DIExpression()), !dbg !2195
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #9, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !2193, metadata !DIExpression()), !dbg !2198
  %0 = load ptr, ptr %nsset.addr, align 8, !dbg !2199
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1, !dbg !2200
  %1 = load ptr, ptr %nsproxy1, align 8, !dbg !2200
  store ptr %1, ptr %nsproxy, align 8, !dbg !2198
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #9, !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2194, metadata !DIExpression()), !dbg !2202
  %2 = load ptr, ptr %new.addr, align 8, !dbg !2203
  %call = call ptr @to_uts_ns(ptr noundef %2) #10, !dbg !2204
  store ptr %call, ptr %ns, align 8, !dbg !2202
  %3 = load ptr, ptr %ns, align 8, !dbg !2205
  %user_ns = getelementptr inbounds %struct.uts_namespace, ptr %3, i32 0, i32 1, !dbg !2207
  %4 = load ptr, ptr %user_ns, align 8, !dbg !2207
  %call2 = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 21) #10, !dbg !2208
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !2209

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %nsset.addr, align 8, !dbg !2210
  %cred = getelementptr inbounds %struct.nsset, ptr %5, i32 0, i32 3, !dbg !2211
  %6 = load ptr, ptr %cred, align 8, !dbg !2211
  %user_ns3 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 22, !dbg !2212
  %7 = load ptr, ptr %user_ns3, align 8, !dbg !2212
  %call4 = call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #10, !dbg !2213
  br i1 %call4, label %if.end, label %if.then, !dbg !2214

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !2215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2215

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %ns, align 8, !dbg !2216
  call void @get_uts_ns(ptr noundef %8) #10, !dbg !2217
  %9 = load ptr, ptr %nsproxy, align 8, !dbg !2218
  %uts_ns = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 1, !dbg !2219
  %10 = load ptr, ptr %uts_ns, align 8, !dbg !2219
  call void @put_uts_ns(ptr noundef %10) #10, !dbg !2220
  %11 = load ptr, ptr %ns, align 8, !dbg !2221
  %12 = load ptr, ptr %nsproxy, align 8, !dbg !2222
  %uts_ns5 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 1, !dbg !2223
  store ptr %11, ptr %uts_ns5, align 8, !dbg !2224
  store i32 0, ptr %retval, align 4, !dbg !2225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2225

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #9, !dbg !2226
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #9, !dbg !2226
  %13 = load i32, ptr %retval, align 4, !dbg !2226
  ret i32 %13, !dbg !2226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @utsns_owner(ptr noundef %ns) #0 align 16 !dbg !2227 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2229, metadata !DIExpression()), !dbg !2230
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2231
  %call = call ptr @to_uts_ns(ptr noundef %0) #10, !dbg !2232
  %user_ns = getelementptr inbounds %struct.uts_namespace, ptr %call, i32 0, i32 1, !dbg !2233
  %1 = load ptr, ptr %user_ns, align 8, !dbg !2233
  ret ptr %1, !dbg !2234
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @uts_ns_init() #6 section ".init.text" align 16 !dbg !2235 {
entry:
  %call = call ptr @kmem_cache_create_usercopy(ptr noundef @.str.2, i32 noundef 432, i32 noundef 0, i32 noundef 262144, i32 noundef 0, i32 noundef 390, ptr noundef null) #10, !dbg !2238
  store ptr %call, ptr @uts_ns_cache, align 8, !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2241 dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !2247 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2252, metadata !DIExpression()), !dbg !2253
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2254
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #10, !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !2257 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2261, metadata !DIExpression()), !dbg !2263
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2262, metadata !DIExpression()), !dbg !2264
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2265
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2266
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !2269 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2273, metadata !DIExpression()), !dbg !2277
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2274, metadata !DIExpression()), !dbg !2278
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2275, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2276, metadata !DIExpression()), !dbg !2281
  %0 = load i32, ptr %i.addr, align 4, !dbg !2282
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2283
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2284
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #10, !dbg !2285
  store i32 %call, ptr %old, align 4, !dbg !2281
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2286
  %tobool = icmp ne ptr %2, null, !dbg !2286
  br i1 %tobool, label %if.then, label %if.end, !dbg !2288

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2289
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2290
  store i32 %3, ptr %4, align 4, !dbg !2291
  br label %if.end, !dbg !2292

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2293
  %tobool1 = icmp ne i32 %5, 0, !dbg !2293
  %lnot = xor i1 %tobool1, true, !dbg !2293
  %lnot2 = xor i1 %lnot, true, !dbg !2293
  %lnot3 = xor i1 %lnot2, true, !dbg !2293
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2293
  %conv = sext i32 %lnot.ext to i64, !dbg !2293
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2293
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2293
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2295

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2296
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #10, !dbg !2297
  br label %if.end18, !dbg !2297

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2298
  %cmp = icmp slt i32 %7, 0, !dbg !2298
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2298

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !2298
  %9 = load i32, ptr %i.addr, align 4, !dbg !2298
  %add = add i32 %8, %9, !dbg !2298
  %cmp7 = icmp slt i32 %add, 0, !dbg !2298
  br label %lor.end, !dbg !2298

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !2298
  %lnot11 = xor i1 %lnot9, true, !dbg !2298
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2298
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2298
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2298
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2298
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2300

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2301
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #10, !dbg !2302
  br label %if.end17, !dbg !2302

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !2303
  ret void, !dbg !2303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2304 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2310, metadata !DIExpression()), !dbg !2312
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2311, metadata !DIExpression()), !dbg !2313
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2314
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !2315
  %1 = load i32, ptr %i.addr, align 4, !dbg !2316
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2317
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #10, !dbg !2318
  ret i32 %call, !dbg !2319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2320 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !2323 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2331, metadata !DIExpression()), !dbg !2333
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2332, metadata !DIExpression()), !dbg !2334
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2335
  %1 = load i64, ptr %size.addr, align 8, !dbg !2336
  %conv = trunc i64 %1 to i32, !dbg !2336
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !2337
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2338
  %3 = load i64, ptr %size.addr, align 8, !dbg !2338
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2340 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2343, metadata !DIExpression()), !dbg !2345
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2344, metadata !DIExpression()), !dbg !2346
  %0 = load i32, ptr %i.addr, align 4, !dbg !2347
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2348
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #10, !dbg !2349
  ret i32 %call, !dbg !2350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2351 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2356, metadata !DIExpression()), !dbg !2358
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2357, metadata !DIExpression()), !dbg !2359
  ret i1 true, !dbg !2360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2361 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2366, metadata !DIExpression()), !dbg !2369
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2367, metadata !DIExpression()), !dbg !2370
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2368, metadata !DIExpression()), !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2373 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2376, metadata !DIExpression()), !dbg !2380
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2378, metadata !DIExpression()), !dbg !2382
  %0 = load i32, ptr %i.addr, align 4, !dbg !2382
  store i32 %0, ptr %__ret, align 4, !dbg !2382
  %1 = load i32, ptr %__ret, align 4, !dbg !2382
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2382
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2382
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !2382, !srcloc !2383
  store i32 %3, ptr %__ret, align 4, !dbg !2382
  %4 = load i32, ptr %__ret, align 4, !dbg !2382
  store i32 %4, ptr %tmp, align 4, !dbg !2382
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !2384
  %5 = load i32, ptr %tmp, align 4, !dbg !2382
  ret i32 %5, !dbg !2385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @inc_uts_namespaces(ptr noundef %ns) #0 align 16 !dbg !2386 {
entry:
  %ns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2390, metadata !DIExpression()), !dbg !2391
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2392
  br label %do.body, !dbg !2393

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2396

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #10, !dbg !2393
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !2393
  %1 = load ptr, ptr %cred, align 32, !dbg !2393
  store ptr %1, ptr %tmp, align 8, !dbg !2396
  %2 = load ptr, ptr %tmp, align 8, !dbg !2393
  %euid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 5, !dbg !2398
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !2398
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !2399
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !2399
  %call1 = call ptr @inc_ucount(ptr noundef %0, i32 %3, i32 noundef 2) #10, !dbg !2399
  ret ptr %call1, !dbg !2400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @create_uts_ns() #0 align 16 !dbg !2401 {
entry:
  %uts_ns = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %uts_ns) #9, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %uts_ns, metadata !2405, metadata !DIExpression()), !dbg !2407
  %0 = load ptr, ptr @uts_ns_cache, align 8, !dbg !2408
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #10, !dbg !2409
  store ptr %call, ptr %uts_ns, align 8, !dbg !2410
  %1 = load ptr, ptr %uts_ns, align 8, !dbg !2411
  %tobool = icmp ne ptr %1, null, !dbg !2411
  br i1 %tobool, label %if.then, label %if.end, !dbg !2414

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %uts_ns, align 8, !dbg !2415
  %ns = getelementptr inbounds %struct.uts_namespace, ptr %2, i32 0, i32 3, !dbg !2416
  %count = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3, !dbg !2417
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #10, !dbg !2418
  br label %if.end, !dbg !2418

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %uts_ns, align 8, !dbg !2419
  call void @llvm.lifetime.end.p0(i64 8, ptr %uts_ns) #9, !dbg !2420
  ret ptr %3, !dbg !2421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ns_alloc_inum(ptr noundef %ns) #4 align 16 !dbg !2422 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2426, metadata !DIExpression()), !dbg !2427
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2428
  %stashed = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 0, !dbg !2429
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #10, !dbg !2430
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !2431
  %inum = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2, !dbg !2432
  %call = call i32 @proc_alloc_inum(ptr noundef %inum) #10, !dbg !2433
  ret i32 %call, !dbg !2434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2435 dso_local void @down_read(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #4 align 16 !dbg !2439 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2443, metadata !DIExpression()), !dbg !2444
  ret ptr @init_user_ns, !dbg !2445
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2446 dso_local void @up_read(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !2447 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  %0 = load i64, ptr %error.addr, align 8, !dbg !2454
  %1 = inttoptr i64 %0 to ptr, !dbg !2455
  ret ptr %1, !dbg !2456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2457 dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !2460 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2465, metadata !DIExpression()), !dbg !2473
  br label %do.body, !dbg !2473

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2467, metadata !DIExpression()), !dbg !2474
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2474
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !2473
  br label %do.cond, !dbg !2474

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2474

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2471, metadata !DIExpression()), !dbg !2475
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !2475, !srcloc !2476
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2475
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2475
  %3 = inttoptr i64 %2 to ptr, !dbg !2475
  store ptr %3, ptr %tmp, align 8, !dbg !2475
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !2473
  %4 = load ptr, ptr %tmp, align 8, !dbg !2475
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2473
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2473
  store ptr %5, ptr %tmp1, align 8, !dbg !2473
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !2477
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2473
  ret ptr %6, !dbg !2478
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2479 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #4 align 16 !dbg !2482 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2486, metadata !DIExpression()), !dbg !2488
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2487, metadata !DIExpression()), !dbg !2489
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2490
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2491
  %1 = load i32, ptr %n.addr, align 4, !dbg !2492
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #10, !dbg !2493
  ret void, !dbg !2494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !2495 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2499, metadata !DIExpression()), !dbg !2501
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2500, metadata !DIExpression()), !dbg !2502
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2503
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #10, !dbg !2504
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2505
  %2 = load i32, ptr %i.addr, align 4, !dbg !2506
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #10, !dbg !2507
  ret void, !dbg !2508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !2509 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2511, metadata !DIExpression()), !dbg !2513
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2512, metadata !DIExpression()), !dbg !2514
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2515
  %1 = load i64, ptr %size.addr, align 8, !dbg !2516
  %conv = trunc i64 %1 to i32, !dbg !2516
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !2517
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2518
  %3 = load i64, ptr %size.addr, align 8, !dbg !2518
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !2518
  ret void, !dbg !2519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !2520 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2522, metadata !DIExpression()), !dbg !2524
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2523, metadata !DIExpression()), !dbg !2525
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2526
  %1 = load i32, ptr %i.addr, align 4, !dbg !2527
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #10, !dbg !2528
  ret void, !dbg !2529
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !2530 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2532, metadata !DIExpression()), !dbg !2534
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2533, metadata !DIExpression()), !dbg !2535
  br label %do.body, !dbg !2536

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2537
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2537
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2537
  store volatile i32 %0, ptr %counter, align 4, !dbg !2537
  br label %do.end, !dbg !2537

do.end:                                           ; preds = %do.body
  ret void, !dbg !2539
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #7 align 16 !dbg !2540 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2545, metadata !DIExpression()), !dbg !2547
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2546, metadata !DIExpression()), !dbg !2548
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2549
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #10, !dbg !2550
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2551
  %2 = load i64, ptr %i.addr, align 8, !dbg !2552
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #10, !dbg !2553
  ret void, !dbg !2554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2555 dso_local i32 @proc_alloc_inum(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #7 align 16 !dbg !2559 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2561, metadata !DIExpression()), !dbg !2563
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2562, metadata !DIExpression()), !dbg !2564
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2565
  %1 = load i64, ptr %i.addr, align 8, !dbg !2566
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #10, !dbg !2567
  ret void, !dbg !2568
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #7 align 16 !dbg !2569 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2574, metadata !DIExpression()), !dbg !2576
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2575, metadata !DIExpression()), !dbg !2577
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2578
  %1 = load i64, ptr %i.addr, align 8, !dbg !2579
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #10, !dbg !2580
  ret void, !dbg !2581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #7 align 16 !dbg !2582 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2585, metadata !DIExpression()), !dbg !2587
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2586, metadata !DIExpression()), !dbg !2588
  br label %do.body, !dbg !2589

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !2590
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2590
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !2590
  store volatile i64 %0, ptr %counter, align 8, !dbg !2590
  br label %do.end, !dbg !2590

do.end:                                           ; preds = %do.body
  ret void, !dbg !2592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !2593 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2599
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #10, !dbg !2600
  ret i1 %call, !dbg !2601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !2602 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2606, metadata !DIExpression()), !dbg !2608
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2607, metadata !DIExpression()), !dbg !2609
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2610
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2611
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !2612
  ret i1 %call, !dbg !2613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !2614 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2618, metadata !DIExpression()), !dbg !2622
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2619, metadata !DIExpression()), !dbg !2623
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2621, metadata !DIExpression()), !dbg !2626
  %0 = load i32, ptr %i.addr, align 4, !dbg !2627
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2628
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2629
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #10, !dbg !2630
  store i32 %call, ptr %old, align 4, !dbg !2626
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2631
  %tobool = icmp ne ptr %2, null, !dbg !2631
  br i1 %tobool, label %if.then, label %if.end, !dbg !2633

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2634
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2635
  store i32 %3, ptr %4, align 4, !dbg !2636
  br label %if.end, !dbg !2637

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2638
  %6 = load i32, ptr %i.addr, align 4, !dbg !2640
  %cmp = icmp eq i32 %5, %6, !dbg !2641
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !2642

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !2643

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2645

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2647

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2647

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2645

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2649

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2651

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2651

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2649, !srcloc !2653
  br label %do.cond7, !dbg !2649

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2649

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !2645

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !2645

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !2654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2654

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2655
  %cmp12 = icmp slt i32 %7, 0, !dbg !2655
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !2655

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !2655
  %9 = load i32, ptr %i.addr, align 4, !dbg !2655
  %sub = sub i32 %8, %9, !dbg !2655
  %cmp13 = icmp slt i32 %sub, 0, !dbg !2655
  br label %lor.end, !dbg !2655

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !2655
  %lnot14 = xor i1 %lnot, true, !dbg !2655
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2655
  %conv = sext i32 %lnot.ext to i64, !dbg !2655
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2655
  %tobool15 = icmp ne i64 %expval, 0, !dbg !2655
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2657

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2658
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #10, !dbg !2659
  br label %if.end17, !dbg !2659

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !2660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2660

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !2661
  %12 = load i1, ptr %retval, align 1, !dbg !2661
  ret i1 %12, !dbg !2661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2662 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2664, metadata !DIExpression()), !dbg !2666
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2665, metadata !DIExpression()), !dbg !2667
  br label %do.body, !dbg !2668

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2669

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2671
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !2672
  %1 = load i32, ptr %i.addr, align 4, !dbg !2673
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2674
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #10, !dbg !2675
  ret i32 %call, !dbg !2676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2677 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2679, metadata !DIExpression()), !dbg !2681
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2680, metadata !DIExpression()), !dbg !2682
  %0 = load i32, ptr %i.addr, align 4, !dbg !2683
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2684
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #10, !dbg !2685
  ret i32 %call, !dbg !2686
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !2687 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2689, metadata !DIExpression()), !dbg !2693
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2690, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2691, metadata !DIExpression()), !dbg !2695
  %0 = load i32, ptr %i.addr, align 4, !dbg !2695
  %sub = sub i32 0, %0, !dbg !2695
  store i32 %sub, ptr %__ret, align 4, !dbg !2695
  %1 = load i32, ptr %__ret, align 4, !dbg !2695
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2695
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2695
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !2695, !srcloc !2696
  store i32 %3, ptr %__ret, align 4, !dbg !2695
  %4 = load i32, ptr %__ret, align 4, !dbg !2695
  store i32 %4, ptr %tmp, align 4, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !2697
  %5 = load i32, ptr %tmp, align 4, !dbg !2695
  ret i32 %5, !dbg !2698
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2699 dso_local void @dec_ucount(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #4 align 16 !dbg !2702 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2707, metadata !DIExpression()), !dbg !2708
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2709
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !2710
  call void @spin_lock(ptr noundef %alloc_lock) #10, !dbg !2711
  ret void, !dbg !2712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #4 align 16 !dbg !2713 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2717
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !2718
  call void @spin_unlock(ptr noundef %alloc_lock) #10, !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !2721 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2729
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2729
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !2729
  ret void, !dbg !2730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2731 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !2736 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2740
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2740
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !2740
  ret void, !dbg !2741
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2742 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_uts_ns(ptr noundef %ns) #4 align 16 !dbg !2743 {
entry:
  %ns.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2748, metadata !DIExpression()), !dbg !2751
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !2751
  store ptr %0, ptr %__mptr, align 8, !dbg !2751
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2751
  %add.ptr = getelementptr i8, ptr %1, i64 -408, !dbg !2751
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !2752
  %2 = load ptr, ptr %tmp, align 8, !dbg !2751
  ret ptr %2, !dbg !2753
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2754 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!llvm.ident = !{!1967}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/utsname.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32a7b1d5d920e7b152d00555aa6f2371")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "uts_ns_cache", scope: !9, file: !2, line: 18, type: !1956, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.utsname.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/utsname\22 -D KBUILD_BASENAME=\22utsname\22 -D KBUILD_MODNAME=\22utsname\22 -D __KBUILD_MODNAME=kmod_utsname -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/utsname.ll kernel/utsname.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !152, globals: !1945, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !23, !30, !125, !133, !138}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !24, line: 51, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!27 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!28 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!29 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !32, file: !31, line: 147, baseType: !13, size: 32, elements: !122)
!31 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !31, line: 135, size: 512, elements: !33)
!33 = !{!34, !37, !39, !41, !45, !46, !62, !120, !121}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !32, file: !31, line: 136, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !31, line: 137, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !32, file: !31, line: 138, baseType: !40, size: 32, offset: 128)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !32, file: !31, line: 139, baseType: !42, size: 16, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 150, baseType: !30, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !32, file: !31, line: 151, baseType: !47, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !31, line: 64, baseType: !49)
!49 = !DISubroutineType(types: !50)
!50 = !{!40, !51, !40, !38, !52, !58}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 61, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !55, line: 72, baseType: !56)
!55 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !55, line: 16, baseType: !57)
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !43, line: 52, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !55, line: 88, baseType: !61)
!61 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !32, file: !31, line: 152, baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !31, line: 117, size: 256, elements: !65)
!65 = !{!66, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !64, file: !31, line: 118, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !43, line: 174, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 172, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !68, file: !43, line: 173, baseType: !40, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !64, file: !31, line: 119, baseType: !72, size: 192, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !73, line: 37, size: 192, elements: !75)
!75 = !{!76, !114}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !74, file: !73, line: 38, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !78, line: 29, baseType: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !78, line: 17, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 18, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 18, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !82, file: !78, line: 19, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !86, line: 14, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !85, file: !86, line: 15, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !90, line: 44, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !90, line: 14, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !90, line: 15, baseType: !94, size: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !90, line: 15, size: 32, elements: !95)
!95 = !{!96, !97, !107}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !90, line: 16, baseType: !67, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !90, line: 24, baseType: !98, size: 16)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !90, line: 24, size: 16, elements: !99)
!99 = !{!100, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !98, file: !90, line: 25, baseType: !101, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !102, line: 17, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 21, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !98, file: !90, line: 26, baseType: !101, size: 8, offset: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !90, line: 28, baseType: !108, size: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !90, line: 28, size: 32, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !108, file: !90, line: 29, baseType: !111, size: 16)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !102, line: 19, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 24, baseType: !44)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !108, file: !90, line: 30, baseType: !111, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !74, file: !73, line: 39, baseType: !115, size: 128, offset: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !43, line: 190, size: 128, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !43, line: 191, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !43, line: 191, baseType: !118, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !32, file: !31, line: 153, baseType: !38, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !32, file: !31, line: 154, baseType: !38, size: 64, offset: 448)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!124 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !126, line: 119, baseType: !13, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!129 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!130 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!131 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!132 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 10, baseType: !13, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "false", value: 0)
!137 = !DIEnumerator(name: "true", value: 1)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !139, line: 40, baseType: !13, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!141 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!142 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!143 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!144 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!145 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!146 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!147 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!148 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!149 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!150 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!151 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!152 = !{!153, !154, !1939, !38, !448, !57, !1940, !1941, !1943, !1113}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !43, line: 155, baseType: !13)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !157, line: 110, size: 1472, elements: !158)
!157 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!158 = !{!159, !168, !176, !183, !184, !185, !186, !187, !188, !189, !190, !199, !200, !201, !202, !203, !204, !356, !357, !358, !359, !360, !397, !1925, !1926, !1934}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !156, file: !157, line: 111, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !161, line: 13, baseType: !162)
!161 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !43, line: 181, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 179, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !43, line: 180, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !102, line: 22, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !104, line: 30, baseType: !61)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !156, file: !157, line: 112, baseType: !169, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !170, line: 23, baseType: !171)
!170 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 21, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !171, file: !170, line: 22, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !43, line: 37, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !55, line: 49, baseType: !13)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !156, file: !157, line: 113, baseType: !177, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !170, line: 28, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 26, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !170, line: 27, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !43, line: 38, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !55, line: 50, baseType: !13)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !156, file: !157, line: 114, baseType: !169, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !156, file: !157, line: 115, baseType: !177, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !156, file: !157, line: 116, baseType: !169, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !156, file: !157, line: 117, baseType: !177, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !156, file: !157, line: 118, baseType: !169, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !156, file: !157, line: 119, baseType: !177, size: 32, offset: 288)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !156, file: !157, line: 120, baseType: !13, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !156, file: !157, line: 121, baseType: !191, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !192, line: 24, baseType: !193)
!192 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 24, size: 64, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !192, line: 24, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !102, line: 23, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 31, baseType: !198)
!198 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !156, file: !157, line: 122, baseType: !191, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !156, file: !157, line: 123, baseType: !191, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !156, file: !157, line: 124, baseType: !191, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !156, file: !157, line: 125, baseType: !191, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !156, file: !157, line: 127, baseType: !105, size: 8, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !156, file: !157, line: 129, baseType: !205, size: 64, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !207, line: 195, size: 1728, elements: !208)
!207 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!208 = !{!209, !214, !219, !231, !245, !248, !249, !256, !257, !258, !259, !264, !265, !266, !268, !269, !318, !341}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !206, file: !207, line: 196, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !126, line: 113, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !126, line: 111, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !211, file: !126, line: 112, baseType: !67, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !206, file: !207, line: 197, baseType: !215, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !207, line: 28, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !43, line: 104, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !102, line: 20, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !104, line: 26, baseType: !40)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 198, baseType: !220, size: 192, offset: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 198, size: 192, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !220, file: !207, line: 199, baseType: !115, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !220, file: !207, line: 200, baseType: !224, size: 192, align: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !225, line: 5, size: 192, align: 64, elements: !226)
!225 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!226 = !{!227, !228, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !224, file: !225, line: 6, baseType: !57, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !224, file: !225, line: 7, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !224, file: !225, line: 8, baseType: !229, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !206, file: !207, line: 205, baseType: !232, size: 320, offset: 256)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !233, line: 48, size: 320, elements: !234)
!233 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!234 = !{!235, !236, !237, !242, !244}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !232, file: !233, line: 49, baseType: !160, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !232, file: !233, line: 55, baseType: !160, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !232, file: !233, line: 57, baseType: !238, size: 32, offset: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !239, line: 15, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !238, file: !239, line: 20, baseType: !67, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !232, file: !233, line: 59, baseType: !243, size: 32, offset: 160)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !86, line: 23, baseType: !85)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !232, file: !233, line: 60, baseType: !115, size: 128, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !206, file: !207, line: 206, baseType: !246, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !207, line: 206, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !206, file: !207, line: 207, baseType: !38, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 208, baseType: !250, size: 64, offset: 704)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 208, size: 64, elements: !251)
!251 = !{!252, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !250, file: !207, line: 209, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !254, line: 8, baseType: !167)
!254 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!255 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !250, file: !207, line: 210, baseType: !253, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !206, file: !207, line: 212, baseType: !253, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !206, file: !207, line: 213, baseType: !169, size: 32, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !206, file: !207, line: 214, baseType: !177, size: 32, offset: 864)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !206, file: !207, line: 215, baseType: !260, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !207, line: 31, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 110, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !102, line: 21, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 27, baseType: !13)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !206, file: !207, line: 216, baseType: !44, size: 16, offset: 928)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !206, file: !207, line: 217, baseType: !44, size: 16, offset: 944)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !206, file: !207, line: 221, baseType: !267, size: 16, offset: 960)
!267 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !207, line: 228, baseType: !57, size: 64, offset: 1024)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 245, baseType: !270, size: 320, offset: 1088)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 245, size: 320, elements: !271)
!271 = !{!272, !309}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !270, file: !207, line: 246, baseType: !273, size: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !207, line: 114, size: 320, elements: !274)
!274 = !{!275, !276, !288, !291, !308}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !273, file: !207, line: 116, baseType: !57, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !207, line: 117, baseType: !277, size: 64, offset: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !207, line: 117, size: 64, elements: !278)
!278 = !{!279, !287}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !207, line: 118, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !207, line: 118, size: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !280, file: !207, line: 120, baseType: !111, size: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !280, file: !207, line: 121, baseType: !284, size: 48, offset: 16)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 6)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !277, file: !207, line: 127, baseType: !57, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !207, line: 129, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !207, line: 102, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !273, file: !207, line: 130, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !207, line: 108, size: 192, elements: !294)
!294 = !{!295, !304, !305}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !293, file: !207, line: 109, baseType: !296, size: 128, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !43, line: 232, size: 128, align: 64, elements: !297)
!297 = !{!298, !300}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !43, line: 233, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !296, file: !43, line: 234, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !299}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !293, file: !207, line: 110, baseType: !210, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !293, file: !207, line: 111, baseType: !306, size: 8, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !307)
!307 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !273, file: !207, line: 131, baseType: !35, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !207, line: 247, baseType: !310, size: 320)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !207, line: 247, size: 320, elements: !311)
!311 = !{!312, !313, !314, !315, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !310, file: !207, line: 248, baseType: !57, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !310, file: !207, line: 249, baseType: !57, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !310, file: !207, line: 250, baseType: !289, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !310, file: !207, line: 251, baseType: !292, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !310, file: !207, line: 252, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 260, baseType: !319, size: 256, offset: 1408)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 260, size: 256, elements: !320)
!320 = !{!321, !329}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !319, file: !207, line: 261, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !207, line: 134, size: 256, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !322, file: !207, line: 135, baseType: !38, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !322, file: !207, line: 136, baseType: !326, size: 256)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 4)
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !207, line: 262, baseType: !330, size: 256)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !207, line: 262, size: 256, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !330, file: !207, line: 264, baseType: !115, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !330, file: !207, line: 265, baseType: !334, size: 128, offset: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !335, line: 22, size: 128, elements: !336)
!335 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!336 = !{!337, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !334, file: !335, line: 23, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !335, line: 23, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !334, file: !335, line: 24, baseType: !57, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !206, file: !207, line: 280, baseType: !342, size: 64, offset: 1664)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !207, line: 176, size: 192, elements: !344)
!344 = !{!345, !354, !355}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !343, file: !207, line: 177, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !207, line: 171, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!40, !205, !350, !352, !205}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !343, file: !207, line: 178, baseType: !205, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !343, file: !207, line: 179, baseType: !289, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !156, file: !157, line: 130, baseType: !205, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !156, file: !157, line: 131, baseType: !205, size: 64, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !156, file: !157, line: 132, baseType: !205, size: 64, offset: 960)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !156, file: !157, line: 135, baseType: !38, size: 64, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !156, file: !157, line: 137, baseType: !361, size: 64, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !363, line: 14, size: 1088, elements: !364)
!363 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!364 = !{!365, !366, !375, !376, !377, !384, !385, !386}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !362, file: !363, line: 15, baseType: !210, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !362, file: !363, line: 17, baseType: !367, size: 320, offset: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !368, line: 22, size: 320, elements: !369)
!368 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!369 = !{!370, !371, !372, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !367, file: !368, line: 23, baseType: !243, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !368, line: 24, baseType: !166, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !367, file: !368, line: 26, baseType: !115, size: 128, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !367, file: !368, line: 28, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !362, file: !363, line: 19, baseType: !57, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !362, file: !363, line: 20, baseType: !160, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !362, file: !363, line: 23, baseType: !378, size: 128, offset: 512)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !43, line: 198, size: 128, elements: !379)
!379 = !{!380, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !43, line: 199, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !378, file: !43, line: 199, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !362, file: !363, line: 24, baseType: !169, size: 32, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !362, file: !363, line: 29, baseType: !160, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !362, file: !363, line: 36, baseType: !387, size: 320, offset: 768)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !388, line: 15, size: 320, elements: !389)
!388 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!389 = !{!390, !391, !392, !393, !394, !395, !396}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !387, file: !388, line: 16, baseType: !243, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !387, file: !388, line: 18, baseType: !40, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !387, file: !388, line: 19, baseType: !40, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !387, file: !388, line: 20, baseType: !40, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !387, file: !388, line: 21, baseType: !40, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !387, file: !388, line: 22, baseType: !57, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !388, line: 23, baseType: !57, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !156, file: !157, line: 138, baseType: !398, size: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !139, line: 68, size: 4800, elements: !400)
!400 = !{!401, !423, !424, !425, !426, !427, !428, !429, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1919, !1920, !1921, !1923}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !399, file: !139, line: 69, baseType: !402, size: 576)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !139, line: 23, size: 576, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !402, file: !139, line: 24, baseType: !262, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !139, line: 25, baseType: !406, size: 512, offset: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !139, line: 25, size: 512, elements: !407)
!407 = !{!408, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !406, file: !139, line: 26, baseType: !409, size: 480)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 480, elements: !415)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !139, line: 17, size: 96, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !410, file: !139, line: 18, baseType: !262, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !410, file: !139, line: 19, baseType: !262, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !139, line: 20, baseType: !262, size: 32, offset: 64)
!415 = !{!416}
!416 = !DISubrange(count: 5)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !139, line: 27, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !139, line: 27, size: 128, elements: !419)
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !418, file: !139, line: 28, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !418, file: !139, line: 29, baseType: !421, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !399, file: !139, line: 70, baseType: !402, size: 576, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !399, file: !139, line: 71, baseType: !402, size: 576, offset: 1152)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !399, file: !139, line: 72, baseType: !398, size: 64, offset: 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !399, file: !139, line: 73, baseType: !40, size: 32, offset: 1792)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !399, file: !139, line: 74, baseType: !169, size: 32, offset: 1824)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !399, file: !139, line: 75, baseType: !177, size: 32, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !399, file: !139, line: 76, baseType: !430, size: 192, offset: 1920)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !431, line: 9, size: 192, elements: !432)
!431 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!432 = !{!433, !434, !1852, !1853}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !430, file: !431, line: 10, baseType: !160, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !430, file: !431, line: 11, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !438, line: 16, size: 512, elements: !439)
!438 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!439 = !{!440, !441, !442, !443, !1829, !1833, !1844, !1848}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !438, line: 17, baseType: !35, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !437, file: !438, line: 18, baseType: !35, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !438, line: 19, baseType: !40, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !437, file: !438, line: 20, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !450, line: 746, size: 58368, elements: !451)
!450 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!451 = !{!452, !460, !461, !462, !463, !464, !465, !466, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !537, !548, !648, !652, !655, !686, !687, !688, !689, !700, !702, !703, !704, !705, !706, !707, !718, !719, !722, !723, !724, !725, !726, !727, !728, !729, !736, !737, !744, !745, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !983, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !1019, !1021, !1022, !1023, !1035, !1037, !1038, !1039, !1040, !1041, !1042, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1068, !1074, !1075, !1076, !1077, !1078, !1082, !1085, !1092, !1097, !1100, !1103, !1106, !1163, !1166, !1169, !1175, !1176, !1177, !1183, !1184, !1185, !1186, !1187, !1190, !1191, !1192, !1201, !1209, !1210, !1211, !1212, !1213, !1218, !1219, !1220, !1223, !1224, !1227, !1230, !1233, !1236, !1239, !1240, !1327, !1338, !1339, !1340, !1341, !1347, !1352, !1353, !1354, !1357, !1358, !1361, !1364, !1365, !1368, !1369, !1370, !1373, !1374, !1375, !1378, !1379, !1380, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1412, !1415, !1483, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1495, !1567, !1569, !1570, !1571, !1572, !1573, !1585, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1602, !1603, !1604}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !449, file: !450, line: 752, baseType: !453, size: 192)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !454, line: 56, size: 192, elements: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!455 = !{!456, !457, !458, !459}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !454, line: 57, baseType: !57, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !453, file: !454, line: 58, baseType: !57, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !453, file: !454, line: 59, baseType: !262, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !453, file: !454, line: 61, baseType: !262, size: 32, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !449, file: !450, line: 754, baseType: !13, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !449, file: !450, line: 767, baseType: !38, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !449, file: !450, line: 768, baseType: !210, size: 32, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !450, line: 770, baseType: !13, size: 32, offset: 352)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !449, file: !450, line: 771, baseType: !13, size: 32, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !449, file: !450, line: 774, baseType: !40, size: 32, offset: 416)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !449, file: !450, line: 775, baseType: !467, size: 128, offset: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !468, line: 58, size: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!469 = !{!470, !476, !481, !482}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !467, file: !468, line: 59, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !472, line: 60, size: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 61, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 60, baseType: !477, size: 32, offset: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 60, size: 32, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !477, file: !468, line: 61, baseType: !13, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !477, file: !468, line: 62, baseType: !67, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !467, file: !468, line: 65, baseType: !111, size: 16, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !467, file: !468, line: 65, baseType: !111, size: 16, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !449, file: !450, line: 776, baseType: !13, size: 32, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !449, file: !450, line: 777, baseType: !57, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !449, file: !450, line: 778, baseType: !448, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !449, file: !450, line: 787, baseType: !40, size: 32, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !449, file: !450, line: 788, baseType: !40, size: 32, offset: 800)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !449, file: !450, line: 790, baseType: !40, size: 32, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !449, file: !450, line: 792, baseType: !40, size: 32, offset: 864)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !449, file: !450, line: 793, baseType: !40, size: 32, offset: 896)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !449, file: !450, line: 794, baseType: !40, size: 32, offset: 928)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !449, file: !450, line: 795, baseType: !13, size: 32, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !449, file: !450, line: 797, baseType: !494, size: 2048, offset: 1024)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !450, line: 551, size: 2048, elements: !495)
!495 = !{!496, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !516, !519, !520, !521}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !494, file: !450, line: 553, baseType: !497, size: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !450, line: 411, size: 128, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !497, file: !450, line: 412, baseType: !57, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !497, file: !450, line: 413, baseType: !262, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !494, file: !450, line: 554, baseType: !224, size: 192, align: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !494, file: !450, line: 555, baseType: !196, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !494, file: !450, line: 556, baseType: !196, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !494, file: !450, line: 558, baseType: !115, size: 128, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !494, file: !450, line: 559, baseType: !13, size: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !494, file: !450, line: 561, baseType: !196, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !494, file: !450, line: 562, baseType: !196, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !494, file: !450, line: 563, baseType: !196, size: 64, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !494, file: !450, line: 564, baseType: !196, size: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !494, file: !450, line: 565, baseType: !166, size: 64, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !494, file: !450, line: 566, baseType: !196, size: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !494, file: !450, line: 568, baseType: !196, size: 64, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !494, file: !450, line: 571, baseType: !40, size: 32, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !494, file: !450, line: 572, baseType: !515, size: 64, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !494, file: !450, line: 574, baseType: !517, size: 64, offset: 1216)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !450, line: 49, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !494, file: !450, line: 576, baseType: !517, size: 64, offset: 1280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !494, file: !450, line: 578, baseType: !57, size: 64, offset: 1344)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !494, file: !450, line: 588, baseType: !522, size: 512, align: 512, offset: 1536)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !450, line: 497, size: 512, align: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !522, file: !450, line: 498, baseType: !196, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !522, file: !450, line: 499, baseType: !196, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !522, file: !450, line: 500, baseType: !196, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !522, file: !450, line: 501, baseType: !262, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !522, file: !450, line: 502, baseType: !262, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !522, file: !450, line: 503, baseType: !57, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !522, file: !450, line: 504, baseType: !57, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !522, file: !450, line: 505, baseType: !57, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !522, file: !450, line: 506, baseType: !533, size: 64, align: 64, offset: 448)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !450, line: 445, size: 64, align: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !533, file: !450, line: 446, baseType: !13, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !533, file: !450, line: 447, baseType: !13, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !449, file: !450, line: 798, baseType: !538, size: 384, offset: 3072)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !450, line: 592, size: 384, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !538, file: !450, line: 593, baseType: !115, size: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !538, file: !450, line: 594, baseType: !57, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !538, file: !450, line: 595, baseType: !57, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !538, file: !450, line: 596, baseType: !13, size: 32, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !538, file: !450, line: 597, baseType: !44, size: 16, offset: 288)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !538, file: !450, line: 598, baseType: !44, size: 16, offset: 304)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !538, file: !450, line: 600, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !449, file: !450, line: 799, baseType: !549, size: 1792, offset: 3456)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !450, line: 610, size: 1792, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !645, !646}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !549, file: !450, line: 611, baseType: !224, size: 192, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !549, file: !450, line: 618, baseType: !196, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !549, file: !450, line: 619, baseType: !196, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !549, file: !450, line: 620, baseType: !196, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !549, file: !450, line: 621, baseType: !196, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !549, file: !450, line: 622, baseType: !196, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !549, file: !450, line: 629, baseType: !166, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !549, file: !450, line: 630, baseType: !196, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !450, line: 631, baseType: !13, size: 32, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !549, file: !450, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !549, file: !450, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !549, file: !450, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !549, file: !450, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !549, file: !450, line: 662, baseType: !565, size: 512, offset: 704)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !566)
!566 = !{!567, !575, !576, !581, !641, !642, !643, !644}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !565, file: !12, line: 119, baseType: !568, size: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !569, line: 9, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !569, line: 10, baseType: !224, size: 192, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !568, file: !569, line: 11, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !574, line: 29, baseType: !166)
!574 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !565, file: !12, line: 120, baseType: !573, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !565, file: !12, line: 121, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!11, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !565, file: !12, line: 122, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !584)
!584 = !{!585, !610, !611, !614, !624, !625, !636, !640}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !583, file: !12, line: 160, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !587, file: !12, line: 216, baseType: !243, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !587, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !587, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !587, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !587, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !587, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !587, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !587, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !587, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !587, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !587, file: !12, line: 227, baseType: !44, size: 16, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !587, file: !12, line: 228, baseType: !44, size: 16, offset: 208)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !587, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !587, file: !12, line: 235, baseType: !573, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !587, file: !12, line: 236, baseType: !580, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !587, file: !12, line: 237, baseType: !573, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !587, file: !12, line: 238, baseType: !580, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !587, file: !12, line: 239, baseType: !607, size: 4096, align: 512, offset: 512)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 4096, align: 512, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 8)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !583, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !583, file: !12, line: 162, baseType: !612, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !43, line: 32, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !55, line: 96, baseType: !40)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !583, file: !12, line: 163, baseType: !615, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !616, line: 274, baseType: !617)
!616 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !616, line: 274, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !617, file: !616, line: 274, baseType: !620, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !616, line: 69, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !616, line: 64, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !621, file: !616, line: 65, baseType: !13, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !583, file: !12, line: 164, baseType: !580, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !583, file: !12, line: 165, baseType: !626, size: 128, offset: 256)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !569, line: 14, size: 128, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !626, file: !569, line: 15, baseType: !629, size: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !225, line: 26, size: 128, elements: !630)
!630 = !{!631, !635}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !629, file: !225, line: 27, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !225, line: 12, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !632, file: !225, line: 13, baseType: !229, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !629, file: !225, line: 28, baseType: !229, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !583, file: !12, line: 166, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!573}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !583, file: !12, line: 167, baseType: !573, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !565, file: !12, line: 123, baseType: !101, size: 8, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !565, file: !12, line: 124, baseType: !101, size: 8, offset: 456)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !565, file: !12, line: 125, baseType: !101, size: 8, offset: 464)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !565, file: !12, line: 126, baseType: !101, size: 8, offset: 472)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !549, file: !450, line: 671, baseType: !565, size: 512, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !549, file: !450, line: 679, baseType: !647, size: 64, offset: 1728)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !449, file: !450, line: 800, baseType: !649, size: 64, offset: 5248)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !450, line: 800, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !449, file: !450, line: 809, baseType: !653, size: 64, offset: 5312)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !450, line: 70, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !449, file: !450, line: 825, baseType: !656, size: 2048, align: 512, offset: 5632)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !450, line: 509, size: 2048, align: 512, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !656, file: !450, line: 511, baseType: !196, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !656, file: !450, line: 512, baseType: !196, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !656, file: !450, line: 513, baseType: !196, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !656, file: !450, line: 514, baseType: !196, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !656, file: !450, line: 515, baseType: !196, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !656, file: !450, line: 516, baseType: !196, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !656, file: !450, line: 518, baseType: !196, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !656, file: !450, line: 519, baseType: !196, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !656, file: !450, line: 520, baseType: !166, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !656, file: !450, line: 522, baseType: !196, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !656, file: !450, line: 523, baseType: !196, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !656, file: !450, line: 524, baseType: !166, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !656, file: !450, line: 526, baseType: !166, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !656, file: !450, line: 527, baseType: !196, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !656, file: !450, line: 529, baseType: !196, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !656, file: !450, line: 530, baseType: !196, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !656, file: !450, line: 531, baseType: !196, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !656, file: !450, line: 532, baseType: !196, size: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !656, file: !450, line: 533, baseType: !196, size: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !656, file: !450, line: 535, baseType: !196, size: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !656, file: !450, line: 536, baseType: !196, size: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !656, file: !450, line: 537, baseType: !196, size: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !656, file: !450, line: 538, baseType: !196, size: 64, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !656, file: !450, line: 539, baseType: !196, size: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !656, file: !450, line: 540, baseType: !196, size: 64, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !656, file: !450, line: 541, baseType: !196, size: 64, offset: 1600)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !656, file: !450, line: 542, baseType: !196, size: 64, offset: 1664)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !656, file: !450, line: 543, baseType: !196, size: 64, offset: 1728)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !449, file: !450, line: 833, baseType: !13, size: 32, offset: 7680)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !449, file: !450, line: 836, baseType: !13, size: 32, offset: 7712)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !449, file: !450, line: 837, baseType: !40, size: 32, offset: 7744)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !449, file: !450, line: 838, baseType: !690, size: 64, offset: 7808)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !693, line: 19, baseType: !694)
!693 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !693, line: 19, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !694, file: !693, line: 19, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 1)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !449, file: !450, line: 839, baseType: !701, size: 64, offset: 7872)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !449, file: !450, line: 840, baseType: !692, size: 64, offset: 7936)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !449, file: !450, line: 841, baseType: !38, size: 64, offset: 8000)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !449, file: !450, line: 843, baseType: !44, size: 16, offset: 8064)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !449, file: !450, line: 845, baseType: !44, size: 16, offset: 8080)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !449, file: !450, line: 848, baseType: !40, size: 32, offset: 8096)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !449, file: !450, line: 849, baseType: !708, size: 32, offset: 8128)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !450, line: 718, size: 32, elements: !709)
!709 = !{!710, !717}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !708, file: !450, line: 724, baseType: !711, size: 32)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !450, line: 719, size: 32, elements: !712)
!712 = !{!713, !714, !715, !716}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !711, file: !450, line: 720, baseType: !101, size: 8)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !711, file: !450, line: 721, baseType: !101, size: 8, offset: 8)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !711, file: !450, line: 722, baseType: !101, size: 8, offset: 16)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !711, file: !450, line: 723, baseType: !101, size: 8, offset: 24)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !708, file: !450, line: 725, baseType: !262, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !449, file: !450, line: 850, baseType: !115, size: 128, offset: 8192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !449, file: !450, line: 851, baseType: !720, size: 64, offset: 8320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !450, line: 60, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !449, file: !450, line: 855, baseType: !57, size: 64, offset: 8384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !449, file: !450, line: 856, baseType: !101, size: 8, offset: 8448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !449, file: !450, line: 857, baseType: !101, size: 8, offset: 8456)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !449, file: !450, line: 858, baseType: !40, size: 32, offset: 8480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !449, file: !450, line: 859, baseType: !115, size: 128, offset: 8512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !449, file: !450, line: 860, baseType: !40, size: 32, offset: 8640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !449, file: !450, line: 861, baseType: !115, size: 128, offset: 8704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !449, file: !450, line: 873, baseType: !730, size: 256, offset: 8832)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !450, line: 376, size: 256, elements: !731)
!731 = !{!732, !733, !734, !735}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !730, file: !450, line: 381, baseType: !57, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !730, file: !450, line: 384, baseType: !198, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !730, file: !450, line: 389, baseType: !198, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !730, file: !450, line: 392, baseType: !198, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !449, file: !450, line: 875, baseType: !115, size: 128, offset: 9088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !449, file: !450, line: 877, baseType: !738, size: 320, offset: 9216)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !739, line: 86, size: 320, elements: !740)
!739 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !738, file: !739, line: 87, baseType: !40, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !738, file: !739, line: 88, baseType: !115, size: 128, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !738, file: !739, line: 89, baseType: !115, size: 128, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !449, file: !450, line: 878, baseType: !224, size: 192, align: 64, offset: 9536)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !449, file: !450, line: 881, baseType: !746, size: 64, offset: 9728)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !748, line: 733, size: 10240, elements: !749)
!748 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!749 = !{!750, !899}
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 734, baseType: !751, size: 10240)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !748, line: 734, size: 10240, elements: !752)
!752 = !{!753, !757, !771, !778, !779, !780, !781, !782, !783, !791, !792, !793, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !832, !834, !837, !868, !869, !870, !873, !874, !875, !878, !879, !880, !886, !887}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !748, line: 739, baseType: !754, size: 512, align: 512)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !748, line: 739, size: 512, align: 512, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !754, file: !748, line: 747, baseType: !67, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !751, file: !748, line: 750, baseType: !758, size: 128, offset: 512)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !759, line: 218, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!760 = !{!761, !769, !770}
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 219, baseType: !762, size: 32)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 219, size: 32, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !762, file: !759, line: 220, baseType: !77, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !762, file: !759, line: 221, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !759, line: 197, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 197, elements: !768)
!768 = !{}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !758, file: !759, line: 223, baseType: !13, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !758, file: !759, line: 224, baseType: !38, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !751, file: !748, line: 752, baseType: !772, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!57, !775, !57, !57, !57, !57}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !777, line: 537, flags: DIFlagFwdDecl)
!777 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !751, file: !748, line: 756, baseType: !57, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !751, file: !748, line: 757, baseType: !57, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !751, file: !748, line: 760, baseType: !57, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !751, file: !748, line: 761, baseType: !57, size: 64, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !751, file: !748, line: 763, baseType: !57, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !751, file: !748, line: 764, baseType: !784, size: 64, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !777, line: 299, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !777, line: 299, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !786, file: !777, line: 299, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !790, line: 18, baseType: !57)
!790 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !751, file: !748, line: 773, baseType: !67, size: 32, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !751, file: !748, line: 785, baseType: !67, size: 32, offset: 1120)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !751, file: !748, line: 795, baseType: !794, size: 64, offset: 1152)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !748, line: 726, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !795, file: !748, line: 727, baseType: !196, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !795, file: !748, line: 728, baseType: !40, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !751, file: !748, line: 801, baseType: !57, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !751, file: !748, line: 804, baseType: !160, size: 64, offset: 1280)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !751, file: !748, line: 806, baseType: !40, size: 32, offset: 1344)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !751, file: !748, line: 808, baseType: !77, size: 32, offset: 1376)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !751, file: !748, line: 823, baseType: !232, size: 320, offset: 1408)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !751, file: !748, line: 825, baseType: !115, size: 128, offset: 1728)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !751, file: !748, line: 845, baseType: !40, size: 32, offset: 1856)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !751, file: !748, line: 849, baseType: !57, size: 64, offset: 1920)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !751, file: !748, line: 850, baseType: !57, size: 64, offset: 1984)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !751, file: !748, line: 852, baseType: !57, size: 64, offset: 2048)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !751, file: !748, line: 853, baseType: !57, size: 64, offset: 2112)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !751, file: !748, line: 854, baseType: !162, size: 64, offset: 2176)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !751, file: !748, line: 855, baseType: !57, size: 64, offset: 2240)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !751, file: !748, line: 856, baseType: !57, size: 64, offset: 2304)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !751, file: !748, line: 857, baseType: !57, size: 64, offset: 2368)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !751, file: !748, line: 858, baseType: !57, size: 64, offset: 2432)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !751, file: !748, line: 865, baseType: !620, size: 32, offset: 2496)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !751, file: !748, line: 867, baseType: !77, size: 32, offset: 2528)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !751, file: !748, line: 869, baseType: !57, size: 64, offset: 2560)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !751, file: !748, line: 869, baseType: !57, size: 64, offset: 2624)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !751, file: !748, line: 869, baseType: !57, size: 64, offset: 2688)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !751, file: !748, line: 869, baseType: !57, size: 64, offset: 2752)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !751, file: !748, line: 870, baseType: !57, size: 64, offset: 2816)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !751, file: !748, line: 870, baseType: !57, size: 64, offset: 2880)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !751, file: !748, line: 870, baseType: !57, size: 64, offset: 2944)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !751, file: !748, line: 871, baseType: !57, size: 64, offset: 3008)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !751, file: !748, line: 871, baseType: !57, size: 64, offset: 3072)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !751, file: !748, line: 871, baseType: !57, size: 64, offset: 3136)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !751, file: !748, line: 871, baseType: !57, size: 64, offset: 3200)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !751, file: !748, line: 873, baseType: !829, size: 3328, offset: 3264)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 3328, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 52)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !751, file: !748, line: 875, baseType: !833, size: 1280, offset: 6592)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1280, elements: !327)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !751, file: !748, line: 877, baseType: !835, size: 64, offset: 7872)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !748, line: 877, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !751, file: !748, line: 880, baseType: !838, size: 1088, offset: 7936)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !839, line: 72, baseType: !840)
!839 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 23, size: 1088, elements: !841)
!841 = !{!842, !843, !844, !845, !846, !849, !850, !858, !859, !863, !864, !865}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !840, file: !839, line: 28, baseType: !196, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !840, file: !839, line: 38, baseType: !162, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !840, file: !839, line: 40, baseType: !57, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !840, file: !839, line: 43, baseType: !232, size: 320, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !840, file: !839, line: 44, baseType: !847, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !839, line: 44, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !839, line: 48, baseType: !57, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !839, line: 59, baseType: !851, size: 256, offset: 640)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !852, line: 66, size: 256, elements: !853)
!852 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !851, file: !852, line: 67, baseType: !160, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !851, file: !852, line: 68, baseType: !243, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !851, file: !852, line: 70, baseType: !238, size: 32, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !851, file: !852, line: 72, baseType: !115, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !840, file: !839, line: 60, baseType: !38, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !840, file: !839, line: 61, baseType: !860, size: 64, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !839, line: 61, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !840, file: !839, line: 63, baseType: !67, size: 32, offset: 1024)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !840, file: !839, line: 69, baseType: !111, size: 16, offset: 1056)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !840, file: !839, line: 70, baseType: !866, size: 16, offset: 1072)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !102, line: 18, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !104, line: 23, baseType: !267)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !748, line: 882, baseType: !57, size: 64, offset: 9024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !751, file: !748, line: 885, baseType: !77, size: 32, offset: 9088)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !751, file: !748, line: 886, baseType: !871, size: 64, offset: 9152)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !748, line: 732, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !751, file: !748, line: 901, baseType: !398, size: 64, offset: 9216)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !751, file: !748, line: 904, baseType: !775, size: 64, offset: 9280)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !751, file: !748, line: 906, baseType: !876, size: 64, offset: 9344)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !748, line: 906, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !751, file: !748, line: 930, baseType: !67, size: 32, offset: 9408)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !751, file: !748, line: 933, baseType: !67, size: 32, offset: 9440)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !751, file: !748, line: 935, baseType: !881, size: 64, offset: 9472)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !24, line: 103, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !881, file: !24, line: 104, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !24, line: 101, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !751, file: !748, line: 940, baseType: !160, size: 64, offset: 9536)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !751, file: !748, line: 942, baseType: !888, size: 256, offset: 9600)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !889, line: 98, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !888, file: !889, line: 99, baseType: !160, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !888, file: !889, line: 100, baseType: !115, size: 128, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !888, file: !889, line: 101, baseType: !894, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !889, line: 21, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !747, file: !748, line: 986, baseType: !900, offset: 10240)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: -1)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !449, file: !450, line: 882, baseType: !746, size: 64, offset: 9792)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !449, file: !450, line: 884, baseType: !40, size: 32, offset: 9856)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !449, file: !450, line: 885, baseType: !40, size: 32, offset: 9888)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !449, file: !450, line: 886, baseType: !40, size: 32, offset: 9920)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !449, file: !450, line: 888, baseType: !40, size: 32, offset: 9952)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !449, file: !450, line: 890, baseType: !57, size: 64, offset: 9984)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !449, file: !450, line: 893, baseType: !13, size: 32, offset: 10048)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !449, file: !450, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !449, file: !450, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !449, file: !450, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !449, file: !450, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !449, file: !450, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !449, file: !450, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !449, file: !450, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !449, file: !450, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !449, file: !450, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !449, file: !450, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !449, file: !450, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !449, file: !450, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !449, file: !450, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !449, file: !450, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !449, file: !450, line: 969, baseType: !57, size: 64, offset: 10176)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !449, file: !450, line: 971, baseType: !926, size: 448, offset: 10240)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 448, elements: !927)
!927 = !{!928, !929, !935}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !926, file: !18, line: 26, baseType: !57, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !926, file: !18, line: 27, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!933, !934}
!933 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !18, line: 28, baseType: !936, size: 320, offset: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !18, line: 28, size: 320, elements: !937)
!937 = !{!938, !948, !973}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !936, file: !18, line: 37, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !18, line: 30, size: 320, elements: !940)
!940 = !{!941, !943, !944, !945, !946, !947}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !939, file: !18, line: 31, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !939, file: !18, line: 32, baseType: !262, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !18, line: 33, baseType: !262, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !939, file: !18, line: 34, baseType: !262, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !939, file: !18, line: 35, baseType: !196, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !939, file: !18, line: 36, baseType: !942, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !936, file: !18, line: 47, baseType: !949, size: 192)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !18, line: 39, size: 192, elements: !950)
!950 = !{!951, !952, !953, !972}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !949, file: !18, line: 40, baseType: !612, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !949, file: !18, line: 41, baseType: !17, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !18, line: 42, baseType: !954, size: 64, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !18, line: 42, size: 64, elements: !955)
!955 = !{!956, !964}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !954, file: !18, line: 43, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !959, line: 7, size: 128, elements: !960)
!959 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!960 = !{!961, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !958, file: !959, line: 8, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !55, line: 93, baseType: !61)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !958, file: !959, line: 9, baseType: !61, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !954, file: !18, line: 44, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !967, line: 7, size: 64, elements: !968)
!967 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!968 = !{!969, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !966, file: !967, line: 8, baseType: !970, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !967, line: 5, baseType: !217)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !966, file: !967, line: 9, baseType: !217, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !949, file: !18, line: 46, baseType: !196, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !936, file: !18, line: 55, baseType: !974, size: 256)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !18, line: 49, size: 256, elements: !975)
!975 = !{!976, !979, !980, !981, !982}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !974, file: !18, line: 50, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !974, file: !18, line: 51, baseType: !40, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !974, file: !18, line: 52, baseType: !40, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !974, file: !18, line: 53, baseType: !57, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !974, file: !18, line: 54, baseType: !57, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !449, file: !450, line: 973, baseType: !984, size: 32, offset: 10688)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !43, line: 27, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !55, line: 28, baseType: !40)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !449, file: !450, line: 974, baseType: !984, size: 32, offset: 10720)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !449, file: !450, line: 978, baseType: !57, size: 64, offset: 10752)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !449, file: !450, line: 987, baseType: !448, size: 64, offset: 10816)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !449, file: !450, line: 990, baseType: !448, size: 64, offset: 10880)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !449, file: !450, line: 995, baseType: !115, size: 128, offset: 10944)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !449, file: !450, line: 996, baseType: !115, size: 128, offset: 11072)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !449, file: !450, line: 997, baseType: !448, size: 64, offset: 11200)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !449, file: !450, line: 1005, baseType: !115, size: 128, offset: 11264)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !449, file: !450, line: 1006, baseType: !115, size: 128, offset: 11392)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !449, file: !450, line: 1009, baseType: !996, size: 64, offset: 11520)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !998, line: 59, size: 768, elements: !999)
!998 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!999 = !{!1000, !1001, !1002, !1003, !1008, !1009, !1010, !1011}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !997, file: !998, line: 61, baseType: !210, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !997, file: !998, line: 62, baseType: !13, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !998, line: 63, baseType: !77, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !997, file: !998, line: 65, baseType: !1004, size: 256, offset: 128)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 256, elements: !327)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !43, line: 194, size: 64, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1005, file: !43, line: 195, baseType: !381, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !997, file: !998, line: 66, baseType: !1005, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !997, file: !998, line: 68, baseType: !72, size: 192, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !997, file: !998, line: 69, baseType: !296, size: 128, align: 64, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !997, file: !998, line: 70, baseType: !1012, offset: 768)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, elements: !901)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !998, line: 54, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1013, file: !998, line: 55, baseType: !40, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1013, file: !998, line: 56, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !998, line: 56, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !449, file: !450, line: 1010, baseType: !1020, size: 512, offset: 11584)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 512, elements: !327)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !449, file: !450, line: 1011, baseType: !115, size: 128, offset: 12096)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !449, file: !450, line: 1012, baseType: !115, size: 128, offset: 12224)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !449, file: !450, line: 1014, baseType: !1024, size: 64, offset: 12352)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1026, line: 26, size: 256, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1025, file: !1026, line: 27, baseType: !13, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1025, file: !1026, line: 28, baseType: !1030, size: 192, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1031, line: 43, size: 192, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1030, file: !1031, line: 44, baseType: !243, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1030, file: !1031, line: 45, baseType: !115, size: 128, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !449, file: !450, line: 1017, baseType: !1036, size: 64, offset: 12416)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !449, file: !450, line: 1020, baseType: !1036, size: 64, offset: 12480)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !449, file: !450, line: 1023, baseType: !38, size: 64, offset: 12544)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !449, file: !450, line: 1025, baseType: !196, size: 64, offset: 12608)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !449, file: !450, line: 1026, baseType: !196, size: 64, offset: 12672)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !449, file: !450, line: 1031, baseType: !196, size: 64, offset: 12736)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !449, file: !450, line: 1032, baseType: !1043, size: 192, offset: 12800)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !450, line: 324, size: 192, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1043, file: !450, line: 326, baseType: !196, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1043, file: !450, line: 327, baseType: !196, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1043, file: !450, line: 328, baseType: !243, size: 32, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !449, file: !450, line: 1041, baseType: !57, size: 64, offset: 12992)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !449, file: !450, line: 1042, baseType: !57, size: 64, offset: 13056)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !449, file: !450, line: 1045, baseType: !196, size: 64, offset: 13120)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !449, file: !450, line: 1048, baseType: !196, size: 64, offset: 13184)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !449, file: !450, line: 1051, baseType: !57, size: 64, offset: 13248)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !449, file: !450, line: 1052, baseType: !57, size: 64, offset: 13312)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !449, file: !450, line: 1055, baseType: !1055, size: 640, offset: 13376)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1056, line: 132, size: 640, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1057 = !{!1058, !1066, !1067}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1055, file: !1056, line: 133, baseType: !1059, size: 576)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 576, elements: !1064)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1056, line: 117, size: 192, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1060, file: !1056, line: 118, baseType: !196, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1060, file: !1056, line: 119, baseType: !626, size: 128, offset: 64)
!1064 = !{!1065}
!1065 = !DISubrange(count: 3)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1055, file: !1056, line: 134, baseType: !13, size: 32, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1055, file: !1056, line: 135, baseType: !13, size: 32, offset: 608)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !449, file: !450, line: 1058, baseType: !1069, size: 448, offset: 14016)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1056, line: 144, size: 448, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1069, file: !1056, line: 145, baseType: !296, size: 128, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1069, file: !1056, line: 146, baseType: !851, size: 256, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1069, file: !1056, line: 147, baseType: !13, size: 32, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !449, file: !450, line: 1064, baseType: !154, size: 64, offset: 14464)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !449, file: !450, line: 1067, baseType: !154, size: 64, offset: 14528)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !449, file: !450, line: 1070, baseType: !154, size: 64, offset: 14592)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !449, file: !450, line: 1074, baseType: !205, size: 64, offset: 14656)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !449, file: !450, line: 1084, baseType: !1079, size: 128, offset: 14720)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 16)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !449, file: !450, line: 1086, baseType: !1083, size: 64, offset: 14848)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !450, line: 55, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !449, file: !450, line: 1089, baseType: !1086, size: 64, offset: 14912)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1087, line: 12, size: 64, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1086, file: !1087, line: 13, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1087, line: 8, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !449, file: !450, line: 1090, baseType: !1093, size: 128, offset: 14976)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1094, line: 13, size: 128, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1093, file: !1094, line: 14, baseType: !115, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !449, file: !450, line: 1097, baseType: !1098, size: 64, offset: 15104)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !450, line: 50, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !449, file: !450, line: 1100, baseType: !1101, size: 64, offset: 15168)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !450, line: 1100, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !449, file: !450, line: 1103, baseType: !1104, size: 64, offset: 15232)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !450, line: 53, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !449, file: !450, line: 1107, baseType: !1107, size: 64, offset: 15296)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1109, line: 31, size: 576, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1110 = !{!1111, !1112, !1146, !1149, !1152, !1153, !1156, !1159, !1160}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1108, file: !1109, line: 32, baseType: !210, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1108, file: !1109, line: 33, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1115, line: 24, size: 3456, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!1116 = !{!1117, !1130, !1131, !1145}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1114, file: !1115, line: 25, baseType: !1118, size: 3120)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !1119, line: 25, size: 3120, elements: !1120)
!1119 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!1120 = !{!1121, !1125, !1126, !1127, !1128, !1129}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1118, file: !1119, line: 26, baseType: !1122, size: 520)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 65)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1118, file: !1119, line: 27, baseType: !1122, size: 520, offset: 520)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1118, file: !1119, line: 28, baseType: !1122, size: 520, offset: 1040)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1118, file: !1119, line: 29, baseType: !1122, size: 520, offset: 1560)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1118, file: !1119, line: 30, baseType: !1122, size: 520, offset: 2080)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !1118, file: !1119, line: 31, baseType: !1122, size: 520, offset: 2600)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1114, file: !1115, line: 26, baseType: !398, size: 64, offset: 3136)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1114, file: !1115, line: 27, baseType: !1132, size: 64, offset: 3200)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !139, line: 107, size: 1152, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1143}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1133, file: !139, line: 108, baseType: !378, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1133, file: !139, line: 109, baseType: !398, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1133, file: !139, line: 110, baseType: !169, size: 32, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1133, file: !139, line: 111, baseType: !67, size: 32, offset: 224)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1133, file: !139, line: 112, baseType: !1140, size: 640, offset: 256)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 640, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 10)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1133, file: !139, line: 113, baseType: !1144, size: 256, offset: 896)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !327)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1114, file: !1115, line: 28, baseType: !430, size: 192, offset: 3264)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1108, file: !1109, line: 34, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1109, line: 10, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1108, file: !1109, line: 35, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1109, line: 8, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1108, file: !1109, line: 36, baseType: !1017, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1108, file: !1109, line: 37, baseType: !1154, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1109, line: 37, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1108, file: !1109, line: 38, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1109, line: 38, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1108, file: !1109, line: 39, baseType: !1157, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1108, file: !1109, line: 40, baseType: !1161, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1109, line: 12, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !449, file: !450, line: 1110, baseType: !1164, size: 64, offset: 15360)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1056, line: 236, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !449, file: !450, line: 1111, baseType: !1167, size: 64, offset: 15424)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !450, line: 67, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !449, file: !450, line: 1112, baseType: !1170, size: 64, offset: 15488)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1171, line: 25, baseType: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1171, line: 23, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1172, file: !1171, line: 24, baseType: !697, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !449, file: !450, line: 1113, baseType: !1170, size: 64, offset: 15552)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !449, file: !450, line: 1115, baseType: !1170, size: 64, offset: 15616)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !449, file: !450, line: 1116, baseType: !1178, size: 192, offset: 15680)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1179, line: 32, size: 192, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1178, file: !1179, line: 33, baseType: !115, size: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1178, file: !1179, line: 34, baseType: !1170, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !449, file: !450, line: 1117, baseType: !57, size: 64, offset: 15872)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !449, file: !450, line: 1118, baseType: !53, size: 64, offset: 15936)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !449, file: !450, line: 1119, baseType: !13, size: 32, offset: 16000)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !449, file: !450, line: 1121, baseType: !299, size: 64, offset: 16064)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !449, file: !450, line: 1125, baseType: !1188, size: 64, offset: 16128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !450, line: 43, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !449, file: !450, line: 1127, baseType: !169, size: 32, offset: 16192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !449, file: !450, line: 1128, baseType: !13, size: 32, offset: 16224)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !449, file: !450, line: 1130, baseType: !1193, size: 128, offset: 16256)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1194, line: 37, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1193, file: !1194, line: 38, baseType: !40, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1193, file: !1194, line: 39, baseType: !67, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1193, file: !1194, line: 40, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1194, line: 24, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !449, file: !450, line: 1131, baseType: !1202, size: 256, offset: 16384)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1203, line: 12, size: 256, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1204 = !{!1205, !1206, !1207, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1202, file: !1203, line: 13, baseType: !317, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1202, file: !1203, line: 14, baseType: !57, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1202, file: !1203, line: 15, baseType: !57, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1202, file: !1203, line: 16, baseType: !306, size: 8, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !449, file: !450, line: 1134, baseType: !196, size: 64, offset: 16640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !449, file: !450, line: 1135, baseType: !196, size: 64, offset: 16704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !449, file: !450, line: 1138, baseType: !77, size: 32, offset: 16768)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !449, file: !450, line: 1141, baseType: !243, size: 32, offset: 16800)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !449, file: !450, line: 1143, baseType: !1214, size: 64, offset: 16832)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !450, line: 735, size: 64, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !450, line: 736, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !449, file: !450, line: 1147, baseType: !629, size: 128, offset: 16896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !449, file: !450, line: 1149, baseType: !448, size: 64, offset: 17024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !449, file: !450, line: 1151, baseType: !1221, size: 64, offset: 17088)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !450, line: 1151, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !449, file: !450, line: 1188, baseType: !38, size: 64, offset: 17152)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !449, file: !450, line: 1191, baseType: !1225, size: 64, offset: 17216)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !450, line: 44, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !449, file: !450, line: 1194, baseType: !1228, size: 64, offset: 17280)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !450, line: 45, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !449, file: !450, line: 1197, baseType: !1231, size: 64, offset: 17344)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !450, line: 61, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !449, file: !450, line: 1199, baseType: !1234, size: 64, offset: 17408)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !450, line: 52, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !449, file: !450, line: 1202, baseType: !1237, size: 64, offset: 17472)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !450, line: 48, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !449, file: !450, line: 1205, baseType: !57, size: 64, offset: 17536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !449, file: !450, line: 1206, baseType: !1241, size: 64, offset: 17600)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1179, line: 14, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1179, line: 12, size: 384, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1179, line: 13, baseType: !1246, size: 384)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1179, line: 13, size: 384, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1246, file: !1179, line: 13, baseType: !40, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1246, file: !1179, line: 13, baseType: !40, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1246, file: !1179, line: 13, baseType: !40, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1246, file: !1179, line: 13, baseType: !1252, size: 256, offset: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1253, line: 37, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1254 = !{!1255, !1260, !1273, !1279, !1289, !1316, !1321}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1252, file: !1253, line: 42, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 39, size: 64, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1256, file: !1253, line: 40, baseType: !985, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1256, file: !1253, line: 41, baseType: !175, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1252, file: !1253, line: 50, baseType: !1261, size: 192)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 45, size: 192, elements: !1262)
!1262 = !{!1263, !1265, !1266, !1272}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1261, file: !1253, line: 46, baseType: !1264, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !55, line: 95, baseType: !40)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1261, file: !1253, line: 47, baseType: !40, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1261, file: !1253, line: 48, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1253, line: 11, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1253, line: 8, size: 64, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1268, file: !1253, line: 9, baseType: !40, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1268, file: !1253, line: 10, baseType: !38, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1261, file: !1253, line: 49, baseType: !40, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1252, file: !1253, line: 57, baseType: !1274, size: 128)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 53, size: 128, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1274, file: !1253, line: 54, baseType: !985, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1274, file: !1253, line: 55, baseType: !175, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1274, file: !1253, line: 56, baseType: !1267, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1252, file: !1253, line: 66, baseType: !1280, size: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 60, size: 256, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1288}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1280, file: !1253, line: 61, baseType: !985, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1280, file: !1253, line: 62, baseType: !175, size: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1280, file: !1253, line: 63, baseType: !40, size: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1280, file: !1253, line: 64, baseType: !1286, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !55, line: 94, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !55, line: 15, baseType: !933)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1280, file: !1253, line: 65, baseType: !1286, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1252, file: !1253, line: 105, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 69, size: 256, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1290, file: !1253, line: 70, baseType: !38, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !1253, line: 79, baseType: !1294, size: 192, offset: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1290, file: !1253, line: 79, size: 192, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1305, !1310}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1294, file: !1253, line: 81, baseType: !40, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1294, file: !1253, line: 86, baseType: !267, size: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1294, file: !1253, line: 92, baseType: !1299, size: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1253, line: 88, size: 192, elements: !1300)
!1300 = !{!1301, !1303, !1304}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1299, file: !1253, line: 89, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !608)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1299, file: !1253, line: 90, baseType: !38, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1299, file: !1253, line: 91, baseType: !38, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1294, file: !1253, line: 97, baseType: !1306, size: 96)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1253, line: 94, size: 96, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1306, file: !1253, line: 95, baseType: !1302, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1306, file: !1253, line: 96, baseType: !263, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1294, file: !1253, line: 103, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1253, line: 99, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1311, file: !1253, line: 100, baseType: !57, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1311, file: !1253, line: 101, baseType: !263, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1311, file: !1253, line: 102, baseType: !263, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1252, file: !1253, line: 111, baseType: !1317, size: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 108, size: 128, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1317, file: !1253, line: 109, baseType: !933, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1317, file: !1253, line: 110, baseType: !40, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1252, file: !1253, line: 118, baseType: !1322, size: 128)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1253, line: 114, size: 128, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1322, file: !1253, line: 115, baseType: !38, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1322, file: !1253, line: 116, baseType: !40, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1322, file: !1253, line: 117, baseType: !13, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !449, file: !450, line: 1208, baseType: !1328, size: 448, offset: 17664)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1329, line: 12, size: 448, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1328, file: !1329, line: 15, baseType: !196, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1328, file: !1329, line: 17, baseType: !196, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1328, file: !1329, line: 19, baseType: !196, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1328, file: !1329, line: 21, baseType: !196, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1328, file: !1329, line: 29, baseType: !196, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1328, file: !1329, line: 35, baseType: !196, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1328, file: !1329, line: 44, baseType: !196, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !449, file: !450, line: 1215, baseType: !196, size: 64, offset: 18112)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !449, file: !450, line: 1217, baseType: !196, size: 64, offset: 18176)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !449, file: !450, line: 1219, baseType: !196, size: 64, offset: 18240)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !449, file: !450, line: 1223, baseType: !1342, size: 64, offset: 18304)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1343, line: 99, baseType: !1344)
!1343 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1343, line: 99, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1344, file: !1343, line: 99, baseType: !697, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !449, file: !450, line: 1225, baseType: !1348, size: 32, offset: 18368)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !616, line: 275, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !616, line: 275, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1349, file: !616, line: 275, baseType: !620, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !449, file: !450, line: 1226, baseType: !40, size: 32, offset: 18400)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !449, file: !450, line: 1227, baseType: !40, size: 32, offset: 18432)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !449, file: !450, line: 1231, baseType: !1355, size: 64, offset: 18496)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !450, line: 1231, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !449, file: !450, line: 1233, baseType: !115, size: 128, offset: 18560)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !449, file: !450, line: 1240, baseType: !1359, size: 64, offset: 18688)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !450, line: 62, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !449, file: !450, line: 1242, baseType: !1362, size: 64, offset: 18752)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !450, line: 1242, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !449, file: !450, line: 1244, baseType: !115, size: 128, offset: 18816)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !449, file: !450, line: 1245, baseType: !1366, size: 64, offset: 18944)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !450, line: 51, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !449, file: !450, line: 1246, baseType: !851, size: 256, offset: 19008)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !449, file: !450, line: 1247, baseType: !13, size: 32, offset: 19264)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !449, file: !450, line: 1250, baseType: !1371, size: 64, offset: 19328)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !450, line: 57, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !449, file: !450, line: 1251, baseType: !851, size: 256, offset: 19392)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !449, file: !450, line: 1252, baseType: !115, size: 128, offset: 19648)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !449, file: !450, line: 1259, baseType: !1376, size: 64, offset: 19776)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !450, line: 54, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !449, file: !450, line: 1260, baseType: !267, size: 16, offset: 19840)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !449, file: !450, line: 1261, baseType: !267, size: 16, offset: 19856)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !449, file: !450, line: 1314, baseType: !1381, size: 64, offset: 19904)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1383, line: 62, size: 256, align: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1382, file: !1383, line: 75, baseType: !263, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1382, file: !1383, line: 90, baseType: !263, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1382, file: !1383, line: 112, baseType: !197, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 132, baseType: !263, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1382, file: !1383, line: 140, baseType: !263, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1382, file: !1383, line: 149, baseType: !263, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1382, file: !1383, line: 154, baseType: !1392, offset: 224)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !901)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !449, file: !450, line: 1315, baseType: !262, size: 32, offset: 19968)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !449, file: !450, line: 1316, baseType: !262, size: 32, offset: 20000)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !449, file: !450, line: 1321, baseType: !57, size: 64, offset: 20032)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !449, file: !450, line: 1325, baseType: !40, size: 32, offset: 20096)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !449, file: !450, line: 1326, baseType: !40, size: 32, offset: 20128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !449, file: !450, line: 1327, baseType: !40, size: 32, offset: 20160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !449, file: !450, line: 1328, baseType: !40, size: 32, offset: 20192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !449, file: !450, line: 1329, baseType: !296, size: 128, align: 64, offset: 20224)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !449, file: !450, line: 1332, baseType: !1402, size: 128, offset: 20352)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1403, line: 51, size: 128, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1404 = !{!1405, !1410, !1411}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1402, file: !1403, line: 60, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1407, line: 7, size: 64, elements: !1408)
!1407 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1406, file: !1407, line: 12, baseType: !694, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1402, file: !1403, line: 63, baseType: !306, size: 8, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1402, file: !1403, line: 70, baseType: !306, size: 8, offset: 72)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !449, file: !450, line: 1335, baseType: !1413, size: 64, offset: 20480)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !450, line: 59, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !449, file: !450, line: 1337, baseType: !1416, size: 128, offset: 20544)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1403, line: 39, size: 128, elements: !1417)
!1417 = !{!1418, !1481, !1482}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1416, file: !1403, line: 40, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !748, line: 74, size: 512, align: 128, elements: !1421)
!1421 = !{!1422, !1423, !1475, !1480}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !748, line: 75, baseType: !57, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !748, line: 83, baseType: !1424, size: 320, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !748, line: 83, size: 320, elements: !1425)
!1425 = !{!1426, !1449, !1463, !1467, !1474}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !748, line: 84, baseType: !1427, size: 320)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !748, line: 84, size: 320, elements: !1428)
!1428 = !{!1429, !1440, !1443, !1448}
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !748, line: 90, baseType: !1430, size: 128)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !748, line: 90, size: 128, elements: !1431)
!1431 = !{!1432, !1433, !1438, !1439}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1430, file: !748, line: 91, baseType: !115, size: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !748, line: 94, baseType: !1434, size: 128)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !748, line: 94, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1434, file: !748, line: 96, baseType: !38, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1434, file: !748, line: 98, baseType: !13, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1430, file: !748, line: 102, baseType: !115, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1430, file: !748, line: 103, baseType: !115, size: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1427, file: !748, line: 106, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !748, line: 32, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !748, line: 107, baseType: !1444, size: 64, offset: 192)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !748, line: 107, size: 64, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1444, file: !748, line: 108, baseType: !57, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1444, file: !748, line: 109, baseType: !57, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1427, file: !748, line: 117, baseType: !57, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !748, line: 119, baseType: !1450, size: 320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !748, line: 119, size: 320, elements: !1451)
!1451 = !{!1452, !1453, !1456, !1457, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1450, file: !748, line: 124, baseType: !57, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1450, file: !748, line: 125, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !748, line: 125, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1450, file: !748, line: 126, baseType: !57, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1450, file: !748, line: 127, baseType: !57, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !748, line: 128, baseType: !1459, size: 64, offset: 256)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !748, line: 128, size: 64, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1459, file: !748, line: 133, baseType: !57, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1459, file: !748, line: 138, baseType: !160, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !748, line: 141, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !748, line: 141, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1464, file: !748, line: 142, baseType: !57, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !748, line: 144, baseType: !1468, size: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !748, line: 144, size: 128, elements: !1469)
!1469 = !{!1470, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1468, file: !748, line: 146, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !748, line: 146, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1468, file: !748, line: 147, baseType: !38, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1424, file: !748, line: 161, baseType: !296, size: 128, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !748, line: 164, baseType: !1476, size: 32, offset: 384)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !748, line: 164, size: 32, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1476, file: !748, line: 169, baseType: !67, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1476, file: !748, line: 177, baseType: !13, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1420, file: !748, line: 181, baseType: !67, size: 32, offset: 416)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1416, file: !1403, line: 42, baseType: !263, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1416, file: !1403, line: 43, baseType: !263, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !449, file: !450, line: 1340, baseType: !1484, size: 64, offset: 20672)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !450, line: 69, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !449, file: !450, line: 1351, baseType: !40, size: 32, offset: 20736)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !449, file: !450, line: 1352, baseType: !40, size: 32, offset: 20768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !449, file: !450, line: 1354, baseType: !57, size: 64, offset: 20800)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !449, file: !450, line: 1364, baseType: !196, size: 64, offset: 20864)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !449, file: !450, line: 1365, baseType: !196, size: 64, offset: 20928)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !449, file: !450, line: 1412, baseType: !57, size: 64, offset: 20992)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !449, file: !450, line: 1453, baseType: !1493, size: 64, offset: 21056)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !450, line: 1453, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !449, file: !450, line: 1457, baseType: !1496, size: 64, offset: 21120)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !24, line: 61, size: 576, elements: !1498)
!1498 = !{!1499, !1500, !1519, !1522, !1523, !1556, !1566}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1497, file: !24, line: 62, baseType: !23, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !24, line: 64, baseType: !1501, size: 192, offset: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !24, line: 64, size: 192, elements: !1502)
!1502 = !{!1503, !1514}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !24, line: 65, baseType: !1504, size: 192)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !24, line: 65, size: 192, elements: !1505)
!1505 = !{!1506, !1513}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1504, file: !24, line: 66, baseType: !1507, size: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1508, line: 50, size: 128, elements: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1507, file: !1508, line: 52, baseType: !57, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1507, file: !1508, line: 54, baseType: !13, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1507, file: !1508, line: 55, baseType: !13, size: 32, offset: 96)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1504, file: !24, line: 67, baseType: !57, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !24, line: 70, baseType: !1515, size: 192)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !24, line: 70, size: 192, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1515, file: !24, line: 71, baseType: !296, size: 128, align: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1515, file: !24, line: 72, baseType: !57, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1497, file: !24, line: 76, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !24, line: 76, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1497, file: !24, line: 77, baseType: !57, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1497, file: !24, line: 79, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1508, line: 25, size: 256, elements: !1526)
!1526 = !{!1527, !1533, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1508, line: 26, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !1508, line: 26, size: 128, elements: !1529)
!1529 = !{!1530, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1528, file: !1508, line: 27, baseType: !1531, size: 128)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1080)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1528, file: !1508, line: 28, baseType: !1531, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1525, file: !1508, line: 31, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1508, line: 23, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1508, line: 33, baseType: !1538, size: 64, offset: 192)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !1508, line: 33, size: 64, elements: !1539)
!1539 = !{!1540, !1546, !1551}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1538, file: !1508, line: 38, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !1508, line: 34, size: 64, elements: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1541, file: !1508, line: 35, baseType: !217, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1541, file: !1508, line: 36, baseType: !101, size: 8, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1541, file: !1508, line: 37, baseType: !101, size: 8, offset: 40)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1538, file: !1508, line: 42, baseType: !1547, size: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !1508, line: 39, size: 16, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1547, file: !1508, line: 40, baseType: !101, size: 8)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1547, file: !1508, line: 41, baseType: !101, size: 8, offset: 8)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1538, file: !1508, line: 46, baseType: !1552, size: 16)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !1508, line: 43, size: 16, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1552, file: !1508, line: 44, baseType: !101, size: 8)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1552, file: !1508, line: 45, baseType: !101, size: 8, offset: 8)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1497, file: !24, line: 81, baseType: !1557, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !24, line: 85, size: 384, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1558, file: !24, line: 86, baseType: !1520, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1558, file: !24, line: 87, baseType: !57, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1558, file: !24, line: 88, baseType: !57, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1558, file: !24, line: 89, baseType: !57, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1558, file: !24, line: 90, baseType: !306, size: 8, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1558, file: !24, line: 92, baseType: !1557, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1497, file: !24, line: 82, baseType: !13, size: 32, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !449, file: !450, line: 1463, baseType: !1568, offset: 21184)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !450, line: 739, elements: !768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !449, file: !450, line: 1470, baseType: !296, size: 128, align: 64, offset: 21184)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !449, file: !450, line: 1471, baseType: !210, size: 32, offset: 21312)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !449, file: !450, line: 1472, baseType: !40, size: 32, offset: 21344)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !449, file: !450, line: 1474, baseType: !448, size: 64, offset: 21376)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !449, file: !450, line: 1475, baseType: !1574, size: 320, offset: 21440)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1575, line: 11, size: 320, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1576 = !{!1577, !1578, !1579, !1584}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1574, file: !1575, line: 16, baseType: !378, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1574, file: !1575, line: 17, baseType: !57, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1574, file: !1575, line: 18, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 19, baseType: !262, size: 32, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !449, file: !450, line: 1478, baseType: !1586, size: 64, offset: 21760)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !450, line: 1478, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !449, file: !450, line: 1482, baseType: !210, size: 32, offset: 21824)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !449, file: !450, line: 1489, baseType: !38, size: 64, offset: 21888)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !449, file: !450, line: 1504, baseType: !38, size: 64, offset: 21952)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !449, file: !450, line: 1505, baseType: !197, size: 64, offset: 22016)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !449, file: !450, line: 1506, baseType: !196, size: 64, offset: 22080)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !449, file: !450, line: 1507, baseType: !197, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !449, file: !450, line: 1508, baseType: !197, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !449, file: !450, line: 1509, baseType: !197, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !449, file: !450, line: 1510, baseType: !296, size: 128, align: 64, offset: 22208)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !449, file: !450, line: 1511, baseType: !40, size: 32, offset: 22336)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !449, file: !450, line: 1515, baseType: !1599, size: 64, offset: 22400)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !472, line: 56, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1599, file: !472, line: 57, baseType: !475, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !449, file: !450, line: 1518, baseType: !1599, size: 64, offset: 22464)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !449, file: !450, line: 1528, baseType: !296, size: 128, align: 64, offset: 22528)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !449, file: !450, line: 1552, baseType: !1605, size: 35328, offset: 23040)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1606, line: 430, size: 35328, elements: !1607)
!1606 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1607 = !{!1608, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1637, !1638, !1639, !1640, !1641, !1642, !1645, !1646, !1647, !1648}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1605, file: !1606, line: 432, baseType: !1609, size: 192)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 192, elements: !1064)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1611, line: 16, size: 64, elements: !1612)
!1611 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1610, file: !1611, line: 17, baseType: !111, size: 16)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1610, file: !1611, line: 18, baseType: !111, size: 16, offset: 16)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1610, file: !1611, line: 19, baseType: !111, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1610, file: !1611, line: 19, baseType: !111, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1610, file: !1611, line: 19, baseType: !111, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1610, file: !1611, line: 19, baseType: !111, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1610, file: !1611, line: 19, baseType: !111, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1610, file: !1611, line: 20, baseType: !111, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1610, file: !1611, line: 20, baseType: !111, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1610, file: !1611, line: 20, baseType: !111, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1610, file: !1611, line: 20, baseType: !111, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1610, file: !1611, line: 20, baseType: !111, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1610, file: !1611, line: 20, baseType: !111, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1605, file: !1606, line: 436, baseType: !57, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1605, file: !1606, line: 440, baseType: !44, size: 16, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1605, file: !1606, line: 441, baseType: !44, size: 16, offset: 272)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1605, file: !1606, line: 442, baseType: !44, size: 16, offset: 288)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1605, file: !1606, line: 443, baseType: !44, size: 16, offset: 304)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1605, file: !1606, line: 447, baseType: !57, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1605, file: !1606, line: 448, baseType: !57, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1605, file: !1606, line: 459, baseType: !1634, size: 256, offset: 448)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1635, size: 256, elements: !327)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1606, line: 428, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1605, file: !1606, line: 461, baseType: !57, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1605, file: !1606, line: 463, baseType: !57, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1605, file: !1606, line: 465, baseType: !57, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1605, file: !1606, line: 466, baseType: !57, size: 64, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1605, file: !1606, line: 467, baseType: !57, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1605, file: !1606, line: 473, baseType: !1643, size: 64, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1606, line: 10, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1605, file: !1606, line: 480, baseType: !57, size: 64, offset: 1088)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1605, file: !1606, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1605, file: !1606, line: 491, baseType: !262, size: 32, offset: 1184)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1605, file: !1606, line: 501, baseType: !1649, size: 33792, offset: 1536)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1650, line: 448, size: 33792, elements: !1651)
!1650 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1651 = !{!1652, !1653, !1654, !1820, !1821, !1827, !1828}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1649, file: !1650, line: 461, baseType: !13, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1649, file: !1650, line: 468, baseType: !57, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1649, file: !1650, line: 476, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1650, line: 356, size: 33280, align: 512, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1656, file: !1650, line: 358, baseType: !13, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1656, file: !1650, line: 361, baseType: !13, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1656, file: !1650, line: 364, baseType: !196, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1656, file: !1650, line: 367, baseType: !196, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1656, file: !1650, line: 370, baseType: !196, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1656, file: !1650, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1656, file: !1650, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1656, file: !1650, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1656, file: !1650, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1656, file: !1650, line: 397, baseType: !1668, size: 32768, offset: 512)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1650, line: 348, size: 32768, elements: !1669)
!1669 = !{!1670, !1685, !1726, !1803, !1816}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1668, file: !1650, line: 349, baseType: !1671, size: 896)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1650, line: 12, size: 896, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1684}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1671, file: !1650, line: 13, baseType: !262, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1671, file: !1650, line: 14, baseType: !262, size: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1671, file: !1650, line: 15, baseType: !262, size: 32, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1671, file: !1650, line: 16, baseType: !262, size: 32, offset: 96)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1671, file: !1650, line: 17, baseType: !262, size: 32, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1671, file: !1650, line: 18, baseType: !262, size: 32, offset: 160)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1671, file: !1650, line: 19, baseType: !262, size: 32, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1671, file: !1650, line: 22, baseType: !1681, size: 640, offset: 224)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 640, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 20)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1671, file: !1650, line: 25, baseType: !262, size: 32, offset: 864)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1668, file: !1650, line: 350, baseType: !1686, size: 4096, align: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1650, line: 34, size: 4096, align: 128, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1707, !1708, !1709, !1713, !1717, !1721}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1686, file: !1650, line: 35, baseType: !111, size: 16)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1686, file: !1650, line: 36, baseType: !111, size: 16, offset: 16)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1686, file: !1650, line: 37, baseType: !111, size: 16, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1686, file: !1650, line: 38, baseType: !111, size: 16, offset: 48)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1650, line: 39, baseType: !1693, size: 128, offset: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1650, line: 39, size: 128, elements: !1694)
!1694 = !{!1695, !1700}
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1650, line: 40, baseType: !1696, size: 128)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1650, line: 40, size: 128, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1696, file: !1650, line: 41, baseType: !196, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1696, file: !1650, line: 42, baseType: !196, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1650, line: 44, baseType: !1701, size: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1650, line: 44, size: 128, elements: !1702)
!1702 = !{!1703, !1704, !1705, !1706}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1701, file: !1650, line: 45, baseType: !262, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1701, file: !1650, line: 46, baseType: !262, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1701, file: !1650, line: 47, baseType: !262, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1701, file: !1650, line: 48, baseType: !262, size: 32, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1686, file: !1650, line: 51, baseType: !262, size: 32, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1686, file: !1650, line: 52, baseType: !262, size: 32, offset: 224)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1686, file: !1650, line: 55, baseType: !1710, size: 1024, offset: 256)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 1024, elements: !1711)
!1711 = !{!1712}
!1712 = !DISubrange(count: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1686, file: !1650, line: 58, baseType: !1714, size: 2048, offset: 1280)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 2048, elements: !1715)
!1715 = !{!1716}
!1716 = !DISubrange(count: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1686, file: !1650, line: 60, baseType: !1718, size: 384, offset: 3328)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 384, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 12)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1650, line: 62, baseType: !1722, size: 384, offset: 3712)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1650, line: 62, size: 384, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1722, file: !1650, line: 63, baseType: !1718, size: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1722, file: !1650, line: 64, baseType: !1718, size: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1668, file: !1650, line: 351, baseType: !1727, size: 1088)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1650, line: 79, size: 1088, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1802}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1727, file: !1650, line: 80, baseType: !262, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1727, file: !1650, line: 81, baseType: !262, size: 32, offset: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1727, file: !1650, line: 82, baseType: !262, size: 32, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1727, file: !1650, line: 83, baseType: !262, size: 32, offset: 96)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1727, file: !1650, line: 84, baseType: !262, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1727, file: !1650, line: 85, baseType: !262, size: 32, offset: 160)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1727, file: !1650, line: 86, baseType: !262, size: 32, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1727, file: !1650, line: 88, baseType: !1681, size: 640, offset: 224)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1727, file: !1650, line: 89, baseType: !101, size: 8, offset: 864)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1727, file: !1650, line: 90, baseType: !101, size: 8, offset: 872)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1727, file: !1650, line: 91, baseType: !101, size: 8, offset: 880)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1727, file: !1650, line: 92, baseType: !101, size: 8, offset: 888)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1727, file: !1650, line: 93, baseType: !101, size: 8, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1727, file: !1650, line: 94, baseType: !101, size: 8, offset: 904)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1727, file: !1650, line: 95, baseType: !1744, size: 64, offset: 960)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1746, line: 11, size: 128, elements: !1747)
!1746 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1745, file: !1746, line: 12, baseType: !933, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1745, file: !1746, line: 13, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1752, line: 103, size: 1344, elements: !1753)
!1752 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1782, !1783, !1784}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1751, file: !1752, line: 109, baseType: !57, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1751, file: !1752, line: 110, baseType: !57, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1751, file: !1752, line: 111, baseType: !57, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1751, file: !1752, line: 112, baseType: !57, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1751, file: !1752, line: 113, baseType: !57, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1751, file: !1752, line: 114, baseType: !57, size: 64, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1751, file: !1752, line: 117, baseType: !57, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1751, file: !1752, line: 118, baseType: !57, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1751, file: !1752, line: 119, baseType: !57, size: 64, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1751, file: !1752, line: 120, baseType: !57, size: 64, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1751, file: !1752, line: 121, baseType: !57, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1751, file: !1752, line: 122, baseType: !57, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1751, file: !1752, line: 123, baseType: !57, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1751, file: !1752, line: 124, baseType: !57, size: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1751, file: !1752, line: 125, baseType: !57, size: 64, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1751, file: !1752, line: 139, baseType: !57, size: 64, offset: 960)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1751, file: !1752, line: 142, baseType: !57, size: 64, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 144, baseType: !1772, size: 64, offset: 1088)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 144, size: 64, elements: !1773)
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1772, file: !1752, line: 146, baseType: !111, size: 16)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1772, file: !1752, line: 148, baseType: !196, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1772, file: !1752, line: 150, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1752, line: 59, size: 64, elements: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1777, file: !1752, line: 61, baseType: !196, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1777, file: !1752, line: 63, baseType: !196, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1777, file: !1752, line: 65, baseType: !196, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1752, line: 153, baseType: !57, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1751, file: !1752, line: 154, baseType: !57, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 156, baseType: !1785, size: 64, offset: 1280)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 156, size: 64, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1785, file: !1752, line: 158, baseType: !111, size: 16)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1785, file: !1752, line: 160, baseType: !196, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1785, file: !1752, line: 162, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1752, line: 69, size: 64, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1790, file: !1752, line: 71, baseType: !196, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1790, file: !1752, line: 73, baseType: !196, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1790, file: !1752, line: 75, baseType: !196, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1790, file: !1752, line: 77, baseType: !196, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1790, file: !1752, line: 80, baseType: !196, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1790, file: !1752, line: 83, baseType: !196, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1790, file: !1752, line: 86, baseType: !196, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1790, file: !1752, line: 88, baseType: !196, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1790, file: !1752, line: 93, baseType: !196, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1790, file: !1752, line: 100, baseType: !196, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1727, file: !1650, line: 96, baseType: !262, size: 32, offset: 1024)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1668, file: !1650, line: 352, baseType: !1804, size: 4608, align: 512)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1650, line: 333, size: 4608, align: 512, elements: !1805)
!1805 = !{!1806, !1807, !1814}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1804, file: !1650, line: 334, baseType: !1686, size: 4096, align: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1804, file: !1650, line: 335, baseType: !1808, size: 512, offset: 4096)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1650, line: 312, size: 512, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1808, file: !1650, line: 313, baseType: !196, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1808, file: !1650, line: 314, baseType: !196, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1808, file: !1650, line: 315, baseType: !1813, size: 384, offset: 128)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, elements: !285)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1804, file: !1650, line: 336, baseType: !1815, offset: 4608)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !901)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1668, file: !1650, line: 353, baseType: !1817, size: 32768)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 32768, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 4096)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1649, file: !1650, line: 484, baseType: !1655, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1649, file: !1650, line: 491, baseType: !1822, size: 128, offset: 256)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1650, line: 404, size: 128, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1822, file: !1650, line: 424, baseType: !196, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1822, file: !1650, line: 432, baseType: !13, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1822, file: !1650, line: 440, baseType: !13, size: 32, offset: 96)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1649, file: !1650, line: 498, baseType: !1822, size: 128, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1649, file: !1650, line: 508, baseType: !1656, size: 33280, align: 512, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !437, file: !438, line: 21, baseType: !1830, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !447}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !437, file: !438, line: 22, baseType: !1834, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!40, !1837, !447}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !1109, line: 53, size: 256, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !1109, line: 54, baseType: !13, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1838, file: !1109, line: 55, baseType: !1107, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1838, file: !1109, line: 56, baseType: !1098, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1838, file: !1109, line: 57, baseType: !154, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !438, line: 23, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!398, !447}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !437, file: !438, line: 24, baseType: !1849, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!447, !447}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !430, file: !431, line: 12, baseType: !13, size: 32, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !431, line: 13, baseType: !210, size: 32, offset: 160)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !139, line: 77, baseType: !57, size: 64, offset: 2112)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !399, file: !139, line: 80, baseType: !306, size: 8, offset: 2176)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !399, file: !139, line: 88, baseType: !115, size: 128, offset: 2240)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !399, file: !139, line: 89, baseType: !205, size: 64, offset: 2368)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !399, file: !139, line: 90, baseType: !232, size: 320, offset: 2432)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !399, file: !139, line: 97, baseType: !888, size: 256, offset: 2752)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !399, file: !139, line: 99, baseType: !1861, size: 768, offset: 3008)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !31, line: 199, size: 768, elements: !1862)
!1862 = !{!1863, !1868}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1861, file: !31, line: 200, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!40, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1861, file: !31, line: 201, baseType: !1869, size: 704, offset: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !31, line: 193, size: 704, elements: !1870)
!1870 = !{!1871, !1918}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1869, file: !31, line: 195, baseType: !1872, size: 640)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !31, line: 173, size: 640, elements: !1873)
!1873 = !{!1874, !1886, !1887, !1888, !1908, !1909, !1911, !1917}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !31, line: 174, baseType: !1875, size: 192)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !31, line: 174, size: 192, elements: !1876)
!1876 = !{!1877, !1885}
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !31, line: 175, baseType: !1878, size: 192)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !31, line: 175, size: 192, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1878, file: !31, line: 176, baseType: !51, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1878, file: !31, line: 177, baseType: !40, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1878, file: !31, line: 178, baseType: !40, size: 32, offset: 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1878, file: !31, line: 179, baseType: !40, size: 32, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1878, file: !31, line: 180, baseType: !40, size: 32, offset: 160)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1875, file: !31, line: 182, baseType: !296, size: 128, align: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1872, file: !31, line: 184, baseType: !1024, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1872, file: !31, line: 185, baseType: !51, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1872, file: !31, line: 186, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !31, line: 204, size: 960, elements: !1891)
!1891 = !{!1892, !1893, !1897, !1904}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1890, file: !31, line: 205, baseType: !1861, size: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1890, file: !31, line: 206, baseType: !1894, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1867, !1889}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1890, file: !31, line: 207, baseType: !1898, size: 64, offset: 832)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1890, file: !31, line: 209, baseType: !1905, size: 64, offset: 896)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!40, !1901, !51}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1872, file: !31, line: 187, baseType: !1867, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1872, file: !31, line: 188, baseType: !1910, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1872, file: !31, line: 189, baseType: !1912, size: 64, offset: 512)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !31, line: 157, size: 256, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1913, file: !31, line: 158, baseType: !224, size: 192, align: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1913, file: !31, line: 159, baseType: !1901, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1872, file: !31, line: 190, baseType: !1005, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1869, file: !31, line: 196, baseType: !632, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !399, file: !139, line: 100, baseType: !1901, size: 64, offset: 3776)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !399, file: !139, line: 102, baseType: !1132, size: 64, offset: 3840)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !399, file: !139, line: 103, baseType: !1922, size: 640, offset: 3904)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 640, elements: !1141)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !399, file: !139, line: 104, baseType: !1924, size: 256, offset: 4544)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 256, elements: !327)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !156, file: !157, line: 139, baseType: !1132, size: 64, offset: 1216)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !156, file: !157, line: 140, baseType: !1927, size: 64, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !157, line: 25, size: 64, elements: !1929)
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1928, file: !157, line: 26, baseType: !67, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1928, file: !157, line: 27, baseType: !40, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1928, file: !157, line: 28, baseType: !1933, offset: 64)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !901)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !157, line: 142, baseType: !1935, size: 128, offset: 1344)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !157, line: 142, size: 128, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1935, file: !157, line: 143, baseType: !40, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1935, file: !157, line: 144, baseType: !296, size: 128, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !43, line: 154, baseType: !13)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!1945 = !{!0, !1946, !1949, !1951, !7}
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !1948, isLocal: true, isDefinition: true)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !327)
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "utsns_operations", scope: !9, file: !2, line: 160, type: !436, isLocal: false, isDefinition: true)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !1953, isLocal: true, isDefinition: true)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !1954)
!1954 = !{!1955}
!1955 = !DISubrange(count: 14)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1958, line: 11, flags: DIFlagFwdDecl)
!1958 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1959 = !{i32 7, !"Dwarf Version", i32 5}
!1960 = !{i32 2, !"Debug Info Version", i32 3}
!1961 = !{i32 1, !"wchar_size", i32 2}
!1962 = !{i32 8, !"cf-protection-branch", i32 1}
!1963 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1964 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1965 = !{i32 1, !"Code Model", i32 2}
!1966 = !{i32 1, !"override-stack-alignment", i32 8}
!1967 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1968 = distinct !DISubprogram(name: "copy_utsname", scope: !2, file: !2, line: 89, type: !1969, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1113, !57, !398, !1113}
!1971 = !{!1972, !1973, !1974, !1975}
!1972 = !DILocalVariable(name: "flags", arg: 1, scope: !1968, file: !2, line: 89, type: !57)
!1973 = !DILocalVariable(name: "user_ns", arg: 2, scope: !1968, file: !2, line: 90, type: !398)
!1974 = !DILocalVariable(name: "old_ns", arg: 3, scope: !1968, file: !2, line: 90, type: !1113)
!1975 = !DILocalVariable(name: "new_ns", scope: !1968, file: !2, line: 92, type: !1113)
!1976 = !DILocation(line: 89, column: 50, scope: !1968)
!1977 = !DILocation(line: 90, column: 25, scope: !1968)
!1978 = !DILocation(line: 90, column: 56, scope: !1968)
!1979 = !DILocation(line: 92, column: 2, scope: !1968)
!1980 = !DILocation(line: 92, column: 24, scope: !1968)
!1981 = !DILocation(line: 94, column: 2, scope: !1968)
!1982 = !DILocation(line: 94, column: 2, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 94, column: 2)
!1984 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 94, column: 2)
!1985 = !DILocation(line: 94, column: 2, scope: !1984)
!1986 = !DILocation(line: 94, column: 2, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 94, column: 2)
!1988 = !DILocation(line: 94, column: 2, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 94, column: 2)
!1990 = !DILocation(line: 94, column: 2, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 94, column: 2)
!1992 = !{i64 2152627583, i64 2152627612, i64 2152627658, i64 2152627716, i64 2152627770, i64 2152627824, i64 2152627879, i64 2152627910}
!1993 = !DILocation(line: 95, column: 13, scope: !1968)
!1994 = !DILocation(line: 95, column: 2, scope: !1968)
!1995 = !DILocation(line: 97, column: 8, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 97, column: 6)
!1997 = !DILocation(line: 97, column: 14, scope: !1996)
!1998 = !DILocation(line: 97, column: 6, scope: !1968)
!1999 = !DILocation(line: 98, column: 10, scope: !1996)
!2000 = !DILocation(line: 98, column: 3, scope: !1996)
!2001 = !DILocation(line: 100, column: 24, scope: !1968)
!2002 = !DILocation(line: 100, column: 33, scope: !1968)
!2003 = !DILocation(line: 100, column: 11, scope: !1968)
!2004 = !DILocation(line: 100, column: 9, scope: !1968)
!2005 = !DILocation(line: 102, column: 13, scope: !1968)
!2006 = !DILocation(line: 102, column: 2, scope: !1968)
!2007 = !DILocation(line: 103, column: 9, scope: !1968)
!2008 = !DILocation(line: 103, column: 2, scope: !1968)
!2009 = !DILocation(line: 104, column: 1, scope: !1968)
!2010 = distinct !DISubprogram(name: "get_uts_ns", scope: !1115, file: !1115, line: 33, type: !2011, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1113}
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "ns", arg: 1, scope: !2010, file: !1115, line: 33, type: !1113)
!2015 = !DILocation(line: 33, column: 53, scope: !2010)
!2016 = !DILocation(line: 35, column: 16, scope: !2010)
!2017 = !DILocation(line: 35, column: 20, scope: !2010)
!2018 = !DILocation(line: 35, column: 23, scope: !2010)
!2019 = !DILocation(line: 35, column: 2, scope: !2010)
!2020 = !DILocation(line: 36, column: 1, scope: !2010)
!2021 = distinct !DISubprogram(name: "clone_uts_ns", scope: !2, file: !2, line: 45, type: !2022, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1113, !398, !1113}
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2025 = !DILocalVariable(name: "user_ns", arg: 1, scope: !2021, file: !2, line: 45, type: !398)
!2026 = !DILocalVariable(name: "old_ns", arg: 2, scope: !2021, file: !2, line: 46, type: !1113)
!2027 = !DILocalVariable(name: "ns", scope: !2021, file: !2, line: 48, type: !1113)
!2028 = !DILocalVariable(name: "ucounts", scope: !2021, file: !2, line: 49, type: !1132)
!2029 = !DILocalVariable(name: "err", scope: !2021, file: !2, line: 50, type: !40)
!2030 = !DILabel(scope: !2021, name: "fail_free", file: !2, line: 75)
!2031 = !DILabel(scope: !2021, name: "fail_dec", file: !2, line: 77)
!2032 = !DILabel(scope: !2021, name: "fail", file: !2, line: 79)
!2033 = !DILocation(line: 45, column: 66, scope: !2021)
!2034 = !DILocation(line: 46, column: 30, scope: !2021)
!2035 = !DILocation(line: 48, column: 2, scope: !2021)
!2036 = !DILocation(line: 48, column: 24, scope: !2021)
!2037 = !DILocation(line: 49, column: 2, scope: !2021)
!2038 = !DILocation(line: 49, column: 18, scope: !2021)
!2039 = !DILocation(line: 50, column: 2, scope: !2021)
!2040 = !DILocation(line: 50, column: 6, scope: !2021)
!2041 = !DILocation(line: 52, column: 6, scope: !2021)
!2042 = !DILocation(line: 53, column: 31, scope: !2021)
!2043 = !DILocation(line: 53, column: 12, scope: !2021)
!2044 = !DILocation(line: 53, column: 10, scope: !2021)
!2045 = !DILocation(line: 54, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 54, column: 6)
!2047 = !DILocation(line: 54, column: 6, scope: !2021)
!2048 = !DILocation(line: 55, column: 3, scope: !2046)
!2049 = !DILocation(line: 57, column: 6, scope: !2021)
!2050 = !DILocation(line: 58, column: 7, scope: !2021)
!2051 = !DILocation(line: 58, column: 5, scope: !2021)
!2052 = !DILocation(line: 59, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 59, column: 6)
!2054 = !DILocation(line: 59, column: 6, scope: !2021)
!2055 = !DILocation(line: 60, column: 3, scope: !2053)
!2056 = !DILocation(line: 62, column: 23, scope: !2021)
!2057 = !DILocation(line: 62, column: 27, scope: !2021)
!2058 = !DILocation(line: 62, column: 8, scope: !2021)
!2059 = !DILocation(line: 62, column: 6, scope: !2021)
!2060 = !DILocation(line: 63, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 63, column: 6)
!2062 = !DILocation(line: 63, column: 6, scope: !2021)
!2063 = !DILocation(line: 64, column: 3, scope: !2061)
!2064 = !DILocation(line: 66, column: 16, scope: !2021)
!2065 = !DILocation(line: 66, column: 2, scope: !2021)
!2066 = !DILocation(line: 66, column: 6, scope: !2021)
!2067 = !DILocation(line: 66, column: 14, scope: !2021)
!2068 = !DILocation(line: 67, column: 2, scope: !2021)
!2069 = !DILocation(line: 67, column: 6, scope: !2021)
!2070 = !DILocation(line: 67, column: 9, scope: !2021)
!2071 = !DILocation(line: 67, column: 13, scope: !2021)
!2072 = !DILocation(line: 69, column: 2, scope: !2021)
!2073 = !DILocation(line: 70, column: 10, scope: !2021)
!2074 = !DILocation(line: 70, column: 14, scope: !2021)
!2075 = !DILocation(line: 70, column: 21, scope: !2021)
!2076 = !DILocation(line: 70, column: 29, scope: !2021)
!2077 = !DILocation(line: 70, column: 2, scope: !2021)
!2078 = !DILocation(line: 71, column: 28, scope: !2021)
!2079 = !DILocation(line: 71, column: 16, scope: !2021)
!2080 = !DILocation(line: 71, column: 2, scope: !2021)
!2081 = !DILocation(line: 71, column: 6, scope: !2021)
!2082 = !DILocation(line: 71, column: 14, scope: !2021)
!2083 = !DILocation(line: 72, column: 2, scope: !2021)
!2084 = !DILocation(line: 73, column: 9, scope: !2021)
!2085 = !DILocation(line: 73, column: 2, scope: !2021)
!2086 = !DILocation(line: 75, column: 1, scope: !2021)
!2087 = !DILocation(line: 76, column: 18, scope: !2021)
!2088 = !DILocation(line: 76, column: 32, scope: !2021)
!2089 = !DILocation(line: 76, column: 2, scope: !2021)
!2090 = !DILocation(line: 77, column: 1, scope: !2021)
!2091 = !DILocation(line: 78, column: 21, scope: !2021)
!2092 = !DILocation(line: 78, column: 2, scope: !2021)
!2093 = !DILocation(line: 79, column: 1, scope: !2021)
!2094 = !DILocation(line: 80, column: 17, scope: !2021)
!2095 = !DILocation(line: 80, column: 9, scope: !2021)
!2096 = !DILocation(line: 80, column: 2, scope: !2021)
!2097 = !DILocation(line: 81, column: 1, scope: !2021)
!2098 = distinct !DISubprogram(name: "put_uts_ns", scope: !1115, file: !1115, line: 42, type: !2011, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "ns", arg: 1, scope: !2098, file: !1115, line: 42, type: !1113)
!2101 = !DILocation(line: 42, column: 53, scope: !2098)
!2102 = !DILocation(line: 44, column: 29, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !1115, line: 44, column: 6)
!2104 = !DILocation(line: 44, column: 33, scope: !2103)
!2105 = !DILocation(line: 44, column: 36, scope: !2103)
!2106 = !DILocation(line: 44, column: 6, scope: !2103)
!2107 = !DILocation(line: 44, column: 6, scope: !2098)
!2108 = !DILocation(line: 45, column: 15, scope: !2103)
!2109 = !DILocation(line: 45, column: 3, scope: !2103)
!2110 = !DILocation(line: 46, column: 1, scope: !2098)
!2111 = distinct !DISubprogram(name: "free_uts_ns", scope: !2, file: !2, line: 106, type: !2011, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2112)
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "ns", arg: 1, scope: !2111, file: !2, line: 106, type: !1113)
!2114 = !DILocation(line: 106, column: 40, scope: !2111)
!2115 = !DILocation(line: 108, column: 21, scope: !2111)
!2116 = !DILocation(line: 108, column: 25, scope: !2111)
!2117 = !DILocation(line: 108, column: 2, scope: !2111)
!2118 = !DILocation(line: 109, column: 14, scope: !2111)
!2119 = !DILocation(line: 109, column: 18, scope: !2111)
!2120 = !DILocation(line: 109, column: 2, scope: !2111)
!2121 = !DILocation(line: 110, column: 2, scope: !2111)
!2122 = !DILocation(line: 111, column: 18, scope: !2111)
!2123 = !DILocation(line: 111, column: 32, scope: !2111)
!2124 = !DILocation(line: 111, column: 2, scope: !2111)
!2125 = !DILocation(line: 112, column: 1, scope: !2111)
!2126 = distinct !DISubprogram(name: "dec_uts_namespaces", scope: !2, file: !2, line: 25, type: !2127, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !1132}
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "ucounts", arg: 1, scope: !2126, file: !2, line: 25, type: !1132)
!2131 = !DILocation(line: 25, column: 48, scope: !2126)
!2132 = !DILocation(line: 27, column: 13, scope: !2126)
!2133 = !DILocation(line: 27, column: 2, scope: !2126)
!2134 = !DILocation(line: 28, column: 1, scope: !2126)
!2135 = distinct !DISubprogram(name: "put_user_ns", scope: !139, file: !139, line: 203, type: !2136, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !398}
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "ns", arg: 1, scope: !2135, file: !139, line: 203, type: !398)
!2140 = !DILocation(line: 203, column: 55, scope: !2135)
!2141 = !DILocation(line: 205, column: 1, scope: !2135)
!2142 = !DISubprogram(name: "proc_free_inum", scope: !438, file: !438, line: 54, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !13}
!2145 = !DISubprogram(name: "kmem_cache_free", scope: !2146, file: !2146, line: 503, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !1956, !38}
!2149 = distinct !DISubprogram(name: "utsns_get", scope: !2, file: !2, line: 119, type: !445, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2150)
!2150 = !{!2151, !2152, !2153}
!2151 = !DILocalVariable(name: "task", arg: 1, scope: !2149, file: !2, line: 119, type: !448)
!2152 = !DILocalVariable(name: "ns", scope: !2149, file: !2, line: 121, type: !1113)
!2153 = !DILocalVariable(name: "nsproxy", scope: !2149, file: !2, line: 122, type: !1107)
!2154 = !DILocation(line: 119, column: 56, scope: !2149)
!2155 = !DILocation(line: 121, column: 2, scope: !2149)
!2156 = !DILocation(line: 121, column: 24, scope: !2149)
!2157 = !DILocation(line: 122, column: 2, scope: !2149)
!2158 = !DILocation(line: 122, column: 18, scope: !2149)
!2159 = !DILocation(line: 124, column: 12, scope: !2149)
!2160 = !DILocation(line: 124, column: 2, scope: !2149)
!2161 = !DILocation(line: 125, column: 12, scope: !2149)
!2162 = !DILocation(line: 125, column: 18, scope: !2149)
!2163 = !DILocation(line: 125, column: 10, scope: !2149)
!2164 = !DILocation(line: 126, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 126, column: 6)
!2166 = !DILocation(line: 126, column: 6, scope: !2149)
!2167 = !DILocation(line: 127, column: 8, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 126, column: 15)
!2169 = !DILocation(line: 127, column: 17, scope: !2168)
!2170 = !DILocation(line: 127, column: 6, scope: !2168)
!2171 = !DILocation(line: 128, column: 14, scope: !2168)
!2172 = !DILocation(line: 128, column: 3, scope: !2168)
!2173 = !DILocation(line: 129, column: 2, scope: !2168)
!2174 = !DILocation(line: 130, column: 14, scope: !2149)
!2175 = !DILocation(line: 130, column: 2, scope: !2149)
!2176 = !DILocation(line: 132, column: 9, scope: !2149)
!2177 = !DILocation(line: 132, column: 15, scope: !2149)
!2178 = !DILocation(line: 132, column: 19, scope: !2149)
!2179 = !DILocation(line: 133, column: 1, scope: !2149)
!2180 = !DILocation(line: 132, column: 2, scope: !2149)
!2181 = distinct !DISubprogram(name: "utsns_put", scope: !2, file: !2, line: 135, type: !1831, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2182)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "ns", arg: 1, scope: !2181, file: !2, line: 135, type: !447)
!2184 = !DILocation(line: 135, column: 41, scope: !2181)
!2185 = !DILocation(line: 137, column: 23, scope: !2181)
!2186 = !DILocation(line: 137, column: 13, scope: !2181)
!2187 = !DILocation(line: 137, column: 2, scope: !2181)
!2188 = !DILocation(line: 138, column: 1, scope: !2181)
!2189 = distinct !DISubprogram(name: "utsns_install", scope: !2, file: !2, line: 140, type: !1835, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2190)
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DILocalVariable(name: "nsset", arg: 1, scope: !2189, file: !2, line: 140, type: !1837)
!2192 = !DILocalVariable(name: "new", arg: 2, scope: !2189, file: !2, line: 140, type: !447)
!2193 = !DILocalVariable(name: "nsproxy", scope: !2189, file: !2, line: 142, type: !1107)
!2194 = !DILocalVariable(name: "ns", scope: !2189, file: !2, line: 143, type: !1113)
!2195 = !DILocation(line: 140, column: 40, scope: !2189)
!2196 = !DILocation(line: 140, column: 65, scope: !2189)
!2197 = !DILocation(line: 142, column: 2, scope: !2189)
!2198 = !DILocation(line: 142, column: 18, scope: !2189)
!2199 = !DILocation(line: 142, column: 28, scope: !2189)
!2200 = !DILocation(line: 142, column: 35, scope: !2189)
!2201 = !DILocation(line: 143, column: 2, scope: !2189)
!2202 = !DILocation(line: 143, column: 24, scope: !2189)
!2203 = !DILocation(line: 143, column: 39, scope: !2189)
!2204 = !DILocation(line: 143, column: 29, scope: !2189)
!2205 = !DILocation(line: 145, column: 18, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 145, column: 6)
!2207 = !DILocation(line: 145, column: 22, scope: !2206)
!2208 = !DILocation(line: 145, column: 7, scope: !2206)
!2209 = !DILocation(line: 145, column: 46, scope: !2206)
!2210 = !DILocation(line: 146, column: 18, scope: !2206)
!2211 = !DILocation(line: 146, column: 25, scope: !2206)
!2212 = !DILocation(line: 146, column: 31, scope: !2206)
!2213 = !DILocation(line: 146, column: 7, scope: !2206)
!2214 = !DILocation(line: 145, column: 6, scope: !2189)
!2215 = !DILocation(line: 147, column: 3, scope: !2206)
!2216 = !DILocation(line: 149, column: 13, scope: !2189)
!2217 = !DILocation(line: 149, column: 2, scope: !2189)
!2218 = !DILocation(line: 150, column: 13, scope: !2189)
!2219 = !DILocation(line: 150, column: 22, scope: !2189)
!2220 = !DILocation(line: 150, column: 2, scope: !2189)
!2221 = !DILocation(line: 151, column: 20, scope: !2189)
!2222 = !DILocation(line: 151, column: 2, scope: !2189)
!2223 = !DILocation(line: 151, column: 11, scope: !2189)
!2224 = !DILocation(line: 151, column: 18, scope: !2189)
!2225 = !DILocation(line: 152, column: 2, scope: !2189)
!2226 = !DILocation(line: 153, column: 1, scope: !2189)
!2227 = distinct !DISubprogram(name: "utsns_owner", scope: !2, file: !2, line: 155, type: !1846, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2228)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "ns", arg: 1, scope: !2227, file: !2, line: 155, type: !447)
!2230 = !DILocation(line: 155, column: 61, scope: !2227)
!2231 = !DILocation(line: 157, column: 19, scope: !2227)
!2232 = !DILocation(line: 157, column: 9, scope: !2227)
!2233 = !DILocation(line: 157, column: 24, scope: !2227)
!2234 = !DILocation(line: 157, column: 2, scope: !2227)
!2235 = distinct !DISubprogram(name: "uts_ns_init", scope: !2, file: !2, line: 169, type: !2236, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null}
!2238 = !DILocation(line: 171, column: 17, scope: !2235)
!2239 = !DILocation(line: 171, column: 15, scope: !2235)
!2240 = !DILocation(line: 177, column: 1, scope: !2235)
!2241 = !DISubprogram(name: "kmem_cache_create_usercopy", scope: !2146, file: !2146, line: 192, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!1956, !35, !13, !13, !153, !13, !13, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !38}
!2247 = distinct !DISubprogram(name: "refcount_inc", scope: !126, file: !126, line: 265, type: !2248, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2251)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2251 = !{!2252}
!2252 = !DILocalVariable(name: "r", arg: 1, scope: !2247, file: !126, line: 265, type: !2250)
!2253 = !DILocation(line: 265, column: 45, scope: !2247)
!2254 = !DILocation(line: 267, column: 17, scope: !2247)
!2255 = !DILocation(line: 267, column: 2, scope: !2247)
!2256 = !DILocation(line: 268, column: 1, scope: !2247)
!2257 = distinct !DISubprogram(name: "__refcount_inc", scope: !126, file: !126, line: 248, type: !2258, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !2250, !1036}
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "r", arg: 1, scope: !2257, file: !126, line: 248, type: !2250)
!2262 = !DILocalVariable(name: "oldp", arg: 2, scope: !2257, file: !126, line: 248, type: !1036)
!2263 = !DILocation(line: 248, column: 47, scope: !2257)
!2264 = !DILocation(line: 248, column: 55, scope: !2257)
!2265 = !DILocation(line: 250, column: 20, scope: !2257)
!2266 = !DILocation(line: 250, column: 23, scope: !2257)
!2267 = !DILocation(line: 250, column: 2, scope: !2257)
!2268 = !DILocation(line: 251, column: 1, scope: !2257)
!2269 = distinct !DISubprogram(name: "__refcount_add", scope: !126, file: !126, line: 191, type: !2270, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !40, !2250, !1036}
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "i", arg: 1, scope: !2269, file: !126, line: 191, type: !40)
!2274 = !DILocalVariable(name: "r", arg: 2, scope: !2269, file: !126, line: 191, type: !2250)
!2275 = !DILocalVariable(name: "oldp", arg: 3, scope: !2269, file: !126, line: 191, type: !1036)
!2276 = !DILocalVariable(name: "old", scope: !2269, file: !126, line: 193, type: !40)
!2277 = !DILocation(line: 191, column: 39, scope: !2269)
!2278 = !DILocation(line: 191, column: 54, scope: !2269)
!2279 = !DILocation(line: 191, column: 62, scope: !2269)
!2280 = !DILocation(line: 193, column: 2, scope: !2269)
!2281 = !DILocation(line: 193, column: 6, scope: !2269)
!2282 = !DILocation(line: 193, column: 37, scope: !2269)
!2283 = !DILocation(line: 193, column: 41, scope: !2269)
!2284 = !DILocation(line: 193, column: 44, scope: !2269)
!2285 = !DILocation(line: 193, column: 12, scope: !2269)
!2286 = !DILocation(line: 195, column: 6, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2269, file: !126, line: 195, column: 6)
!2288 = !DILocation(line: 195, column: 6, scope: !2269)
!2289 = !DILocation(line: 196, column: 11, scope: !2287)
!2290 = !DILocation(line: 196, column: 4, scope: !2287)
!2291 = !DILocation(line: 196, column: 9, scope: !2287)
!2292 = !DILocation(line: 196, column: 3, scope: !2287)
!2293 = !DILocation(line: 198, column: 6, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2269, file: !126, line: 198, column: 6)
!2295 = !DILocation(line: 198, column: 6, scope: !2269)
!2296 = !DILocation(line: 199, column: 26, scope: !2294)
!2297 = !DILocation(line: 199, column: 3, scope: !2294)
!2298 = !DILocation(line: 200, column: 11, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !126, line: 200, column: 11)
!2300 = !DILocation(line: 200, column: 11, scope: !2294)
!2301 = !DILocation(line: 201, column: 26, scope: !2299)
!2302 = !DILocation(line: 201, column: 3, scope: !2299)
!2303 = !DILocation(line: 202, column: 1, scope: !2269)
!2304 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2305, file: !2305, line: 250, type: !2306, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2309)
!2305 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!40, !40, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "i", arg: 1, scope: !2304, file: !2305, line: 250, type: !40)
!2311 = !DILocalVariable(name: "v", arg: 2, scope: !2304, file: !2305, line: 250, type: !2308)
!2312 = !DILocation(line: 250, column: 30, scope: !2304)
!2313 = !DILocation(line: 250, column: 43, scope: !2304)
!2314 = !DILocation(line: 252, column: 31, scope: !2304)
!2315 = !DILocation(line: 252, column: 2, scope: !2304)
!2316 = !DILocation(line: 253, column: 38, scope: !2304)
!2317 = !DILocation(line: 253, column: 41, scope: !2304)
!2318 = !DILocation(line: 253, column: 9, scope: !2304)
!2319 = !DILocation(line: 253, column: 2, scope: !2304)
!2320 = !DISubprogram(name: "refcount_warn_saturate", scope: !126, file: !126, line: 127, type: !2321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2250, !125}
!2323 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2324, file: !2324, line: 94, type: !2325, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2330)
!2324 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2327, !53}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2330 = !{!2331, !2332}
!2331 = !DILocalVariable(name: "v", arg: 1, scope: !2323, file: !2324, line: 94, type: !2327)
!2332 = !DILocalVariable(name: "size", arg: 2, scope: !2323, file: !2324, line: 94, type: !53)
!2333 = !DILocation(line: 94, column: 79, scope: !2323)
!2334 = !DILocation(line: 94, column: 89, scope: !2323)
!2335 = !DILocation(line: 96, column: 20, scope: !2323)
!2336 = !DILocation(line: 96, column: 23, scope: !2323)
!2337 = !DILocation(line: 96, column: 2, scope: !2323)
!2338 = !DILocation(line: 97, column: 2, scope: !2323)
!2339 = !DILocation(line: 98, column: 1, scope: !2323)
!2340 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2341, file: !2341, line: 731, type: !2306, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2342)
!2341 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "i", arg: 1, scope: !2340, file: !2341, line: 731, type: !40)
!2344 = !DILocalVariable(name: "v", arg: 2, scope: !2340, file: !2341, line: 731, type: !2308)
!2345 = !DILocation(line: 731, column: 34, scope: !2340)
!2346 = !DILocation(line: 731, column: 47, scope: !2340)
!2347 = !DILocation(line: 736, column: 31, scope: !2340)
!2348 = !DILocation(line: 736, column: 34, scope: !2340)
!2349 = !DILocation(line: 736, column: 9, scope: !2340)
!2350 = !DILocation(line: 736, column: 2, scope: !2340)
!2351 = distinct !DISubprogram(name: "kasan_check_write", scope: !2352, file: !2352, line: 44, type: !2353, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2355)
!2352 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!306, !2327, !13}
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "p", arg: 1, scope: !2351, file: !2352, line: 44, type: !2327)
!2357 = !DILocalVariable(name: "size", arg: 2, scope: !2351, file: !2352, line: 44, type: !13)
!2358 = !DILocation(line: 44, column: 59, scope: !2351)
!2359 = !DILocation(line: 44, column: 75, scope: !2351)
!2360 = !DILocation(line: 46, column: 2, scope: !2351)
!2361 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2362, file: !2362, line: 229, type: !2363, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2365)
!2362 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2327, !53, !40}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "ptr", arg: 1, scope: !2361, file: !2362, line: 229, type: !2327)
!2367 = !DILocalVariable(name: "size", arg: 2, scope: !2361, file: !2362, line: 229, type: !53)
!2368 = !DILocalVariable(name: "type", arg: 3, scope: !2361, file: !2362, line: 230, type: !40)
!2369 = !DILocation(line: 229, column: 60, scope: !2361)
!2370 = !DILocation(line: 229, column: 72, scope: !2361)
!2371 = !DILocation(line: 230, column: 15, scope: !2361)
!2372 = !DILocation(line: 230, column: 23, scope: !2361)
!2373 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2374, file: !2374, line: 95, type: !2306, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2375)
!2374 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "i", arg: 1, scope: !2373, file: !2374, line: 95, type: !40)
!2377 = !DILocalVariable(name: "v", arg: 2, scope: !2373, file: !2374, line: 95, type: !2308)
!2378 = !DILocalVariable(name: "__ret", scope: !2379, file: !2374, line: 97, type: !40)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !2374, line: 97, column: 9)
!2380 = !DILocation(line: 95, column: 54, scope: !2373)
!2381 = !DILocation(line: 95, column: 67, scope: !2373)
!2382 = !DILocation(line: 97, column: 9, scope: !2379)
!2383 = !{i64 2148405442, i64 2148405481, i64 2148405502, i64 2148405539, i64 2148405562, i64 2148405571}
!2384 = !DILocation(line: 97, column: 9, scope: !2373)
!2385 = !DILocation(line: 97, column: 2, scope: !2373)
!2386 = distinct !DISubprogram(name: "inc_uts_namespaces", scope: !2, file: !2, line: 20, type: !2387, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!1132, !398}
!2389 = !{!2390}
!2390 = !DILocalVariable(name: "ns", arg: 1, scope: !2386, file: !2, line: 20, type: !398)
!2391 = !DILocation(line: 20, column: 66, scope: !2386)
!2392 = !DILocation(line: 22, column: 20, scope: !2386)
!2393 = !DILocation(line: 22, column: 24, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 22, column: 24)
!2395 = distinct !DILexicalBlock(scope: !2386, file: !2, line: 22, column: 24)
!2396 = !DILocation(line: 22, column: 24, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 22, column: 24)
!2398 = !DILocation(line: 22, column: 24, scope: !2395)
!2399 = !DILocation(line: 22, column: 9, scope: !2386)
!2400 = !DILocation(line: 22, column: 2, scope: !2386)
!2401 = distinct !DISubprogram(name: "create_uts_ns", scope: !2, file: !2, line: 30, type: !2402, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!1113}
!2404 = !{!2405}
!2405 = !DILocalVariable(name: "uts_ns", scope: !2401, file: !2, line: 32, type: !1113)
!2406 = !DILocation(line: 32, column: 2, scope: !2401)
!2407 = !DILocation(line: 32, column: 24, scope: !2401)
!2408 = !DILocation(line: 34, column: 28, scope: !2401)
!2409 = !DILocation(line: 34, column: 11, scope: !2401)
!2410 = !DILocation(line: 34, column: 9, scope: !2401)
!2411 = !DILocation(line: 35, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !2, line: 35, column: 6)
!2413 = !DILexicalBlockFile(scope: !2401, file: !2, discriminator: 0)
!2414 = !DILocation(line: 35, column: 6, scope: !2413)
!2415 = !DILocation(line: 36, column: 17, scope: !2412)
!2416 = !DILocation(line: 36, column: 25, scope: !2412)
!2417 = !DILocation(line: 36, column: 28, scope: !2412)
!2418 = !DILocation(line: 36, column: 3, scope: !2412)
!2419 = !DILocation(line: 37, column: 9, scope: !2413)
!2420 = !DILocation(line: 38, column: 1, scope: !2413)
!2421 = !DILocation(line: 37, column: 2, scope: !2413)
!2422 = distinct !DISubprogram(name: "ns_alloc_inum", scope: !438, file: !438, line: 67, type: !2423, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!40, !447}
!2425 = !{!2426}
!2426 = !DILocalVariable(name: "ns", arg: 1, scope: !2422, file: !438, line: 67, type: !447)
!2427 = !DILocation(line: 67, column: 51, scope: !2422)
!2428 = !DILocation(line: 69, column: 19, scope: !2422)
!2429 = !DILocation(line: 69, column: 23, scope: !2422)
!2430 = !DILocation(line: 69, column: 2, scope: !2422)
!2431 = !DILocation(line: 70, column: 26, scope: !2422)
!2432 = !DILocation(line: 70, column: 30, scope: !2422)
!2433 = !DILocation(line: 70, column: 9, scope: !2422)
!2434 = !DILocation(line: 70, column: 2, scope: !2422)
!2435 = !DISubprogram(name: "down_read", scope: !233, file: !233, line: 175, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!2439 = distinct !DISubprogram(name: "get_user_ns", scope: !139, file: !139, line: 185, type: !2440, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!398, !398}
!2442 = !{!2443}
!2443 = !DILocalVariable(name: "ns", arg: 1, scope: !2439, file: !139, line: 185, type: !398)
!2444 = !DILocation(line: 185, column: 73, scope: !2439)
!2445 = !DILocation(line: 187, column: 2, scope: !2439)
!2446 = !DISubprogram(name: "up_read", scope: !233, file: !233, line: 198, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2447 = distinct !DISubprogram(name: "ERR_PTR", scope: !2448, file: !2448, line: 39, type: !2449, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2451)
!2448 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!38, !933}
!2451 = !{!2452}
!2452 = !DILocalVariable(name: "error", arg: 1, scope: !2447, file: !2448, line: 39, type: !933)
!2453 = !DILocation(line: 39, column: 48, scope: !2447)
!2454 = !DILocation(line: 41, column: 18, scope: !2447)
!2455 = !DILocation(line: 41, column: 9, scope: !2447)
!2456 = !DILocation(line: 41, column: 2, scope: !2447)
!2457 = !DISubprogram(name: "inc_ucount", scope: !139, file: !139, line: 121, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!1132, !398, !169, !138}
!2460 = distinct !DISubprogram(name: "get_current", scope: !2461, file: !2461, line: 39, type: !2462, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2464)
!2461 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!448}
!2464 = !{!2465, !2467, !2471}
!2465 = !DILocalVariable(name: "pscr_ret__", scope: !2466, file: !2461, line: 41, type: !448)
!2466 = distinct !DILexicalBlock(scope: !2460, file: !2461, line: 41, column: 9)
!2467 = !DILocalVariable(name: "__vpp_verify", scope: !2468, file: !2461, line: 41, type: !2469)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !2461, line: 41, column: 9)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2471 = !DILocalVariable(name: "pfo_val__", scope: !2472, file: !2461, line: 41, type: !196)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !2461, line: 41, column: 9)
!2473 = !DILocation(line: 41, column: 9, scope: !2466)
!2474 = !DILocation(line: 41, column: 9, scope: !2468)
!2475 = !DILocation(line: 41, column: 9, scope: !2472)
!2476 = !{i64 2148187938}
!2477 = !DILocation(line: 41, column: 9, scope: !2460)
!2478 = !DILocation(line: 41, column: 2, scope: !2460)
!2479 = !DISubprogram(name: "kmem_cache_alloc", scope: !2146, file: !2146, line: 500, type: !2480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!38, !1956, !1940}
!2482 = distinct !DISubprogram(name: "refcount_set", scope: !126, file: !126, line: 134, type: !2483, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2250, !40}
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "r", arg: 1, scope: !2482, file: !126, line: 134, type: !2250)
!2487 = !DILocalVariable(name: "n", arg: 2, scope: !2482, file: !126, line: 134, type: !40)
!2488 = !DILocation(line: 134, column: 45, scope: !2482)
!2489 = !DILocation(line: 134, column: 52, scope: !2482)
!2490 = !DILocation(line: 136, column: 14, scope: !2482)
!2491 = !DILocation(line: 136, column: 17, scope: !2482)
!2492 = !DILocation(line: 136, column: 23, scope: !2482)
!2493 = !DILocation(line: 136, column: 2, scope: !2482)
!2494 = !DILocation(line: 137, column: 1, scope: !2482)
!2495 = distinct !DISubprogram(name: "atomic_set", scope: !2305, file: !2305, line: 65, type: !2496, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2308, !40}
!2498 = !{!2499, !2500}
!2499 = !DILocalVariable(name: "v", arg: 1, scope: !2495, file: !2305, line: 65, type: !2308)
!2500 = !DILocalVariable(name: "i", arg: 2, scope: !2495, file: !2305, line: 65, type: !40)
!2501 = !DILocation(line: 65, column: 22, scope: !2495)
!2502 = !DILocation(line: 65, column: 29, scope: !2495)
!2503 = !DILocation(line: 67, column: 26, scope: !2495)
!2504 = !DILocation(line: 67, column: 2, scope: !2495)
!2505 = !DILocation(line: 68, column: 17, scope: !2495)
!2506 = !DILocation(line: 68, column: 20, scope: !2495)
!2507 = !DILocation(line: 68, column: 2, scope: !2495)
!2508 = !DILocation(line: 69, column: 1, scope: !2495)
!2509 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2324, file: !2324, line: 80, type: !2325, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2510)
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "v", arg: 1, scope: !2509, file: !2324, line: 80, type: !2327)
!2512 = !DILocalVariable(name: "size", arg: 2, scope: !2509, file: !2324, line: 80, type: !53)
!2513 = !DILocation(line: 80, column: 74, scope: !2509)
!2514 = !DILocation(line: 80, column: 84, scope: !2509)
!2515 = !DILocation(line: 82, column: 20, scope: !2509)
!2516 = !DILocation(line: 82, column: 23, scope: !2509)
!2517 = !DILocation(line: 82, column: 2, scope: !2509)
!2518 = !DILocation(line: 83, column: 2, scope: !2509)
!2519 = !DILocation(line: 84, column: 1, scope: !2509)
!2520 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2341, file: !2341, line: 488, type: !2496, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "v", arg: 1, scope: !2520, file: !2341, line: 488, type: !2308)
!2523 = !DILocalVariable(name: "i", arg: 2, scope: !2520, file: !2341, line: 488, type: !40)
!2524 = !DILocation(line: 488, column: 26, scope: !2520)
!2525 = !DILocation(line: 488, column: 33, scope: !2520)
!2526 = !DILocation(line: 490, column: 18, scope: !2520)
!2527 = !DILocation(line: 490, column: 21, scope: !2520)
!2528 = !DILocation(line: 490, column: 2, scope: !2520)
!2529 = !DILocation(line: 491, column: 1, scope: !2520)
!2530 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2374, file: !2374, line: 26, type: !2496, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2531)
!2531 = !{!2532, !2533}
!2532 = !DILocalVariable(name: "v", arg: 1, scope: !2530, file: !2374, line: 26, type: !2308)
!2533 = !DILocalVariable(name: "i", arg: 2, scope: !2530, file: !2374, line: 26, type: !40)
!2534 = !DILocation(line: 26, column: 55, scope: !2530)
!2535 = !DILocation(line: 26, column: 62, scope: !2530)
!2536 = !DILocation(line: 28, column: 2, scope: !2530)
!2537 = !DILocation(line: 28, column: 2, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !2374, line: 28, column: 2)
!2539 = !DILocation(line: 29, column: 1, scope: !2530)
!2540 = distinct !DISubprogram(name: "atomic_long_set", scope: !2305, file: !2305, line: 3193, type: !2541, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2544)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2543, !933}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "v", arg: 1, scope: !2540, file: !2305, line: 3193, type: !2543)
!2546 = !DILocalVariable(name: "i", arg: 2, scope: !2540, file: !2305, line: 3193, type: !933)
!2547 = !DILocation(line: 3193, column: 32, scope: !2540)
!2548 = !DILocation(line: 3193, column: 40, scope: !2540)
!2549 = !DILocation(line: 3195, column: 26, scope: !2540)
!2550 = !DILocation(line: 3195, column: 2, scope: !2540)
!2551 = !DILocation(line: 3196, column: 22, scope: !2540)
!2552 = !DILocation(line: 3196, column: 25, scope: !2540)
!2553 = !DILocation(line: 3196, column: 2, scope: !2540)
!2554 = !DILocation(line: 3197, column: 1, scope: !2540)
!2555 = !DISubprogram(name: "proc_alloc_inum", scope: !438, file: !438, line: 53, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!40, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2559 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !161, file: !161, line: 76, type: !2541, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2560)
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "v", arg: 1, scope: !2559, file: !161, line: 76, type: !2543)
!2562 = !DILocalVariable(name: "i", arg: 2, scope: !2559, file: !161, line: 76, type: !933)
!2563 = !DILocation(line: 76, column: 36, scope: !2559)
!2564 = !DILocation(line: 76, column: 44, scope: !2559)
!2565 = !DILocation(line: 79, column: 19, scope: !2559)
!2566 = !DILocation(line: 79, column: 22, scope: !2559)
!2567 = !DILocation(line: 79, column: 2, scope: !2559)
!2568 = !DILocation(line: 83, column: 1, scope: !2559)
!2569 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !2341, file: !2341, line: 2600, type: !2570, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2573)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !2572, !166}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "v", arg: 1, scope: !2569, file: !2341, line: 2600, type: !2572)
!2575 = !DILocalVariable(name: "i", arg: 2, scope: !2569, file: !2341, line: 2600, type: !166)
!2576 = !DILocation(line: 2600, column: 30, scope: !2569)
!2577 = !DILocation(line: 2600, column: 37, scope: !2569)
!2578 = !DILocation(line: 2602, column: 20, scope: !2569)
!2579 = !DILocation(line: 2602, column: 23, scope: !2569)
!2580 = !DILocation(line: 2602, column: 2, scope: !2569)
!2581 = !DILocation(line: 2603, column: 1, scope: !2569)
!2582 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !2583, file: !2583, line: 18, type: !2570, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2584)
!2583 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "v", arg: 1, scope: !2582, file: !2583, line: 18, type: !2572)
!2586 = !DILocalVariable(name: "i", arg: 2, scope: !2582, file: !2583, line: 18, type: !166)
!2587 = !DILocation(line: 18, column: 59, scope: !2582)
!2588 = !DILocation(line: 18, column: 66, scope: !2582)
!2589 = !DILocation(line: 20, column: 2, scope: !2582)
!2590 = !DILocation(line: 20, column: 2, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2582, file: !2583, line: 20, column: 2)
!2592 = !DILocation(line: 21, column: 1, scope: !2582)
!2593 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !126, file: !126, line: 331, type: !2594, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!306, !2250}
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "r", arg: 1, scope: !2593, file: !126, line: 331, type: !2250)
!2598 = !DILocation(line: 331, column: 67, scope: !2593)
!2599 = !DILocation(line: 333, column: 33, scope: !2593)
!2600 = !DILocation(line: 333, column: 9, scope: !2593)
!2601 = !DILocation(line: 333, column: 2, scope: !2593)
!2602 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !126, file: !126, line: 313, type: !2603, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!306, !2250, !1036}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "r", arg: 1, scope: !2602, file: !126, line: 313, type: !2250)
!2607 = !DILocalVariable(name: "oldp", arg: 2, scope: !2602, file: !126, line: 313, type: !1036)
!2608 = !DILocation(line: 313, column: 69, scope: !2602)
!2609 = !DILocation(line: 313, column: 77, scope: !2602)
!2610 = !DILocation(line: 315, column: 36, scope: !2602)
!2611 = !DILocation(line: 315, column: 39, scope: !2602)
!2612 = !DILocation(line: 315, column: 9, scope: !2602)
!2613 = !DILocation(line: 315, column: 2, scope: !2602)
!2614 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !126, file: !126, line: 270, type: !2615, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!306, !40, !2250, !1036}
!2617 = !{!2618, !2619, !2620, !2621}
!2618 = !DILocalVariable(name: "i", arg: 1, scope: !2614, file: !126, line: 270, type: !40)
!2619 = !DILocalVariable(name: "r", arg: 2, scope: !2614, file: !126, line: 270, type: !2250)
!2620 = !DILocalVariable(name: "oldp", arg: 3, scope: !2614, file: !126, line: 270, type: !1036)
!2621 = !DILocalVariable(name: "old", scope: !2614, file: !126, line: 272, type: !40)
!2622 = !DILocation(line: 270, column: 61, scope: !2614)
!2623 = !DILocation(line: 270, column: 76, scope: !2614)
!2624 = !DILocation(line: 270, column: 84, scope: !2614)
!2625 = !DILocation(line: 272, column: 2, scope: !2614)
!2626 = !DILocation(line: 272, column: 6, scope: !2614)
!2627 = !DILocation(line: 272, column: 37, scope: !2614)
!2628 = !DILocation(line: 272, column: 41, scope: !2614)
!2629 = !DILocation(line: 272, column: 44, scope: !2614)
!2630 = !DILocation(line: 272, column: 12, scope: !2614)
!2631 = !DILocation(line: 274, column: 6, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2614, file: !126, line: 274, column: 6)
!2633 = !DILocation(line: 274, column: 6, scope: !2614)
!2634 = !DILocation(line: 275, column: 11, scope: !2632)
!2635 = !DILocation(line: 275, column: 4, scope: !2632)
!2636 = !DILocation(line: 275, column: 9, scope: !2632)
!2637 = !DILocation(line: 275, column: 3, scope: !2632)
!2638 = !DILocation(line: 277, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2614, file: !126, line: 277, column: 6)
!2640 = !DILocation(line: 277, column: 13, scope: !2639)
!2641 = !DILocation(line: 277, column: 10, scope: !2639)
!2642 = !DILocation(line: 277, column: 6, scope: !2614)
!2643 = !DILocation(line: 278, column: 3, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !126, line: 277, column: 16)
!2645 = !DILocation(line: 278, column: 3, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2644, file: !126, line: 278, column: 3)
!2647 = !DILocation(line: 278, column: 3, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2646, file: !126, line: 278, column: 3)
!2649 = !DILocation(line: 278, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !126, line: 278, column: 3)
!2651 = !DILocation(line: 278, column: 3, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2650, file: !126, line: 278, column: 3)
!2653 = !{i64 2150112656}
!2654 = !DILocation(line: 279, column: 3, scope: !2644)
!2655 = !DILocation(line: 282, column: 6, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2614, file: !126, line: 282, column: 6)
!2657 = !DILocation(line: 282, column: 6, scope: !2614)
!2658 = !DILocation(line: 283, column: 26, scope: !2656)
!2659 = !DILocation(line: 283, column: 3, scope: !2656)
!2660 = !DILocation(line: 285, column: 2, scope: !2614)
!2661 = !DILocation(line: 286, column: 1, scope: !2614)
!2662 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2305, file: !2305, line: 397, type: !2306, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2663)
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "i", arg: 1, scope: !2662, file: !2305, line: 397, type: !40)
!2665 = !DILocalVariable(name: "v", arg: 2, scope: !2662, file: !2305, line: 397, type: !2308)
!2666 = !DILocation(line: 397, column: 30, scope: !2662)
!2667 = !DILocation(line: 397, column: 43, scope: !2662)
!2668 = !DILocation(line: 399, column: 2, scope: !2662)
!2669 = !DILocation(line: 399, column: 2, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !2305, line: 399, column: 2)
!2671 = !DILocation(line: 400, column: 31, scope: !2662)
!2672 = !DILocation(line: 400, column: 2, scope: !2662)
!2673 = !DILocation(line: 401, column: 38, scope: !2662)
!2674 = !DILocation(line: 401, column: 41, scope: !2662)
!2675 = !DILocation(line: 401, column: 9, scope: !2662)
!2676 = !DILocation(line: 401, column: 2, scope: !2662)
!2677 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2341, file: !2341, line: 928, type: !2306, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2678)
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "i", arg: 1, scope: !2677, file: !2341, line: 928, type: !40)
!2680 = !DILocalVariable(name: "v", arg: 2, scope: !2677, file: !2341, line: 928, type: !2308)
!2681 = !DILocation(line: 928, column: 34, scope: !2677)
!2682 = !DILocation(line: 928, column: 47, scope: !2677)
!2683 = !DILocation(line: 936, column: 31, scope: !2677)
!2684 = !DILocation(line: 936, column: 34, scope: !2677)
!2685 = !DILocation(line: 936, column: 9, scope: !2677)
!2686 = !DILocation(line: 936, column: 2, scope: !2677)
!2687 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2374, file: !2374, line: 101, type: !2306, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DILocalVariable(name: "i", arg: 1, scope: !2687, file: !2374, line: 101, type: !40)
!2690 = !DILocalVariable(name: "v", arg: 2, scope: !2687, file: !2374, line: 101, type: !2308)
!2691 = !DILocalVariable(name: "__ret", scope: !2692, file: !2374, line: 103, type: !40)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !2374, line: 103, column: 9)
!2693 = !DILocation(line: 101, column: 54, scope: !2687)
!2694 = !DILocation(line: 101, column: 67, scope: !2687)
!2695 = !DILocation(line: 103, column: 9, scope: !2692)
!2696 = !{i64 2148407627, i64 2148407666, i64 2148407687, i64 2148407724, i64 2148407747, i64 2148407756}
!2697 = !DILocation(line: 103, column: 9, scope: !2687)
!2698 = !DILocation(line: 103, column: 2, scope: !2687)
!2699 = !DISubprogram(name: "dec_ucount", scope: !139, file: !139, line: 122, type: !2700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !1132, !138}
!2702 = distinct !DISubprogram(name: "task_lock", scope: !2703, file: !2703, line: 220, type: !2704, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2706)
!2703 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !448}
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "p", arg: 1, scope: !2702, file: !2703, line: 220, type: !448)
!2708 = !DILocation(line: 220, column: 50, scope: !2702)
!2709 = !DILocation(line: 222, column: 13, scope: !2702)
!2710 = !DILocation(line: 222, column: 16, scope: !2702)
!2711 = !DILocation(line: 222, column: 2, scope: !2702)
!2712 = !DILocation(line: 223, column: 1, scope: !2702)
!2713 = distinct !DISubprogram(name: "task_unlock", scope: !2703, file: !2703, line: 225, type: !2704, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2714)
!2714 = !{!2715}
!2715 = !DILocalVariable(name: "p", arg: 1, scope: !2713, file: !2703, line: 225, type: !448)
!2716 = !DILocation(line: 225, column: 52, scope: !2713)
!2717 = !DILocation(line: 227, column: 15, scope: !2713)
!2718 = !DILocation(line: 227, column: 18, scope: !2713)
!2719 = !DILocation(line: 227, column: 2, scope: !2713)
!2720 = !DILocation(line: 228, column: 1, scope: !2713)
!2721 = distinct !DISubprogram(name: "spin_lock", scope: !2722, file: !2722, line: 349, type: !2723, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2726)
!2722 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "lock", arg: 1, scope: !2721, file: !2722, line: 349, type: !2725)
!2728 = !DILocation(line: 349, column: 51, scope: !2721)
!2729 = !DILocation(line: 351, column: 2, scope: !2721)
!2730 = !DILocation(line: 352, column: 1, scope: !2721)
!2731 = !DISubprogram(name: "_raw_spin_lock", scope: !2732, file: !2732, line: 22, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2732 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2733 = !DISubroutineType(types: !2734)
!2734 = !{null, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!2736 = distinct !DISubprogram(name: "spin_unlock", scope: !2722, file: !2722, line: 389, type: !2723, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2737)
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "lock", arg: 1, scope: !2736, file: !2722, line: 389, type: !2725)
!2739 = !DILocation(line: 389, column: 53, scope: !2736)
!2740 = !DILocation(line: 391, column: 2, scope: !2736)
!2741 = !DILocation(line: 392, column: 1, scope: !2736)
!2742 = !DISubprogram(name: "_raw_spin_unlock", scope: !2732, file: !2732, line: 39, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2743 = distinct !DISubprogram(name: "to_uts_ns", scope: !2, file: !2, line: 114, type: !2744, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!1113, !447}
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "ns", arg: 1, scope: !2743, file: !2, line: 114, type: !447)
!2748 = !DILocalVariable(name: "__mptr", scope: !2749, file: !2, line: 116, type: !38)
!2749 = distinct !DILexicalBlock(scope: !2743, file: !2, line: 116, column: 9)
!2750 = !DILocation(line: 114, column: 65, scope: !2743)
!2751 = !DILocation(line: 116, column: 9, scope: !2749)
!2752 = !DILocation(line: 116, column: 9, scope: !2743)
!2753 = !DILocation(line: 116, column: 2, scope: !2743)
!2754 = !DISubprogram(name: "ns_capable", scope: !192, file: !192, line: 149, type: !2755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!306, !398, !40}
