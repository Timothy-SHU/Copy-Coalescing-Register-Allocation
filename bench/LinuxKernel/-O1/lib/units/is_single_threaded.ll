; ModuleID = 'lib/is_single_threaded.c'
source_filename = "lib/is_single_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
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
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@init_task = external dso_local global %struct.task_struct, align 64
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @current_is_single_threaded() #0 align 16 !dbg !1843 {
entry:
  %retval = alloca i1, align 1
  %task = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %p = alloca ptr, align 8
  %t = alloca ptr, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  %__mptr74 = alloca ptr, align 8
  %tmp78 = alloca ptr, align 8
  %tmp81 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #7, !dbg !1864
  call void @llvm.dbg.declare(metadata ptr %task, metadata !1847, metadata !DIExpression()), !dbg !1865
  %call = call ptr @get_current() #8, !dbg !1866
  store ptr %call, ptr %task, align 8, !dbg !1865
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #7, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1848, metadata !DIExpression()), !dbg !1868
  %0 = load ptr, ptr %task, align 8, !dbg !1869
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49, !dbg !1870
  %1 = load ptr, ptr %mm1, align 64, !dbg !1870
  store ptr %1, ptr %mm, align 8, !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1849, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1850, metadata !DIExpression()), !dbg !1873
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #7, !dbg !1874
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1851, metadata !DIExpression()), !dbg !1875
  %2 = load ptr, ptr %task, align 8, !dbg !1876
  %signal = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 104, !dbg !1878
  %3 = load ptr, ptr %signal, align 64, !dbg !1878
  %live = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 1, !dbg !1879
  %call2 = call i32 @atomic_read(ptr noundef %live) #8, !dbg !1880
  %cmp = icmp ne i32 %call2, 1, !dbg !1881
  br i1 %cmp, label %if.then, label %if.end, !dbg !1882

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1883

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mm, align 8, !dbg !1884
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !1886
  %mm_users = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 10, !dbg !1886
  %call3 = call i32 @atomic_read(ptr noundef %mm_users) #8, !dbg !1887
  %cmp4 = icmp eq i32 %call3, 1, !dbg !1888
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1889

if.then5:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1890

if.end6:                                          ; preds = %if.end
  store i8 0, ptr %ret, align 1, !dbg !1891
  call void @rcu_read_lock() #8, !dbg !1892
  store ptr @init_task, ptr %p, align 8, !dbg !1893
  br label %for.cond, !dbg !1893

for.cond:                                         ; preds = %for.end, %if.then22, %if.then11, %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1852, metadata !DIExpression()), !dbg !1894
  br label %do.body, !dbg !1895

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !1897

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1897

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %p, align 8, !dbg !1895
  %tasks = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 46, !dbg !1895
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !1895
  %7 = load volatile ptr, ptr %next, align 16, !dbg !1895
  store ptr %7, ptr %tmp, align 8, !dbg !1897
  %8 = load ptr, ptr %tmp, align 8, !dbg !1895
  store ptr %8, ptr %__mptr, align 8, !dbg !1894
  %9 = load ptr, ptr %__mptr, align 8, !dbg !1894
  %add.ptr = getelementptr i8, ptr %9, i64 -1136, !dbg !1894
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1899
  %10 = load ptr, ptr %tmp7, align 8, !dbg !1894
  store ptr %10, ptr %p, align 8, !dbg !1899
  %cmp8 = icmp ne ptr %10, @init_task, !dbg !1899
  br i1 %cmp8, label %for.body, label %for.end83, !dbg !1893

for.body:                                         ; preds = %do.end
  %11 = load ptr, ptr %p, align 8, !dbg !1900
  %flags = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 4, !dbg !1900
  %12 = load i32, ptr %flags, align 4, !dbg !1900
  %and = and i32 %12, 2097152, !dbg !1900
  %tobool = icmp ne i32 %and, 0, !dbg !1900
  %lnot = xor i1 %tobool, true, !dbg !1900
  %lnot9 = xor i1 %lnot, true, !dbg !1900
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !1900
  %conv = sext i32 %lnot.ext to i64, !dbg !1900
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1900
  %tobool10 = icmp ne i64 %expval, 0, !dbg !1900
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1902

if.then11:                                        ; preds = %for.body
  br label %for.cond, !dbg !1903, !llvm.loop !1904

if.end12:                                         ; preds = %for.body
  %13 = load ptr, ptr %p, align 8, !dbg !1908
  %14 = load ptr, ptr %task, align 8, !dbg !1908
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 69, !dbg !1908
  %15 = load ptr, ptr %group_leader, align 8, !dbg !1908
  %cmp13 = icmp eq ptr %13, %15, !dbg !1908
  %lnot15 = xor i1 %cmp13, true, !dbg !1908
  %lnot17 = xor i1 %lnot15, true, !dbg !1908
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1908
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1908
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !1908
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !1908
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1910

if.then22:                                        ; preds = %if.end12
  br label %for.cond, !dbg !1911, !llvm.loop !1904

if.end23:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #7, !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !1856, metadata !DIExpression()), !dbg !1912
  br label %do.body25, !dbg !1913

do.body25:                                        ; preds = %if.end23
  br label %do.cond26, !dbg !1915

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1915

do.end27:                                         ; preds = %do.cond26
  %16 = load ptr, ptr %p, align 8, !dbg !1913
  %signal29 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 104, !dbg !1913
  %17 = load ptr, ptr %signal29, align 64, !dbg !1913
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 4, !dbg !1913
  %next30 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !1913
  %18 = load volatile ptr, ptr %next30, align 8, !dbg !1913
  store ptr %18, ptr %tmp28, align 8, !dbg !1915
  %19 = load ptr, ptr %tmp28, align 8, !dbg !1913
  store ptr %19, ptr %__mptr24, align 8, !dbg !1912
  %20 = load ptr, ptr %__mptr24, align 8, !dbg !1912
  %add.ptr32 = getelementptr i8, ptr %20, i64 -1528, !dbg !1912
  store ptr %add.ptr32, ptr %tmp31, align 8, !dbg !1912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #7, !dbg !1917
  %21 = load ptr, ptr %tmp31, align 8, !dbg !1912
  store ptr %21, ptr %t, align 8, !dbg !1917
  br label %for.cond33, !dbg !1917

for.cond33:                                       ; preds = %do.end77, %do.end27
  %22 = load ptr, ptr %t, align 8, !dbg !1918
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 75, !dbg !1918
  %23 = load ptr, ptr %p, align 8, !dbg !1918
  %signal34 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 104, !dbg !1918
  %24 = load ptr, ptr %signal34, align 64, !dbg !1918
  %thread_head35 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 4, !dbg !1918
  %cmp36 = icmp ne ptr %thread_node, %thread_head35, !dbg !1918
  br i1 %cmp36, label %for.body38, label %for.end, !dbg !1917

for.body38:                                       ; preds = %for.cond33
  %25 = load ptr, ptr %t, align 8, !dbg !1919
  %mm39 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 49, !dbg !1919
  %26 = load ptr, ptr %mm39, align 64, !dbg !1919
  %27 = load ptr, ptr %mm, align 8, !dbg !1919
  %cmp40 = icmp eq ptr %26, %27, !dbg !1919
  %lnot42 = xor i1 %cmp40, true, !dbg !1919
  %lnot44 = xor i1 %lnot42, true, !dbg !1919
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !1919
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !1919
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !1919
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !1919
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !1922

if.then49:                                        ; preds = %for.body38
  br label %found, !dbg !1923

if.end50:                                         ; preds = %for.body38
  %28 = load ptr, ptr %t, align 8, !dbg !1924
  %mm51 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 49, !dbg !1924
  %29 = load ptr, ptr %mm51, align 64, !dbg !1924
  %tobool52 = icmp ne ptr %29, null, !dbg !1924
  %lnot53 = xor i1 %tobool52, true, !dbg !1924
  %lnot55 = xor i1 %lnot53, true, !dbg !1924
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !1924
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !1924
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 1), !dbg !1924
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !1924
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !1926

if.then60:                                        ; preds = %if.end50
  br label %for.end, !dbg !1927

if.end61:                                         ; preds = %if.end50
  br label %do.body62, !dbg !1928

do.body62:                                        ; preds = %if.end61
  br label %do.body63, !dbg !1929

do.body63:                                        ; preds = %do.body62
  br label %do.cond64, !dbg !1931

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !1931

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !1929

do.body66:                                        ; preds = %do.end65
  br label %do.body67, !dbg !1933

do.body67:                                        ; preds = %do.body66
  br label %do.cond68, !dbg !1935

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !1935

do.end69:                                         ; preds = %do.cond68
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1933, !srcloc !1937
  br label %do.cond70, !dbg !1933

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !1933

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !1929

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !1929

do.end73:                                         ; preds = %do.cond72
  br label %for.inc, !dbg !1938

for.inc:                                          ; preds = %do.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr74) #7, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %__mptr74, metadata !1860, metadata !DIExpression()), !dbg !1939
  br label %do.body75, !dbg !1940

do.body75:                                        ; preds = %for.inc
  br label %do.cond76, !dbg !1942

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !1942

do.end77:                                         ; preds = %do.cond76
  %30 = load ptr, ptr %t, align 8, !dbg !1940
  %thread_node79 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 75, !dbg !1940
  %next80 = getelementptr inbounds %struct.list_head, ptr %thread_node79, i32 0, i32 0, !dbg !1940
  %31 = load volatile ptr, ptr %next80, align 8, !dbg !1940
  store ptr %31, ptr %tmp78, align 8, !dbg !1942
  %32 = load ptr, ptr %tmp78, align 8, !dbg !1940
  store ptr %32, ptr %__mptr74, align 8, !dbg !1939
  %33 = load ptr, ptr %__mptr74, align 8, !dbg !1939
  %add.ptr82 = getelementptr i8, ptr %33, i64 -1528, !dbg !1939
  store ptr %add.ptr82, ptr %tmp81, align 8, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr74) #7, !dbg !1918
  %34 = load ptr, ptr %tmp81, align 8, !dbg !1939
  store ptr %34, ptr %t, align 8, !dbg !1918
  br label %for.cond33, !dbg !1918, !llvm.loop !1944

for.end:                                          ; preds = %if.then60, %for.cond33
  br label %for.cond, !dbg !1899, !llvm.loop !1904

for.end83:                                        ; preds = %do.end
  store i8 1, ptr %ret, align 1, !dbg !1946
  br label %found, !dbg !1947

found:                                            ; preds = %for.end83, %if.then49
  call void @llvm.dbg.label(metadata !1863), !dbg !1948
  call void @rcu_read_unlock() #8, !dbg !1949
  %35 = load i8, ptr %ret, align 1, !dbg !1950, !range !1951, !noundef !424
  %tobool84 = trunc i8 %35 to i1, !dbg !1950
  store i1 %tobool84, ptr %retval, align 1, !dbg !1952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1952

cleanup:                                          ; preds = %found, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #7, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #7, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #7, !dbg !1953
  %36 = load i1, ptr %retval, align 1, !dbg !1953
  ret i1 %36, !dbg !1953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !1954 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #7, !dbg !1967
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1959, metadata !DIExpression()), !dbg !1967
  br label %do.body, !dbg !1967

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #7, !dbg !1968
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1961, metadata !DIExpression()), !dbg !1968
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1968
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #7, !dbg !1967
  br label %do.cond, !dbg !1968

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1968

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #7, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1965, metadata !DIExpression()), !dbg !1969
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #9, !dbg !1969, !srcloc !1970
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1969
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1969
  %3 = inttoptr i64 %2 to ptr, !dbg !1969
  store ptr %3, ptr %tmp, align 8, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #7, !dbg !1967
  %4 = load ptr, ptr %tmp, align 8, !dbg !1969
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1967
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1967
  store ptr %5, ptr %tmp1, align 8, !dbg !1967
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #7, !dbg !1971
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1967
  ret ptr %6, !dbg !1972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !1973 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1980, metadata !DIExpression()), !dbg !1981
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1982
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !1983
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1984
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !1985
  ret i32 %call, !dbg !1986
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !1987 {
entry:
  call void @__rcu_read_lock() #8, !dbg !1989
  br label %do.body, !dbg !1990

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1991

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1993

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1994

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1996
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !1997 {
entry:
  br label %do.body, !dbg !1998

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1999

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #8, !dbg !2001
  br label %do.body1, !dbg !2002

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2003

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !2005
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2006 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2014, metadata !DIExpression()), !dbg !2016
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2015, metadata !DIExpression()), !dbg !2017
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2018
  %1 = load i64, ptr %size.addr, align 8, !dbg !2019
  %conv = trunc i64 %1 to i32, !dbg !2019
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !2020
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2021
  %3 = load i64, ptr %size.addr, align 8, !dbg !2021
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !2021
  ret void, !dbg !2022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !2023 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2028
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !2029
  ret i32 %call, !dbg !2030
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2031 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2036, metadata !DIExpression()), !dbg !2038
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2037, metadata !DIExpression()), !dbg !2039
  ret i1 true, !dbg !2040
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !2041 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2046, metadata !DIExpression()), !dbg !2049
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2047, metadata !DIExpression()), !dbg !2050
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2048, metadata !DIExpression()), !dbg !2051
  ret void, !dbg !2052
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !2053 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2056, metadata !DIExpression()), !dbg !2057
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2058
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2058
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2058
  ret i32 %1, !dbg !2059
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2060 dso_local void @__rcu_read_lock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2061 dso_local void @__rcu_read_unlock() #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841}
!llvm.ident = !{!1842}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.is_single_threaded.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/is_single_threaded\22 -D KBUILD_BASENAME=\22is_single_threaded\22 -D KBUILD_MODNAME=\22is_single_threaded\22 -D __KBUILD_MODNAME=kmod_is_single_threaded -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/is_single_threaded.ll lib/is_single_threaded.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/is_single_threaded.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d49d3f6eab6f465f8056b575e800eb35")
!2 = !{!3, !9, !15, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !16, line: 51, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!19 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!20 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!21 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 10, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "false", value: 0)
!26 = !DIEnumerator(name: "true", value: 1)
!27 = !{!28, !29, !38, !1830, !47, !1831}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !34, line: 191, baseType: !32, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !33, file: !34, line: 191, baseType: !32, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !40, line: 746, size: 58368, elements: !41)
!40 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!41 = !{!42, !55, !56, !57, !68, !69, !70, !71, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !158, !169, !296, !300, !303, !334, !335, !336, !337, !348, !350, !351, !352, !353, !354, !355, !366, !367, !370, !371, !372, !373, !374, !375, !376, !377, !384, !385, !392, !393, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !673, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !729, !731, !732, !733, !745, !747, !748, !749, !750, !751, !752, !758, !759, !760, !761, !762, !763, !764, !778, !784, !984, !985, !986, !987, !991, !994, !1001, !1006, !1009, !1012, !1015, !1018, !1163, !1194, !1195, !1196, !1197, !1198, !1199, !1202, !1203, !1204, !1207, !1208, !1209, !1218, !1226, !1227, !1228, !1229, !1230, !1235, !1236, !1237, !1240, !1241, !1244, !1247, !1250, !1253, !1256, !1257, !1344, !1345, !1346, !1347, !1348, !1354, !1355, !1356, !1357, !1360, !1361, !1364, !1367, !1368, !1371, !1372, !1373, !1376, !1377, !1378, !1381, !1382, !1383, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1415, !1418, !1486, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1498, !1570, !1572, !1573, !1574, !1575, !1576, !1588, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1605, !1606, !1607}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !39, file: !40, line: 752, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !44, line: 56, size: 192, elements: !45)
!44 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!45 = !{!46, !48, !49, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !44, line: 57, baseType: !47, size: 64)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !43, file: !44, line: 58, baseType: !47, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !43, file: !44, line: 59, baseType: !50, size: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !5)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !43, file: !44, line: 61, baseType: !50, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !39, file: !40, line: 754, baseType: !5, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !39, file: !40, line: 767, baseType: !28, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !39, file: !40, line: 768, baseType: !58, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !59, line: 113, baseType: !60)
!59 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !59, line: 111, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !60, file: !59, line: 112, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !64, file: !34, line: 173, baseType: !67, size: 32)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 770, baseType: !5, size: 32, offset: 352)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !39, file: !40, line: 771, baseType: !5, size: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !39, file: !40, line: 774, baseType: !67, size: 32, offset: 416)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !39, file: !40, line: 775, baseType: !72, size: 128, offset: 448)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !73, line: 58, size: 128, elements: !74)
!73 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!74 = !{!75, !81, !86, !90}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !72, file: !73, line: 59, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !77, line: 60, size: 64, elements: !78)
!77 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !77, line: 61, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !73, line: 60, baseType: !82, size: 32, offset: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !73, line: 60, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !82, file: !73, line: 61, baseType: !5, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !82, file: !73, line: 62, baseType: !63, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !72, file: !73, line: 65, baseType: !87, size: 16, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !51, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !89)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !72, file: !73, line: 65, baseType: !87, size: 16, offset: 112)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !39, file: !40, line: 776, baseType: !5, size: 32, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !39, file: !40, line: 777, baseType: !47, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !39, file: !40, line: 778, baseType: !38, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !39, file: !40, line: 787, baseType: !67, size: 32, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !39, file: !40, line: 788, baseType: !67, size: 32, offset: 800)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !39, file: !40, line: 790, baseType: !67, size: 32, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !39, file: !40, line: 792, baseType: !67, size: 32, offset: 864)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !39, file: !40, line: 793, baseType: !67, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !39, file: !40, line: 794, baseType: !67, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !39, file: !40, line: 795, baseType: !5, size: 32, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !39, file: !40, line: 797, baseType: !102, size: 2048, offset: 1024)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !40, line: 551, size: 2048, elements: !103)
!103 = !{!104, !109, !117, !121, !122, !123, !124, !125, !126, !127, !128, !132, !133, !134, !135, !137, !140, !141, !142}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !102, file: !40, line: 553, baseType: !105, size: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !40, line: 411, size: 128, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !105, file: !40, line: 412, baseType: !47, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !105, file: !40, line: 413, baseType: !50, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !102, file: !40, line: 554, baseType: !110, size: 192, align: 64, offset: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !111, line: 5, size: 192, align: 64, elements: !112)
!111 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!112 = !{!113, !114, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !110, file: !111, line: 6, baseType: !47, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !110, file: !111, line: 7, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !110, file: !111, line: 8, baseType: !115, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !102, file: !40, line: 555, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !120)
!120 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !102, file: !40, line: 556, baseType: !118, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !102, file: !40, line: 558, baseType: !33, size: 128, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !102, file: !40, line: 559, baseType: !5, size: 32, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !102, file: !40, line: 561, baseType: !118, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !102, file: !40, line: 562, baseType: !118, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !102, file: !40, line: 563, baseType: !118, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !102, file: !40, line: 564, baseType: !118, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !102, file: !40, line: 565, baseType: !129, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !51, line: 22, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !53, line: 30, baseType: !131)
!131 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !102, file: !40, line: 566, baseType: !118, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !102, file: !40, line: 568, baseType: !118, size: 64, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !102, file: !40, line: 571, baseType: !67, size: 32, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !40, line: 572, baseType: !136, size: 64, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !102, file: !40, line: 574, baseType: !138, size: 64, offset: 1216)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !40, line: 49, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !102, file: !40, line: 576, baseType: !138, size: 64, offset: 1280)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !102, file: !40, line: 578, baseType: !47, size: 64, offset: 1344)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !102, file: !40, line: 588, baseType: !143, size: 512, align: 512, offset: 1536)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !40, line: 497, size: 512, align: 512, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !143, file: !40, line: 498, baseType: !118, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !143, file: !40, line: 499, baseType: !118, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !143, file: !40, line: 500, baseType: !118, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !143, file: !40, line: 501, baseType: !50, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !143, file: !40, line: 502, baseType: !50, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !143, file: !40, line: 503, baseType: !47, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !143, file: !40, line: 504, baseType: !47, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !143, file: !40, line: 505, baseType: !47, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !143, file: !40, line: 506, baseType: !154, size: 64, align: 64, offset: 448)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !40, line: 445, size: 64, align: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !154, file: !40, line: 446, baseType: !5, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !154, file: !40, line: 447, baseType: !5, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !39, file: !40, line: 798, baseType: !159, size: 384, offset: 3072)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !40, line: 592, size: 384, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !159, file: !40, line: 593, baseType: !33, size: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !159, file: !40, line: 594, baseType: !47, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !159, file: !40, line: 595, baseType: !47, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !159, file: !40, line: 596, baseType: !5, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !159, file: !40, line: 597, baseType: !89, size: 16, offset: 288)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !159, file: !40, line: 598, baseType: !89, size: 16, offset: 304)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !159, file: !40, line: 600, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !39, file: !40, line: 799, baseType: !170, size: 1792, offset: 3456)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !40, line: 610, size: 1792, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !293, !294}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !170, file: !40, line: 611, baseType: !110, size: 192, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !170, file: !40, line: 618, baseType: !118, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !170, file: !40, line: 619, baseType: !118, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !170, file: !40, line: 620, baseType: !118, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !170, file: !40, line: 621, baseType: !118, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !170, file: !40, line: 622, baseType: !118, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !170, file: !40, line: 629, baseType: !129, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !170, file: !40, line: 630, baseType: !118, size: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !40, line: 631, baseType: !5, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !170, file: !40, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !170, file: !40, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !170, file: !40, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !170, file: !40, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !170, file: !40, line: 662, baseType: !186, size: 512, offset: 704)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !187)
!187 = !{!188, !196, !197, !202, !289, !290, !291, !292}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !4, line: 119, baseType: !189, size: 256)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !190, line: 9, size: 256, elements: !191)
!190 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !189, file: !190, line: 10, baseType: !110, size: 192, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !189, file: !190, line: 11, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !195, line: 29, baseType: !129)
!195 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !186, file: !4, line: 120, baseType: !194, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !186, file: !4, line: 121, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!3, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !186, file: !4, line: 122, baseType: !203, size: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !205)
!205 = !{!206, !257, !258, !262, !272, !273, !284, !288}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !204, file: !4, line: 160, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 215, size: 4608, align: 512, elements: !209)
!209 = !{!210, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !208, file: !4, line: 216, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !212, line: 23, baseType: !213)
!212 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !212, line: 14, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !212, line: 15, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !217, line: 44, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !217, line: 14, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 15, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 15, size: 32, elements: !222)
!222 = !{!223, !224, !232}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !221, file: !217, line: 16, baseType: !63, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 24, baseType: !225, size: 16)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 24, size: 16, elements: !226)
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !225, file: !217, line: 25, baseType: !228, size: 8)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !51, line: 17, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !53, line: 21, baseType: !230)
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !225, file: !217, line: 26, baseType: !228, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 28, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 28, size: 32, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !233, file: !217, line: 29, baseType: !87, size: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !233, file: !217, line: 30, baseType: !87, size: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !208, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !208, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !208, file: !4, line: 219, baseType: !5, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !208, file: !4, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !208, file: !4, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !208, file: !4, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !208, file: !4, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !208, file: !4, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !208, file: !4, line: 226, baseType: !5, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !208, file: !4, line: 227, baseType: !89, size: 16, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !208, file: !4, line: 228, baseType: !89, size: 16, offset: 208)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !208, file: !4, line: 229, baseType: !5, size: 32, offset: 224)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !208, file: !4, line: 235, baseType: !194, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !208, file: !4, line: 236, baseType: !201, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !208, file: !4, line: 237, baseType: !194, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !208, file: !4, line: 238, baseType: !201, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !208, file: !4, line: 239, baseType: !254, size: 4096, align: 512, offset: 512)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 4096, align: 512, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !204, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !204, file: !4, line: 162, baseType: !259, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !67)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !204, file: !4, line: 163, baseType: !263, size: 32, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !264, line: 274, baseType: !265)
!264 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !264, line: 274, size: 32, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !265, file: !264, line: 274, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !264, line: 69, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !264, line: 64, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !269, file: !264, line: 65, baseType: !5, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !204, file: !4, line: 164, baseType: !201, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !204, file: !4, line: 165, baseType: !274, size: 128, offset: 256)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !190, line: 14, size: 128, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !274, file: !190, line: 15, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !111, line: 26, size: 128, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !277, file: !111, line: 27, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !111, line: 12, size: 64, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !280, file: !111, line: 13, baseType: !115, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !277, file: !111, line: 28, baseType: !115, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !204, file: !4, line: 166, baseType: !285, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!194}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !204, file: !4, line: 167, baseType: !194, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !186, file: !4, line: 123, baseType: !228, size: 8, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !186, file: !4, line: 124, baseType: !228, size: 8, offset: 456)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !186, file: !4, line: 125, baseType: !228, size: 8, offset: 464)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !186, file: !4, line: 126, baseType: !228, size: 8, offset: 472)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !170, file: !40, line: 671, baseType: !186, size: 512, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !170, file: !40, line: 679, baseType: !295, size: 64, offset: 1728)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !39, file: !40, line: 800, baseType: !297, size: 64, offset: 5248)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !40, line: 800, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !39, file: !40, line: 809, baseType: !301, size: 64, offset: 5312)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !40, line: 70, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !39, file: !40, line: 825, baseType: !304, size: 2048, align: 512, offset: 5632)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !40, line: 509, size: 2048, align: 512, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !304, file: !40, line: 511, baseType: !118, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !304, file: !40, line: 512, baseType: !118, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !304, file: !40, line: 513, baseType: !118, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !304, file: !40, line: 514, baseType: !118, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !304, file: !40, line: 515, baseType: !118, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !304, file: !40, line: 516, baseType: !118, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !304, file: !40, line: 518, baseType: !118, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !304, file: !40, line: 519, baseType: !118, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !304, file: !40, line: 520, baseType: !129, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !304, file: !40, line: 522, baseType: !118, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !304, file: !40, line: 523, baseType: !118, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !304, file: !40, line: 524, baseType: !129, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !304, file: !40, line: 526, baseType: !129, size: 64, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !304, file: !40, line: 527, baseType: !118, size: 64, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !304, file: !40, line: 529, baseType: !118, size: 64, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !304, file: !40, line: 530, baseType: !118, size: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !304, file: !40, line: 531, baseType: !118, size: 64, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !304, file: !40, line: 532, baseType: !118, size: 64, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !304, file: !40, line: 533, baseType: !118, size: 64, offset: 1152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !304, file: !40, line: 535, baseType: !118, size: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !304, file: !40, line: 536, baseType: !118, size: 64, offset: 1280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !304, file: !40, line: 537, baseType: !118, size: 64, offset: 1344)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !304, file: !40, line: 538, baseType: !118, size: 64, offset: 1408)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !304, file: !40, line: 539, baseType: !118, size: 64, offset: 1472)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !304, file: !40, line: 540, baseType: !118, size: 64, offset: 1536)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !304, file: !40, line: 541, baseType: !118, size: 64, offset: 1600)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !304, file: !40, line: 542, baseType: !118, size: 64, offset: 1664)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !304, file: !40, line: 543, baseType: !118, size: 64, offset: 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !39, file: !40, line: 833, baseType: !5, size: 32, offset: 7680)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !39, file: !40, line: 836, baseType: !5, size: 32, offset: 7712)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !39, file: !40, line: 837, baseType: !67, size: 32, offset: 7744)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !39, file: !40, line: 838, baseType: !338, size: 64, offset: 7808)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !341, line: 19, baseType: !342)
!341 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !341, line: 19, size: 64, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !342, file: !341, line: 19, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 1)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !39, file: !40, line: 839, baseType: !349, size: 64, offset: 7872)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !39, file: !40, line: 840, baseType: !340, size: 64, offset: 7936)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !39, file: !40, line: 841, baseType: !28, size: 64, offset: 8000)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !39, file: !40, line: 843, baseType: !89, size: 16, offset: 8064)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !39, file: !40, line: 845, baseType: !89, size: 16, offset: 8080)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !39, file: !40, line: 848, baseType: !67, size: 32, offset: 8096)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !39, file: !40, line: 849, baseType: !356, size: 32, offset: 8128)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !40, line: 718, size: 32, elements: !357)
!357 = !{!358, !365}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !356, file: !40, line: 724, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !40, line: 719, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !359, file: !40, line: 720, baseType: !228, size: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !359, file: !40, line: 721, baseType: !228, size: 8, offset: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !359, file: !40, line: 722, baseType: !228, size: 8, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !359, file: !40, line: 723, baseType: !228, size: 8, offset: 24)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !356, file: !40, line: 725, baseType: !50, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !39, file: !40, line: 850, baseType: !33, size: 128, offset: 8192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !39, file: !40, line: 851, baseType: !368, size: 64, offset: 8320)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !40, line: 60, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !39, file: !40, line: 855, baseType: !47, size: 64, offset: 8384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !39, file: !40, line: 856, baseType: !228, size: 8, offset: 8448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !39, file: !40, line: 857, baseType: !228, size: 8, offset: 8456)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !39, file: !40, line: 858, baseType: !67, size: 32, offset: 8480)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !39, file: !40, line: 859, baseType: !33, size: 128, offset: 8512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !39, file: !40, line: 860, baseType: !67, size: 32, offset: 8640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !39, file: !40, line: 861, baseType: !33, size: 128, offset: 8704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !39, file: !40, line: 873, baseType: !378, size: 256, offset: 8832)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !40, line: 376, size: 256, elements: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !378, file: !40, line: 381, baseType: !47, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !378, file: !40, line: 384, baseType: !120, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !378, file: !40, line: 389, baseType: !120, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !378, file: !40, line: 392, baseType: !120, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !39, file: !40, line: 875, baseType: !33, size: 128, offset: 9088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !39, file: !40, line: 877, baseType: !386, size: 320, offset: 9216)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !387, line: 86, size: 320, elements: !388)
!387 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !386, file: !387, line: 87, baseType: !67, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !386, file: !387, line: 88, baseType: !33, size: 128, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !386, file: !387, line: 89, baseType: !33, size: 128, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !39, file: !40, line: 878, baseType: !110, size: 192, align: 64, offset: 9536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !39, file: !40, line: 881, baseType: !394, size: 64, offset: 9728)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !396, line: 733, size: 10240, elements: !397)
!396 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!397 = !{!398, !589}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !396, line: 734, baseType: !399, size: 10240)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !396, line: 734, size: 10240, elements: !400)
!400 = !{!401, !405, !427, !434, !435, !436, !437, !438, !439, !447, !448, !449, !455, !456, !463, !464, !465, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !506, !520, !523, !555, !556, !557, !560, !564, !565, !568, !569, !570, !576, !577}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 739, baseType: !402, size: 512, align: 512)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !396, line: 739, size: 512, align: 512, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !402, file: !396, line: 747, baseType: !63, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !399, file: !396, line: 750, baseType: !406, size: 128, offset: 512)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !407, line: 218, size: 128, elements: !408)
!407 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!408 = !{!409, !425, !426}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 219, baseType: !410, size: 32)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 219, size: 32, elements: !411)
!411 = !{!412, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !410, file: !407, line: 220, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !414, line: 29, baseType: !415)
!414 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !414, line: 17, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !414, line: 18, baseType: !418, size: 32)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !414, line: 18, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !418, file: !414, line: 19, baseType: !213, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !410, file: !407, line: 221, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !407, line: 197, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 197, elements: !424)
!424 = !{}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !406, file: !407, line: 223, baseType: !5, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !406, file: !407, line: 224, baseType: !28, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !399, file: !396, line: 752, baseType: !428, size: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!47, !431, !47, !47, !47, !47}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !433, line: 537, flags: DIFlagFwdDecl)
!433 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !399, file: !396, line: 756, baseType: !47, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !399, file: !396, line: 757, baseType: !47, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !399, file: !396, line: 760, baseType: !47, size: 64, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !399, file: !396, line: 761, baseType: !47, size: 64, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !399, file: !396, line: 763, baseType: !47, size: 64, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !399, file: !396, line: 764, baseType: !440, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !433, line: 299, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 299, size: 64, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !442, file: !433, line: 299, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !446, line: 18, baseType: !47)
!446 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !399, file: !396, line: 773, baseType: !63, size: 32, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !399, file: !396, line: 785, baseType: !63, size: 32, offset: 1120)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !399, file: !396, line: 795, baseType: !450, size: 64, offset: 1152)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !396, line: 726, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !451, file: !396, line: 727, baseType: !118, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !451, file: !396, line: 728, baseType: !67, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !399, file: !396, line: 801, baseType: !47, size: 64, offset: 1216)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !399, file: !396, line: 804, baseType: !457, size: 64, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !458, line: 13, baseType: !459)
!458 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !460, file: !34, line: 180, baseType: !129, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !399, file: !396, line: 806, baseType: !67, size: 32, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !399, file: !396, line: 808, baseType: !413, size: 32, offset: 1376)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !399, file: !396, line: 823, baseType: !466, size: 320, offset: 1408)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !467, line: 48, size: 320, elements: !468)
!467 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!468 = !{!469, !470, !471, !476, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !467, line: 49, baseType: !457, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !466, file: !467, line: 55, baseType: !457, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !466, file: !467, line: 57, baseType: !472, size: 32, offset: 128)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !473, line: 15, size: 32, elements: !474)
!473 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !472, file: !473, line: 20, baseType: !63, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !466, file: !467, line: 59, baseType: !211, size: 32, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !466, file: !467, line: 60, baseType: !33, size: 128, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !399, file: !396, line: 825, baseType: !33, size: 128, offset: 1728)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !399, file: !396, line: 845, baseType: !67, size: 32, offset: 1856)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !399, file: !396, line: 849, baseType: !47, size: 64, offset: 1920)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !399, file: !396, line: 850, baseType: !47, size: 64, offset: 1984)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !399, file: !396, line: 852, baseType: !47, size: 64, offset: 2048)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !399, file: !396, line: 853, baseType: !47, size: 64, offset: 2112)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !399, file: !396, line: 854, baseType: !459, size: 64, offset: 2176)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !399, file: !396, line: 855, baseType: !47, size: 64, offset: 2240)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !399, file: !396, line: 856, baseType: !47, size: 64, offset: 2304)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !399, file: !396, line: 857, baseType: !47, size: 64, offset: 2368)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !399, file: !396, line: 858, baseType: !47, size: 64, offset: 2432)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !399, file: !396, line: 865, baseType: !268, size: 32, offset: 2496)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !399, file: !396, line: 867, baseType: !413, size: 32, offset: 2528)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !399, file: !396, line: 869, baseType: !47, size: 64, offset: 2560)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !399, file: !396, line: 869, baseType: !47, size: 64, offset: 2624)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !399, file: !396, line: 869, baseType: !47, size: 64, offset: 2688)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !399, file: !396, line: 869, baseType: !47, size: 64, offset: 2752)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !399, file: !396, line: 870, baseType: !47, size: 64, offset: 2816)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !399, file: !396, line: 870, baseType: !47, size: 64, offset: 2880)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !399, file: !396, line: 870, baseType: !47, size: 64, offset: 2944)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !399, file: !396, line: 871, baseType: !47, size: 64, offset: 3008)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !399, file: !396, line: 871, baseType: !47, size: 64, offset: 3072)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !399, file: !396, line: 871, baseType: !47, size: 64, offset: 3136)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !399, file: !396, line: 871, baseType: !47, size: 64, offset: 3200)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !399, file: !396, line: 873, baseType: !503, size: 3328, offset: 3264)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 52)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !399, file: !396, line: 875, baseType: !507, size: 1280, offset: 6592)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 1280, elements: !518)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !509, line: 22, size: 320, elements: !510)
!509 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!510 = !{!511, !512, !513, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !508, file: !509, line: 23, baseType: !211, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !508, file: !509, line: 24, baseType: !129, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !508, file: !509, line: 26, baseType: !33, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !508, file: !509, line: 28, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !51, line: 20, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !53, line: 26, baseType: !67)
!518 = !{!519}
!519 = !DISubrange(count: 4)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !399, file: !396, line: 877, baseType: !521, size: 64, offset: 7872)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !396, line: 877, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !399, file: !396, line: 880, baseType: !524, size: 1088, offset: 7936)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !525, line: 72, baseType: !526)
!525 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 23, size: 1088, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !535, !536, !544, !545, !549, !550, !551}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !526, file: !525, line: 28, baseType: !118, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !526, file: !525, line: 38, baseType: !459, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !526, file: !525, line: 40, baseType: !47, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !526, file: !525, line: 43, baseType: !466, size: 320, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !526, file: !525, line: 44, baseType: !533, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !525, line: 44, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !525, line: 48, baseType: !47, size: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !526, file: !525, line: 59, baseType: !537, size: 256, offset: 640)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !538, line: 66, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!539 = !{!540, !541, !542, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !537, file: !538, line: 67, baseType: !457, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !537, file: !538, line: 68, baseType: !211, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !537, file: !538, line: 70, baseType: !472, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !537, file: !538, line: 72, baseType: !33, size: 128, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !526, file: !525, line: 60, baseType: !28, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !526, file: !525, line: 61, baseType: !546, size: 64, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !525, line: 61, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !526, file: !525, line: 63, baseType: !63, size: 32, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !526, file: !525, line: 69, baseType: !87, size: 16, offset: 1056)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !526, file: !525, line: 70, baseType: !552, size: 16, offset: 1072)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !51, line: 18, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !53, line: 23, baseType: !554)
!554 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !396, line: 882, baseType: !47, size: 64, offset: 9024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !399, file: !396, line: 885, baseType: !413, size: 32, offset: 9088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !399, file: !396, line: 886, baseType: !558, size: 64, offset: 9152)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !396, line: 732, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !399, file: !396, line: 901, baseType: !561, size: 64, offset: 9216)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !563, line: 18, flags: DIFlagFwdDecl)
!563 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !399, file: !396, line: 904, baseType: !431, size: 64, offset: 9280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !399, file: !396, line: 906, baseType: !566, size: 64, offset: 9344)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !396, line: 906, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !399, file: !396, line: 930, baseType: !63, size: 32, offset: 9408)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !399, file: !396, line: 933, baseType: !63, size: 32, offset: 9440)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !399, file: !396, line: 935, baseType: !571, size: 64, offset: 9472)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !16, line: 103, size: 64, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !571, file: !16, line: 104, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !16, line: 101, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !399, file: !396, line: 940, baseType: !457, size: 64, offset: 9536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !399, file: !396, line: 942, baseType: !578, size: 256, offset: 9600)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !579, line: 98, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !578, file: !579, line: 99, baseType: !457, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !578, file: !579, line: 100, baseType: !33, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !578, file: !579, line: 101, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !579, line: 21, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !395, file: !396, line: 986, baseType: !590, offset: 10240)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: -1)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !39, file: !40, line: 882, baseType: !394, size: 64, offset: 9792)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !39, file: !40, line: 884, baseType: !67, size: 32, offset: 9856)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !39, file: !40, line: 885, baseType: !67, size: 32, offset: 9888)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !39, file: !40, line: 886, baseType: !67, size: 32, offset: 9920)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !39, file: !40, line: 888, baseType: !67, size: 32, offset: 9952)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !39, file: !40, line: 890, baseType: !47, size: 64, offset: 9984)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !39, file: !40, line: 893, baseType: !5, size: 32, offset: 10048)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !39, file: !40, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !39, file: !40, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !39, file: !40, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !39, file: !40, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !39, file: !40, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !39, file: !40, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !39, file: !40, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !39, file: !40, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !39, file: !40, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !39, file: !40, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !39, file: !40, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !39, file: !40, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !39, file: !40, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !39, file: !40, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !39, file: !40, line: 969, baseType: !47, size: 64, offset: 10176)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !39, file: !40, line: 971, baseType: !616, size: 448, offset: 10240)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 448, elements: !617)
!617 = !{!618, !619, !625}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !616, file: !10, line: 26, baseType: !47, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !616, file: !10, line: 27, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !624}
!623 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !10, line: 28, baseType: !626, size: 320, offset: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !10, line: 28, size: 320, elements: !627)
!627 = !{!628, !638, !663}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !626, file: !10, line: 37, baseType: !629, size: 320)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !10, line: 30, size: 320, elements: !630)
!630 = !{!631, !633, !634, !635, !636, !637}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !629, file: !10, line: 31, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !10, line: 32, baseType: !50, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !10, line: 33, baseType: !50, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !629, file: !10, line: 34, baseType: !50, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !629, file: !10, line: 35, baseType: !118, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !629, file: !10, line: 36, baseType: !632, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !626, file: !10, line: 47, baseType: !639, size: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !10, line: 39, size: 192, elements: !640)
!640 = !{!641, !642, !643, !662}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !639, file: !10, line: 40, baseType: !259, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !10, line: 41, baseType: !9, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !10, line: 42, baseType: !644, size: 64, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !10, line: 42, size: 64, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !644, file: !10, line: 43, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !649, line: 7, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !649, line: 8, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !261, line: 93, baseType: !131)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !648, file: !649, line: 9, baseType: !131, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !644, file: !10, line: 44, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !657, line: 7, size: 64, elements: !658)
!657 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!658 = !{!659, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !656, file: !657, line: 8, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !657, line: 5, baseType: !516)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !656, file: !657, line: 9, baseType: !516, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !639, file: !10, line: 46, baseType: !118, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !626, file: !10, line: 55, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !10, line: 49, size: 256, elements: !665)
!665 = !{!666, !669, !670, !671, !672}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !664, file: !10, line: 50, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !664, file: !10, line: 51, baseType: !67, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !664, file: !10, line: 52, baseType: !67, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !664, file: !10, line: 53, baseType: !47, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !664, file: !10, line: 54, baseType: !47, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !39, file: !40, line: 973, baseType: !674, size: 32, offset: 10688)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !261, line: 28, baseType: !67)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !39, file: !40, line: 974, baseType: !674, size: 32, offset: 10720)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !39, file: !40, line: 978, baseType: !47, size: 64, offset: 10752)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !39, file: !40, line: 987, baseType: !38, size: 64, offset: 10816)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !39, file: !40, line: 990, baseType: !38, size: 64, offset: 10880)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !39, file: !40, line: 995, baseType: !33, size: 128, offset: 10944)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !39, file: !40, line: 996, baseType: !33, size: 128, offset: 11072)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !39, file: !40, line: 997, baseType: !38, size: 64, offset: 11200)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !39, file: !40, line: 1005, baseType: !33, size: 128, offset: 11264)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !39, file: !40, line: 1006, baseType: !33, size: 128, offset: 11392)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !39, file: !40, line: 1009, baseType: !686, size: 64, offset: 11520)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !688, line: 59, size: 768, elements: !689)
!688 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!689 = !{!690, !691, !692, !693, !704, !705, !712, !721}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !688, line: 61, baseType: !58, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 62, baseType: !5, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !688, line: 63, baseType: !413, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !687, file: !688, line: 65, baseType: !694, size: 256, offset: 128)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !518)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !34, line: 195, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !34, line: 199, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !34, line: 199, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !688, line: 66, baseType: !695, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !687, file: !688, line: 68, baseType: !706, size: 192, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !707, line: 41, baseType: !708)
!707 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !707, line: 37, size: 192, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 38, baseType: !413, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !708, file: !707, line: 39, baseType: !33, size: 128, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !688, line: 69, baseType: !713, size: 128, align: 64, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !714)
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !34, line: 233, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !34, line: 234, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !716}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !687, file: !688, line: 70, baseType: !722, offset: 768)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, elements: !591)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !688, line: 54, size: 128, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !723, file: !688, line: 55, baseType: !67, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !723, file: !688, line: 56, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !688, line: 56, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !39, file: !40, line: 1010, baseType: !730, size: 512, offset: 11584)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !518)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !39, file: !40, line: 1011, baseType: !33, size: 128, offset: 12096)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !39, file: !40, line: 1012, baseType: !33, size: 128, offset: 12224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !39, file: !40, line: 1014, baseType: !734, size: 64, offset: 12352)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !736, line: 26, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !735, file: !736, line: 27, baseType: !5, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !735, file: !736, line: 28, baseType: !740, size: 192, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !741, line: 43, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !741, line: 44, baseType: !211, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !740, file: !741, line: 45, baseType: !33, size: 128, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !39, file: !40, line: 1017, baseType: !746, size: 64, offset: 12416)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !39, file: !40, line: 1020, baseType: !746, size: 64, offset: 12480)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !39, file: !40, line: 1023, baseType: !28, size: 64, offset: 12544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !39, file: !40, line: 1025, baseType: !118, size: 64, offset: 12608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !39, file: !40, line: 1026, baseType: !118, size: 64, offset: 12672)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !39, file: !40, line: 1031, baseType: !118, size: 64, offset: 12736)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !39, file: !40, line: 1032, baseType: !753, size: 192, offset: 12800)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !40, line: 324, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !753, file: !40, line: 326, baseType: !118, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !753, file: !40, line: 327, baseType: !118, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !40, line: 328, baseType: !211, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !39, file: !40, line: 1041, baseType: !47, size: 64, offset: 12992)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !39, file: !40, line: 1042, baseType: !47, size: 64, offset: 13056)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !39, file: !40, line: 1045, baseType: !118, size: 64, offset: 13120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !39, file: !40, line: 1048, baseType: !118, size: 64, offset: 13184)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !39, file: !40, line: 1051, baseType: !47, size: 64, offset: 13248)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !39, file: !40, line: 1052, baseType: !47, size: 64, offset: 13312)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !39, file: !40, line: 1055, baseType: !765, size: 640, offset: 13376)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !766, line: 132, size: 640, elements: !767)
!766 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!767 = !{!768, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !765, file: !766, line: 133, baseType: !769, size: 576)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 576, elements: !774)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !766, line: 117, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !770, file: !766, line: 118, baseType: !118, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !770, file: !766, line: 119, baseType: !274, size: 128, offset: 64)
!774 = !{!775}
!775 = !DISubrange(count: 3)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !765, file: !766, line: 134, baseType: !5, size: 32, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !765, file: !766, line: 135, baseType: !5, size: 32, offset: 608)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !39, file: !40, line: 1058, baseType: !779, size: 448, offset: 14016)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !766, line: 144, size: 448, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !779, file: !766, line: 145, baseType: !713, size: 128, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !779, file: !766, line: 146, baseType: !537, size: 256, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !779, file: !766, line: 147, baseType: !5, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !39, file: !40, line: 1064, baseType: !785, size: 64, offset: 14464)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !788, line: 110, size: 1472, elements: !789)
!788 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!789 = !{!790, !791, !798, !805, !806, !807, !808, !809, !810, !811, !812, !818, !819, !820, !821, !822, !823, !939, !940, !941, !942, !943, !966, !967, !971, !979}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !787, file: !788, line: 111, baseType: !457, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !787, file: !788, line: 112, baseType: !792, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !563, line: 23, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 21, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !793, file: !563, line: 22, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !5)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !787, file: !788, line: 113, baseType: !799, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !563, line: 28, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 26, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !563, line: 27, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !5)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !787, file: !788, line: 114, baseType: !792, size: 32, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !787, file: !788, line: 115, baseType: !799, size: 32, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !787, file: !788, line: 116, baseType: !792, size: 32, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !787, file: !788, line: 117, baseType: !799, size: 32, offset: 224)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !787, file: !788, line: 118, baseType: !792, size: 32, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !787, file: !788, line: 119, baseType: !799, size: 32, offset: 288)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !787, file: !788, line: 120, baseType: !5, size: 32, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !787, file: !788, line: 121, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !814, line: 24, baseType: !815)
!814 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 24, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !815, file: !814, line: 24, baseType: !118, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !787, file: !788, line: 122, baseType: !813, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !787, file: !788, line: 123, baseType: !813, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !787, file: !788, line: 124, baseType: !813, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !787, file: !788, line: 125, baseType: !813, size: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !787, file: !788, line: 127, baseType: !230, size: 8, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !787, file: !788, line: 129, baseType: !824, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !826, line: 195, size: 1728, elements: !827)
!826 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!827 = !{!828, !829, !832, !837, !838, !841, !842, !849, !850, !851, !852, !855, !856, !857, !858, !859, !903, !924}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !825, file: !826, line: 196, baseType: !58, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !825, file: !826, line: 197, baseType: !830, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !826, line: 28, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !516)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 198, baseType: !833, size: 192, offset: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 198, size: 192, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !833, file: !826, line: 199, baseType: !33, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !833, file: !826, line: 200, baseType: !110, size: 192, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !825, file: !826, line: 205, baseType: !466, size: 320, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !825, file: !826, line: 206, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !826, line: 206, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !825, file: !826, line: 207, baseType: !28, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 208, baseType: !843, size: 64, offset: 704)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 208, size: 64, elements: !844)
!844 = !{!845, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !843, file: !826, line: 209, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !847, line: 8, baseType: !130)
!847 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!848 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !843, file: !826, line: 210, baseType: !846, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !825, file: !826, line: 212, baseType: !846, size: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !825, file: !826, line: 213, baseType: !792, size: 32, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !825, file: !826, line: 214, baseType: !799, size: 32, offset: 864)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !825, file: !826, line: 215, baseType: !853, size: 32, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !826, line: 31, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !50)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !825, file: !826, line: 216, baseType: !89, size: 16, offset: 928)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !825, file: !826, line: 217, baseType: !89, size: 16, offset: 944)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !825, file: !826, line: 221, baseType: !554, size: 16, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !826, line: 228, baseType: !47, size: 64, offset: 1024)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 245, baseType: !860, size: 320, offset: 1088)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 245, size: 320, elements: !861)
!861 = !{!862, !894}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !860, file: !826, line: 246, baseType: !863, size: 320)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !826, line: 114, size: 320, elements: !864)
!864 = !{!865, !866, !879, !882, !891}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !863, file: !826, line: 116, baseType: !47, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !826, line: 117, baseType: !867, size: 64, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !826, line: 117, size: 64, elements: !868)
!868 = !{!869, !878}
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !826, line: 118, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !826, line: 118, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !870, file: !826, line: 120, baseType: !87, size: 16)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !870, file: !826, line: 121, baseType: !874, size: 48, offset: 16)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 48, elements: !876)
!875 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!876 = !{!877}
!877 = !DISubrange(count: 6)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !867, file: !826, line: 127, baseType: !47, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !826, line: 129, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !826, line: 102, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !863, file: !826, line: 130, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !826, line: 108, size: 192, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !884, file: !826, line: 109, baseType: !713, size: 128, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !884, file: !826, line: 110, baseType: !58, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !884, file: !826, line: 111, baseType: !889, size: 8, offset: 160)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !890)
!890 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !863, file: !826, line: 131, baseType: !892, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !826, line: 247, baseType: !895, size: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !826, line: 247, size: 320, elements: !896)
!896 = !{!897, !898, !899, !900, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !895, file: !826, line: 248, baseType: !47, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !895, file: !826, line: 249, baseType: !47, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !895, file: !826, line: 250, baseType: !880, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !895, file: !826, line: 251, baseType: !883, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !895, file: !826, line: 252, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 260, baseType: !904, size: 256, offset: 1408)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 260, size: 256, elements: !905)
!905 = !{!906, !912}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !904, file: !826, line: 261, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !826, line: 134, size: 256, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !907, file: !826, line: 135, baseType: !28, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !907, file: !826, line: 136, baseType: !911, size: 256)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !518)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !826, line: 262, baseType: !913, size: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !826, line: 262, size: 256, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !913, file: !826, line: 264, baseType: !33, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !913, file: !826, line: 265, baseType: !917, size: 128, offset: 128)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !918, line: 22, size: 128, elements: !919)
!918 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!919 = !{!920, !923}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !917, file: !918, line: 23, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !918, line: 23, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !917, file: !918, line: 24, baseType: !47, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !825, file: !826, line: 280, baseType: !925, size: 64, offset: 1664)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !826, line: 176, size: 192, elements: !927)
!927 = !{!928, !937, !938}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !926, file: !826, line: 177, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !826, line: 171, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!67, !824, !933, !935, !824}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !926, file: !826, line: 178, baseType: !824, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !926, file: !826, line: 179, baseType: !880, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !787, file: !788, line: 130, baseType: !824, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !787, file: !788, line: 131, baseType: !824, size: 64, offset: 896)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !787, file: !788, line: 132, baseType: !824, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !787, file: !788, line: 135, baseType: !28, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !787, file: !788, line: 137, baseType: !944, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !946, line: 14, size: 1088, elements: !947)
!946 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !945, file: !946, line: 15, baseType: !58, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !945, file: !946, line: 17, baseType: !508, size: 320, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !945, file: !946, line: 19, baseType: !47, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !945, file: !946, line: 20, baseType: !457, size: 64, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !945, file: !946, line: 23, baseType: !699, size: 128, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !945, file: !946, line: 24, baseType: !792, size: 32, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !945, file: !946, line: 29, baseType: !457, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !945, file: !946, line: 36, baseType: !956, size: 320, offset: 768)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !957, line: 15, size: 320, elements: !958)
!957 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !956, file: !957, line: 16, baseType: !211, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !956, file: !957, line: 18, baseType: !67, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !956, file: !957, line: 19, baseType: !67, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !956, file: !957, line: 20, baseType: !67, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !956, file: !957, line: 21, baseType: !67, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !956, file: !957, line: 22, baseType: !47, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !957, line: 23, baseType: !47, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !787, file: !788, line: 138, baseType: !561, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !787, file: !788, line: 139, baseType: !968, size: 64, offset: 1216)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !970, line: 16, flags: DIFlagFwdDecl)
!970 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !787, file: !788, line: 140, baseType: !972, size: 64, offset: 1280)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !788, line: 25, size: 64, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !973, file: !788, line: 26, baseType: !63, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !973, file: !788, line: 27, baseType: !67, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !973, file: !788, line: 28, baseType: !978, offset: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, elements: !591)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !788, line: 142, baseType: !980, size: 128, offset: 1344)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !788, line: 142, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !980, file: !788, line: 143, baseType: !67, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !980, file: !788, line: 144, baseType: !713, size: 128, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !39, file: !40, line: 1067, baseType: !785, size: 64, offset: 14528)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !39, file: !40, line: 1070, baseType: !785, size: 64, offset: 14592)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !39, file: !40, line: 1074, baseType: !824, size: 64, offset: 14656)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !39, file: !40, line: 1084, baseType: !988, size: 128, offset: 14720)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 128, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 16)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !39, file: !40, line: 1086, baseType: !992, size: 64, offset: 14848)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !40, line: 55, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !39, file: !40, line: 1089, baseType: !995, size: 64, offset: 14912)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !996, line: 12, size: 64, elements: !997)
!996 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !995, file: !996, line: 13, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !996, line: 8, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !39, file: !40, line: 1090, baseType: !1002, size: 128, offset: 14976)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1003, line: 13, size: 128, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1002, file: !1003, line: 14, baseType: !33, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !39, file: !40, line: 1097, baseType: !1007, size: 64, offset: 15104)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !40, line: 50, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !39, file: !40, line: 1100, baseType: !1010, size: 64, offset: 15168)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !40, line: 1100, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !39, file: !40, line: 1103, baseType: !1013, size: 64, offset: 15232)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !40, line: 53, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !39, file: !40, line: 1107, baseType: !1016, size: 64, offset: 15296)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !40, line: 56, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !39, file: !40, line: 1110, baseType: !1019, size: 64, offset: 15360)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1021, line: 93, size: 8768, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1072, !1081, !1082, !1084, !1085, !1086, !1089, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1131, !1132, !1140, !1150, !1153, !1154, !1157, !1158, !1159, !1160, !1161, !1162}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1020, file: !1021, line: 94, baseType: !58, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1020, file: !1021, line: 95, baseType: !63, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1020, file: !1021, line: 96, baseType: !67, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1020, file: !1021, line: 97, baseType: !67, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1020, file: !1021, line: 98, baseType: !33, size: 128, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1020, file: !1021, line: 100, baseType: !706, size: 192, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1020, file: !1021, line: 103, baseType: !38, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1020, file: !1021, line: 106, baseType: !1031, size: 192, offset: 512)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !970, line: 32, size: 192, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1031, file: !970, line: 33, baseType: !33, size: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1031, file: !970, line: 34, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1036, line: 25, baseType: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 23, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1037, file: !1036, line: 24, baseType: !345, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1020, file: !1021, line: 109, baseType: !695, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1020, file: !1021, line: 112, baseType: !67, size: 32, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1020, file: !1021, line: 114, baseType: !67, size: 32, offset: 800)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1020, file: !1021, line: 115, baseType: !38, size: 64, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1020, file: !1021, line: 118, baseType: !67, size: 32, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !1021, line: 119, baseType: !5, size: 32, offset: 928)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1020, file: !1021, line: 121, baseType: !1047, size: 64, offset: 960)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1021, line: 80, size: 448, elements: !1049)
!1049 = !{!1050, !1051, !1057}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1048, file: !1021, line: 81, baseType: !63, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1048, file: !1021, line: 82, baseType: !1052, size: 128, offset: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1021, line: 75, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1052, file: !1021, line: 76, baseType: !38, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1052, file: !1021, line: 77, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1048, file: !1021, line: 83, baseType: !735, size: 256, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1020, file: !1021, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1020, file: !1021, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1020, file: !1021, line: 138, baseType: !5, size: 32, offset: 1056)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1020, file: !1021, line: 139, baseType: !33, size: 128, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1020, file: !1021, line: 142, baseType: !186, size: 512, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1020, file: !1021, line: 143, baseType: !194, size: 64, offset: 1728)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1020, file: !1021, line: 150, baseType: !1065, size: 256, offset: 1792)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 256, elements: !1070)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1021, line: 38, size: 128, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1066, file: !1021, line: 39, baseType: !118, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1066, file: !1021, line: 40, baseType: !118, size: 64, offset: 64)
!1070 = !{!1071}
!1071 = !DISubrange(count: 2)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1020, file: !1021, line: 156, baseType: !1073, size: 192, offset: 2048)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1021, line: 66, size: 192, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1073, file: !1021, line: 67, baseType: !1076, size: 192)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1021, line: 47, size: 192, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1076, file: !1021, line: 48, baseType: !459, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1076, file: !1021, line: 49, baseType: !459, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1076, file: !1021, line: 50, baseType: !459, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1020, file: !1021, line: 160, baseType: !765, size: 640, offset: 2240)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1020, file: !1021, line: 163, baseType: !1083, size: 256, offset: 2880)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !518)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1020, file: !1021, line: 169, baseType: !686, size: 64, offset: 3136)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1020, file: !1021, line: 172, baseType: !67, size: 32, offset: 3200)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1020, file: !1021, line: 174, baseType: !1087, size: 64, offset: 3264)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1021, line: 174, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1020, file: !1021, line: 185, baseType: !1090, size: 64, offset: 3328)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !264, line: 860, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 853, size: 64, elements: !1092)
!1092 = !{!1093, !1098}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1091, file: !264, line: 858, baseType: !1094, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !264, line: 275, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !264, line: 275, size: 32, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1095, file: !264, line: 275, baseType: !268, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1091, file: !264, line: 859, baseType: !413, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1020, file: !1021, line: 186, baseType: !118, size: 64, offset: 3392)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1020, file: !1021, line: 186, baseType: !118, size: 64, offset: 3456)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1020, file: !1021, line: 186, baseType: !118, size: 64, offset: 3520)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1020, file: !1021, line: 186, baseType: !118, size: 64, offset: 3584)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1020, file: !1021, line: 187, baseType: !118, size: 64, offset: 3648)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1020, file: !1021, line: 188, baseType: !118, size: 64, offset: 3712)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1020, file: !1021, line: 189, baseType: !753, size: 192, offset: 3776)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1020, file: !1021, line: 190, baseType: !47, size: 64, offset: 3968)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1020, file: !1021, line: 190, baseType: !47, size: 64, offset: 4032)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1020, file: !1021, line: 190, baseType: !47, size: 64, offset: 4096)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1020, file: !1021, line: 190, baseType: !47, size: 64, offset: 4160)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1020, file: !1021, line: 191, baseType: !47, size: 64, offset: 4224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1020, file: !1021, line: 191, baseType: !47, size: 64, offset: 4288)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1020, file: !1021, line: 191, baseType: !47, size: 64, offset: 4352)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1020, file: !1021, line: 191, baseType: !47, size: 64, offset: 4416)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1020, file: !1021, line: 192, baseType: !47, size: 64, offset: 4480)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1020, file: !1021, line: 192, baseType: !47, size: 64, offset: 4544)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1020, file: !1021, line: 192, baseType: !47, size: 64, offset: 4608)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1020, file: !1021, line: 192, baseType: !47, size: 64, offset: 4672)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1020, file: !1021, line: 193, baseType: !47, size: 64, offset: 4736)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1020, file: !1021, line: 193, baseType: !47, size: 64, offset: 4800)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1020, file: !1021, line: 194, baseType: !1121, size: 448, offset: 4864)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1122, line: 12, size: 448, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1121, file: !1122, line: 15, baseType: !118, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1121, file: !1122, line: 17, baseType: !118, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1121, file: !1122, line: 19, baseType: !118, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1121, file: !1122, line: 21, baseType: !118, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1121, file: !1122, line: 29, baseType: !118, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1121, file: !1122, line: 35, baseType: !118, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1121, file: !1122, line: 44, baseType: !118, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1020, file: !1021, line: 202, baseType: !120, size: 64, offset: 5312)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1020, file: !1021, line: 213, baseType: !1133, size: 2048, offset: 5376)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 2048, elements: !989)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1135, line: 43, size: 128, elements: !1136)
!1135 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1136 = !{!1137, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1134, file: !1135, line: 44, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !47)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1134, file: !1135, line: 45, baseType: !1138, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1020, file: !1021, line: 216, baseType: !1141, size: 448, offset: 7424)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1021, line: 30, size: 448, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1141, file: !1021, line: 31, baseType: !67, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1141, file: !1021, line: 32, baseType: !623, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1141, file: !1021, line: 33, baseType: !47, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1141, file: !1021, line: 34, baseType: !118, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1141, file: !1021, line: 34, baseType: !118, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1141, file: !1021, line: 35, baseType: !47, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1141, file: !1021, line: 35, baseType: !47, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1020, file: !1021, line: 219, baseType: !1151, size: 64, offset: 7872)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1021, line: 219, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1020, file: !1021, line: 222, baseType: !5, size: 32, offset: 7936)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1020, file: !1021, line: 223, baseType: !1155, size: 64, offset: 8000)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1021, line: 223, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1020, file: !1021, line: 230, baseType: !889, size: 8, offset: 8064)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1020, file: !1021, line: 231, baseType: !554, size: 16, offset: 8080)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1020, file: !1021, line: 232, baseType: !554, size: 16, offset: 8096)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1020, file: !1021, line: 234, baseType: !394, size: 64, offset: 8128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1020, file: !1021, line: 237, baseType: !537, size: 256, offset: 8192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1020, file: !1021, line: 243, baseType: !466, size: 320, offset: 8448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !39, file: !40, line: 1111, baseType: !1164, size: 64, offset: 15424)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1021, line: 20, size: 16640, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1165, file: !1021, line: 21, baseType: !413, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1165, file: !1021, line: 22, baseType: !58, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1165, file: !1021, line: 23, baseType: !706, size: 192, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1165, file: !1021, line: 24, baseType: !1171, size: 16384, offset: 256)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 16384, elements: !1192)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !970, line: 51, size: 256, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1172, file: !970, line: 52, baseType: !1175, size: 256)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !970, line: 37, size: 256, elements: !1176)
!1176 = !{!1177, !1184, !1185, !1191}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1175, file: !970, line: 39, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1179, line: 83, baseType: !1180)
!1179 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1179, line: 82, baseType: !1182)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !67}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1175, file: !970, line: 40, baseType: !47, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1175, file: !970, line: 46, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1179, line: 86, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1179, line: 85, baseType: !1189)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1175, file: !970, line: 48, baseType: !1035, size: 64, offset: 192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !39, file: !40, line: 1112, baseType: !1035, size: 64, offset: 15488)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !39, file: !40, line: 1113, baseType: !1035, size: 64, offset: 15552)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !39, file: !40, line: 1115, baseType: !1035, size: 64, offset: 15616)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !39, file: !40, line: 1116, baseType: !1031, size: 192, offset: 15680)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !39, file: !40, line: 1117, baseType: !47, size: 64, offset: 15872)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !39, file: !40, line: 1118, baseType: !1200, size: 64, offset: 15936)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !1138)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !39, file: !40, line: 1119, baseType: !5, size: 32, offset: 16000)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !39, file: !40, line: 1121, baseType: !716, size: 64, offset: 16064)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !39, file: !40, line: 1125, baseType: !1205, size: 64, offset: 16128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !40, line: 43, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !39, file: !40, line: 1127, baseType: !792, size: 32, offset: 16192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !39, file: !40, line: 1128, baseType: !5, size: 32, offset: 16224)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !39, file: !40, line: 1130, baseType: !1210, size: 128, offset: 16256)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1211, line: 37, size: 128, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1210, file: !1211, line: 38, baseType: !67, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1210, file: !1211, line: 39, baseType: !63, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1210, file: !1211, line: 40, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1211, line: 24, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !39, file: !40, line: 1131, baseType: !1219, size: 256, offset: 16384)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1220, line: 12, size: 256, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1219, file: !1220, line: 13, baseType: !902, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1219, file: !1220, line: 14, baseType: !47, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1219, file: !1220, line: 15, baseType: !47, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1219, file: !1220, line: 16, baseType: !889, size: 8, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !39, file: !40, line: 1134, baseType: !118, size: 64, offset: 16640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !39, file: !40, line: 1135, baseType: !118, size: 64, offset: 16704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !39, file: !40, line: 1138, baseType: !413, size: 32, offset: 16768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !39, file: !40, line: 1141, baseType: !211, size: 32, offset: 16800)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !39, file: !40, line: 1143, baseType: !1231, size: 64, offset: 16832)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !40, line: 735, size: 64, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1231, file: !40, line: 736, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !39, file: !40, line: 1147, baseType: !277, size: 128, offset: 16896)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !39, file: !40, line: 1149, baseType: !38, size: 64, offset: 17024)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !39, file: !40, line: 1151, baseType: !1238, size: 64, offset: 17088)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !40, line: 1151, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !39, file: !40, line: 1188, baseType: !28, size: 64, offset: 17152)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !39, file: !40, line: 1191, baseType: !1242, size: 64, offset: 17216)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !40, line: 44, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !39, file: !40, line: 1194, baseType: !1245, size: 64, offset: 17280)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !40, line: 45, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !39, file: !40, line: 1197, baseType: !1248, size: 64, offset: 17344)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !40, line: 61, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !39, file: !40, line: 1199, baseType: !1251, size: 64, offset: 17408)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !40, line: 52, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !39, file: !40, line: 1202, baseType: !1254, size: 64, offset: 17472)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !40, line: 48, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !39, file: !40, line: 1205, baseType: !47, size: 64, offset: 17536)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !39, file: !40, line: 1206, baseType: !1258, size: 64, offset: 17600)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !970, line: 14, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !970, line: 12, size: 384, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !970, line: 13, baseType: !1263, size: 384)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !970, line: 13, size: 384, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1263, file: !970, line: 13, baseType: !67, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1263, file: !970, line: 13, baseType: !67, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1263, file: !970, line: 13, baseType: !67, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1263, file: !970, line: 13, baseType: !1269, size: 256, offset: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1270, line: 37, size: 256, elements: !1271)
!1270 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1271 = !{!1272, !1277, !1290, !1296, !1306, !1333, !1338}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1269, file: !1270, line: 42, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 39, size: 64, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1273, file: !1270, line: 40, baseType: !675, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1273, file: !1270, line: 41, baseType: !797, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1269, file: !1270, line: 50, baseType: !1278, size: 192)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 45, size: 192, elements: !1279)
!1279 = !{!1280, !1282, !1283, !1289}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1278, file: !1270, line: 46, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !261, line: 95, baseType: !67)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1278, file: !1270, line: 47, baseType: !67, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1278, file: !1270, line: 48, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1270, line: 11, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1270, line: 8, size: 64, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1285, file: !1270, line: 9, baseType: !67, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1285, file: !1270, line: 10, baseType: !28, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1278, file: !1270, line: 49, baseType: !67, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1269, file: !1270, line: 57, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 53, size: 128, elements: !1292)
!1292 = !{!1293, !1294, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1291, file: !1270, line: 54, baseType: !675, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1291, file: !1270, line: 55, baseType: !797, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1291, file: !1270, line: 56, baseType: !1284, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1269, file: !1270, line: 66, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 60, size: 256, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1297, file: !1270, line: 61, baseType: !675, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1297, file: !1270, line: 62, baseType: !797, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1297, file: !1270, line: 63, baseType: !67, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1297, file: !1270, line: 64, baseType: !1303, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !261, line: 94, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !623)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1297, file: !1270, line: 65, baseType: !1303, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1269, file: !1270, line: 105, baseType: !1307, size: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 69, size: 256, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1307, file: !1270, line: 70, baseType: !28, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !1270, line: 79, baseType: !1311, size: 192, offset: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !1270, line: 79, size: 192, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1322, !1327}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1311, file: !1270, line: 81, baseType: !67, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1311, file: !1270, line: 86, baseType: !554, size: 16)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1311, file: !1270, line: 92, baseType: !1316, size: 192)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1270, line: 88, size: 192, elements: !1317)
!1317 = !{!1318, !1320, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1316, file: !1270, line: 89, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 64, elements: !255)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1316, file: !1270, line: 90, baseType: !28, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1316, file: !1270, line: 91, baseType: !28, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1311, file: !1270, line: 97, baseType: !1323, size: 96)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1270, line: 94, size: 96, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1323, file: !1270, line: 95, baseType: !1319, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1323, file: !1270, line: 96, baseType: !52, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1311, file: !1270, line: 103, baseType: !1328, size: 128)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1270, line: 99, size: 128, elements: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1328, file: !1270, line: 100, baseType: !47, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1328, file: !1270, line: 101, baseType: !52, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1328, file: !1270, line: 102, baseType: !52, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1269, file: !1270, line: 111, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 108, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1334, file: !1270, line: 109, baseType: !623, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1334, file: !1270, line: 110, baseType: !67, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1269, file: !1270, line: 118, baseType: !1339, size: 128)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1270, line: 114, size: 128, elements: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1339, file: !1270, line: 115, baseType: !28, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1339, file: !1270, line: 116, baseType: !67, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1339, file: !1270, line: 117, baseType: !5, size: 32, offset: 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !39, file: !40, line: 1208, baseType: !1121, size: 448, offset: 17664)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !39, file: !40, line: 1215, baseType: !118, size: 64, offset: 18112)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !39, file: !40, line: 1217, baseType: !118, size: 64, offset: 18176)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !39, file: !40, line: 1219, baseType: !118, size: 64, offset: 18240)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !39, file: !40, line: 1223, baseType: !1349, size: 64, offset: 18304)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1350, line: 99, baseType: !1351)
!1350 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 99, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1351, file: !1350, line: 99, baseType: !345, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !39, file: !40, line: 1225, baseType: !1094, size: 32, offset: 18368)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !39, file: !40, line: 1226, baseType: !67, size: 32, offset: 18400)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !39, file: !40, line: 1227, baseType: !67, size: 32, offset: 18432)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !39, file: !40, line: 1231, baseType: !1358, size: 64, offset: 18496)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !40, line: 1231, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !39, file: !40, line: 1233, baseType: !33, size: 128, offset: 18560)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !39, file: !40, line: 1240, baseType: !1362, size: 64, offset: 18688)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !40, line: 62, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !39, file: !40, line: 1242, baseType: !1365, size: 64, offset: 18752)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !40, line: 1242, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !39, file: !40, line: 1244, baseType: !33, size: 128, offset: 18816)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !39, file: !40, line: 1245, baseType: !1369, size: 64, offset: 18944)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !40, line: 51, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !39, file: !40, line: 1246, baseType: !537, size: 256, offset: 19008)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !39, file: !40, line: 1247, baseType: !5, size: 32, offset: 19264)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !39, file: !40, line: 1250, baseType: !1374, size: 64, offset: 19328)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !40, line: 57, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !39, file: !40, line: 1251, baseType: !537, size: 256, offset: 19392)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !39, file: !40, line: 1252, baseType: !33, size: 128, offset: 19648)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !39, file: !40, line: 1259, baseType: !1379, size: 64, offset: 19776)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !40, line: 54, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !39, file: !40, line: 1260, baseType: !554, size: 16, offset: 19840)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !39, file: !40, line: 1261, baseType: !554, size: 16, offset: 19856)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !39, file: !40, line: 1314, baseType: !1384, size: 64, offset: 19904)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1386, line: 62, size: 256, align: 256, elements: !1387)
!1386 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1385, file: !1386, line: 75, baseType: !52, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1385, file: !1386, line: 90, baseType: !52, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1385, file: !1386, line: 112, baseType: !119, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !1386, line: 132, baseType: !52, size: 32, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1385, file: !1386, line: 140, baseType: !52, size: 32, offset: 160)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1385, file: !1386, line: 149, baseType: !52, size: 32, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1385, file: !1386, line: 154, baseType: !1395, offset: 224)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, elements: !591)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !39, file: !40, line: 1315, baseType: !50, size: 32, offset: 19968)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !39, file: !40, line: 1316, baseType: !50, size: 32, offset: 20000)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !39, file: !40, line: 1321, baseType: !47, size: 64, offset: 20032)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !39, file: !40, line: 1325, baseType: !67, size: 32, offset: 20096)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !39, file: !40, line: 1326, baseType: !67, size: 32, offset: 20128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !39, file: !40, line: 1327, baseType: !67, size: 32, offset: 20160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !39, file: !40, line: 1328, baseType: !67, size: 32, offset: 20192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !39, file: !40, line: 1329, baseType: !713, size: 128, align: 64, offset: 20224)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !39, file: !40, line: 1332, baseType: !1405, size: 128, offset: 20352)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1406, line: 51, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1407 = !{!1408, !1413, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1405, file: !1406, line: 60, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1410, line: 7, size: 64, elements: !1411)
!1410 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1409, file: !1410, line: 12, baseType: !342, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1405, file: !1406, line: 63, baseType: !889, size: 8, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1405, file: !1406, line: 70, baseType: !889, size: 8, offset: 72)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !39, file: !40, line: 1335, baseType: !1416, size: 64, offset: 20480)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !40, line: 59, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !39, file: !40, line: 1337, baseType: !1419, size: 128, offset: 20544)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1406, line: 39, size: 128, elements: !1420)
!1420 = !{!1421, !1484, !1485}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1419, file: !1406, line: 40, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !396, line: 74, size: 512, align: 128, elements: !1424)
!1424 = !{!1425, !1426, !1478, !1483}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !396, line: 75, baseType: !47, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !396, line: 83, baseType: !1427, size: 320, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !396, line: 83, size: 320, elements: !1428)
!1428 = !{!1429, !1452, !1466, !1470, !1477}
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !396, line: 84, baseType: !1430, size: 320)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !396, line: 84, size: 320, elements: !1431)
!1431 = !{!1432, !1443, !1446, !1451}
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !396, line: 90, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !396, line: 90, size: 128, elements: !1434)
!1434 = !{!1435, !1436, !1441, !1442}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1433, file: !396, line: 91, baseType: !33, size: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !396, line: 94, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !396, line: 94, size: 128, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1437, file: !396, line: 96, baseType: !28, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1437, file: !396, line: 98, baseType: !5, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1433, file: !396, line: 102, baseType: !33, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1433, file: !396, line: 103, baseType: !33, size: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1430, file: !396, line: 106, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !396, line: 32, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !396, line: 107, baseType: !1447, size: 64, offset: 192)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !396, line: 107, size: 64, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1447, file: !396, line: 108, baseType: !47, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1447, file: !396, line: 109, baseType: !47, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1430, file: !396, line: 117, baseType: !47, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !396, line: 119, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !396, line: 119, size: 320, elements: !1454)
!1454 = !{!1455, !1456, !1459, !1460, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1453, file: !396, line: 124, baseType: !47, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1453, file: !396, line: 125, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !396, line: 125, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1453, file: !396, line: 126, baseType: !47, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1453, file: !396, line: 127, baseType: !47, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !396, line: 128, baseType: !1462, size: 64, offset: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !396, line: 128, size: 64, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1462, file: !396, line: 133, baseType: !47, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1462, file: !396, line: 138, baseType: !457, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !396, line: 141, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !396, line: 141, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1467, file: !396, line: 142, baseType: !47, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !396, line: 144, baseType: !1471, size: 128)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !396, line: 144, size: 128, elements: !1472)
!1472 = !{!1473, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1471, file: !396, line: 146, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !396, line: 146, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1471, file: !396, line: 147, baseType: !28, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1427, file: !396, line: 161, baseType: !713, size: 128, align: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !396, line: 164, baseType: !1479, size: 32, offset: 384)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !396, line: 164, size: 32, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1479, file: !396, line: 169, baseType: !63, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1479, file: !396, line: 177, baseType: !5, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1423, file: !396, line: 181, baseType: !63, size: 32, offset: 416)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1419, file: !1406, line: 42, baseType: !52, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1419, file: !1406, line: 43, baseType: !52, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !39, file: !40, line: 1340, baseType: !1487, size: 64, offset: 20672)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !40, line: 69, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !39, file: !40, line: 1351, baseType: !67, size: 32, offset: 20736)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !39, file: !40, line: 1352, baseType: !67, size: 32, offset: 20768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !39, file: !40, line: 1354, baseType: !47, size: 64, offset: 20800)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !39, file: !40, line: 1364, baseType: !118, size: 64, offset: 20864)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !39, file: !40, line: 1365, baseType: !118, size: 64, offset: 20928)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !39, file: !40, line: 1412, baseType: !47, size: 64, offset: 20992)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !39, file: !40, line: 1453, baseType: !1496, size: 64, offset: 21056)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !40, line: 1453, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !39, file: !40, line: 1457, baseType: !1499, size: 64, offset: 21120)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !16, line: 61, size: 576, elements: !1501)
!1501 = !{!1502, !1503, !1522, !1525, !1526, !1559, !1569}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1500, file: !16, line: 62, baseType: !15, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !16, line: 64, baseType: !1504, size: 192, offset: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1500, file: !16, line: 64, size: 192, elements: !1505)
!1505 = !{!1506, !1517}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !16, line: 65, baseType: !1507, size: 192)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !16, line: 65, size: 192, elements: !1508)
!1508 = !{!1509, !1516}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1507, file: !16, line: 66, baseType: !1510, size: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1511, line: 50, size: 128, elements: !1512)
!1511 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1510, file: !1511, line: 52, baseType: !47, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1510, file: !1511, line: 54, baseType: !5, size: 32, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1510, file: !1511, line: 55, baseType: !5, size: 32, offset: 96)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1507, file: !16, line: 67, baseType: !47, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !16, line: 70, baseType: !1518, size: 192)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !16, line: 70, size: 192, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1518, file: !16, line: 71, baseType: !713, size: 128, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1518, file: !16, line: 72, baseType: !47, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1500, file: !16, line: 76, baseType: !1523, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !16, line: 76, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1500, file: !16, line: 77, baseType: !47, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1500, file: !16, line: 79, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1511, line: 25, size: 256, elements: !1529)
!1529 = !{!1530, !1536, !1540}
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1511, line: 26, baseType: !1531, size: 128)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1511, line: 26, size: 128, elements: !1532)
!1532 = !{!1533, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1531, file: !1511, line: 27, baseType: !1534, size: 128)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !989)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1531, file: !1511, line: 28, baseType: !1534, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1528, file: !1511, line: 31, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1511, line: 23, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1511, line: 33, baseType: !1541, size: 64, offset: 192)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1511, line: 33, size: 64, elements: !1542)
!1542 = !{!1543, !1549, !1554}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1541, file: !1511, line: 38, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !1511, line: 34, size: 64, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1544, file: !1511, line: 35, baseType: !516, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1544, file: !1511, line: 36, baseType: !228, size: 8, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1544, file: !1511, line: 37, baseType: !228, size: 8, offset: 40)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1541, file: !1511, line: 42, baseType: !1550, size: 16)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !1511, line: 39, size: 16, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1550, file: !1511, line: 40, baseType: !228, size: 8)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1550, file: !1511, line: 41, baseType: !228, size: 8, offset: 8)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1541, file: !1511, line: 46, baseType: !1555, size: 16)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !1511, line: 43, size: 16, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1555, file: !1511, line: 44, baseType: !228, size: 8)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1555, file: !1511, line: 45, baseType: !228, size: 8, offset: 8)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1500, file: !16, line: 81, baseType: !1560, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !16, line: 85, size: 384, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1561, file: !16, line: 86, baseType: !1523, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1561, file: !16, line: 87, baseType: !47, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1561, file: !16, line: 88, baseType: !47, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1561, file: !16, line: 89, baseType: !47, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1561, file: !16, line: 90, baseType: !889, size: 8, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1561, file: !16, line: 92, baseType: !1560, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1500, file: !16, line: 82, baseType: !5, size: 32, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !39, file: !40, line: 1463, baseType: !1571, offset: 21184)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !40, line: 739, elements: !424)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !39, file: !40, line: 1470, baseType: !713, size: 128, align: 64, offset: 21184)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !39, file: !40, line: 1471, baseType: !58, size: 32, offset: 21312)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !39, file: !40, line: 1472, baseType: !67, size: 32, offset: 21344)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !39, file: !40, line: 1474, baseType: !38, size: 64, offset: 21376)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !39, file: !40, line: 1475, baseType: !1577, size: 320, offset: 21440)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1578, line: 11, size: 320, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1579 = !{!1580, !1581, !1582, !1587}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1577, file: !1578, line: 16, baseType: !699, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1577, file: !1578, line: 17, baseType: !47, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1577, file: !1578, line: 18, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1577, file: !1578, line: 19, baseType: !50, size: 32, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !39, file: !40, line: 1478, baseType: !1589, size: 64, offset: 21760)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !40, line: 1478, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !39, file: !40, line: 1482, baseType: !58, size: 32, offset: 21824)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !39, file: !40, line: 1489, baseType: !28, size: 64, offset: 21888)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !39, file: !40, line: 1504, baseType: !28, size: 64, offset: 21952)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !39, file: !40, line: 1505, baseType: !119, size: 64, offset: 22016)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !39, file: !40, line: 1506, baseType: !118, size: 64, offset: 22080)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !39, file: !40, line: 1507, baseType: !119, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !39, file: !40, line: 1508, baseType: !119, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !39, file: !40, line: 1509, baseType: !119, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !39, file: !40, line: 1510, baseType: !713, size: 128, align: 64, offset: 22208)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !39, file: !40, line: 1511, baseType: !67, size: 32, offset: 22336)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !39, file: !40, line: 1515, baseType: !1602, size: 64, offset: 22400)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !77, line: 56, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1602, file: !77, line: 57, baseType: !80, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !39, file: !40, line: 1518, baseType: !1602, size: 64, offset: 22464)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !39, file: !40, line: 1528, baseType: !713, size: 128, align: 64, offset: 22528)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !39, file: !40, line: 1552, baseType: !1608, size: 35328, offset: 23040)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1609, line: 430, size: 35328, elements: !1610)
!1609 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1610 = !{!1611, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1640, !1641, !1642, !1643, !1644, !1645, !1648, !1649, !1650, !1651}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1608, file: !1609, line: 432, baseType: !1612, size: 192)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1613, size: 192, elements: !774)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1614, line: 16, size: 64, elements: !1615)
!1614 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1613, file: !1614, line: 17, baseType: !87, size: 16)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1613, file: !1614, line: 18, baseType: !87, size: 16, offset: 16)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1613, file: !1614, line: 19, baseType: !87, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1613, file: !1614, line: 19, baseType: !87, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1613, file: !1614, line: 19, baseType: !87, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1613, file: !1614, line: 19, baseType: !87, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1613, file: !1614, line: 19, baseType: !87, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1613, file: !1614, line: 20, baseType: !87, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1613, file: !1614, line: 20, baseType: !87, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1613, file: !1614, line: 20, baseType: !87, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1613, file: !1614, line: 20, baseType: !87, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1613, file: !1614, line: 20, baseType: !87, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1613, file: !1614, line: 20, baseType: !87, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1608, file: !1609, line: 436, baseType: !47, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1608, file: !1609, line: 440, baseType: !89, size: 16, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1608, file: !1609, line: 441, baseType: !89, size: 16, offset: 272)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1608, file: !1609, line: 442, baseType: !89, size: 16, offset: 288)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1608, file: !1609, line: 443, baseType: !89, size: 16, offset: 304)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1608, file: !1609, line: 447, baseType: !47, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1608, file: !1609, line: 448, baseType: !47, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1608, file: !1609, line: 459, baseType: !1637, size: 256, offset: 448)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1638, size: 256, elements: !518)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1609, line: 428, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1608, file: !1609, line: 461, baseType: !47, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1608, file: !1609, line: 463, baseType: !47, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1608, file: !1609, line: 465, baseType: !47, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1608, file: !1609, line: 466, baseType: !47, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1608, file: !1609, line: 467, baseType: !47, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1608, file: !1609, line: 473, baseType: !1646, size: 64, offset: 1024)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1609, line: 10, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1608, file: !1609, line: 480, baseType: !47, size: 64, offset: 1088)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1608, file: !1609, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1608, file: !1609, line: 491, baseType: !50, size: 32, offset: 1184)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1608, file: !1609, line: 501, baseType: !1652, size: 33792, offset: 1536)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1653, line: 448, size: 33792, elements: !1654)
!1653 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1654 = !{!1655, !1656, !1657, !1821, !1822, !1828, !1829}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1652, file: !1653, line: 461, baseType: !5, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1652, file: !1653, line: 468, baseType: !47, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1652, file: !1653, line: 476, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1653, line: 356, size: 33280, align: 512, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1659, file: !1653, line: 358, baseType: !5, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1659, file: !1653, line: 361, baseType: !5, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1659, file: !1653, line: 364, baseType: !118, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1659, file: !1653, line: 367, baseType: !118, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1659, file: !1653, line: 370, baseType: !118, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1659, file: !1653, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1659, file: !1653, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1659, file: !1653, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1659, file: !1653, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1659, file: !1653, line: 397, baseType: !1671, size: 32768, offset: 512)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1653, line: 348, size: 32768, elements: !1672)
!1672 = !{!1673, !1688, !1727, !1804, !1817}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1671, file: !1653, line: 349, baseType: !1674, size: 896)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1653, line: 12, size: 896, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1687}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1674, file: !1653, line: 13, baseType: !50, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1674, file: !1653, line: 14, baseType: !50, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1674, file: !1653, line: 15, baseType: !50, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1674, file: !1653, line: 16, baseType: !50, size: 32, offset: 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1674, file: !1653, line: 17, baseType: !50, size: 32, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1674, file: !1653, line: 18, baseType: !50, size: 32, offset: 160)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1674, file: !1653, line: 19, baseType: !50, size: 32, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1674, file: !1653, line: 22, baseType: !1684, size: 640, offset: 224)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 20)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1674, file: !1653, line: 25, baseType: !50, size: 32, offset: 864)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1671, file: !1653, line: 350, baseType: !1689, size: 4096, align: 128)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1653, line: 34, size: 4096, align: 128, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1710, !1711, !1712, !1716, !1718, !1722}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1689, file: !1653, line: 35, baseType: !87, size: 16)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1689, file: !1653, line: 36, baseType: !87, size: 16, offset: 16)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1689, file: !1653, line: 37, baseType: !87, size: 16, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1689, file: !1653, line: 38, baseType: !87, size: 16, offset: 48)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1653, line: 39, baseType: !1696, size: 128, offset: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !1653, line: 39, size: 128, elements: !1697)
!1697 = !{!1698, !1703}
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1653, line: 40, baseType: !1699, size: 128)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1653, line: 40, size: 128, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1699, file: !1653, line: 41, baseType: !118, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1699, file: !1653, line: 42, baseType: !118, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1653, line: 44, baseType: !1704, size: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1653, line: 44, size: 128, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1704, file: !1653, line: 45, baseType: !50, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1704, file: !1653, line: 46, baseType: !50, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1704, file: !1653, line: 47, baseType: !50, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1704, file: !1653, line: 48, baseType: !50, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1689, file: !1653, line: 51, baseType: !50, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1689, file: !1653, line: 52, baseType: !50, size: 32, offset: 224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1689, file: !1653, line: 55, baseType: !1713, size: 1024, offset: 256)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !1714)
!1714 = !{!1715}
!1715 = !DISubrange(count: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1689, file: !1653, line: 58, baseType: !1717, size: 2048, offset: 1280)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !1192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1689, file: !1653, line: 60, baseType: !1719, size: 384, offset: 3328)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 384, elements: !1720)
!1720 = !{!1721}
!1721 = !DISubrange(count: 12)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1653, line: 62, baseType: !1723, size: 384, offset: 3712)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !1653, line: 62, size: 384, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1723, file: !1653, line: 63, baseType: !1719, size: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1723, file: !1653, line: 64, baseType: !1719, size: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1671, file: !1653, line: 351, baseType: !1728, size: 1088)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1653, line: 79, size: 1088, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1803}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1728, file: !1653, line: 80, baseType: !50, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1728, file: !1653, line: 81, baseType: !50, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1728, file: !1653, line: 82, baseType: !50, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1728, file: !1653, line: 83, baseType: !50, size: 32, offset: 96)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1728, file: !1653, line: 84, baseType: !50, size: 32, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1728, file: !1653, line: 85, baseType: !50, size: 32, offset: 160)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1728, file: !1653, line: 86, baseType: !50, size: 32, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1728, file: !1653, line: 88, baseType: !1684, size: 640, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1728, file: !1653, line: 89, baseType: !228, size: 8, offset: 864)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1728, file: !1653, line: 90, baseType: !228, size: 8, offset: 872)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1728, file: !1653, line: 91, baseType: !228, size: 8, offset: 880)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1728, file: !1653, line: 92, baseType: !228, size: 8, offset: 888)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1728, file: !1653, line: 93, baseType: !228, size: 8, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1728, file: !1653, line: 94, baseType: !228, size: 8, offset: 904)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1728, file: !1653, line: 95, baseType: !1745, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1747, line: 11, size: 128, elements: !1748)
!1747 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1746, file: !1747, line: 12, baseType: !623, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1746, file: !1747, line: 13, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1753, line: 103, size: 1344, elements: !1754)
!1753 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1783, !1784, !1785}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1752, file: !1753, line: 109, baseType: !47, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1752, file: !1753, line: 110, baseType: !47, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1752, file: !1753, line: 111, baseType: !47, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1752, file: !1753, line: 112, baseType: !47, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1752, file: !1753, line: 113, baseType: !47, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1752, file: !1753, line: 114, baseType: !47, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1752, file: !1753, line: 117, baseType: !47, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1752, file: !1753, line: 118, baseType: !47, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1752, file: !1753, line: 119, baseType: !47, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1752, file: !1753, line: 120, baseType: !47, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1752, file: !1753, line: 121, baseType: !47, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1752, file: !1753, line: 122, baseType: !47, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1752, file: !1753, line: 123, baseType: !47, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1752, file: !1753, line: 124, baseType: !47, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1752, file: !1753, line: 125, baseType: !47, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1752, file: !1753, line: 139, baseType: !47, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1752, file: !1753, line: 142, baseType: !47, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1753, line: 144, baseType: !1773, size: 64, offset: 1088)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1753, line: 144, size: 64, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1773, file: !1753, line: 146, baseType: !87, size: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1773, file: !1753, line: 148, baseType: !118, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1773, file: !1753, line: 150, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1753, line: 59, size: 64, elements: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1778, file: !1753, line: 61, baseType: !118, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1778, file: !1753, line: 63, baseType: !118, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1778, file: !1753, line: 65, baseType: !118, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !1753, line: 153, baseType: !47, size: 64, offset: 1152)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1752, file: !1753, line: 154, baseType: !47, size: 64, offset: 1216)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1753, line: 156, baseType: !1786, size: 64, offset: 1280)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1753, line: 156, size: 64, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1786, file: !1753, line: 158, baseType: !87, size: 16)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1786, file: !1753, line: 160, baseType: !118, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1786, file: !1753, line: 162, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1753, line: 69, size: 64, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1791, file: !1753, line: 71, baseType: !118, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1791, file: !1753, line: 73, baseType: !118, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1791, file: !1753, line: 75, baseType: !118, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1791, file: !1753, line: 77, baseType: !118, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1791, file: !1753, line: 80, baseType: !118, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !1753, line: 83, baseType: !118, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1791, file: !1753, line: 86, baseType: !118, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1791, file: !1753, line: 88, baseType: !118, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1791, file: !1753, line: 93, baseType: !118, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1791, file: !1753, line: 100, baseType: !118, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1728, file: !1653, line: 96, baseType: !50, size: 32, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1671, file: !1653, line: 352, baseType: !1805, size: 4608, align: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1653, line: 333, size: 4608, align: 512, elements: !1806)
!1806 = !{!1807, !1808, !1815}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1805, file: !1653, line: 334, baseType: !1689, size: 4096, align: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1805, file: !1653, line: 335, baseType: !1809, size: 512, offset: 4096)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1653, line: 312, size: 512, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1809, file: !1653, line: 313, baseType: !118, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1809, file: !1653, line: 314, baseType: !118, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1809, file: !1653, line: 315, baseType: !1814, size: 384, offset: 128)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 384, elements: !876)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1805, file: !1653, line: 336, baseType: !1816, offset: 4608)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, elements: !591)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1671, file: !1653, line: 353, baseType: !1818, size: 32768)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32768, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 4096)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1652, file: !1653, line: 484, baseType: !1658, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1652, file: !1653, line: 491, baseType: !1823, size: 128, offset: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1653, line: 404, size: 128, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1823, file: !1653, line: 424, baseType: !118, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1823, file: !1653, line: 432, baseType: !5, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1823, file: !1653, line: 440, baseType: !5, size: 32, offset: 96)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1652, file: !1653, line: 498, baseType: !1823, size: 128, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1652, file: !1653, line: 508, baseType: !1659, size: 33280, align: 512, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!1834 = !{i32 7, !"Dwarf Version", i32 5}
!1835 = !{i32 2, !"Debug Info Version", i32 3}
!1836 = !{i32 1, !"wchar_size", i32 2}
!1837 = !{i32 8, !"cf-protection-branch", i32 1}
!1838 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1839 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1840 = !{i32 1, !"Code Model", i32 2}
!1841 = !{i32 1, !"override-stack-alignment", i32 8}
!1842 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1843 = distinct !DISubprogram(name: "current_is_single_threaded", scope: !1, file: !1, line: 15, type: !1844, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!889}
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1856, !1860, !1863}
!1847 = !DILocalVariable(name: "task", scope: !1843, file: !1, line: 17, type: !38)
!1848 = !DILocalVariable(name: "mm", scope: !1843, file: !1, line: 18, type: !394)
!1849 = !DILocalVariable(name: "p", scope: !1843, file: !1, line: 19, type: !38)
!1850 = !DILocalVariable(name: "t", scope: !1843, file: !1, line: 19, type: !38)
!1851 = !DILocalVariable(name: "ret", scope: !1843, file: !1, line: 20, type: !889)
!1852 = !DILocalVariable(name: "__mptr", scope: !1853, file: !1, line: 30, type: !28)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 30, column: 2)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 30, column: 2)
!1855 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 30, column: 2)
!1856 = !DILocalVariable(name: "__mptr", scope: !1857, file: !1, line: 36, type: !28)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 36, column: 3)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 36, column: 3)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 30, column: 22)
!1860 = !DILocalVariable(name: "__mptr", scope: !1861, file: !1, line: 36, type: !28)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 36, column: 3)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 36, column: 3)
!1863 = !DILabel(scope: !1843, name: "found", file: !1, line: 50)
!1864 = !DILocation(line: 17, column: 2, scope: !1843)
!1865 = !DILocation(line: 17, column: 22, scope: !1843)
!1866 = !DILocation(line: 17, column: 29, scope: !1843)
!1867 = !DILocation(line: 18, column: 2, scope: !1843)
!1868 = !DILocation(line: 18, column: 20, scope: !1843)
!1869 = !DILocation(line: 18, column: 25, scope: !1843)
!1870 = !DILocation(line: 18, column: 31, scope: !1843)
!1871 = !DILocation(line: 19, column: 2, scope: !1843)
!1872 = !DILocation(line: 19, column: 22, scope: !1843)
!1873 = !DILocation(line: 19, column: 26, scope: !1843)
!1874 = !DILocation(line: 20, column: 2, scope: !1843)
!1875 = !DILocation(line: 20, column: 7, scope: !1843)
!1876 = !DILocation(line: 22, column: 19, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 22, column: 6)
!1878 = !DILocation(line: 22, column: 25, scope: !1877)
!1879 = !DILocation(line: 22, column: 33, scope: !1877)
!1880 = !DILocation(line: 22, column: 6, scope: !1877)
!1881 = !DILocation(line: 22, column: 39, scope: !1877)
!1882 = !DILocation(line: 22, column: 6, scope: !1843)
!1883 = !DILocation(line: 23, column: 3, scope: !1877)
!1884 = !DILocation(line: 25, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 25, column: 6)
!1886 = !DILocation(line: 25, column: 23, scope: !1885)
!1887 = !DILocation(line: 25, column: 6, scope: !1885)
!1888 = !DILocation(line: 25, column: 33, scope: !1885)
!1889 = !DILocation(line: 25, column: 6, scope: !1843)
!1890 = !DILocation(line: 26, column: 3, scope: !1885)
!1891 = !DILocation(line: 28, column: 6, scope: !1843)
!1892 = !DILocation(line: 29, column: 2, scope: !1843)
!1893 = !DILocation(line: 30, column: 2, scope: !1855)
!1894 = !DILocation(line: 30, column: 2, scope: !1853)
!1895 = !DILocation(line: 30, column: 2, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 30, column: 2)
!1897 = !DILocation(line: 30, column: 2, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 30, column: 2)
!1899 = !DILocation(line: 30, column: 2, scope: !1854)
!1900 = !DILocation(line: 31, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 31, column: 7)
!1902 = !DILocation(line: 31, column: 7, scope: !1859)
!1903 = !DILocation(line: 32, column: 4, scope: !1901)
!1904 = distinct !{!1904, !1893, !1905, !1906, !1907}
!1905 = !DILocation(line: 48, column: 2, scope: !1855)
!1906 = !{!"llvm.loop.mustprogress"}
!1907 = !{!"llvm.loop.unroll.disable"}
!1908 = !DILocation(line: 33, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 33, column: 7)
!1910 = !DILocation(line: 33, column: 7, scope: !1859)
!1911 = !DILocation(line: 34, column: 4, scope: !1909)
!1912 = !DILocation(line: 36, column: 3, scope: !1857)
!1913 = !DILocation(line: 36, column: 3, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 36, column: 3)
!1915 = !DILocation(line: 36, column: 3, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 36, column: 3)
!1917 = !DILocation(line: 36, column: 3, scope: !1858)
!1918 = !DILocation(line: 36, column: 3, scope: !1862)
!1919 = !DILocation(line: 37, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 37, column: 8)
!1921 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 36, column: 25)
!1922 = !DILocation(line: 37, column: 8, scope: !1921)
!1923 = !DILocation(line: 38, column: 5, scope: !1920)
!1924 = !DILocation(line: 39, column: 8, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 39, column: 8)
!1926 = !DILocation(line: 39, column: 8, scope: !1921)
!1927 = !DILocation(line: 40, column: 5, scope: !1925)
!1928 = !DILocation(line: 46, column: 4, scope: !1921)
!1929 = !DILocation(line: 46, column: 4, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 46, column: 4)
!1931 = !DILocation(line: 46, column: 4, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 46, column: 4)
!1933 = !DILocation(line: 46, column: 4, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 46, column: 4)
!1935 = !DILocation(line: 46, column: 4, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 46, column: 4)
!1937 = !{i64 2152693828}
!1938 = !DILocation(line: 47, column: 3, scope: !1921)
!1939 = !DILocation(line: 36, column: 3, scope: !1861)
!1940 = !DILocation(line: 36, column: 3, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 36, column: 3)
!1942 = !DILocation(line: 36, column: 3, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 36, column: 3)
!1944 = distinct !{!1944, !1917, !1945, !1906, !1907}
!1945 = !DILocation(line: 47, column: 3, scope: !1858)
!1946 = !DILocation(line: 49, column: 6, scope: !1843)
!1947 = !DILocation(line: 49, column: 2, scope: !1843)
!1948 = !DILocation(line: 50, column: 1, scope: !1843)
!1949 = !DILocation(line: 51, column: 2, scope: !1843)
!1950 = !DILocation(line: 53, column: 9, scope: !1843)
!1951 = !{i8 0, i8 2}
!1952 = !DILocation(line: 53, column: 2, scope: !1843)
!1953 = !DILocation(line: 54, column: 1, scope: !1843)
!1954 = distinct !DISubprogram(name: "get_current", scope: !1955, file: !1955, line: 39, type: !1956, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1958)
!1955 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!38}
!1958 = !{!1959, !1961, !1965}
!1959 = !DILocalVariable(name: "pscr_ret__", scope: !1960, file: !1955, line: 41, type: !38)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !1955, line: 41, column: 9)
!1961 = !DILocalVariable(name: "__vpp_verify", scope: !1962, file: !1955, line: 41, type: !1963)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !1955, line: 41, column: 9)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1965 = !DILocalVariable(name: "pfo_val__", scope: !1966, file: !1955, line: 41, type: !118)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !1955, line: 41, column: 9)
!1967 = !DILocation(line: 41, column: 9, scope: !1960)
!1968 = !DILocation(line: 41, column: 9, scope: !1962)
!1969 = !DILocation(line: 41, column: 9, scope: !1966)
!1970 = !{i64 2148963248}
!1971 = !DILocation(line: 41, column: 9, scope: !1954)
!1972 = !DILocation(line: 41, column: 2, scope: !1954)
!1973 = distinct !DISubprogram(name: "atomic_read", scope: !1974, file: !1974, line: 30, type: !1975, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1979)
!1974 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!67, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1979 = !{!1980}
!1980 = !DILocalVariable(name: "v", arg: 1, scope: !1973, file: !1974, line: 30, type: !1977)
!1981 = !DILocation(line: 30, column: 29, scope: !1973)
!1982 = !DILocation(line: 32, column: 25, scope: !1973)
!1983 = !DILocation(line: 32, column: 2, scope: !1973)
!1984 = !DILocation(line: 33, column: 25, scope: !1973)
!1985 = !DILocation(line: 33, column: 9, scope: !1973)
!1986 = !DILocation(line: 33, column: 2, scope: !1973)
!1987 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1988, file: !1988, line: 782, type: !1189, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!1988 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!1989 = !DILocation(line: 784, column: 2, scope: !1987)
!1990 = !DILocation(line: 786, column: 2, scope: !1987)
!1991 = !DILocation(line: 786, column: 2, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !1988, line: 786, column: 2)
!1993 = !DILocation(line: 787, column: 2, scope: !1987)
!1994 = !DILocation(line: 787, column: 2, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1987, file: !1988, line: 787, column: 2)
!1996 = !DILocation(line: 789, column: 1, scope: !1987)
!1997 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1988, file: !1988, line: 813, type: !1189, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!1998 = !DILocation(line: 815, column: 2, scope: !1997)
!1999 = !DILocation(line: 815, column: 2, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !1988, line: 815, column: 2)
!2001 = !DILocation(line: 818, column: 2, scope: !1997)
!2002 = !DILocation(line: 819, column: 2, scope: !1997)
!2003 = !DILocation(line: 819, column: 2, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1997, file: !1988, line: 819, column: 2)
!2005 = !DILocation(line: 820, column: 1, scope: !1997)
!2006 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2007, file: !2007, line: 66, type: !2008, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2013)
!2007 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !2010, !1200}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2013 = !{!2014, !2015}
!2014 = !DILocalVariable(name: "v", arg: 1, scope: !2006, file: !2007, line: 66, type: !2010)
!2015 = !DILocalVariable(name: "size", arg: 2, scope: !2006, file: !2007, line: 66, type: !1200)
!2016 = !DILocation(line: 66, column: 73, scope: !2006)
!2017 = !DILocation(line: 66, column: 83, scope: !2006)
!2018 = !DILocation(line: 68, column: 19, scope: !2006)
!2019 = !DILocation(line: 68, column: 22, scope: !2006)
!2020 = !DILocation(line: 68, column: 2, scope: !2006)
!2021 = !DILocation(line: 69, column: 2, scope: !2006)
!2022 = !DILocation(line: 70, column: 1, scope: !2006)
!2023 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2024, file: !2024, line: 442, type: !1975, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2025)
!2024 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "v", arg: 1, scope: !2023, file: !2024, line: 442, type: !1977)
!2027 = !DILocation(line: 442, column: 33, scope: !2023)
!2028 = !DILocation(line: 444, column: 26, scope: !2023)
!2029 = !DILocation(line: 444, column: 9, scope: !2023)
!2030 = !DILocation(line: 444, column: 2, scope: !2023)
!2031 = distinct !DISubprogram(name: "kasan_check_read", scope: !2032, file: !2032, line: 40, type: !2033, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2035)
!2032 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!889, !2010, !5}
!2035 = !{!2036, !2037}
!2036 = !DILocalVariable(name: "p", arg: 1, scope: !2031, file: !2032, line: 40, type: !2010)
!2037 = !DILocalVariable(name: "size", arg: 2, scope: !2031, file: !2032, line: 40, type: !5)
!2038 = !DILocation(line: 40, column: 58, scope: !2031)
!2039 = !DILocation(line: 40, column: 74, scope: !2031)
!2040 = !DILocation(line: 42, column: 2, scope: !2031)
!2041 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2042, file: !2042, line: 229, type: !2043, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2045)
!2042 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2010, !1200, !67}
!2045 = !{!2046, !2047, !2048}
!2046 = !DILocalVariable(name: "ptr", arg: 1, scope: !2041, file: !2042, line: 229, type: !2010)
!2047 = !DILocalVariable(name: "size", arg: 2, scope: !2041, file: !2042, line: 229, type: !1200)
!2048 = !DILocalVariable(name: "type", arg: 3, scope: !2041, file: !2042, line: 230, type: !67)
!2049 = !DILocation(line: 229, column: 60, scope: !2041)
!2050 = !DILocation(line: 229, column: 72, scope: !2041)
!2051 = !DILocation(line: 230, column: 15, scope: !2041)
!2052 = !DILocation(line: 230, column: 23, scope: !2041)
!2053 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2054, file: !2054, line: 17, type: !1975, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2055)
!2054 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2055 = !{!2056}
!2056 = !DILocalVariable(name: "v", arg: 1, scope: !2053, file: !2054, line: 17, type: !1977)
!2057 = !DILocation(line: 17, column: 61, scope: !2053)
!2058 = !DILocation(line: 23, column: 9, scope: !2053)
!2059 = !DILocation(line: 23, column: 2, scope: !2053)
!2060 = !DISubprogram(name: "__rcu_read_lock", scope: !1988, file: !1988, line: 74, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !DISubprogram(name: "__rcu_read_unlock", scope: !1988, file: !1988, line: 75, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
