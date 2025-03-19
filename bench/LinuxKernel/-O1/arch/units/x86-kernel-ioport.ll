; ModuleID = 'arch/x86/kernel/ioport.c'
source_filename = "arch/x86/kernel/ioport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic64_t = type { i64 }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.23 }
%union.anon.23 = type { i64 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.15, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.18 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i64, i64 }
%union.anon.18 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.io_bitmap = type { i64, %struct.refcount_struct, i32, [1024 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.19, i64, i64, %union.anon.20 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }

@io_bitmap_sequence = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@task_update_io_bitmap.__UNIQUE_ID___addressable___SCK__preempt_schedule314 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5855
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5862
@llvm.compiler.used = appending global [1 x ptr] [ptr @task_update_io_bitmap.__UNIQUE_ID___addressable___SCK__preempt_schedule314], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_bitmap_share(ptr noundef %tsk) #0 align 16 !dbg !5877 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %call = call ptr @get_current() #17, !dbg !5881
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !5883
  %io_bitmap = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 14, !dbg !5884
  %0 = load ptr, ptr %io_bitmap, align 64, !dbg !5884
  %tobool = icmp ne ptr %0, null, !dbg !5881
  br i1 %tobool, label %if.then, label %if.end, !dbg !5885

if.then:                                          ; preds = %entry
  %call1 = call ptr @get_current() #17, !dbg !5886
  %thread2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 197, !dbg !5888
  %io_bitmap3 = getelementptr inbounds %struct.thread_struct, ptr %thread2, i32 0, i32 14, !dbg !5889
  %1 = load ptr, ptr %io_bitmap3, align 64, !dbg !5889
  %refcnt = getelementptr inbounds %struct.io_bitmap, ptr %1, i32 0, i32 1, !dbg !5890
  call void @refcount_inc(ptr noundef %refcnt) #17, !dbg !5891
  %call4 = call ptr @get_current() #17, !dbg !5892
  %thread5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 197, !dbg !5893
  %io_bitmap6 = getelementptr inbounds %struct.thread_struct, ptr %thread5, i32 0, i32 14, !dbg !5894
  %2 = load ptr, ptr %io_bitmap6, align 64, !dbg !5894
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !5895
  %thread7 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 197, !dbg !5896
  %io_bitmap8 = getelementptr inbounds %struct.thread_struct, ptr %thread7, i32 0, i32 14, !dbg !5897
  store ptr %2, ptr %io_bitmap8, align 64, !dbg !5898
  br label %if.end, !dbg !5899

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tsk.addr, align 8, !dbg !5900
  call void @set_tsk_thread_flag(ptr noundef %4, i32 noundef 22) #17, !dbg !5901
  ret void, !dbg !5902
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !5903 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5908, metadata !DIExpression()), !dbg !5914
  br label %do.body, !dbg !5914

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5910, metadata !DIExpression()), !dbg !5915
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5915
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5914
  br label %do.cond, !dbg !5915

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5915

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5912, metadata !DIExpression()), !dbg !5916
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !5916, !srcloc !5917
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5916
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5916
  %3 = inttoptr i64 %2 to ptr, !dbg !5916
  store ptr %3, ptr %tmp, align 8, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !5914
  %4 = load ptr, ptr %tmp, align 8, !dbg !5916
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5914
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5914
  store ptr %5, ptr %tmp1, align 8, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !5918
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5914
  ret ptr %6, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !5920 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5927
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !5928
  ret void, !dbg !5929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #3 align 16 !dbg !5930 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5934, metadata !DIExpression()), !dbg !5936
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5935, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5938
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5938
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5939
  call void @set_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #17, !dbg !5940
  ret void, !dbg !5941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_bitmap_exit(ptr noundef %tsk) #0 align 16 !dbg !5942 {
entry:
  %tsk.addr = alloca ptr, align 8
  %iobm = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5944, metadata !DIExpression()), !dbg !5946
  call void @llvm.lifetime.start.p0(i64 8, ptr %iobm) #18, !dbg !5947
  call void @llvm.dbg.declare(metadata ptr %iobm, metadata !5945, metadata !DIExpression()), !dbg !5948
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5949
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !5950
  %io_bitmap = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 14, !dbg !5951
  %1 = load ptr, ptr %io_bitmap, align 64, !dbg !5951
  store ptr %1, ptr %iobm, align 8, !dbg !5948
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !5952
  %thread1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !5953
  %io_bitmap2 = getelementptr inbounds %struct.thread_struct, ptr %thread1, i32 0, i32 14, !dbg !5954
  store ptr null, ptr %io_bitmap2, align 64, !dbg !5955
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !5956
  call void @task_update_io_bitmap(ptr noundef %3) #17, !dbg !5957
  %4 = load ptr, ptr %iobm, align 8, !dbg !5958
  %tobool = icmp ne ptr %4, null, !dbg !5958
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5960

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %iobm, align 8, !dbg !5961
  %refcnt = getelementptr inbounds %struct.io_bitmap, ptr %5, i32 0, i32 1, !dbg !5962
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcnt) #17, !dbg !5963
  br i1 %call, label %if.then, label %if.end, !dbg !5964

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %iobm, align 8, !dbg !5965
  call void @kfree(ptr noundef %6) #17, !dbg !5966
  br label %if.end, !dbg !5966

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %iobm) #18, !dbg !5967
  ret void, !dbg !5967
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_update_io_bitmap(ptr noundef %tsk) #0 align 16 !dbg !5857 {
entry:
  %tsk.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5859, metadata !DIExpression()), !dbg !5968
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #18, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5860, metadata !DIExpression()), !dbg !5970
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5971
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !5972
  store ptr %thread, ptr %t, align 8, !dbg !5970
  %1 = load ptr, ptr %t, align 8, !dbg !5973
  %iopl_emul = getelementptr inbounds %struct.thread_struct, ptr %1, i32 0, i32 15, !dbg !5975
  %2 = load i64, ptr %iopl_emul, align 8, !dbg !5975
  %cmp = icmp eq i64 %2, 3, !dbg !5976
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5977

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %t, align 8, !dbg !5978
  %io_bitmap = getelementptr inbounds %struct.thread_struct, ptr %3, i32 0, i32 14, !dbg !5979
  %4 = load ptr, ptr %io_bitmap, align 64, !dbg !5979
  %tobool = icmp ne ptr %4, null, !dbg !5978
  br i1 %tobool, label %if.then, label %if.else, !dbg !5980

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !5981
  call void @set_tsk_thread_flag(ptr noundef %5, i32 noundef 22) #17, !dbg !5983
  br label %if.end10, !dbg !5984

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %tsk.addr, align 8, !dbg !5985
  call void @clear_tsk_thread_flag(ptr noundef %6, i32 noundef 22) #17, !dbg !5987
  br label %do.body, !dbg !5988

do.body:                                          ; preds = %if.else
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !5989
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !5989, !srcloc !5991
  br label %do.cond, !dbg !5989

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5989

do.end:                                           ; preds = %do.cond
  call void @native_tss_update_io_bitmap() #17, !dbg !5992
  br label %do.body1, !dbg !5993

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !5994, !srcloc !5996
  %call = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !5997
  %lnot = xor i1 %call, true, !dbg !5997
  %lnot2 = xor i1 %lnot, true, !dbg !5997
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5997
  %conv = sext i32 %lnot.ext to i64, !dbg !5997
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5997
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5997
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5994

if.then4:                                         ; preds = %do.body1
  br label %do.body5, !dbg !5997

do.body5:                                         ; preds = %if.then4
  %7 = call i64 @llvm.read_register.i64(metadata !5867), !dbg !5999
  %8 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %7) #18, !dbg !5999, !srcloc !6001
  call void @llvm.write_register.i64(metadata !5867, i64 %8), !dbg !5999
  br label %do.cond6, !dbg !5999

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5999

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !5999

if.end:                                           ; preds = %do.end7, %do.body1
  br label %do.cond8, !dbg !5994

do.cond8:                                         ; preds = %if.end
  br label %do.end9, !dbg !5994

do.end9:                                          ; preds = %do.cond8
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #18, !dbg !6002
  ret void, !dbg !6002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !6003 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6009
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !6010
  ret i1 %call, !dbg !6011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6012 dso_local void @kfree(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ksys_ioperm(i64 noundef %from, i64 noundef %num, i32 noundef %turn_on) #0 align 16 !dbg !6015 {
entry:
  %retval = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %turn_on.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %max_long = alloca i32, align 4
  %iobm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6019, metadata !DIExpression()), !dbg !6026
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6020, metadata !DIExpression()), !dbg !6027
  store i32 %turn_on, ptr %turn_on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %turn_on.addr, metadata !6021, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #18, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6022, metadata !DIExpression()), !dbg !6030
  %call = call ptr @get_current() #17, !dbg !6031
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6032
  store ptr %thread, ptr %t, align 8, !dbg !6030
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6023, metadata !DIExpression()), !dbg !6034
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_long) #18, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %max_long, metadata !6024, metadata !DIExpression()), !dbg !6035
  call void @llvm.lifetime.start.p0(i64 8, ptr %iobm) #18, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %iobm, metadata !6025, metadata !DIExpression()), !dbg !6037
  %0 = load i64, ptr %from.addr, align 8, !dbg !6038
  %1 = load i64, ptr %num.addr, align 8, !dbg !6040
  %add = add i64 %0, %1, !dbg !6041
  %2 = load i64, ptr %from.addr, align 8, !dbg !6042
  %cmp = icmp ule i64 %add, %2, !dbg !6043
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6044

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %from.addr, align 8, !dbg !6045
  %4 = load i64, ptr %num.addr, align 8, !dbg !6046
  %add1 = add i64 %3, %4, !dbg !6047
  %cmp2 = icmp ugt i64 %add1, 65536, !dbg !6048
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6049

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6050

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %turn_on.addr, align 4, !dbg !6051
  %tobool = icmp ne i32 %5, 0, !dbg !6051
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !6053

land.lhs.true:                                    ; preds = %if.end
  %call3 = call zeroext i1 @capable(i32 noundef 17) #17, !dbg !6054
  br i1 %call3, label %lor.lhs.false4, label %if.then7, !dbg !6055

lor.lhs.false4:                                   ; preds = %land.lhs.true
  %call5 = call i32 @security_locked_down(i32 noundef 7) #17, !dbg !6056
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6056
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6057

if.then7:                                         ; preds = %lor.lhs.false4, %land.lhs.true
  store i64 -1, ptr %retval, align 8, !dbg !6058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6058

if.end8:                                          ; preds = %lor.lhs.false4, %if.end
  %6 = load ptr, ptr %t, align 8, !dbg !6059
  %io_bitmap = getelementptr inbounds %struct.thread_struct, ptr %6, i32 0, i32 14, !dbg !6060
  %7 = load ptr, ptr %io_bitmap, align 64, !dbg !6060
  store ptr %7, ptr %iobm, align 8, !dbg !6061
  %8 = load ptr, ptr %iobm, align 8, !dbg !6062
  %tobool9 = icmp ne ptr %8, null, !dbg !6062
  br i1 %tobool9, label %if.end18, label %if.then10, !dbg !6064

if.then10:                                        ; preds = %if.end8
  %9 = load i32, ptr %turn_on.addr, align 4, !dbg !6065
  %tobool11 = icmp ne i32 %9, 0, !dbg !6065
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6068

if.then12:                                        ; preds = %if.then10
  store i64 0, ptr %retval, align 8, !dbg !6069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6069

if.end13:                                         ; preds = %if.then10
  %call14 = call noalias ptr @kmalloc(i64 noundef 8208, i32 noundef 3264) #20, !dbg !6070
  store ptr %call14, ptr %iobm, align 8, !dbg !6071
  %10 = load ptr, ptr %iobm, align 8, !dbg !6072
  %tobool15 = icmp ne ptr %10, null, !dbg !6072
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6074

if.then16:                                        ; preds = %if.end13
  store i64 -12, ptr %retval, align 8, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

if.end17:                                         ; preds = %if.end13
  %11 = load ptr, ptr %iobm, align 8, !dbg !6076
  %bitmap = getelementptr inbounds %struct.io_bitmap, ptr %11, i32 0, i32 3, !dbg !6077
  %arraydecay = getelementptr inbounds [1024 x i64], ptr %bitmap, i64 0, i64 0, !dbg !6078
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 -1, i64 8192, i1 false), !dbg !6078
  %12 = load ptr, ptr %iobm, align 8, !dbg !6079
  %refcnt = getelementptr inbounds %struct.io_bitmap, ptr %12, i32 0, i32 1, !dbg !6080
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #17, !dbg !6081
  br label %if.end18, !dbg !6082

if.end18:                                         ; preds = %if.end17, %if.end8
  %13 = load ptr, ptr %iobm, align 8, !dbg !6083
  %refcnt19 = getelementptr inbounds %struct.io_bitmap, ptr %13, i32 0, i32 1, !dbg !6085
  %call20 = call i32 @refcount_read(ptr noundef %refcnt19) #17, !dbg !6086
  %cmp21 = icmp ugt i32 %call20, 1, !dbg !6087
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !6088

if.then22:                                        ; preds = %if.end18
  %14 = load ptr, ptr %iobm, align 8, !dbg !6089
  %call23 = call ptr @kmemdup(ptr noundef %14, i64 noundef 8208, i32 noundef 3264) #21, !dbg !6091
  store ptr %call23, ptr %iobm, align 8, !dbg !6092
  %15 = load ptr, ptr %iobm, align 8, !dbg !6093
  %tobool24 = icmp ne ptr %15, null, !dbg !6093
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !6095

if.then25:                                        ; preds = %if.then22
  store i64 -12, ptr %retval, align 8, !dbg !6096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6096

if.end26:                                         ; preds = %if.then22
  %16 = load ptr, ptr %iobm, align 8, !dbg !6097
  %refcnt27 = getelementptr inbounds %struct.io_bitmap, ptr %16, i32 0, i32 1, !dbg !6098
  call void @refcount_set(ptr noundef %refcnt27, i32 noundef 1) #17, !dbg !6099
  %call28 = call ptr @get_current() #17, !dbg !6100
  call void @io_bitmap_exit(ptr noundef %call28) #17, !dbg !6101
  br label %if.end29, !dbg !6102

if.end29:                                         ; preds = %if.end26, %if.end18
  %17 = load ptr, ptr %iobm, align 8, !dbg !6103
  %18 = load ptr, ptr %t, align 8, !dbg !6104
  %io_bitmap30 = getelementptr inbounds %struct.thread_struct, ptr %18, i32 0, i32 14, !dbg !6105
  store ptr %17, ptr %io_bitmap30, align 64, !dbg !6106
  %call31 = call ptr @get_current() #17, !dbg !6107
  call void @set_ti_thread_flag(ptr noundef %call31, i32 noundef 22) #17, !dbg !6107
  %19 = load i32, ptr %turn_on.addr, align 4, !dbg !6108
  %tobool32 = icmp ne i32 %19, 0, !dbg !6108
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !6110

if.then33:                                        ; preds = %if.end29
  %20 = load ptr, ptr %iobm, align 8, !dbg !6111
  %bitmap34 = getelementptr inbounds %struct.io_bitmap, ptr %20, i32 0, i32 3, !dbg !6112
  %arraydecay35 = getelementptr inbounds [1024 x i64], ptr %bitmap34, i64 0, i64 0, !dbg !6111
  %21 = load i64, ptr %from.addr, align 8, !dbg !6113
  %conv = trunc i64 %21 to i32, !dbg !6113
  %22 = load i64, ptr %num.addr, align 8, !dbg !6114
  %conv36 = trunc i64 %22 to i32, !dbg !6114
  call void @bitmap_clear(ptr noundef %arraydecay35, i32 noundef %conv, i32 noundef %conv36) #17, !dbg !6115
  br label %if.end41, !dbg !6115

if.else:                                          ; preds = %if.end29
  %23 = load ptr, ptr %iobm, align 8, !dbg !6116
  %bitmap37 = getelementptr inbounds %struct.io_bitmap, ptr %23, i32 0, i32 3, !dbg !6117
  %arraydecay38 = getelementptr inbounds [1024 x i64], ptr %bitmap37, i64 0, i64 0, !dbg !6116
  %24 = load i64, ptr %from.addr, align 8, !dbg !6118
  %conv39 = trunc i64 %24 to i32, !dbg !6118
  %25 = load i64, ptr %num.addr, align 8, !dbg !6119
  %conv40 = trunc i64 %25 to i32, !dbg !6119
  call void @bitmap_set(ptr noundef %arraydecay38, i32 noundef %conv39, i32 noundef %conv40) #17, !dbg !6120
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then33
  store i32 -1, ptr %max_long, align 4, !dbg !6121
  store i32 0, ptr %i, align 4, !dbg !6122
  br label %for.cond, !dbg !6124

for.cond:                                         ; preds = %for.inc, %if.end41
  %26 = load i32, ptr %i, align 4, !dbg !6125
  %conv42 = zext i32 %26 to i64, !dbg !6125
  %cmp43 = icmp ult i64 %conv42, 1024, !dbg !6127
  br i1 %cmp43, label %for.body, label %for.end, !dbg !6128

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %iobm, align 8, !dbg !6129
  %bitmap45 = getelementptr inbounds %struct.io_bitmap, ptr %27, i32 0, i32 3, !dbg !6132
  %28 = load i32, ptr %i, align 4, !dbg !6133
  %idxprom = zext i32 %28 to i64, !dbg !6129
  %arrayidx = getelementptr [1024 x i64], ptr %bitmap45, i64 0, i64 %idxprom, !dbg !6129
  %29 = load i64, ptr %arrayidx, align 8, !dbg !6129
  %cmp46 = icmp ne i64 %29, -1, !dbg !6134
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !6135

if.then48:                                        ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !6136
  store i32 %30, ptr %max_long, align 4, !dbg !6137
  br label %if.end49, !dbg !6138

if.end49:                                         ; preds = %if.then48, %for.body
  br label %for.inc, !dbg !6139

for.inc:                                          ; preds = %if.end49
  %31 = load i32, ptr %i, align 4, !dbg !6140
  %inc = add i32 %31, 1, !dbg !6140
  store i32 %inc, ptr %i, align 4, !dbg !6140
  br label %for.cond, !dbg !6141, !llvm.loop !6142

for.end:                                          ; preds = %for.cond
  %32 = load i32, ptr %max_long, align 4, !dbg !6146
  %cmp50 = icmp eq i32 %32, -1, !dbg !6148
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !6149

if.then52:                                        ; preds = %for.end
  %call53 = call ptr @get_current() #17, !dbg !6150
  call void @io_bitmap_exit(ptr noundef %call53) #17, !dbg !6152
  store i64 0, ptr %retval, align 8, !dbg !6153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6153

if.end54:                                         ; preds = %for.end
  %33 = load i32, ptr %max_long, align 4, !dbg !6154
  %add55 = add i32 %33, 1, !dbg !6155
  %conv56 = zext i32 %add55 to i64, !dbg !6156
  %mul = mul i64 %conv56, 8, !dbg !6157
  %conv57 = trunc i64 %mul to i32, !dbg !6156
  %34 = load ptr, ptr %iobm, align 8, !dbg !6158
  %max = getelementptr inbounds %struct.io_bitmap, ptr %34, i32 0, i32 2, !dbg !6159
  store i32 %conv57, ptr %max, align 4, !dbg !6160
  %call58 = call i64 @atomic64_add_return(i64 noundef 1, ptr noundef @io_bitmap_sequence) #17, !dbg !6161
  %35 = load ptr, ptr %iobm, align 8, !dbg !6162
  %sequence = getelementptr inbounds %struct.io_bitmap, ptr %35, i32 0, i32 0, !dbg !6163
  store i64 %call58, ptr %sequence, align 8, !dbg !6164
  store i64 0, ptr %retval, align 8, !dbg !6165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6165

cleanup:                                          ; preds = %if.end54, %if.then52, %if.then25, %if.then16, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iobm) #18, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_long) #18, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #18, !dbg !6166
  %36 = load i64, ptr %retval, align 8, !dbg !6166
  ret i64 %36, !dbg !6166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6167 dso_local zeroext i1 @capable(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6170 dso_local i32 @security_locked_down(i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6173 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6177, metadata !DIExpression()), !dbg !6182
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6178, metadata !DIExpression()), !dbg !6183
  %0 = load i64, ptr %size.addr, align 8, !dbg !6184
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6185
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6186

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6187
  %tobool = icmp ne i64 %2, 0, !dbg !6187
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6188

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6179, metadata !DIExpression()), !dbg !6190
  %3 = load i64, ptr %size.addr, align 8, !dbg !6191
  %cmp = icmp ugt i64 %3, 8192, !dbg !6193
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6194

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6195
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6196
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6197
  store ptr %call, ptr %retval, align 8, !dbg !6198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6198

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6199
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6199
  store i32 %call2, ptr %index, align 4, !dbg !6200
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6201
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6202
  %9 = ptrtoint ptr %8 to i64, !dbg !6202
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6203
  %idxprom = zext i32 %call3 to i64, !dbg !6204
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6204
  %10 = load i32, ptr %index, align 4, !dbg !6205
  %idxprom4 = zext i32 %10 to i64, !dbg !6204
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6204
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6204
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6206
  %13 = load i64, ptr %size.addr, align 8, !dbg !6207
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6208
  store ptr %call6, ptr %retval, align 8, !dbg !6209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6209

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6210
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6211
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6212
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6213
  store ptr %call8, ptr %retval, align 8, !dbg !6214
  br label %return, !dbg !6214

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6215
  ret ptr %16, !dbg !6215
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !6216 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6220, metadata !DIExpression()), !dbg !6222
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6221, metadata !DIExpression()), !dbg !6223
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6224
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6225
  %1 = load i32, ptr %n.addr, align 4, !dbg !6226
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #17, !dbg !6227
  ret void, !dbg !6228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #3 align 16 !dbg !6229 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6235, metadata !DIExpression()), !dbg !6236
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6237
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6238
  %call = call i32 @atomic_read(ptr noundef %refs) #17, !dbg !6239
  ret i32 %call, !dbg !6240
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6241 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !6245 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6250, metadata !DIExpression()), !dbg !6252
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6251, metadata !DIExpression()), !dbg !6253
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6254
  %conv = sext i32 %0 to i64, !dbg !6254
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !6255
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !6256
  call void @set_bit(i64 noundef %conv, ptr noundef %flags) #17, !dbg !6257
  ret void, !dbg !6258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_clear(ptr noundef %map, i32 noundef %start, i32 noundef %nbits) #2 align 16 !dbg !6259 {
entry:
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6264, metadata !DIExpression()), !dbg !6267
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6265, metadata !DIExpression()), !dbg !6268
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6266, metadata !DIExpression()), !dbg !6269
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6270
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6272
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6273

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6274
  %cmp = icmp eq i32 %2, 1, !dbg !6275
  br i1 %cmp, label %if.then, label %if.else, !dbg !6276

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %start.addr, align 4, !dbg !6277
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6277
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6277

land.lhs.true1:                                   ; preds = %if.then
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6277
  %6 = ptrtoint ptr %5 to i64, !dbg !6277
  %cmp2 = icmp ne i64 %6, 0, !dbg !6277
  %conv = zext i1 %cmp2 to i32, !dbg !6277
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6277
  br i1 %7, label %land.lhs.true3, label %cond.false, !dbg !6277

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6277
  %9 = ptrtoint ptr %8 to i64, !dbg !6277
  %cmp4 = icmp ne i64 %9, 0, !dbg !6277
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !6277

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %10 = load ptr, ptr %map.addr, align 8, !dbg !6277
  %11 = load i64, ptr %10, align 8, !dbg !6277
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6277
  br i1 %12, label %cond.true, label %cond.false, !dbg !6277

cond.true:                                        ; preds = %land.lhs.true6
  %13 = load i32, ptr %start.addr, align 4, !dbg !6277
  %conv7 = zext i32 %13 to i64, !dbg !6277
  %14 = load ptr, ptr %map.addr, align 8, !dbg !6277
  call void @generic___clear_bit(i64 noundef %conv7, ptr noundef %14) #17, !dbg !6277
  br label %cond.end, !dbg !6277

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true1, %if.then
  %15 = load i32, ptr %start.addr, align 4, !dbg !6277
  %conv8 = zext i32 %15 to i64, !dbg !6277
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6277
  call void @___clear_bit(i64 noundef %conv8, ptr noundef %16) #17, !dbg !6277
  br label %cond.end, !dbg !6277

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end42, !dbg !6277

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load i32, ptr %start.addr, align 4, !dbg !6278
  %18 = load i32, ptr %nbits.addr, align 4, !dbg !6278
  %add = add i32 %17, %18, !dbg !6278
  %19 = call i1 @llvm.is.constant.i32(i32 %add), !dbg !6278
  br i1 %19, label %land.lhs.true9, label %if.else25, !dbg !6278

land.lhs.true9:                                   ; preds = %if.else
  %20 = load i32, ptr %start.addr, align 4, !dbg !6278
  %21 = load i32, ptr %nbits.addr, align 4, !dbg !6278
  %add10 = add i32 %20, %21, !dbg !6278
  %cmp11 = icmp ule i32 %add10, 64, !dbg !6278
  br i1 %cmp11, label %land.lhs.true13, label %if.else25, !dbg !6278

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %22 = load i32, ptr %start.addr, align 4, !dbg !6278
  %23 = load i32, ptr %nbits.addr, align 4, !dbg !6278
  %add14 = add i32 %22, %23, !dbg !6278
  %cmp15 = icmp ugt i32 %add14, 0, !dbg !6278
  br i1 %cmp15, label %if.then17, label %if.else25, !dbg !6280

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load i32, ptr %start.addr, align 4, !dbg !6281
  %sh_prom = zext i32 %24 to i64, !dbg !6281
  %shl = shl i64 1, %sh_prom, !dbg !6281
  %sub = sub i64 -1, %shl, !dbg !6281
  %add18 = add i64 %sub, 1, !dbg !6281
  %25 = load i32, ptr %start.addr, align 4, !dbg !6281
  %26 = load i32, ptr %nbits.addr, align 4, !dbg !6281
  %add19 = add i32 %25, %26, !dbg !6281
  %sub20 = sub i32 %add19, 1, !dbg !6281
  %sub21 = sub i32 63, %sub20, !dbg !6281
  %sh_prom22 = zext i32 %sub21 to i64, !dbg !6281
  %shr = lshr i64 -1, %sh_prom22, !dbg !6281
  %and = and i64 %add18, %shr, !dbg !6281
  %add23 = add i64 0, %and, !dbg !6281
  %not = xor i64 %add23, -1, !dbg !6282
  %27 = load ptr, ptr %map.addr, align 8, !dbg !6283
  %28 = load i64, ptr %27, align 8, !dbg !6284
  %and24 = and i64 %28, %not, !dbg !6284
  store i64 %and24, ptr %27, align 8, !dbg !6284
  br label %if.end41, !dbg !6285

if.else25:                                        ; preds = %land.lhs.true13, %land.lhs.true9, %if.else
  %29 = load i32, ptr %start.addr, align 4, !dbg !6286
  %and26 = and i32 %29, 7, !dbg !6288
  %30 = call i1 @llvm.is.constant.i32(i32 %and26), !dbg !6289
  br i1 %30, label %land.lhs.true27, label %if.else40, !dbg !6290

land.lhs.true27:                                  ; preds = %if.else25
  %31 = load i32, ptr %start.addr, align 4, !dbg !6291
  %and28 = and i32 %31, 7, !dbg !6291
  %cmp29 = icmp eq i32 %and28, 0, !dbg !6291
  br i1 %cmp29, label %land.lhs.true31, label %if.else40, !dbg !6292

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %32 = load i32, ptr %nbits.addr, align 4, !dbg !6293
  %and32 = and i32 %32, 7, !dbg !6294
  %33 = call i1 @llvm.is.constant.i32(i32 %and32), !dbg !6295
  br i1 %33, label %land.lhs.true33, label %if.else40, !dbg !6296

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %34 = load i32, ptr %nbits.addr, align 4, !dbg !6297
  %and34 = and i32 %34, 7, !dbg !6297
  %cmp35 = icmp eq i32 %and34, 0, !dbg !6297
  br i1 %cmp35, label %if.then37, label %if.else40, !dbg !6298

if.then37:                                        ; preds = %land.lhs.true33
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6299
  %36 = load i32, ptr %start.addr, align 4, !dbg !6300
  %div = udiv i32 %36, 8, !dbg !6301
  %idx.ext = zext i32 %div to i64, !dbg !6302
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !6302
  %37 = load i32, ptr %nbits.addr, align 4, !dbg !6303
  %div38 = udiv i32 %37, 8, !dbg !6304
  %conv39 = zext i32 %div38 to i64, !dbg !6303
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv39, i1 false), !dbg !6305
  br label %if.end, !dbg !6305

if.else40:                                        ; preds = %land.lhs.true33, %land.lhs.true31, %land.lhs.true27, %if.else25
  %38 = load ptr, ptr %map.addr, align 8, !dbg !6306
  %39 = load i32, ptr %start.addr, align 4, !dbg !6307
  %40 = load i32, ptr %nbits.addr, align 4, !dbg !6308
  call void @__bitmap_clear(ptr noundef %38, i32 noundef %39, i32 noundef %40) #17, !dbg !6309
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %cond.end
  ret void, !dbg !6310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_set(ptr noundef %map, i32 noundef %start, i32 noundef %nbits) #2 align 16 !dbg !6311 {
entry:
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6313, metadata !DIExpression()), !dbg !6316
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6314, metadata !DIExpression()), !dbg !6317
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6315, metadata !DIExpression()), !dbg !6318
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6319
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6321
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6322

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6323
  %cmp = icmp eq i32 %2, 1, !dbg !6324
  br i1 %cmp, label %if.then, label %if.else, !dbg !6325

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %start.addr, align 4, !dbg !6326
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6326
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6326

land.lhs.true1:                                   ; preds = %if.then
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6326
  %6 = ptrtoint ptr %5 to i64, !dbg !6326
  %cmp2 = icmp ne i64 %6, 0, !dbg !6326
  %conv = zext i1 %cmp2 to i32, !dbg !6326
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6326
  br i1 %7, label %land.lhs.true3, label %cond.false, !dbg !6326

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6326
  %9 = ptrtoint ptr %8 to i64, !dbg !6326
  %cmp4 = icmp ne i64 %9, 0, !dbg !6326
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !6326

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %10 = load ptr, ptr %map.addr, align 8, !dbg !6326
  %11 = load i64, ptr %10, align 8, !dbg !6326
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6326
  br i1 %12, label %cond.true, label %cond.false, !dbg !6326

cond.true:                                        ; preds = %land.lhs.true6
  %13 = load i32, ptr %start.addr, align 4, !dbg !6326
  %conv7 = zext i32 %13 to i64, !dbg !6326
  %14 = load ptr, ptr %map.addr, align 8, !dbg !6326
  call void @generic___set_bit(i64 noundef %conv7, ptr noundef %14) #17, !dbg !6326
  br label %cond.end, !dbg !6326

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true1, %if.then
  %15 = load i32, ptr %start.addr, align 4, !dbg !6326
  %conv8 = zext i32 %15 to i64, !dbg !6326
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6326
  call void @___set_bit(i64 noundef %conv8, ptr noundef %16) #17, !dbg !6326
  br label %cond.end, !dbg !6326

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end41, !dbg !6326

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load i32, ptr %start.addr, align 4, !dbg !6327
  %18 = load i32, ptr %nbits.addr, align 4, !dbg !6327
  %add = add i32 %17, %18, !dbg !6327
  %19 = call i1 @llvm.is.constant.i32(i32 %add), !dbg !6327
  br i1 %19, label %land.lhs.true9, label %if.else24, !dbg !6327

land.lhs.true9:                                   ; preds = %if.else
  %20 = load i32, ptr %start.addr, align 4, !dbg !6327
  %21 = load i32, ptr %nbits.addr, align 4, !dbg !6327
  %add10 = add i32 %20, %21, !dbg !6327
  %cmp11 = icmp ule i32 %add10, 64, !dbg !6327
  br i1 %cmp11, label %land.lhs.true13, label %if.else24, !dbg !6327

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %22 = load i32, ptr %start.addr, align 4, !dbg !6327
  %23 = load i32, ptr %nbits.addr, align 4, !dbg !6327
  %add14 = add i32 %22, %23, !dbg !6327
  %cmp15 = icmp ugt i32 %add14, 0, !dbg !6327
  br i1 %cmp15, label %if.then17, label %if.else24, !dbg !6329

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load i32, ptr %start.addr, align 4, !dbg !6330
  %sh_prom = zext i32 %24 to i64, !dbg !6330
  %shl = shl i64 1, %sh_prom, !dbg !6330
  %sub = sub i64 -1, %shl, !dbg !6330
  %add18 = add i64 %sub, 1, !dbg !6330
  %25 = load i32, ptr %start.addr, align 4, !dbg !6330
  %26 = load i32, ptr %nbits.addr, align 4, !dbg !6330
  %add19 = add i32 %25, %26, !dbg !6330
  %sub20 = sub i32 %add19, 1, !dbg !6330
  %sub21 = sub i32 63, %sub20, !dbg !6330
  %sh_prom22 = zext i32 %sub21 to i64, !dbg !6330
  %shr = lshr i64 -1, %sh_prom22, !dbg !6330
  %and = and i64 %add18, %shr, !dbg !6330
  %add23 = add i64 0, %and, !dbg !6330
  %27 = load ptr, ptr %map.addr, align 8, !dbg !6331
  %28 = load i64, ptr %27, align 8, !dbg !6332
  %or = or i64 %28, %add23, !dbg !6332
  store i64 %or, ptr %27, align 8, !dbg !6332
  br label %if.end40, !dbg !6333

if.else24:                                        ; preds = %land.lhs.true13, %land.lhs.true9, %if.else
  %29 = load i32, ptr %start.addr, align 4, !dbg !6334
  %and25 = and i32 %29, 7, !dbg !6336
  %30 = call i1 @llvm.is.constant.i32(i32 %and25), !dbg !6337
  br i1 %30, label %land.lhs.true26, label %if.else39, !dbg !6338

land.lhs.true26:                                  ; preds = %if.else24
  %31 = load i32, ptr %start.addr, align 4, !dbg !6339
  %and27 = and i32 %31, 7, !dbg !6339
  %cmp28 = icmp eq i32 %and27, 0, !dbg !6339
  br i1 %cmp28, label %land.lhs.true30, label %if.else39, !dbg !6340

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %32 = load i32, ptr %nbits.addr, align 4, !dbg !6341
  %and31 = and i32 %32, 7, !dbg !6342
  %33 = call i1 @llvm.is.constant.i32(i32 %and31), !dbg !6343
  br i1 %33, label %land.lhs.true32, label %if.else39, !dbg !6344

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %34 = load i32, ptr %nbits.addr, align 4, !dbg !6345
  %and33 = and i32 %34, 7, !dbg !6345
  %cmp34 = icmp eq i32 %and33, 0, !dbg !6345
  br i1 %cmp34, label %if.then36, label %if.else39, !dbg !6346

if.then36:                                        ; preds = %land.lhs.true32
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6347
  %36 = load i32, ptr %start.addr, align 4, !dbg !6348
  %div = udiv i32 %36, 8, !dbg !6349
  %idx.ext = zext i32 %div to i64, !dbg !6350
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !6350
  %37 = load i32, ptr %nbits.addr, align 4, !dbg !6351
  %div37 = udiv i32 %37, 8, !dbg !6352
  %conv38 = zext i32 %div37 to i64, !dbg !6351
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 -1, i64 %conv38, i1 false), !dbg !6353
  br label %if.end, !dbg !6353

if.else39:                                        ; preds = %land.lhs.true32, %land.lhs.true30, %land.lhs.true26, %if.else24
  %38 = load ptr, ptr %map.addr, align 8, !dbg !6354
  %39 = load i32, ptr %start.addr, align 4, !dbg !6355
  %40 = load i32, ptr %nbits.addr, align 4, !dbg !6356
  call void @__bitmap_set(ptr noundef %38, i32 noundef %39, i32 noundef %40) #17, !dbg !6357
  br label %if.end

if.end:                                           ; preds = %if.else39, %if.then36
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then17
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %cond.end
  ret void, !dbg !6358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !6359 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6365, metadata !DIExpression()), !dbg !6367
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6366, metadata !DIExpression()), !dbg !6368
  br label %do.body, !dbg !6369

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6370

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6372
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !6373
  %1 = load i64, ptr %i.addr, align 8, !dbg !6374
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6375
  %call = call i64 @raw_atomic64_add_return(i64 noundef %1, ptr noundef %2) #17, !dbg !6376
  ret i64 %call, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_ioperm(ptr noundef %regs) #0 align 16 !dbg !6378 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6385
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6385
  %1 = load i64, ptr %di, align 8, !dbg !6385
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6385
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6385
  %3 = load i64, ptr %si, align 8, !dbg !6385
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6385
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6385
  %5 = load i64, ptr %dx, align 8, !dbg !6385
  %call = call i64 @__se_sys_ioperm(i64 noundef %1, i64 noundef %3, i64 noundef %5) #17, !dbg !6385
  ret i64 %call, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_ioperm(i64 noundef %from, i64 noundef %num, i64 noundef %turn_on) #0 align 16 !dbg !6386 {
entry:
  %from.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %turn_on.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6390, metadata !DIExpression()), !dbg !6394
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6391, metadata !DIExpression()), !dbg !6394
  store i64 %turn_on, ptr %turn_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %turn_on.addr, metadata !6392, metadata !DIExpression()), !dbg !6394
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6393, metadata !DIExpression()), !dbg !6394
  %0 = load i64, ptr %from.addr, align 8, !dbg !6394
  %1 = load i64, ptr %num.addr, align 8, !dbg !6394
  %2 = load i64, ptr %turn_on.addr, align 8, !dbg !6394
  %conv = trunc i64 %2 to i32, !dbg !6394
  %call = call i64 @__do_sys_ioperm(i64 noundef %0, i64 noundef %1, i32 noundef %conv) #17, !dbg !6394
  store i64 %call, ptr %ret, align 8, !dbg !6394
  br label %do.body, !dbg !6394

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6395

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6395

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6394
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6394
  ret i64 %3, !dbg !6394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_ioperm(ptr noundef %regs) #0 align 16 !dbg !6397 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6399, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6400
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6400
  %1 = load i64, ptr %bx, align 8, !dbg !6400
  %conv = trunc i64 %1 to i32, !dbg !6400
  %conv1 = zext i32 %conv to i64, !dbg !6400
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6400
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6400
  %3 = load i64, ptr %cx, align 8, !dbg !6400
  %conv2 = trunc i64 %3 to i32, !dbg !6400
  %conv3 = zext i32 %conv2 to i64, !dbg !6400
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6400
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6400
  %5 = load i64, ptr %dx, align 8, !dbg !6400
  %conv4 = trunc i64 %5 to i32, !dbg !6400
  %conv5 = zext i32 %conv4 to i64, !dbg !6400
  %call = call i64 @__se_sys_ioperm(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #17, !dbg !6400
  ret i64 %call, !dbg !6400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_iopl(ptr noundef %regs) #0 align 16 !dbg !6401 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6403, metadata !DIExpression()), !dbg !6404
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6404
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6404
  %1 = load i64, ptr %di, align 8, !dbg !6404
  %call = call i64 @__se_sys_iopl(i64 noundef %1) #17, !dbg !6404
  ret i64 %call, !dbg !6404
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_iopl(i64 noundef %level) #0 align 16 !dbg !6405 {
entry:
  %level.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6411
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6410, metadata !DIExpression()), !dbg !6411
  %0 = load i64, ptr %level.addr, align 8, !dbg !6411
  %conv = trunc i64 %0 to i32, !dbg !6411
  %call = call i64 @__do_sys_iopl(i32 noundef %conv) #17, !dbg !6411
  store i64 %call, ptr %ret, align 8, !dbg !6411
  br label %do.body, !dbg !6411

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6412

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6412

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6411
  ret i64 %1, !dbg !6411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_iopl(ptr noundef %regs) #0 align 16 !dbg !6414 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6417
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6417
  %1 = load i64, ptr %bx, align 8, !dbg !6417
  %conv = trunc i64 %1 to i32, !dbg !6417
  %conv1 = zext i32 %conv to i64, !dbg !6417
  %call = call i64 @__se_sys_iopl(i64 noundef %conv1) #17, !dbg !6417
  ret i64 %call, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6418 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6422, metadata !DIExpression()), !dbg !6424
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6423, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6426
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6427
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !6428
  ret void, !dbg !6429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6430 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6434, metadata !DIExpression()), !dbg !6438
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6435, metadata !DIExpression()), !dbg !6439
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6436, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6437, metadata !DIExpression()), !dbg !6442
  %0 = load i32, ptr %i.addr, align 4, !dbg !6443
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6444
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6445
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !6446
  store i32 %call, ptr %old, align 4, !dbg !6442
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6447
  %tobool = icmp ne ptr %2, null, !dbg !6447
  br i1 %tobool, label %if.then, label %if.end, !dbg !6449

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6450
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6451
  store i32 %3, ptr %4, align 4, !dbg !6452
  br label %if.end, !dbg !6453

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6454
  %tobool1 = icmp ne i32 %5, 0, !dbg !6454
  %lnot = xor i1 %tobool1, true, !dbg !6454
  %lnot2 = xor i1 %lnot, true, !dbg !6454
  %lnot3 = xor i1 %lnot2, true, !dbg !6454
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6454
  %conv = sext i32 %lnot.ext to i64, !dbg !6454
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6454
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6454
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6456

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6457
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !6458
  br label %if.end18, !dbg !6458

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6459
  %cmp = icmp slt i32 %7, 0, !dbg !6459
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6459

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6459
  %9 = load i32, ptr %i.addr, align 4, !dbg !6459
  %add = add i32 %8, %9, !dbg !6459
  %cmp7 = icmp slt i32 %add, 0, !dbg !6459
  br label %lor.end, !dbg !6459

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6459
  %lnot11 = xor i1 %lnot9, true, !dbg !6459
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6459
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6459
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6459
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6459
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6461

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6462
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !6463
  br label %if.end17, !dbg !6463

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !6464
  ret void, !dbg !6464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6465 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6474
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6475
  %1 = load i32, ptr %i.addr, align 4, !dbg !6476
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6477
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !6478
  ret i32 %call, !dbg !6479
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6483 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6491, metadata !DIExpression()), !dbg !6493
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6492, metadata !DIExpression()), !dbg !6494
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6495
  %1 = load i64, ptr %size.addr, align 8, !dbg !6496
  %conv = trunc i64 %1 to i32, !dbg !6496
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6497
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6498
  %3 = load i64, ptr %size.addr, align 8, !dbg !6498
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6498
  ret void, !dbg !6499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6500 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6503, metadata !DIExpression()), !dbg !6505
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  %0 = load i32, ptr %i.addr, align 4, !dbg !6507
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6508
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !6509
  ret i32 %call, !dbg !6510
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6511 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6517, metadata !DIExpression()), !dbg !6519
  ret i1 true, !dbg !6520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6521 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6526, metadata !DIExpression()), !dbg !6529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6527, metadata !DIExpression()), !dbg !6530
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6528, metadata !DIExpression()), !dbg !6531
  ret void, !dbg !6532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6533 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6536, metadata !DIExpression()), !dbg !6540
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6537, metadata !DIExpression()), !dbg !6541
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6538, metadata !DIExpression()), !dbg !6542
  %0 = load i32, ptr %i.addr, align 4, !dbg !6542
  store i32 %0, ptr %__ret, align 4, !dbg !6542
  %1 = load i32, ptr %__ret, align 4, !dbg !6542
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6542
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6542
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !6542, !srcloc !6543
  store i32 %3, ptr %__ret, align 4, !dbg !6542
  %4 = load i32, ptr %__ret, align 4, !dbg !6542
  store i32 %4, ptr %tmp, align 4, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !6544
  %5 = load i32, ptr %tmp, align 4, !dbg !6542
  ret i32 %5, !dbg !6545
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #3 align 16 !dbg !6546 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6548, metadata !DIExpression()), !dbg !6550
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6549, metadata !DIExpression()), !dbg !6551
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6552
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6552
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6553
  call void @clear_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #17, !dbg !6554
  ret void, !dbg !6555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !6556 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6559, metadata !DIExpression()), !dbg !6566
  br label %do.body, !dbg !6567

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #18, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6560, metadata !DIExpression()), !dbg !6568
  %0 = load i32, ptr %val.addr, align 4, !dbg !6568
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6568
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6568

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6568
  %cmp = icmp eq i32 %2, 1, !dbg !6568
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6568

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6568
  %cmp1 = icmp eq i32 %3, -1, !dbg !6568
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6568

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6568
  br label %cond.end, !dbg !6568

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6568
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6568
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6569
  %cmp2 = icmp eq i32 %5, 1, !dbg !6569
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6568

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6570, !srcloc !6572
  br label %if.end8, !dbg !6569

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6573
  %cmp3 = icmp eq i32 %6, -1, !dbg !6573
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6569

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6574, !srcloc !6576
  br label %if.end, !dbg !6573

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6573

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #18, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6562, metadata !DIExpression()), !dbg !6577
  %7 = load i32, ptr %val.addr, align 4, !dbg !6577
  %conv = sext i32 %7 to i64, !dbg !6577
  %and = and i64 %conv, 4294967295, !dbg !6577
  %conv7 = trunc i64 %and to i32, !dbg !6577
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6577
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6577
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6577, !srcloc !6578
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #18, !dbg !6573
  br label %do.cond, !dbg !6577

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6577

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #18, !dbg !6567
  br label %do.end10, !dbg !6568

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6580 dso_local void @native_tss_update_io_bitmap() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !6581 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6583, metadata !DIExpression()), !dbg !6585
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6585, !srcloc !6586
  %1 = icmp ult i8 %0, 2, !dbg !6585
  call void @llvm.assume(i1 %1), !dbg !6585
  store i8 %0, ptr %c, align 1, !dbg !6585
  %2 = load i8, ptr %c, align 1, !dbg !6585, !range !6587, !noundef !660
  %tobool = trunc i8 %2 to i1, !dbg !6585
  %frombool = zext i1 %tobool to i8, !dbg !6585
  store i8 %frombool, ptr %tmp, align 1, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6588
  %3 = load i8, ptr %tmp, align 1, !dbg !6585, !range !6587, !noundef !660
  %tobool1 = trunc i8 %3 to i1, !dbg !6585
  ret i1 %tobool1, !dbg !6589
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !6590 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6592, metadata !DIExpression()), !dbg !6594
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6593, metadata !DIExpression()), !dbg !6595
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6596
  %conv = sext i32 %0 to i64, !dbg !6596
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !6597
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !6598
  call void @clear_bit(i64 noundef %conv, ptr noundef %flags) #17, !dbg !6599
  ret void, !dbg !6600
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6601 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6612
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6613
  %div = sdiv i64 %1, 64, !dbg !6613
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6614
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6615
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6616
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6617
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6618
  ret void, !dbg !6619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6620 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6622, metadata !DIExpression()), !dbg !6624
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6623, metadata !DIExpression()), !dbg !6625
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6626
  %1 = load i64, ptr %size.addr, align 8, !dbg !6627
  %conv = trunc i64 %1 to i32, !dbg !6627
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6628
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6629
  %3 = load i64, ptr %size.addr, align 8, !dbg !6629
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6629
  ret void, !dbg !6630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6631 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6635, metadata !DIExpression()), !dbg !6637
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6638
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6640
  br i1 %1, label %if.then, label %if.else, !dbg !6641

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6642
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %shr = ashr i64 %3, 3, !dbg !6642
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6642
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6644
  %and = and i64 %4, 7, !dbg !6644
  %sh_prom = trunc i64 %and to i32, !dbg !6644
  %shl = shl i32 1, %sh_prom, !dbg !6644
  %not = xor i32 %shl, -1, !dbg !6645
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #18, !dbg !6646, !srcloc !6647
  br label %if.end, !dbg !6648

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6649
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6651
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !6652, !srcloc !6653
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6654
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6655 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6659, metadata !DIExpression()), !dbg !6661
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6663
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6664
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !6665
  ret i1 %call, !dbg !6666
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6667 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6671, metadata !DIExpression()), !dbg !6675
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6672, metadata !DIExpression()), !dbg !6676
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6673, metadata !DIExpression()), !dbg !6677
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !6678
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6674, metadata !DIExpression()), !dbg !6679
  %0 = load i32, ptr %i.addr, align 4, !dbg !6680
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6681
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6682
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !6683
  store i32 %call, ptr %old, align 4, !dbg !6679
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6684
  %tobool = icmp ne ptr %2, null, !dbg !6684
  br i1 %tobool, label %if.then, label %if.end, !dbg !6686

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6687
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6688
  store i32 %3, ptr %4, align 4, !dbg !6689
  br label %if.end, !dbg !6690

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6691
  %6 = load i32, ptr %i.addr, align 4, !dbg !6693
  %cmp = icmp eq i32 %5, %6, !dbg !6694
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6695

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6696

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6698

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6700

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6700

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6698

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6702

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6704

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6704

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !6702, !srcloc !6706
  br label %do.cond7, !dbg !6702

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6702

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6698

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6698

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6707

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6708
  %cmp12 = icmp slt i32 %7, 0, !dbg !6708
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6708

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6708
  %9 = load i32, ptr %i.addr, align 4, !dbg !6708
  %sub = sub i32 %8, %9, !dbg !6708
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6708
  br label %lor.end, !dbg !6708

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6708
  %lnot14 = xor i1 %lnot, true, !dbg !6708
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6708
  %conv = sext i32 %lnot.ext to i64, !dbg !6708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6708
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6708
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6710

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6711
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !6712
  br label %if.end17, !dbg !6712

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6713

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !6714
  %12 = load i1, ptr %retval, align 1, !dbg !6714
  ret i1 %12, !dbg !6714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6715 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6717, metadata !DIExpression()), !dbg !6719
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6718, metadata !DIExpression()), !dbg !6720
  br label %do.body, !dbg !6721

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6722

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6724
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6725
  %1 = load i32, ptr %i.addr, align 4, !dbg !6726
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6727
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !6728
  ret i32 %call, !dbg !6729
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6730 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6732, metadata !DIExpression()), !dbg !6734
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  %0 = load i32, ptr %i.addr, align 4, !dbg !6736
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6737
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !6738
  ret i32 %call, !dbg !6739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6740 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6742, metadata !DIExpression()), !dbg !6746
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6743, metadata !DIExpression()), !dbg !6747
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !6748
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6744, metadata !DIExpression()), !dbg !6748
  %0 = load i32, ptr %i.addr, align 4, !dbg !6748
  %sub = sub i32 0, %0, !dbg !6748
  store i32 %sub, ptr %__ret, align 4, !dbg !6748
  %1 = load i32, ptr %__ret, align 4, !dbg !6748
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6748
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6748
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !6748, !srcloc !6749
  store i32 %3, ptr %__ret, align 4, !dbg !6748
  %4 = load i32, ptr %__ret, align 4, !dbg !6748
  store i32 %4, ptr %tmp, align 4, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !6750
  %5 = load i32, ptr %tmp, align 4, !dbg !6748
  ret i32 %5, !dbg !6751
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6752 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #2 align 16 !dbg !6753 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6757, metadata !DIExpression()), !dbg !6759
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6758, metadata !DIExpression()), !dbg !6760
  %0 = load i64, ptr %size.addr, align 8, !dbg !6761
  %tobool = icmp ne i64 %0, 0, !dbg !6761
  br i1 %tobool, label %if.end, label %if.then, !dbg !6763

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6764
  br label %return, !dbg !6764

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6765
  %cmp = icmp ule i64 %1, 8, !dbg !6767
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6768

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6770
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6772
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6773

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6774
  %cmp4 = icmp ule i64 %3, 96, !dbg !6775
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6776

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6777
  br label %return, !dbg !6777

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6778
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6780
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6781

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6782
  %cmp9 = icmp ule i64 %5, 192, !dbg !6783
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6784

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6786
  %cmp12 = icmp ule i64 %6, 8, !dbg !6788
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6789

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6791
  %cmp15 = icmp ule i64 %7, 16, !dbg !6793
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6794

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6795
  br label %return, !dbg !6795

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6796
  %cmp18 = icmp ule i64 %8, 32, !dbg !6798
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6799

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6801
  %cmp21 = icmp ule i64 %9, 64, !dbg !6803
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6804

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6805
  br label %return, !dbg !6805

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6806
  %cmp24 = icmp ule i64 %10, 128, !dbg !6808
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6809

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6810
  br label %return, !dbg !6810

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6811
  %cmp27 = icmp ule i64 %11, 256, !dbg !6813
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6814

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6815
  br label %return, !dbg !6815

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6816
  %cmp30 = icmp ule i64 %12, 512, !dbg !6818
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6819

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6820
  br label %return, !dbg !6820

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6821
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6823
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6824

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6825
  br label %return, !dbg !6825

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6826
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6828
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6829

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6830
  br label %return, !dbg !6830

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6831
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6833
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6834

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6835
  br label %return, !dbg !6835

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6836
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6838
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6839

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6840
  br label %return, !dbg !6840

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6841
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6843
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6844

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6845
  br label %return, !dbg !6845

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6846
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6848
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6849

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6850
  br label %return, !dbg !6850

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6851
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6853
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6854

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6855
  br label %return, !dbg !6855

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6856
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6858
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6859

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6860
  br label %return, !dbg !6860

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6861
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6863
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6864

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6865
  br label %return, !dbg !6865

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6866
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6868
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6869

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6870
  br label %return, !dbg !6870

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6871
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6873
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6874

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6875
  br label %return, !dbg !6875

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6876
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6878
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6879

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6880
  br label %return, !dbg !6880

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6881, !range !6587, !noundef !660
  %tobool69 = trunc i8 %25 to i1, !dbg !6881
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6883

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6884

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #23, !dbg !6885, !srcloc !6888
  unreachable, !dbg !6885

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6889

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6890

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6891

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6893

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6891

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #18, !dbg !6895, !srcloc !6897
  br label %do.end75, !dbg !6895

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6891

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6898
  br label %return, !dbg !6898

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6899
  ret i32 %26, !dbg !6899
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6900 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #2 align 16 !dbg !6903 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6907, metadata !DIExpression()), !dbg !6909
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6908, metadata !DIExpression()), !dbg !6910
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6911
  %and = and i32 %0, 17, !dbg !6911
  %cmp = icmp eq i32 %and, 0, !dbg !6911
  %lnot = xor i1 %cmp, true, !dbg !6911
  %lnot1 = xor i1 %lnot, true, !dbg !6911
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6911
  %conv = sext i32 %lnot.ext to i64, !dbg !6911
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6911
  %tobool = icmp ne i64 %expval, 0, !dbg !6911
  br i1 %tobool, label %if.then, label %if.end, !dbg !6913

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6914
  br label %return, !dbg !6914

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6915
  %and2 = and i32 %1, 1, !dbg !6917
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6917
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6918

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6919
  br label %return, !dbg !6919

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6920
  br label %return, !dbg !6920

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6922
  ret i32 %2, !dbg !6922
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6923 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6924 dso_local void @__compiletime_assert_245() #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6925 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6929, metadata !DIExpression()), !dbg !6931
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6930, metadata !DIExpression()), !dbg !6932
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6933
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6934
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6935
  %2 = load i32, ptr %i.addr, align 4, !dbg !6936
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !6937
  ret void, !dbg !6938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6939 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6942, metadata !DIExpression()), !dbg !6944
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6945
  %1 = load i32, ptr %i.addr, align 4, !dbg !6946
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !6947
  ret void, !dbg !6948
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6949 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6951, metadata !DIExpression()), !dbg !6953
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  br label %do.body, !dbg !6955

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6956
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6956
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6956
  store volatile i32 %0, ptr %counter, align 4, !dbg !6956
  br label %do.end, !dbg !6956

do.end:                                           ; preds = %do.body
  ret void, !dbg !6958
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !6959 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6965, metadata !DIExpression()), !dbg !6966
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6967
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !6968
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6969
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !6970
  ret i32 %call, !dbg !6971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6972 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6974, metadata !DIExpression()), !dbg !6976
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6975, metadata !DIExpression()), !dbg !6977
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6978
  %1 = load i64, ptr %size.addr, align 8, !dbg !6979
  %conv = trunc i64 %1 to i32, !dbg !6979
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6980
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6981
  %3 = load i64, ptr %size.addr, align 8, !dbg !6981
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6981
  ret void, !dbg !6982
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !6983 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6985, metadata !DIExpression()), !dbg !6986
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6987
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !6988
  ret i32 %call, !dbg !6989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6990 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6992, metadata !DIExpression()), !dbg !6994
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6993, metadata !DIExpression()), !dbg !6995
  ret i1 true, !dbg !6996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !6997 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7001
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7001
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7001
  ret i32 %1, !dbg !7002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7003 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7005, metadata !DIExpression()), !dbg !7007
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7006, metadata !DIExpression()), !dbg !7008
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7009
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7010
  %div = sdiv i64 %1, 64, !dbg !7010
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7011
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7012
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7013
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7014
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7015
  ret void, !dbg !7016
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7017 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7019, metadata !DIExpression()), !dbg !7021
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7020, metadata !DIExpression()), !dbg !7022
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7023
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7025
  br i1 %1, label %if.then, label %if.else, !dbg !7026

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7027
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7027
  %shr = ashr i64 %3, 3, !dbg !7027
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7027
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7029
  %and = and i64 %4, 7, !dbg !7029
  %sh_prom = trunc i64 %and to i32, !dbg !7029
  %shl = shl i32 1, %sh_prom, !dbg !7029
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !7030, !srcloc !7031
  br label %if.end, !dbg !7032

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7033
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7035
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !7036, !srcloc !7037
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7039 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7044, metadata !DIExpression()), !dbg !7048
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7045, metadata !DIExpression()), !dbg !7049
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7050
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7046, metadata !DIExpression()), !dbg !7051
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7052
  %rem = urem i64 %0, 64, !dbg !7052
  %shl = shl i64 1, %rem, !dbg !7052
  store i64 %shl, ptr %mask, align 8, !dbg !7051
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !7053
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7047, metadata !DIExpression()), !dbg !7054
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7055
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7056
  %div = udiv i64 %2, 64, !dbg !7056
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !7057
  store ptr %add.ptr, ptr %p, align 8, !dbg !7054
  %3 = load i64, ptr %mask, align 8, !dbg !7058
  %not = xor i64 %3, -1, !dbg !7059
  %4 = load ptr, ptr %p, align 8, !dbg !7060
  %5 = load i64, ptr %4, align 8, !dbg !7061
  %and = and i64 %5, %not, !dbg !7061
  store i64 %and, ptr %4, align 8, !dbg !7061
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !7062
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7062
  ret void, !dbg !7062
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7063 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7066, metadata !DIExpression()), !dbg !7068
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7067, metadata !DIExpression()), !dbg !7069
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7070
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7071
  %div = udiv i64 %1, 64, !dbg !7071
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7072
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7073
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7074
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7075
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7076
  ret void, !dbg !7077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7078 dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !7081 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7083, metadata !DIExpression()), !dbg !7085
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7084, metadata !DIExpression()), !dbg !7086
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7087
  %1 = load i64, ptr %size.addr, align 8, !dbg !7088
  %conv = trunc i64 %1 to i32, !dbg !7088
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7089
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7090
  %3 = load i64, ptr %size.addr, align 8, !dbg !7090
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !7090
  ret void, !dbg !7091
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7092 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7094, metadata !DIExpression()), !dbg !7096
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7098
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7099
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !7100, !srcloc !7101
  ret void, !dbg !7102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7103 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7105, metadata !DIExpression()), !dbg !7109
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7106, metadata !DIExpression()), !dbg !7110
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7107, metadata !DIExpression()), !dbg !7112
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7113
  %rem = urem i64 %0, 64, !dbg !7113
  %shl = shl i64 1, %rem, !dbg !7113
  store i64 %shl, ptr %mask, align 8, !dbg !7112
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !7114
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7108, metadata !DIExpression()), !dbg !7115
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7116
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7117
  %div = udiv i64 %2, 64, !dbg !7117
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !7118
  store ptr %add.ptr, ptr %p, align 8, !dbg !7115
  %3 = load i64, ptr %mask, align 8, !dbg !7119
  %4 = load ptr, ptr %p, align 8, !dbg !7120
  %5 = load i64, ptr %4, align 8, !dbg !7121
  %or = or i64 %5, %3, !dbg !7121
  store i64 %or, ptr %4, align 8, !dbg !7121
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !7122
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7122
  ret void, !dbg !7122
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7123 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7125, metadata !DIExpression()), !dbg !7127
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7126, metadata !DIExpression()), !dbg !7128
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7129
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7130
  %div = udiv i64 %1, 64, !dbg !7130
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7131
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7132
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7133
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7134
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7135
  ret void, !dbg !7136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7137 dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !7138 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7140, metadata !DIExpression()), !dbg !7142
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7141, metadata !DIExpression()), !dbg !7143
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7144
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7145
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !7146, !srcloc !7147
  ret void, !dbg !7148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !7149 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7151, metadata !DIExpression()), !dbg !7153
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7152, metadata !DIExpression()), !dbg !7154
  %0 = load i64, ptr %i.addr, align 8, !dbg !7155
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7156
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #17, !dbg !7157
  ret i64 %call, !dbg !7158
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !7159 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7162, metadata !DIExpression()), !dbg !7166
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7163, metadata !DIExpression()), !dbg !7167
  %0 = load i64, ptr %i.addr, align 8, !dbg !7168
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #18, !dbg !7169
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7164, metadata !DIExpression()), !dbg !7169
  %1 = load i64, ptr %i.addr, align 8, !dbg !7169
  store i64 %1, ptr %__ret, align 8, !dbg !7169
  %2 = load i64, ptr %__ret, align 8, !dbg !7169
  %3 = load ptr, ptr %v.addr, align 8, !dbg !7169
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !7169
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #18, !dbg !7169, !srcloc !7170
  store i64 %4, ptr %__ret, align 8, !dbg !7169
  %5 = load i64, ptr %__ret, align 8, !dbg !7169
  store i64 %5, ptr %tmp, align 8, !dbg !7169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #18, !dbg !7171
  %6 = load i64, ptr %tmp, align 8, !dbg !7169
  %add = add i64 %0, %6, !dbg !7172
  ret i64 %add, !dbg !7173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_ioperm(i64 noundef %from, i64 noundef %num, i32 noundef %turn_on) #3 align 16 !dbg !7174 {
entry:
  %from.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %turn_on.addr = alloca i32, align 4
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7176, metadata !DIExpression()), !dbg !7179
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !7177, metadata !DIExpression()), !dbg !7179
  store i32 %turn_on, ptr %turn_on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %turn_on.addr, metadata !7178, metadata !DIExpression()), !dbg !7179
  %0 = load i64, ptr %from.addr, align 8, !dbg !7180
  %1 = load i64, ptr %num.addr, align 8, !dbg !7181
  %2 = load i32, ptr %turn_on.addr, align 4, !dbg !7182
  %call = call i64 @ksys_ioperm(i64 noundef %0, i64 noundef %1, i32 noundef %2) #17, !dbg !7183
  ret i64 %call, !dbg !7184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_iopl(i32 noundef %level) #3 align 16 !dbg !7185 {
entry:
  %retval = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !7189, metadata !DIExpression()), !dbg !7192
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #18, !dbg !7193
  call void @llvm.dbg.declare(metadata ptr %t, metadata !7190, metadata !DIExpression()), !dbg !7194
  %call = call ptr @get_current() #17, !dbg !7195
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !7196
  store ptr %thread, ptr %t, align 8, !dbg !7194
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !7197
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7191, metadata !DIExpression()), !dbg !7198
  %0 = load i32, ptr %level.addr, align 4, !dbg !7199
  %cmp = icmp ugt i32 %0, 3, !dbg !7201
  br i1 %cmp, label %if.then, label %if.end, !dbg !7202

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7203

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t, align 8, !dbg !7204
  %iopl_emul = getelementptr inbounds %struct.thread_struct, ptr %1, i32 0, i32 15, !dbg !7205
  %2 = load i64, ptr %iopl_emul, align 8, !dbg !7205
  %conv = trunc i64 %2 to i32, !dbg !7204
  store i32 %conv, ptr %old, align 4, !dbg !7206
  %3 = load i32, ptr %level.addr, align 4, !dbg !7207
  %4 = load i32, ptr %old, align 4, !dbg !7209
  %cmp1 = icmp eq i32 %3, %4, !dbg !7210
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !7211

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !7212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7212

if.end4:                                          ; preds = %if.end
  %5 = load i32, ptr %level.addr, align 4, !dbg !7213
  %6 = load i32, ptr %old, align 4, !dbg !7215
  %cmp5 = icmp ugt i32 %5, %6, !dbg !7216
  br i1 %cmp5, label %if.then7, label %if.end12, !dbg !7217

if.then7:                                         ; preds = %if.end4
  %call8 = call zeroext i1 @capable(i32 noundef 17) #17, !dbg !7218
  br i1 %call8, label %lor.lhs.false, label %if.then10, !dbg !7221

lor.lhs.false:                                    ; preds = %if.then7
  %call9 = call i32 @security_locked_down(i32 noundef 7) #17, !dbg !7222
  %tobool = icmp ne i32 %call9, 0, !dbg !7222
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !7223

if.then10:                                        ; preds = %lor.lhs.false, %if.then7
  store i64 -1, ptr %retval, align 8, !dbg !7224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7224

if.end11:                                         ; preds = %lor.lhs.false
  br label %if.end12, !dbg !7225

if.end12:                                         ; preds = %if.end11, %if.end4
  %7 = load i32, ptr %level.addr, align 4, !dbg !7226
  %conv13 = zext i32 %7 to i64, !dbg !7226
  %8 = load ptr, ptr %t, align 8, !dbg !7227
  %iopl_emul14 = getelementptr inbounds %struct.thread_struct, ptr %8, i32 0, i32 15, !dbg !7228
  store i64 %conv13, ptr %iopl_emul14, align 8, !dbg !7229
  %call15 = call ptr @get_current() #17, !dbg !7230
  call void @task_update_io_bitmap(ptr noundef %call15) #17, !dbg !7231
  store i64 0, ptr %retval, align 8, !dbg !7232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7232

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !7233
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #18, !dbg !7233
  %9 = load i64, ptr %retval, align 8, !dbg !7233
  ret i64 %9, !dbg !7233
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(1) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5867}
!llvm.module.flags = !{!5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875}
!llvm.ident = !{!5876}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "io_bitmap_sequence", scope: !2, file: !3, line: 20, type: !690, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.ioport.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/ioport\22 -D KBUILD_BASENAME=\22ioport\22 -D KBUILD_MODNAME=\22ioport\22 -D __KBUILD_MODNAME=kmod_ioport -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/ioport.ll arch/x86/kernel/ioport.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !318, globals: !5854, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/ioport.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "373ca34eb48c7f0107f029f6be2023ca")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !153, !159, !170, !176, !182, !189, !197, !204, !213, !218, !223, !229, !238, !243, !249, !255, !262, !295, !303, !308}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !154, line: 26, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!157 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!158 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !160, line: 253, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!163 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!164 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!165 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!166 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!167 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!168 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !160, line: 158, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!173 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!174 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!175 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !177, line: 45, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!180 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!181 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !183, line: 487, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!184 = !{!185, !186, !187, !188}
!185 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!186 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!187 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!188 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !190, line: 620, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!193 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!194 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!195 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!196 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !190, line: 597, baseType: !22, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!200 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!201 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!202 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!203 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !183, line: 547, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212}
!206 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!207 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!208 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!209 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!210 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!211 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!212 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !183, line: 564, baseType: !7, size: 32, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !183, line: 577, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !183, line: 503, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!227 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !230, line: 593, baseType: !22, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!233 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!234 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!235 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!236 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !239, line: 2052, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!240 = !{!241, !242}
!241 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!242 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !244, line: 54, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "USRQUOTA", value: 0)
!247 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!248 = !DIEnumerator(name: "PRJQUOTA", value: 2)
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
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !263, line: 107, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!265 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!266 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!267 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!268 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!269 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!270 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!271 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!272 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!273 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!274 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!275 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!276 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!277 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!278 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!279 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!280 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!281 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!282 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!283 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!284 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!285 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!286 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!287 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!288 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!289 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!290 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!291 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!292 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!293 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!294 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !296, line: 119, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!299 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!300 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!301 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!302 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !304, line: 10, baseType: !7, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!305 = !{!306, !307}
!306 = !DIEnumerator(name: "false", value: 0)
!307 = !DIEnumerator(name: "true", value: 1)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !309, line: 364, baseType: !7, size: 32, elements: !310)
!309 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!312 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!313 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!314 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!315 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!316 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!317 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!318 = !{!319, !320, !7, !330, !20, !331, !39, !4060, !5844, !5846, !22, !327, !5848, !5850, !5852, !5853, !939}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !322, line: 56, size: 192, elements: !323)
!322 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!323 = !{!324, !325, !326, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !322, line: 57, baseType: !39, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !321, file: !322, line: 58, baseType: !39, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !321, file: !322, line: 59, baseType: !327, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !321, file: !322, line: 61, baseType: !327, size: 32, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !333, line: 746, size: 58368, elements: !334)
!333 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!334 = !{!335, !336, !337, !338, !343, !344, !345, !346, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !429, !440, !541, !545, !548, !579, !580, !581, !582, !593, !595, !596, !597, !598, !599, !600, !611, !612, !615, !616, !617, !618, !619, !620, !621, !622, !629, !630, !637, !638, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !5000, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5043, !5049, !5050, !5051, !5052, !5053, !5055, !5058, !5065, !5070, !5073, !5076, !5079, !5111, !5309, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5347, !5348, !5349, !5358, !5366, !5367, !5368, !5369, !5370, !5375, !5376, !5377, !5380, !5381, !5384, !5387, !5390, !5398, !5401, !5402, !5488, !5489, !5490, !5491, !5492, !5498, !5499, !5500, !5501, !5502, !5503, !5506, !5509, !5510, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5553, !5554, !5560, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5572, !5644, !5646, !5647, !5648, !5649, !5650, !5651, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5668, !5669, !5670}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !332, file: !333, line: 752, baseType: !321, size: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !332, file: !333, line: 754, baseType: !7, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !332, file: !333, line: 767, baseType: !20, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !332, file: !333, line: 768, baseType: !339, size: 32, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !296, line: 113, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !296, line: 111, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !340, file: !296, line: 112, baseType: !49, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !333, line: 770, baseType: !7, size: 32, offset: 352)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !332, file: !333, line: 771, baseType: !7, size: 32, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !332, file: !333, line: 774, baseType: !22, size: 32, offset: 416)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !332, file: !333, line: 775, baseType: !347, size: 128, offset: 448)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !348, line: 58, size: 128, elements: !349)
!348 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!349 = !{!350, !356, !361, !362}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !347, file: !348, line: 59, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !352, line: 60, size: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !352, line: 61, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !348, line: 60, baseType: !357, size: 32, offset: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !348, line: 60, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !357, file: !348, line: 61, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !357, file: !348, line: 62, baseType: !49, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !347, file: !348, line: 65, baseType: !93, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !347, file: !348, line: 65, baseType: !93, size: 16, offset: 112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !332, file: !333, line: 776, baseType: !7, size: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !332, file: !333, line: 777, baseType: !39, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !332, file: !333, line: 778, baseType: !331, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !332, file: !333, line: 787, baseType: !22, size: 32, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !332, file: !333, line: 788, baseType: !22, size: 32, offset: 800)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !332, file: !333, line: 790, baseType: !22, size: 32, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !332, file: !333, line: 792, baseType: !22, size: 32, offset: 864)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !332, file: !333, line: 793, baseType: !22, size: 32, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !332, file: !333, line: 794, baseType: !22, size: 32, offset: 928)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !332, file: !333, line: 795, baseType: !7, size: 32, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !332, file: !333, line: 797, baseType: !374, size: 2048, offset: 1024)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !333, line: 551, size: 2048, elements: !375)
!375 = !{!376, !381, !389, !393, !394, !395, !396, !397, !398, !399, !400, !403, !404, !405, !406, !408, !411, !412, !413}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !374, file: !333, line: 553, baseType: !377, size: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !333, line: 411, size: 128, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !377, file: !333, line: 412, baseType: !39, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !377, file: !333, line: 413, baseType: !327, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !374, file: !333, line: 554, baseType: !382, size: 192, align: 64, offset: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !383, line: 5, size: 192, align: 64, elements: !384)
!383 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!384 = !{!385, !386, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !382, file: !383, line: 6, baseType: !39, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !382, file: !383, line: 7, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !382, file: !383, line: 8, baseType: !387, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !374, file: !333, line: 555, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !392)
!392 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !374, file: !333, line: 556, baseType: !390, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !374, file: !333, line: 558, baseType: !97, size: 128, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !374, file: !333, line: 559, baseType: !7, size: 32, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !374, file: !333, line: 561, baseType: !390, size: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !374, file: !333, line: 562, baseType: !390, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !374, file: !333, line: 563, baseType: !390, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !374, file: !333, line: 564, baseType: !390, size: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !374, file: !333, line: 565, baseType: !401, size: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !374, file: !333, line: 566, baseType: !390, size: 64, offset: 960)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !374, file: !333, line: 568, baseType: !390, size: 64, offset: 1024)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !374, file: !333, line: 571, baseType: !22, size: 32, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !374, file: !333, line: 572, baseType: !407, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !374, file: !333, line: 574, baseType: !409, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !333, line: 49, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !374, file: !333, line: 576, baseType: !409, size: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !374, file: !333, line: 578, baseType: !39, size: 64, offset: 1344)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !374, file: !333, line: 588, baseType: !414, size: 512, align: 512, offset: 1536)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !333, line: 497, size: 512, align: 512, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !414, file: !333, line: 498, baseType: !390, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !414, file: !333, line: 499, baseType: !390, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !414, file: !333, line: 500, baseType: !390, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !414, file: !333, line: 501, baseType: !327, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !414, file: !333, line: 502, baseType: !327, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !414, file: !333, line: 503, baseType: !39, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !414, file: !333, line: 504, baseType: !39, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !414, file: !333, line: 505, baseType: !39, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !414, file: !333, line: 506, baseType: !425, size: 64, align: 64, offset: 448)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !333, line: 445, size: 64, align: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !425, file: !333, line: 446, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !425, file: !333, line: 447, baseType: !7, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !332, file: !333, line: 798, baseType: !430, size: 384, offset: 3072)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !333, line: 592, size: 384, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !430, file: !333, line: 593, baseType: !97, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !430, file: !333, line: 594, baseType: !39, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !430, file: !333, line: 595, baseType: !39, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !430, file: !333, line: 596, baseType: !7, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !430, file: !333, line: 597, baseType: !26, size: 16, offset: 288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !430, file: !333, line: 598, baseType: !26, size: 16, offset: 304)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !430, file: !333, line: 600, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !332, file: !333, line: 799, baseType: !441, size: 1792, offset: 3456)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !333, line: 610, size: 1792, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !538, !539}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !441, file: !333, line: 611, baseType: !382, size: 192, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !441, file: !333, line: 618, baseType: !390, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !441, file: !333, line: 619, baseType: !390, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !441, file: !333, line: 620, baseType: !390, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !441, file: !333, line: 621, baseType: !390, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !441, file: !333, line: 622, baseType: !390, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !441, file: !333, line: 629, baseType: !401, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !441, file: !333, line: 630, baseType: !390, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !333, line: 631, baseType: !7, size: 32, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !441, file: !333, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !441, file: !333, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !441, file: !333, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !441, file: !333, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !441, file: !333, line: 662, baseType: !457, size: 512, offset: 704)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !458)
!458 = !{!459, !467, !468, !473, !534, !535, !536, !537}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !6, line: 119, baseType: !460, size: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !461, line: 9, size: 256, elements: !462)
!461 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !461, line: 10, baseType: !382, size: 192, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !460, file: !461, line: 11, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !466, line: 29, baseType: !401)
!466 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !457, file: !6, line: 120, baseType: !465, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !457, file: !6, line: 121, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!5, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !457, file: !6, line: 122, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !476)
!476 = !{!477, !503, !504, !507, !517, !518, !529, !533}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !475, file: !6, line: 160, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !480)
!480 = !{!481, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !479, file: !6, line: 216, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !479, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !479, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !479, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !479, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !479, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !479, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !479, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !479, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !479, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !479, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !479, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !479, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !479, file: !6, line: 235, baseType: !465, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !479, file: !6, line: 236, baseType: !472, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !479, file: !6, line: 237, baseType: !465, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !479, file: !6, line: 238, baseType: !472, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !479, file: !6, line: 239, baseType: !500, size: 4096, align: 512, offset: 512)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 4096, align: 512, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !475, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !475, file: !6, line: 162, baseType: !505, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !475, file: !6, line: 163, baseType: !508, size: 32, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !509, line: 274, baseType: !510)
!509 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !509, line: 274, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !510, file: !509, line: 274, baseType: !513, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !509, line: 69, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !509, line: 64, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !514, file: !509, line: 65, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !475, file: !6, line: 164, baseType: !472, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !475, file: !6, line: 165, baseType: !519, size: 128, offset: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !461, line: 14, size: 128, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !519, file: !461, line: 15, baseType: !522, size: 128)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !383, line: 26, size: 128, elements: !523)
!523 = !{!524, !528}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !522, file: !383, line: 27, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !383, line: 12, size: 64, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !525, file: !383, line: 13, baseType: !387, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !522, file: !383, line: 28, baseType: !387, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !475, file: !6, line: 166, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!465}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !475, file: !6, line: 167, baseType: !465, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !457, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !457, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !457, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !457, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !441, file: !333, line: 671, baseType: !457, size: 512, offset: 1216)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !441, file: !333, line: 679, baseType: !540, size: 64, offset: 1728)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !332, file: !333, line: 800, baseType: !542, size: 64, offset: 5248)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !333, line: 800, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !332, file: !333, line: 809, baseType: !546, size: 64, offset: 5312)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !333, line: 70, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !332, file: !333, line: 825, baseType: !549, size: 2048, align: 512, offset: 5632)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !333, line: 509, size: 2048, align: 512, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !549, file: !333, line: 511, baseType: !390, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !549, file: !333, line: 512, baseType: !390, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !549, file: !333, line: 513, baseType: !390, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !549, file: !333, line: 514, baseType: !390, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !549, file: !333, line: 515, baseType: !390, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !549, file: !333, line: 516, baseType: !390, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !549, file: !333, line: 518, baseType: !390, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !549, file: !333, line: 519, baseType: !390, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !549, file: !333, line: 520, baseType: !401, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !549, file: !333, line: 522, baseType: !390, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !549, file: !333, line: 523, baseType: !390, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !549, file: !333, line: 524, baseType: !401, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !549, file: !333, line: 526, baseType: !401, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !549, file: !333, line: 527, baseType: !390, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !549, file: !333, line: 529, baseType: !390, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !549, file: !333, line: 530, baseType: !390, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !549, file: !333, line: 531, baseType: !390, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !549, file: !333, line: 532, baseType: !390, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !549, file: !333, line: 533, baseType: !390, size: 64, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !549, file: !333, line: 535, baseType: !390, size: 64, offset: 1216)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !549, file: !333, line: 536, baseType: !390, size: 64, offset: 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !549, file: !333, line: 537, baseType: !390, size: 64, offset: 1344)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !549, file: !333, line: 538, baseType: !390, size: 64, offset: 1408)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !549, file: !333, line: 539, baseType: !390, size: 64, offset: 1472)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !549, file: !333, line: 540, baseType: !390, size: 64, offset: 1536)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !549, file: !333, line: 541, baseType: !390, size: 64, offset: 1600)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !549, file: !333, line: 542, baseType: !390, size: 64, offset: 1664)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !549, file: !333, line: 543, baseType: !390, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !332, file: !333, line: 833, baseType: !7, size: 32, offset: 7680)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !332, file: !333, line: 836, baseType: !7, size: 32, offset: 7712)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !332, file: !333, line: 837, baseType: !22, size: 32, offset: 7744)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !332, file: !333, line: 838, baseType: !583, size: 64, offset: 7808)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !586, line: 19, baseType: !587)
!586 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !586, line: 19, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !587, file: !586, line: 19, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 1)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !332, file: !333, line: 839, baseType: !594, size: 64, offset: 7872)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !332, file: !333, line: 840, baseType: !585, size: 64, offset: 7936)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !332, file: !333, line: 841, baseType: !20, size: 64, offset: 8000)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !332, file: !333, line: 843, baseType: !26, size: 16, offset: 8064)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !332, file: !333, line: 845, baseType: !26, size: 16, offset: 8080)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !332, file: !333, line: 848, baseType: !22, size: 32, offset: 8096)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !332, file: !333, line: 849, baseType: !601, size: 32, offset: 8128)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !333, line: 718, size: 32, elements: !602)
!602 = !{!603, !610}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !601, file: !333, line: 724, baseType: !604, size: 32)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !333, line: 719, size: 32, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !604, file: !333, line: 720, baseType: !83, size: 8)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !604, file: !333, line: 721, baseType: !83, size: 8, offset: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !604, file: !333, line: 722, baseType: !83, size: 8, offset: 16)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !604, file: !333, line: 723, baseType: !83, size: 8, offset: 24)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !601, file: !333, line: 725, baseType: !327, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !332, file: !333, line: 850, baseType: !97, size: 128, offset: 8192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !332, file: !333, line: 851, baseType: !613, size: 64, offset: 8320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !333, line: 60, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !332, file: !333, line: 855, baseType: !39, size: 64, offset: 8384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !332, file: !333, line: 856, baseType: !83, size: 8, offset: 8448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !332, file: !333, line: 857, baseType: !83, size: 8, offset: 8456)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !332, file: !333, line: 858, baseType: !22, size: 32, offset: 8480)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !332, file: !333, line: 859, baseType: !97, size: 128, offset: 8512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !332, file: !333, line: 860, baseType: !22, size: 32, offset: 8640)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !332, file: !333, line: 861, baseType: !97, size: 128, offset: 8704)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !332, file: !333, line: 873, baseType: !623, size: 256, offset: 8832)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !333, line: 376, size: 256, elements: !624)
!624 = !{!625, !626, !627, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !623, file: !333, line: 381, baseType: !39, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !623, file: !333, line: 384, baseType: !392, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !623, file: !333, line: 389, baseType: !392, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !623, file: !333, line: 392, baseType: !392, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !332, file: !333, line: 875, baseType: !97, size: 128, offset: 9088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !332, file: !333, line: 877, baseType: !631, size: 320, offset: 9216)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !632, line: 86, size: 320, elements: !633)
!632 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!633 = !{!634, !635, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !631, file: !632, line: 87, baseType: !22, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !631, file: !632, line: 88, baseType: !97, size: 128, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !631, file: !632, line: 89, baseType: !97, size: 128, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !332, file: !333, line: 878, baseType: !382, size: 192, align: 64, offset: 9536)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !332, file: !333, line: 881, baseType: !639, size: 64, offset: 9728)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !641)
!641 = !{!642, !4914}
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !131, line: 734, baseType: !643, size: 10240)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !131, line: 734, size: 10240, elements: !644)
!644 = !{!645, !649, !663, !4793, !4794, !4795, !4796, !4797, !4798, !4805, !4806, !4807, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4846, !4848, !4851, !4894, !4895, !4896, !4899, !4900, !4901, !4904, !4905, !4906, !4912, !4913}
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !131, line: 739, baseType: !646, size: 512, align: 512)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !131, line: 739, size: 512, align: 512, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !646, file: !131, line: 747, baseType: !49, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !643, file: !131, line: 750, baseType: !650, size: 128, offset: 512)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !651, line: 218, size: 128, elements: !652)
!651 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!652 = !{!653, !661, !662}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !651, line: 219, baseType: !654, size: 32)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !651, line: 219, size: 32, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !654, file: !651, line: 220, baseType: !59, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !654, file: !651, line: 221, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !651, line: 197, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 197, elements: !660)
!660 = !{}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !650, file: !651, line: 223, baseType: !7, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !650, file: !651, line: 224, baseType: !20, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !643, file: !131, line: 752, baseType: !664, size: 64, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!39, !667, !39, !39, !39, !39}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !239, line: 994, size: 1856, align: 64, elements: !669)
!669 = !{!670, !684, !685, !687, !694, !706, !707, !708, !1089, !1167, !1176, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792}
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !239, line: 995, baseType: !671, size: 128)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !239, line: 995, size: 128, elements: !672)
!672 = !{!673, !674, !683}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !671, file: !239, line: 996, baseType: !351, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !671, file: !239, line: 997, baseType: !675, size: 128, align: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !676)
!676 = !{!677, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !25, line: 233, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !675, file: !25, line: 234, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !678}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !671, file: !239, line: 998, baseType: !7, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !668, file: !239, line: 1005, baseType: !59, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !668, file: !239, line: 1006, baseType: !686, size: 32, offset: 160)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !668, file: !239, line: 1007, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !689, line: 13, baseType: !690)
!689 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !691, file: !25, line: 180, baseType: !401, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !668, file: !239, line: 1008, baseType: !695, size: 256, offset: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !696, line: 66, size: 256, elements: !697)
!696 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!697 = !{!698, !699, !700, !705}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !695, file: !696, line: 67, baseType: !688, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !695, file: !696, line: 68, baseType: !482, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !695, file: !696, line: 70, baseType: !701, size: 32, offset: 96)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !702, line: 15, size: 32, elements: !703)
!702 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !701, file: !702, line: 20, baseType: !49, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !695, file: !696, line: 72, baseType: !97, size: 128, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !668, file: !239, line: 1009, baseType: !41, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !668, file: !239, line: 1010, baseType: !7, size: 32, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !668, file: !239, line: 1011, baseType: !709, size: 256, offset: 640)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !239, line: 948, size: 256, elements: !710)
!710 = !{!711, !734, !1085, !1086, !1087, !1088}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !239, line: 949, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !713, line: 34, baseType: !714)
!713 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 25, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !714, file: !713, line: 26, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !718, line: 27, baseType: !719)
!718 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !718, line: 13, size: 64, elements: !720)
!720 = !{!721, !733}
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !718, line: 14, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !718, line: 14, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !722, file: !718, line: 15, baseType: !49, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 16, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 16, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !726, file: !718, line: 18, baseType: !83, size: 8)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !726, file: !718, line: 19, baseType: !730, size: 24, offset: 8)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 3)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !718, line: 26, baseType: !71, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !709, file: !239, line: 950, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !737)
!737 = !{!738, !739, !740, !741, !754, !755, !756, !757}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !736, file: !108, line: 61, baseType: !339, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !736, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !736, file: !108, line: 65, baseType: !742, size: 256, offset: 128)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !752)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !743, file: !25, line: 195, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !25, line: 199, baseType: !746, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !747, file: !25, line: 199, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !{!753}
!753 = !DISubrange(count: 4)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !736, file: !108, line: 66, baseType: !743, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !736, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !736, file: !108, line: 69, baseType: !675, size: 128, align: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !736, file: !108, line: 70, baseType: !758, offset: 768)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, elements: !1083)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !759, file: !108, line: 55, baseType: !22, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !759, file: !108, line: 56, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !765, line: 26, size: 1152, elements: !766)
!765 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!766 = !{!767, !780, !781, !782, !783, !787, !788, !789, !792, !1079, !1080, !1081, !1082}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !764, file: !765, line: 27, baseType: !768, size: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !769, line: 19, size: 192, elements: !770)
!769 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!770 = !{!771, !778, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !768, file: !769, line: 20, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !773, line: 296, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !772, file: !773, line: 297, baseType: !59, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !772, file: !773, line: 299, baseType: !319, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !772, file: !773, line: 300, baseType: !20, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !768, file: !769, line: 21, baseType: !7, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !768, file: !769, line: 22, baseType: !7, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !765, line: 28, baseType: !675, size: 128, align: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !764, file: !765, line: 29, baseType: !7, size: 32, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !764, file: !765, line: 30, baseType: !331, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !764, file: !765, line: 31, baseType: !784, size: 64, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !786, line: 325, flags: DIFlagFwdDecl)
!786 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!787 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !764, file: !765, line: 32, baseType: !7, size: 32, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !764, file: !765, line: 33, baseType: !763, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !764, file: !765, line: 35, baseType: !790, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !765, line: 17, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !764, file: !765, line: 37, baseType: !793, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !795, line: 68, size: 4800, elements: !796)
!795 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!796 = !{!797, !819, !820, !821, !822, !823, !831, !838, !849, !850, !853, !854, !976, !977, !989, !1059, !1060, !1074, !1077}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !794, file: !795, line: 69, baseType: !798, size: 576)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !795, line: 23, size: 576, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !798, file: !795, line: 24, baseType: !327, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !795, line: 25, baseType: !802, size: 512, offset: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !795, line: 25, size: 512, elements: !803)
!803 = !{!804, !813}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !802, file: !795, line: 26, baseType: !805, size: 480)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 480, elements: !811)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !795, line: 17, size: 96, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !806, file: !795, line: 18, baseType: !327, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !806, file: !795, line: 19, baseType: !327, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !806, file: !795, line: 20, baseType: !327, size: 32, offset: 64)
!811 = !{!812}
!812 = !DISubrange(count: 5)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !795, line: 27, baseType: !814, size: 128)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !795, line: 27, size: 128, elements: !815)
!815 = !{!816, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !814, file: !795, line: 28, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !814, file: !795, line: 29, baseType: !817, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !794, file: !795, line: 70, baseType: !798, size: 576, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !794, file: !795, line: 71, baseType: !798, size: 576, offset: 1152)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !794, file: !795, line: 72, baseType: !793, size: 64, offset: 1728)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !794, file: !795, line: 73, baseType: !22, size: 32, offset: 1792)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !794, file: !795, line: 74, baseType: !824, size: 32, offset: 1824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !825, line: 23, baseType: !826)
!825 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 21, size: 32, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !826, file: !825, line: 22, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !794, file: !795, line: 75, baseType: !832, size: 32, offset: 1856)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !825, line: 28, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 26, size: 32, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !833, file: !825, line: 27, baseType: !836, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !795, line: 76, baseType: !839, size: 192, offset: 1920)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !840, line: 9, size: 192, elements: !841)
!840 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!841 = !{!842, !843, !847, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !839, file: !840, line: 10, baseType: !688, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !839, file: !840, line: 11, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !840, line: 7, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !839, file: !840, line: 12, baseType: !7, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !839, file: !840, line: 13, baseType: !339, size: 32, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !795, line: 77, baseType: !39, size: 64, offset: 2112)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !794, file: !795, line: 80, baseType: !851, size: 8, offset: 2176)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !852)
!852 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !794, file: !795, line: 88, baseType: !97, size: 128, offset: 2240)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !794, file: !795, line: 89, baseType: !855, size: 64, offset: 2368)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !857, line: 195, size: 1728, elements: !858)
!857 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!858 = !{!859, !860, !865, !870, !879, !882, !883, !890, !891, !892, !893, !896, !897, !898, !900, !901, !940, !961}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !856, file: !857, line: 196, baseType: !339, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !856, file: !857, line: 197, baseType: !861, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !857, line: 28, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 198, baseType: !866, size: 192, offset: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 198, size: 192, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !866, file: !857, line: 199, baseType: !97, size: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !866, file: !857, line: 200, baseType: !382, size: 192, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !856, file: !857, line: 205, baseType: !871, size: 320, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !872, line: 48, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 49, baseType: !688, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !872, line: 55, baseType: !688, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !871, file: !872, line: 57, baseType: !701, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !871, file: !872, line: 59, baseType: !482, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !871, file: !872, line: 60, baseType: !97, size: 128, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !856, file: !857, line: 206, baseType: !880, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !857, line: 206, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !856, file: !857, line: 207, baseType: !20, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 208, baseType: !884, size: 64, offset: 704)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 208, size: 64, elements: !885)
!885 = !{!886, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !884, file: !857, line: 209, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !888, line: 8, baseType: !402)
!888 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!889 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !884, file: !857, line: 210, baseType: !887, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !856, file: !857, line: 212, baseType: !887, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !856, file: !857, line: 213, baseType: !824, size: 32, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !856, file: !857, line: 214, baseType: !832, size: 32, offset: 864)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !856, file: !857, line: 215, baseType: !894, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !857, line: 31, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !327)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !856, file: !857, line: 216, baseType: !26, size: 16, offset: 928)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !856, file: !857, line: 217, baseType: !26, size: 16, offset: 944)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !856, file: !857, line: 221, baseType: !899, size: 16, offset: 960)
!899 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !857, line: 228, baseType: !39, size: 64, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 245, baseType: !902, size: 320, offset: 1088)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 245, size: 320, elements: !903)
!903 = !{!904, !931}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !902, file: !857, line: 246, baseType: !905, size: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !857, line: 114, size: 320, elements: !906)
!906 = !{!907, !908, !920, !923, !930}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !905, file: !857, line: 116, baseType: !39, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !857, line: 117, baseType: !909, size: 64, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !905, file: !857, line: 117, size: 64, elements: !910)
!910 = !{!911, !919}
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !857, line: 118, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !857, line: 118, size: 64, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !912, file: !857, line: 120, baseType: !93, size: 16)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !912, file: !857, line: 121, baseType: !916, size: 48, offset: 16)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 6)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !909, file: !857, line: 127, baseType: !39, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !857, line: 129, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !857, line: 102, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !905, file: !857, line: 130, baseType: !924, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !857, line: 108, size: 192, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !925, file: !857, line: 109, baseType: !675, size: 128, align: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !925, file: !857, line: 110, baseType: !339, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !925, file: !857, line: 111, baseType: !851, size: 8, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !905, file: !857, line: 131, baseType: !16, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !857, line: 247, baseType: !932, size: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !902, file: !857, line: 247, size: 320, elements: !933)
!933 = !{!934, !935, !936, !937, !938}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !932, file: !857, line: 248, baseType: !39, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !932, file: !857, line: 249, baseType: !39, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !932, file: !857, line: 250, baseType: !921, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !932, file: !857, line: 251, baseType: !924, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !932, file: !857, line: 252, baseType: !939, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 260, baseType: !941, size: 256, offset: 1408)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 260, size: 256, elements: !942)
!942 = !{!943, !949}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !941, file: !857, line: 261, baseType: !944, size: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !857, line: 134, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !944, file: !857, line: 135, baseType: !20, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !944, file: !857, line: 136, baseType: !948, size: 256)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !752)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !857, line: 262, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !857, line: 262, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !950, file: !857, line: 264, baseType: !97, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !950, file: !857, line: 265, baseType: !954, size: 128, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !955, line: 22, size: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!956 = !{!957, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !954, file: !955, line: 23, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !955, line: 23, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !954, file: !955, line: 24, baseType: !39, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !856, file: !857, line: 280, baseType: !962, size: 64, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !857, line: 176, size: 192, elements: !964)
!964 = !{!965, !974, !975}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !963, file: !857, line: 177, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !857, line: 171, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!22, !855, !970, !972, !855}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !963, file: !857, line: 178, baseType: !855, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !963, file: !857, line: 179, baseType: !921, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !794, file: !795, line: 90, baseType: !871, size: 320, offset: 2432)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !794, file: !795, line: 97, baseType: !978, size: 256, offset: 2752)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !979, line: 98, size: 256, elements: !980)
!979 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !978, file: !979, line: 99, baseType: !688, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !978, file: !979, line: 100, baseType: !97, size: 128, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !978, file: !979, line: 101, baseType: !984, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !979, line: 21, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !794, file: !795, line: 99, baseType: !990, size: 768, offset: 3008)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !991)
!991 = !{!992, !997}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !990, file: !12, line: 200, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!22, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !990, file: !12, line: 201, baseType: !998, size: 704, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !999)
!999 = !{!1000, !1058}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !998, file: !12, line: 195, baseType: !1001, size: 640)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !1002)
!1002 = !{!1003, !1015, !1027, !1028, !1048, !1049, !1051, !1057}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !12, line: 174, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !12, line: 174, size: 192, elements: !1005)
!1005 = !{!1006, !1014}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !12, line: 175, baseType: !1007, size: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !12, line: 175, size: 192, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1007, file: !12, line: 176, baseType: !33, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1007, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1007, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1007, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1007, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1004, file: !12, line: 182, baseType: !675, size: 128, align: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1001, file: !12, line: 184, baseType: !1016, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1018, line: 26, size: 256, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1017, file: !1018, line: 27, baseType: !7, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1017, file: !1018, line: 28, baseType: !1022, size: 192, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1023, line: 43, size: 192, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1022, file: !1023, line: 44, baseType: !482, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1022, file: !1023, line: 45, baseType: !97, size: 128, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1001, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1001, file: !12, line: 186, baseType: !1029, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1031)
!1031 = !{!1032, !1033, !1037, !1044}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1030, file: !12, line: 205, baseType: !990, size: 768)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1030, file: !12, line: 206, baseType: !1034, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!996, !1029}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1030, file: !12, line: 207, baseType: !1038, size: 64, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1030, file: !12, line: 209, baseType: !1045, size: 64, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!22, !1041, !33}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1001, file: !12, line: 187, baseType: !996, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1001, file: !12, line: 188, baseType: !1050, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1001, file: !12, line: 189, baseType: !1052, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1053, file: !12, line: 158, baseType: !382, size: 192, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1053, file: !12, line: 159, baseType: !1041, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1001, file: !12, line: 190, baseType: !743, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !998, file: !12, line: 196, baseType: !525, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !794, file: !795, line: 100, baseType: !1041, size: 64, offset: 3776)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !794, file: !795, line: 102, baseType: !1061, size: 64, offset: 3840)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !795, line: 107, size: 1152, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1072}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1062, file: !795, line: 108, baseType: !747, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1062, file: !795, line: 109, baseType: !793, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1062, file: !795, line: 110, baseType: !824, size: 32, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1062, file: !795, line: 111, baseType: !49, size: 32, offset: 224)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1062, file: !795, line: 112, baseType: !1069, size: 640, offset: 256)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 640, elements: !1070)
!1070 = !{!1071}
!1071 = !DISubrange(count: 10)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1062, file: !795, line: 113, baseType: !1073, size: 256, offset: 896)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 256, elements: !752)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !794, file: !795, line: 103, baseType: !1075, size: 640, offset: 3904)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 640, elements: !1070)
!1076 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !794, file: !795, line: 104, baseType: !1078, size: 256, offset: 4544)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 256, elements: !752)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !764, file: !765, line: 38, baseType: !1061, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !764, file: !765, line: 39, baseType: !22, size: 32, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !764, file: !765, line: 40, baseType: !839, size: 192, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !764, file: !765, line: 42, baseType: !22, size: 32, offset: 1088)
!1083 = !{!1084}
!1084 = !DISubrange(count: -1)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !709, file: !239, line: 951, baseType: !107, size: 32, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !709, file: !239, line: 952, baseType: !824, size: 32, offset: 160)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !709, file: !239, line: 952, baseType: !824, size: 32, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !709, file: !239, line: 953, baseType: !22, size: 32, offset: 224)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !668, file: !239, line: 1012, baseType: !1090, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1093, line: 110, size: 1472, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1152, !1153, !1154, !1162}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1092, file: !1093, line: 111, baseType: !688, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1092, file: !1093, line: 112, baseType: !824, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1092, file: !1093, line: 113, baseType: !832, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1092, file: !1093, line: 114, baseType: !824, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1092, file: !1093, line: 115, baseType: !832, size: 32, offset: 160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1092, file: !1093, line: 116, baseType: !824, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1092, file: !1093, line: 117, baseType: !832, size: 32, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1092, file: !1093, line: 118, baseType: !824, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1092, file: !1093, line: 119, baseType: !832, size: 32, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1092, file: !1093, line: 120, baseType: !7, size: 32, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1092, file: !1093, line: 121, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1107, line: 24, baseType: !1108)
!1107 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1107, line: 24, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1108, file: !1107, line: 24, baseType: !390, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1092, file: !1093, line: 122, baseType: !1106, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1092, file: !1093, line: 123, baseType: !1106, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1092, file: !1093, line: 124, baseType: !1106, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1092, file: !1093, line: 125, baseType: !1106, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1092, file: !1093, line: 127, baseType: !87, size: 8, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1092, file: !1093, line: 129, baseType: !855, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1092, file: !1093, line: 130, baseType: !855, size: 64, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1092, file: !1093, line: 131, baseType: !855, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1092, file: !1093, line: 132, baseType: !855, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1092, file: !1093, line: 135, baseType: !20, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1092, file: !1093, line: 137, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1124, line: 14, size: 1088, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1125 = !{!1126, !1127, !1136, !1137, !1138, !1139, !1140, !1141}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1123, file: !1124, line: 15, baseType: !339, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1123, file: !1124, line: 17, baseType: !1128, size: 320, offset: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1129, line: 22, size: 320, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1128, file: !1129, line: 23, baseType: !482, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1128, file: !1129, line: 24, baseType: !401, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1128, file: !1129, line: 26, baseType: !97, size: 128, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1128, file: !1129, line: 28, baseType: !1135, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1123, file: !1124, line: 19, baseType: !39, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1123, file: !1124, line: 20, baseType: !688, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1123, file: !1124, line: 23, baseType: !747, size: 128, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1123, file: !1124, line: 24, baseType: !824, size: 32, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1123, file: !1124, line: 29, baseType: !688, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1123, file: !1124, line: 36, baseType: !1142, size: 320, offset: 768)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1143, line: 15, size: 320, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1142, file: !1143, line: 16, baseType: !482, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1142, file: !1143, line: 18, baseType: !22, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1142, file: !1143, line: 19, baseType: !22, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1142, file: !1143, line: 20, baseType: !22, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1142, file: !1143, line: 21, baseType: !22, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1142, file: !1143, line: 22, baseType: !39, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1142, file: !1143, line: 23, baseType: !39, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1092, file: !1093, line: 138, baseType: !793, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1092, file: !1093, line: 139, baseType: !1061, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1092, file: !1093, line: 140, baseType: !1155, size: 64, offset: 1280)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1093, line: 25, size: 64, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1156, file: !1093, line: 26, baseType: !49, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1156, file: !1093, line: 27, baseType: !22, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1156, file: !1093, line: 28, baseType: !1161, offset: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, elements: !1083)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1093, line: 142, baseType: !1163, size: 128, offset: 1344)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !1093, line: 142, size: 128, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1163, file: !1093, line: 143, baseType: !22, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1163, file: !1093, line: 144, baseType: !675, size: 128, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !668, file: !239, line: 1013, baseType: !1168, size: 256, offset: 960)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !239, line: 970, size: 256, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1168, file: !239, line: 971, baseType: !39, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1168, file: !239, line: 972, baseType: !7, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1168, file: !239, line: 973, baseType: !7, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1168, file: !239, line: 974, baseType: !7, size: 32, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1168, file: !239, line: 975, baseType: !7, size: 32, offset: 160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1168, file: !239, line: 976, baseType: !41, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !668, file: !239, line: 1014, baseType: !1177, size: 128, offset: 1216)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1178, line: 8, size: 128, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1179 = !{!1180, !4783}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1177, file: !1178, line: 9, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1183, line: 70, size: 256, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1184 = !{!1185, !4780, !4781, !4782}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1182, file: !1183, line: 71, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1188, line: 82, size: 1536, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1189 = !{!1190, !1191, !1196, !1204, !1205, !1220, !4748, !4750, !4763, !4764, !4765, !4766, !4767, !4772, !4773, !4774}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1187, file: !1188, line: 84, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1187, file: !1188, line: 85, baseType: !1192, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !509, line: 275, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !509, line: 275, size: 32, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1193, file: !509, line: 275, baseType: !513, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1187, file: !1188, line: 86, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1198, line: 38, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1199 = !{!1200, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1197, file: !1198, line: 39, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1197, file: !1198, line: 39, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1187, file: !1188, line: 87, baseType: !1186, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1187, file: !1188, line: 88, baseType: !1206, size: 128, offset: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1188, line: 49, size: 128, elements: !1207)
!1207 = !{!1208, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1188, line: 50, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !1188, line: 50, size: 64, elements: !1210)
!1210 = !{!1211, !1216}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1188, line: 51, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !1188, line: 51, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1212, file: !1188, line: 52, baseType: !327, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1212, file: !1188, line: 52, baseType: !327, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1209, file: !1188, line: 54, baseType: !390, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1206, file: !1188, line: 56, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1187, file: !1188, line: 89, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !239, line: 641, size: 4800, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1233, !1234, !1421, !4563, !4564, !4565, !4566, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4730, !4733, !4734, !4735, !4744, !4745, !4746, !4747}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1222, file: !239, line: 642, baseType: !24, size: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1222, file: !239, line: 643, baseType: !26, size: 16, offset: 16)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1222, file: !239, line: 644, baseType: !824, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1222, file: !239, line: 645, baseType: !97, size: 128, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1222, file: !239, line: 646, baseType: !832, size: 32, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1222, file: !239, line: 647, baseType: !7, size: 32, offset: 224)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1222, file: !239, line: 650, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !239, line: 607, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1222, file: !239, line: 651, baseType: !1231, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1222, file: !239, line: 654, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !239, line: 1966, size: 2048, align: 512, elements: !1238)
!1238 = !{!1239, !1243, !1256, !1262, !1266, !1270, !1274, !1278, !1282, !1286, !1290, !1291, !1297, !1301, !1338, !1369, !1376, !1382, !1386, !1390, !1394, !1398, !1402, !1408, !1412}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1237, file: !239, line: 1967, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1186, !1221, !1186, !7}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1237, file: !239, line: 1968, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!16, !1186, !1221, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1249, line: 10, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1250 = !{!1251, !1255}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1248, file: !1249, line: 11, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !20}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1248, file: !1249, line: 12, baseType: !20, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1237, file: !239, line: 1969, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!22, !1260, !1221, !22}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1107, line: 42, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1237, file: !239, line: 1970, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1231, !1221, !22, !851}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1237, file: !239, line: 1972, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!22, !1186, !939, !22}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1237, file: !239, line: 1974, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!22, !1260, !1221, !1186, !24, !851}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1237, file: !239, line: 1976, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!22, !1186, !1221, !1186}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1237, file: !239, line: 1977, baseType: !1279, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!22, !1221, !1186}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1237, file: !239, line: 1978, baseType: !1283, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!22, !1260, !1221, !1186, !16}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1237, file: !239, line: 1980, baseType: !1287, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!22, !1260, !1221, !1186, !24}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1237, file: !239, line: 1982, baseType: !1279, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1237, file: !239, line: 1983, baseType: !1292, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!22, !1260, !1221, !1186, !24, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !327)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1237, file: !239, line: 1985, baseType: !1298, size: 64, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!22, !1260, !1221, !1186, !1221, !1186, !7}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1237, file: !239, line: 1987, baseType: !1302, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!22, !1260, !1186, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !239, line: 226, size: 640, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1320, !1329, !1330, !1335, !1336, !1337}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1306, file: !239, line: 227, baseType: !7, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1306, file: !239, line: 228, baseType: !24, size: 16, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !239, line: 241, baseType: !1311, size: 32, offset: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !239, line: 241, size: 32, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1311, file: !239, line: 242, baseType: !824, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1311, file: !239, line: 243, baseType: !1315, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1316, line: 16, baseType: !1317)
!1316 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 14, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1317, file: !1316, line: 15, baseType: !829, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !239, line: 245, baseType: !1321, size: 32, offset: 96)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !239, line: 245, size: 32, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1321, file: !239, line: 246, baseType: !832, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1321, file: !239, line: 247, baseType: !1325, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1316, line: 20, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 18, size: 32, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1326, file: !1316, line: 19, baseType: !836, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1306, file: !239, line: 249, baseType: !41, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1306, file: !239, line: 250, baseType: !1331, size: 128, offset: 192)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !888, line: 13, size: 128, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1331, file: !888, line: 14, baseType: !887, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1331, file: !888, line: 15, baseType: !1076, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1306, file: !239, line: 251, baseType: !1331, size: 128, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1306, file: !239, line: 252, baseType: !1331, size: 128, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1306, file: !239, line: 259, baseType: !667, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1237, file: !239, line: 1988, baseType: !1339, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!22, !1260, !1342, !1344, !327, !7}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1346, line: 22, size: 1280, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1345, file: !1346, line: 23, baseType: !327, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1345, file: !1346, line: 24, baseType: !24, size: 16, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1345, file: !1346, line: 25, baseType: !7, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1345, file: !1346, line: 26, baseType: !895, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1345, file: !1346, line: 27, baseType: !390, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1345, file: !1346, line: 28, baseType: !390, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1345, file: !1346, line: 41, baseType: !390, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1345, file: !1346, line: 42, baseType: !1295, size: 32, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1345, file: !1346, line: 43, baseType: !1295, size: 32, offset: 352)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1345, file: !1346, line: 44, baseType: !824, size: 32, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1345, file: !1346, line: 45, baseType: !832, size: 32, offset: 416)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1345, file: !1346, line: 46, baseType: !41, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1345, file: !1346, line: 47, baseType: !1331, size: 128, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1345, file: !1346, line: 48, baseType: !1331, size: 128, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1345, file: !1346, line: 49, baseType: !1331, size: 128, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1345, file: !1346, line: 50, baseType: !1331, size: 128, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1345, file: !1346, line: 51, baseType: !390, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1345, file: !1346, line: 52, baseType: !390, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1345, file: !1346, line: 53, baseType: !327, size: 32, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1345, file: !1346, line: 54, baseType: !327, size: 32, offset: 1184)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1345, file: !1346, line: 55, baseType: !390, size: 64, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1237, file: !239, line: 1990, baseType: !1370, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1373, !1186, !939, !35}
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !1076)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1237, file: !239, line: 1991, baseType: !1377, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!22, !1221, !1380, !390, !390}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !239, line: 55, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1237, file: !239, line: 1993, baseType: !1383, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!22, !1221, !22}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1237, file: !239, line: 1994, baseType: !1387, size: 64, offset: 1152)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!22, !1221, !1186, !667, !7, !24}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1237, file: !239, line: 1997, baseType: !1391, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!22, !1260, !1221, !667, !24}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1237, file: !239, line: 1999, baseType: !1395, size: 64, offset: 1280)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1231, !1260, !1186, !22}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1237, file: !239, line: 2001, baseType: !1399, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!22, !1260, !1186, !1231, !22}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1237, file: !239, line: 2003, baseType: !1403, size: 64, offset: 1408)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!22, !1260, !1186, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !239, line: 76, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1237, file: !239, line: 2005, baseType: !1409, size: 64, offset: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!22, !1186, !1406}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1237, file: !239, line: 2006, baseType: !1413, size: 64, offset: 1536)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1221}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !239, line: 3192, size: 192, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1417, file: !239, line: 3193, baseType: !772, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1417, file: !239, line: 3194, baseType: !327, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1222, file: !239, line: 655, baseType: !1422, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !239, line: 1190, size: 10752, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !4080, !4212, !4252, !4335, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4352, !4356, !4357, !4360, !4363, !4366, !4369, !4370, !4371, !4412, !4434, !4435, !4436, !4437, !4438, !4439, !4442, !4446, !4455, !4456, !4457, !4458, !4517, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1423, file: !239, line: 1191, baseType: !97, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1423, file: !239, line: 1192, baseType: !1295, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1423, file: !239, line: 1193, baseType: !87, size: 8, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1423, file: !239, line: 1194, baseType: !39, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1423, file: !239, line: 1195, baseType: !41, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1423, file: !239, line: 1196, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !239, line: 2366, size: 576, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1442, !1446, !1450, !1454, !4068, !4069, !4070, !4072, !4073, !4074, !4076, !4077, !4078, !4079}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !239, line: 2367, baseType: !16, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1432, file: !239, line: 2368, baseType: !22, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1432, file: !239, line: 2376, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!22, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1183, line: 21, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1432, file: !239, line: 2377, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !239, line: 75, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1432, file: !239, line: 2378, baseType: !1447, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1186, !1431, !22, !16, !20}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1432, file: !239, line: 2380, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1422}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1432, file: !239, line: 2381, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1464, !2274, !2300, !2301, !2302, !2303, !2307, !2310, !2311, !2312, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2380, !2384, !2404, !2424, !2425, !2426, !2427, !2436, !2459, !2460, !2463, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2477, !2478, !2577, !2585, !2586, !2587, !2589, !4046, !4047, !4056, !4057, !4058, !4059, !4061, !4062, !4063, !4064, !4065, !4066, !4067}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1456, file: !116, line: 403, baseType: !115, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1456, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1456, file: !116, line: 409, baseType: !1461, size: 448, offset: 192)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 56)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1456, file: !116, line: 417, baseType: !1465, size: 768, offset: 640)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1466)
!1466 = !{!1467, !2268, !2269, !2270, !2273}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1465, file: !116, line: 46, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1469, line: 64, size: 512, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1470 = !{!1471, !1472, !1473, !1475, !1519, !2115, !2258, !2263, !2264, !2265, !2266, !2267}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !1469, line: 65, baseType: !16, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1468, file: !1469, line: 66, baseType: !97, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1468, file: !1469, line: 67, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1468, file: !1469, line: 68, baseType: !1476, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1469, line: 168, size: 768, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1477, file: !1469, line: 169, baseType: !97, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1477, file: !1469, line: 170, baseType: !59, size: 32, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1477, file: !1469, line: 171, baseType: !1468, size: 512, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1477, file: !1469, line: 172, baseType: !1483, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1469, line: 133, size: 192, elements: !1486)
!1486 = !{!1487, !1494, !1499}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1485, file: !1469, line: 134, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!22, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1485, file: !1469, line: 135, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!16, !1492}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1485, file: !1469, line: 136, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!22, !1492, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1469, line: 125, size: 20736, elements: !1506)
!1506 = !{!1507, !1509, !1513, !1514, !1518}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1505, file: !1469, line: 126, baseType: !1508, size: 192)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 192, elements: !731)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1505, file: !1469, line: 127, baseType: !1510, size: 4096, offset: 192)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 4096, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1505, file: !1469, line: 128, baseType: !22, size: 32, offset: 4288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1505, file: !1469, line: 129, baseType: !1515, size: 16384, offset: 4320)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 2048)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1505, file: !1469, line: 130, baseType: !22, size: 32, offset: 20704)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1468, file: !1469, line: 69, baseType: !1520, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1469, line: 116, size: 384, elements: !1523)
!1523 = !{!1524, !1528, !1547, !2077, !2107, !2111}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1522, file: !1469, line: 117, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1474}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1522, file: !1469, line: 118, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1532, line: 254, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1533 = !{!1534, !1543}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1531, file: !1532, line: 255, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1373, !1474, !1538, !939}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1532, line: 30, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1539, file: !1532, line: 31, baseType: !16, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1539, file: !1532, line: 32, baseType: !24, size: 16, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1531, file: !1532, line: 256, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1373, !1474, !1538, !16, !35}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1522, file: !1469, line: 119, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1532, line: 84, size: 320, elements: !1552)
!1552 = !{!1553, !1554, !1558, !2073, !2075}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1532, line: 85, baseType: !16, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1551, file: !1532, line: 86, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!24, !1474, !1538, !22}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1551, file: !1532, line: 88, baseType: !1559, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!24, !1474, !1562, !22}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1532, line: 175, size: 512, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !2064, !2068, !2069}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1563, file: !1532, line: 176, baseType: !1539, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1563, file: !1532, line: 177, baseType: !35, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1563, file: !1532, line: 178, baseType: !20, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1563, file: !1532, line: 179, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !239, line: 472, size: 1536, align: 64, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !2056, !2057, !2058, !2061, !2062, !2063}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1573, file: !239, line: 473, baseType: !1221, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1573, file: !239, line: 474, baseType: !772, size: 128, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1573, file: !239, line: 475, baseType: !871, size: 320, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1573, file: !239, line: 476, baseType: !319, size: 32, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1573, file: !239, line: 477, baseType: !49, size: 32, offset: 544)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1573, file: !239, line: 482, baseType: !522, size: 128, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1573, file: !239, line: 483, baseType: !39, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1573, file: !239, line: 484, baseType: !39, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1573, file: !239, line: 485, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !239, line: 404, size: 1280, elements: !1587)
!1587 = !{!1588, !1881, !1951, !1955, !1959, !1965, !1971, !1975, !1980, !1984, !1988, !1992, !2020, !2024, !2028, !2032, !2037, !2041, !2048, !2052}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1586, file: !239, line: 405, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!22, !1592, !1879}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1594)
!1594 = !{!1595, !1596, !1873, !1878}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !131, line: 75, baseType: !39, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !131, line: 83, baseType: !1597, size: 320, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !131, line: 83, size: 320, elements: !1598)
!1598 = !{!1599, !1620, !1634, !1638, !1872}
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !131, line: 84, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !131, line: 84, size: 320, elements: !1601)
!1601 = !{!1602, !1613, !1614, !1619}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !131, line: 90, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !131, line: 90, size: 128, elements: !1604)
!1604 = !{!1605, !1606, !1611, !1612}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1603, file: !131, line: 91, baseType: !97, size: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !131, line: 94, baseType: !1607, size: 128)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !131, line: 94, size: 128, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1607, file: !131, line: 96, baseType: !20, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1607, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1603, file: !131, line: 102, baseType: !97, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1603, file: !131, line: 103, baseType: !97, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1600, file: !131, line: 106, baseType: !1572, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !131, line: 107, baseType: !1615, size: 64, offset: 192)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !131, line: 107, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1615, file: !131, line: 108, baseType: !39, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1615, file: !131, line: 109, baseType: !39, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1600, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !131, line: 119, baseType: !1621, size: 320)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !131, line: 119, size: 320, elements: !1622)
!1622 = !{!1623, !1624, !1627, !1628, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1621, file: !131, line: 124, baseType: !39, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1621, file: !131, line: 125, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1621, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1621, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !131, line: 128, baseType: !1630, size: 64, offset: 256)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !131, line: 128, size: 64, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1630, file: !131, line: 133, baseType: !39, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1630, file: !131, line: 138, baseType: !688, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !131, line: 141, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !131, line: 141, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1635, file: !131, line: 142, baseType: !39, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !131, line: 144, baseType: !1639, size: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !131, line: 144, size: 128, elements: !1640)
!1640 = !{!1641, !1871}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1639, file: !131, line: 146, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1644)
!1644 = !{!1645, !1655, !1676, !1677, !1678, !1679, !1680, !1853, !1854, !1855}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1643, file: !123, line: 127, baseType: !1646, size: 384)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1647)
!1647 = !{!1648, !1649, !1651, !1652, !1653, !1654}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1646, file: !123, line: 22, baseType: !39, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1646, file: !123, line: 23, baseType: !1650, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1646, file: !123, line: 24, baseType: !1650, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1646, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1646, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1646, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1643, file: !123, line: 128, baseType: !1656, size: 128, offset: 384)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1657, line: 105, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1656, file: !1657, line: 110, baseType: !39, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1656, file: !1657, line: 118, baseType: !1661, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1657, line: 95, size: 448, elements: !1663)
!1663 = !{!1664, !1665, !1671, !1672, !1673, !1674, !1675}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1662, file: !1657, line: 96, baseType: !688, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1662, file: !1657, line: 97, baseType: !1666, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1657, line: 60, baseType: !1668)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1662, file: !1657, line: 98, baseType: !1666, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1662, file: !1657, line: 99, baseType: !851, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1662, file: !1657, line: 100, baseType: !851, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1662, file: !1657, line: 101, baseType: !675, size: 128, align: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1662, file: !1657, line: 102, baseType: !1670, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1643, file: !123, line: 129, baseType: !1017, size: 256, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1643, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1643, file: !123, line: 133, baseType: !1681, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1684)
!1684 = !{!1685, !1689, !1849}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1683, file: !123, line: 83, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1592}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1683, file: !123, line: 89, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1696, line: 512, size: 896, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1697 = !{!1698, !1816, !1817, !1824, !1831, !1841, !1842, !1843, !1845, !1847}
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !1696, line: 513, baseType: !1699, size: 320)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !1696, line: 513, size: 320, elements: !1700)
!1700 = !{!1701, !1812, !1813, !1814, !1815}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1699, file: !1696, line: 514, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1704)
!1704 = !{!1705, !1714, !1715, !1723, !1730, !1731, !1736, !1737, !1742, !1743, !1746, !1805, !1806, !1807, !1808, !1809, !1810}
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !131, line: 628, baseType: !1706, size: 128)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !131, line: 628, size: 128, elements: !1707)
!1707 = !{!1708, !1713}
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !131, line: 629, baseType: !1709, size: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !131, line: 629, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1709, file: !131, line: 631, baseType: !39, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1709, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1706, file: !131, line: 635, baseType: !675, size: 128, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1703, file: !131, line: 639, baseType: !639, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1703, file: !131, line: 640, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1717, line: 297, baseType: !1718)
!1717 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1717, line: 297, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1718, file: !1717, line: 297, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1722, line: 19, baseType: !39)
!1722 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !131, line: 646, baseType: !1724, size: 64, offset: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !131, line: 646, size: 64, elements: !1725)
!1725 = !{!1726, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1724, file: !131, line: 647, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1724, file: !131, line: 648, baseType: !1728, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1703, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1703, file: !131, line: 667, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1733, file: !131, line: 580, baseType: !871, size: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1703, file: !131, line: 670, baseType: !851, size: 8, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1703, file: !131, line: 681, baseType: !1738, size: 256, offset: 512)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !131, line: 678, size: 256, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1738, file: !131, line: 679, baseType: !382, size: 192, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1738, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1703, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1703, file: !131, line: 691, baseType: !1744, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1703, file: !131, line: 694, baseType: !1747, size: 64, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1696, line: 563, size: 1024, elements: !1750)
!1750 = !{!1751, !1755, !1756, !1760, !1764, !1768, !1769, !1773, !1777, !1781, !1782, !1783, !1787, !1791, !1797, !1801}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1749, file: !1696, line: 564, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1702}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1749, file: !1696, line: 569, baseType: !1752, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1749, file: !1696, line: 571, baseType: !1757, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!22, !1702, !39}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1749, file: !1696, line: 572, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!22, !1702}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1749, file: !1696, line: 578, baseType: !1765, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!22, !1702, !39, !39, !39}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1749, file: !1696, line: 580, baseType: !1690, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1749, file: !1696, line: 581, baseType: !1770, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1693, !1694, !7}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1749, file: !1696, line: 582, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1693, !1694, !39, !39}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1749, file: !1696, line: 584, baseType: !1778, size: 64, offset: 512)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!39, !1702}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1749, file: !1696, line: 588, baseType: !1690, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1749, file: !1696, line: 591, baseType: !1690, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1749, file: !1696, line: 597, baseType: !1784, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!22, !1702, !39, !20, !22, !22}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1749, file: !1696, line: 603, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!16, !1702}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1749, file: !1696, line: 613, baseType: !1792, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!22, !1702, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !131, line: 717, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1749, file: !1696, line: 625, baseType: !1798, size: 64, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1795, !1702, !39}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1749, file: !1696, line: 633, baseType: !1802, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1592, !1702, !39}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1703, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1703, file: !131, line: 699, baseType: !667, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1703, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1703, file: !131, line: 711, baseType: !688, size: 64, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1703, file: !131, line: 717, baseType: !1795, size: 64, offset: 1280)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1703, file: !131, line: 722, baseType: !1811, offset: 1344)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !660)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1699, file: !1696, line: 515, baseType: !319, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1699, file: !1696, line: 516, baseType: !39, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1699, file: !1696, line: 517, baseType: !39, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1699, file: !1696, line: 518, baseType: !39, size: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1695, file: !1696, line: 520, baseType: !130, size: 32, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1695, file: !1696, line: 522, baseType: !1818, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1722, line: 22, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 22, size: 64, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1820, file: !1722, line: 22, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1722, line: 15, baseType: !39)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1695, file: !1696, line: 524, baseType: !1825, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1717, line: 372, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1717, line: 372, size: 64, elements: !1828)
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1827, file: !1717, line: 372, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1722, line: 16, baseType: !39)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !1696, line: 527, baseType: !1832, size: 64, offset: 512)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !1696, line: 527, size: 64, elements: !1833)
!1833 = !{!1834, !1840}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1832, file: !1696, line: 528, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1722, line: 21, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 21, size: 64, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1836, file: !1722, line: 21, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1722, line: 14, baseType: !39)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1832, file: !1696, line: 529, baseType: !1819, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1695, file: !1696, line: 534, baseType: !1592, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1695, file: !1696, line: 535, baseType: !1592, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1695, file: !1696, line: 541, baseType: !1844, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1695, file: !1696, line: 545, baseType: !1846, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1695, file: !1696, line: 549, baseType: !1848, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1717, line: 520, baseType: !1592)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1683, file: !123, line: 100, baseType: !1850, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!22, !1642, !39, !39, !22}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1643, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1643, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !123, line: 136, baseType: !1856, size: 128, offset: 1088)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !123, line: 136, size: 128, elements: !1857)
!1857 = !{!1858, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1856, file: !123, line: 137, baseType: !1859, size: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1860, line: 6, size: 128, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1859, file: !1860, line: 7, baseType: !390, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1859, file: !1860, line: 8, baseType: !390, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !123, line: 138, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !123, line: 138, elements: !1866)
!1866 = !{!1867, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1865, file: !123, line: 138, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !123, line: 138, elements: !660)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1865, file: !123, line: 138, baseType: !1870)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, elements: !1083)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1639, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1597, file: !131, line: 161, baseType: !675, size: 128, align: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !131, line: 164, baseType: !1874, size: 32, offset: 384)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !131, line: 164, size: 32, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1874, file: !131, line: 169, baseType: !49, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1874, file: !131, line: 177, baseType: !7, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1593, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !239, line: 309, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1586, file: !239, line: 406, baseType: !1882, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!22, !667, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1887)
!1887 = !{!1888, !1918, !1932}
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !131, line: 295, baseType: !1889, size: 512)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !131, line: 295, size: 512, elements: !1890)
!1890 = !{!1891, !1917}
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !131, line: 296, baseType: !1892, size: 448)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !131, line: 296, size: 448, elements: !1893)
!1893 = !{!1894, !1895, !1904, !1905, !1906, !1915, !1916}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !131, line: 298, baseType: !39, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !131, line: 299, baseType: !1896, size: 128, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !131, line: 299, size: 128, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1896, file: !131, line: 300, baseType: !97, size: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !131, line: 302, baseType: !1900, size: 128)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !131, line: 302, size: 128, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1900, file: !131, line: 303, baseType: !20, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1900, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1892, file: !131, line: 310, baseType: !1572, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1892, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !131, line: 312, baseType: !1907, size: 64, offset: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !131, line: 312, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1907, file: !131, line: 313, baseType: !20, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1907, file: !131, line: 314, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1912, file: !131, line: 256, baseType: !39, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1892, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1892, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1889, file: !131, line: 323, baseType: !1593, size: 512, align: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !131, line: 325, baseType: !1919, size: 512, offset: 512)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !131, line: 325, size: 512, elements: !1920)
!1920 = !{!1921, !1931}
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !131, line: 326, baseType: !1922, size: 320)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !131, line: 326, size: 320, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1922, file: !131, line: 327, baseType: !39, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1922, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1922, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1922, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1922, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1922, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1922, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1919, file: !131, line: 339, baseType: !1593, size: 512, align: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !131, line: 341, baseType: !1933, size: 512, offset: 1024)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !131, line: 341, size: 512, elements: !1934)
!1934 = !{!1935, !1944, !1950}
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !131, line: 342, baseType: !1936, size: 384)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !131, line: 342, size: 384, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1936, file: !131, line: 343, baseType: !39, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1936, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1936, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1936, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1936, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1936, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !131, line: 352, baseType: !1945, size: 256)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !131, line: 352, size: 256, elements: !1946)
!1946 = !{!1947, !1948, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1945, file: !131, line: 353, baseType: !39, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1945, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1945, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1933, file: !131, line: 359, baseType: !1593, size: 512, align: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1586, file: !239, line: 409, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!22, !1572, !1879}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1586, file: !239, line: 412, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!851, !1572, !1885}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1586, file: !239, line: 414, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !239, line: 310, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1586, file: !239, line: 416, baseType: !1966, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!22, !667, !1572, !41, !7, !1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1586, file: !239, line: 419, baseType: !1972, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!22, !667, !1572, !41, !7, !7, !1592, !20}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1586, file: !239, line: 424, baseType: !1976, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1979, !1572, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !390)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1586, file: !239, line: 425, baseType: !1981, size: 64, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1885, !35, !35}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1586, file: !239, line: 426, baseType: !1985, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!851, !1885, !319}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1586, file: !239, line: 427, baseType: !1989, size: 64, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1885}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1586, file: !239, line: 428, baseType: !1993, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1373, !1996, !2018}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !239, line: 373, size: 384, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2005, !2006, !2007, !2008}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1997, file: !239, line: 374, baseType: !667, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1997, file: !239, line: 375, baseType: !41, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1997, file: !239, line: 376, baseType: !2002, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !1996, !1076}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1997, file: !239, line: 377, baseType: !20, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1997, file: !239, line: 378, baseType: !22, size: 32, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1997, file: !239, line: 379, baseType: !93, size: 16, offset: 288)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !239, line: 380, baseType: !2009, size: 64, offset: 320)
!2009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !239, line: 380, size: 64, elements: !2010)
!2010 = !{!2011, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2009, file: !239, line: 386, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !239, line: 386, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2009, file: !239, line: 395, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1373, !20}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !239, line: 69, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1586, file: !239, line: 433, baseType: !2021, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!22, !1572, !1885, !1885, !146}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1586, file: !239, line: 435, baseType: !2025, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!22, !1885}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1586, file: !239, line: 436, baseType: !2029, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!851, !1885, !35, !35}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1586, file: !239, line: 438, baseType: !2033, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !1885, !2036, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1586, file: !239, line: 439, baseType: !2038, size: 64, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!22, !1572, !1592}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1586, file: !239, line: 442, baseType: !2042, size: 64, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!22, !2045, !667, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !239, line: 66, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1586, file: !239, line: 444, baseType: !2049, size: 64, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !667}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1586, file: !239, line: 445, baseType: !2053, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!22, !1996, !2018}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !239, line: 486, baseType: !39, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1573, file: !239, line: 487, baseType: !871, size: 320, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1573, file: !239, line: 488, baseType: !2059, size: 32, offset: 1280)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2060, line: 8, baseType: !327)
!2060 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1573, file: !239, line: 489, baseType: !59, size: 32, offset: 1312)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1573, file: !239, line: 490, baseType: !97, size: 128, offset: 1344)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1573, file: !239, line: 491, baseType: !20, size: 64, offset: 1472)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !1532, line: 180, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!1373, !667, !1474, !1562, !939, !41, !35}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !1532, line: 182, baseType: !2065, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !1532, line: 184, baseType: !2070, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!22, !667, !1474, !1562, !1702}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1551, file: !1532, line: 90, baseType: !2074, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1551, file: !1532, line: 91, baseType: !2076, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1522, file: !1469, line: 120, baseType: !2078, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2081, !1492}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !154, line: 39, size: 384, elements: !2084)
!2084 = !{!2085, !2086, !2090, !2094, !2102, !2106}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2083, file: !154, line: 40, baseType: !153, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2083, file: !154, line: 41, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!851}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2083, file: !154, line: 42, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!20}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2083, file: !154, line: 43, baseType: !2095, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2098, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !263, line: 177, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2083, file: !154, line: 44, baseType: !2103, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!2098}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2083, file: !154, line: 45, baseType: !1252, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1522, file: !1469, line: 121, baseType: !2108, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2098, !1492}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1522, file: !1469, line: 122, baseType: !2112, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !1492, !1042, !1043}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1468, file: !1469, line: 70, baseType: !2116, size: 64, offset: 384)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2118, line: 190, size: 1152, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2250, !2251, !2252, !2253, !2254, !2257}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2117, file: !2118, line: 191, baseType: !49, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2117, file: !2118, line: 192, baseType: !49, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2117, file: !2118, line: 202, baseType: !2116, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2117, file: !2118, line: 203, baseType: !16, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2117, file: !2118, line: 205, baseType: !382, size: 192, align: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2117, file: !2118, line: 207, baseType: !2098, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2117, file: !2118, line: 208, baseType: !7, size: 32, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2118, line: 209, baseType: !2128, size: 256, offset: 512)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2118, line: 209, size: 256, elements: !2129)
!2129 = !{!2130, !2139, !2143}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2128, file: !2118, line: 210, baseType: !2131, size: 256)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2118, line: 153, size: 256, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2138}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2131, file: !2118, line: 154, baseType: !39, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2131, file: !2118, line: 156, baseType: !525, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2131, file: !2118, line: 162, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2118, line: 162, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2131, file: !2118, line: 167, baseType: !39, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2128, file: !2118, line: 211, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2118, line: 170, size: 64, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2140, file: !2118, line: 171, baseType: !2116, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2128, file: !2118, line: 212, baseType: !2144, size: 256)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2118, line: 174, size: 256, elements: !2145)
!2145 = !{!2146, !2245, !2248, !2249}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2144, file: !2118, line: 175, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2118, line: 271, size: 768, elements: !2150)
!2150 = !{!2151, !2209, !2213, !2214, !2215, !2216, !2217, !2221, !2222, !2223, !2224, !2241}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2149, file: !2118, line: 276, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!22, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2118, line: 251, size: 1216, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2156, file: !2118, line: 253, baseType: !2116, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2156, file: !2118, line: 254, baseType: !667, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2156, file: !2118, line: 255, baseType: !2161, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2163, line: 17, size: 960, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2194, !2195, !2198}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2162, file: !2163, line: 18, baseType: !939, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2162, file: !2163, line: 19, baseType: !35, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2162, file: !2163, line: 20, baseType: !35, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2162, file: !2163, line: 21, baseType: !35, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2162, file: !2163, line: 22, baseType: !35, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2162, file: !2163, line: 23, baseType: !41, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2162, file: !2163, line: 24, baseType: !41, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2162, file: !2163, line: 25, baseType: !695, size: 256, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2162, file: !2163, line: 26, baseType: !2174, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2163, line: 32, size: 256, elements: !2177)
!2177 = !{!2178, !2182, !2186, !2190}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2176, file: !2163, line: 33, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!20, !2161, !40}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2176, file: !2163, line: 34, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2161, !20}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !2163, line: 35, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!20, !2161, !20, !40}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2176, file: !2163, line: 36, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!22, !2161, !20}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2162, file: !2163, line: 27, baseType: !22, size: 32, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2162, file: !2163, line: 28, baseType: !2196, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2162, file: !2163, line: 29, baseType: !20, size: 64, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2156, file: !2118, line: 256, baseType: !20, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2156, file: !2118, line: 259, baseType: !695, size: 256, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2156, file: !2118, line: 260, baseType: !695, size: 256, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2156, file: !2118, line: 261, baseType: !22, size: 32, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2156, file: !2118, line: 262, baseType: !97, size: 128, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2156, file: !2118, line: 263, baseType: !939, size: 64, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2156, file: !2118, line: 265, baseType: !35, size: 64, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2156, file: !2118, line: 266, baseType: !851, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2156, file: !2118, line: 267, baseType: !851, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2156, file: !2118, line: 268, baseType: !1747, size: 64, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2149, file: !2118, line: 277, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2155}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2149, file: !2118, line: 290, baseType: !2191, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2149, file: !2118, line: 292, baseType: !2179, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2149, file: !2118, line: 293, baseType: !2187, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2149, file: !2118, line: 294, baseType: !2183, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2149, file: !2118, line: 296, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!1373, !2155, !939, !35, !41}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2149, file: !2118, line: 306, baseType: !35, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2149, file: !2118, line: 313, baseType: !851, size: 8, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2149, file: !2118, line: 314, baseType: !2218, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2149, file: !2118, line: 317, baseType: !2225, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!2228, !2155, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2229, line: 59, baseType: !7)
!2229 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2232, line: 37, size: 128, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2233 = !{!2234, !2240}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2231, file: !2232, line: 38, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2232, line: 31, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !667, !2239, !2230}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2231, file: !2232, line: 39, baseType: !2228, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2149, file: !2118, line: 320, baseType: !2242, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!22, !2155, !1702}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2144, file: !2118, line: 176, baseType: !2246, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2118, line: 35, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2144, file: !2118, line: 177, baseType: !41, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2144, file: !2118, line: 178, baseType: !2116, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2117, file: !2118, line: 215, baseType: !20, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2117, file: !2118, line: 221, baseType: !390, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2118, line: 223, baseType: !26, size: 16, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2117, file: !2118, line: 224, baseType: !24, size: 16, offset: 912)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2117, file: !2118, line: 225, baseType: !2255, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2118, line: 36, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2117, file: !2118, line: 227, baseType: !675, size: 128, align: 64, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1468, file: !1469, line: 71, baseType: !2259, size: 32, offset: 448)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2260, line: 19, size: 32, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2259, file: !2260, line: 20, baseType: !339, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1468, file: !1469, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1468, file: !1469, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1468, file: !1469, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1468, file: !1469, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1468, file: !1469, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1465, file: !116, line: 47, baseType: !1455, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1465, file: !116, line: 48, baseType: !1474, size: 64, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1465, file: !116, line: 49, baseType: !2271, size: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1465, file: !116, line: 50, baseType: !1016, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1456, file: !116, line: 418, baseType: !2275, size: 64, offset: 1408)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !2277)
!2277 = !{!2278, !2279, !2284, !2288, !2292, !2296}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2276, file: !116, line: 54, baseType: !1539, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2276, file: !116, line: 55, baseType: !2280, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!1373, !2275, !2283, !939}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2276, file: !116, line: 57, baseType: !2285, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!1373, !2275, !2283, !16, !35}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2276, file: !116, line: 59, baseType: !2289, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !1455, !16}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2276, file: !116, line: 60, baseType: !2293, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!22, !1455}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2276, file: !116, line: 61, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !1455}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1456, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1456, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1456, file: !116, line: 421, baseType: !1474, size: 64, offset: 1600)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1456, file: !116, line: 424, baseType: !2304, size: 64, offset: 1664)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1456, file: !116, line: 425, baseType: !2308, size: 64, offset: 1728)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1456, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1456, file: !116, line: 435, baseType: !695, size: 256, offset: 1856)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1456, file: !116, line: 437, baseType: !2313, size: 64, offset: 2112)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2315, line: 69, size: 320, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2316 = !{!2317, !2318, !2319, !2336, !2338, !2342, !2343}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2314, file: !2315, line: 70, baseType: !16, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2314, file: !2315, line: 71, baseType: !1455, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2314, file: !2315, line: 72, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2315, line: 47, size: 256, elements: !2323)
!2323 = !{!2324, !2325, !2331, !2335}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2322, file: !2315, line: 49, baseType: !7, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2322, file: !2315, line: 51, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!22, !16, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2322, file: !2315, line: 53, baseType: !2332, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!22, !939, !2329}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2322, file: !2315, line: 55, baseType: !1252, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2314, file: !2315, line: 73, baseType: !2337, size: 16, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2314, file: !2315, line: 74, baseType: !2339, size: 8, offset: 208)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2340)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2341)
!2341 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !2315, line: 75, baseType: !83, size: 8, offset: 216)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2314, file: !2315, line: 76, baseType: !2344, size: 64, offset: 256)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2314, file: !2315, line: 76, size: 64, elements: !2345)
!2345 = !{!2346, !2347, !2354}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2344, file: !2315, line: 77, baseType: !20, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2344, file: !2315, line: 78, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2315, line: 86, size: 128, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2350, file: !2315, line: 87, baseType: !7, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2350, file: !2315, line: 88, baseType: !939, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2344, file: !2315, line: 79, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2315, line: 92, size: 256, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2363, !2364}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2357, file: !2315, line: 94, baseType: !7, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2357, file: !2315, line: 95, baseType: !7, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2357, file: !2315, line: 96, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2357, file: !2315, line: 97, baseType: !2320, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2357, file: !2315, line: 98, baseType: !20, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1456, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1456, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1456, file: !116, line: 442, baseType: !2304, size: 64, offset: 2240)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1456, file: !116, line: 443, baseType: !2308, size: 64, offset: 2304)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1456, file: !116, line: 444, baseType: !851, size: 8, offset: 2368)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1456, file: !116, line: 451, baseType: !851, size: 8, offset: 2376)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1456, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1456, file: !116, line: 455, baseType: !2373, size: 64, offset: 2432)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2375, line: 23, size: 96, elements: !2376)
!2375 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2374, file: !2375, line: 24, baseType: !22, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2374, file: !2375, line: 24, baseType: !22, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2374, file: !2375, line: 24, baseType: !22, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1456, file: !116, line: 458, baseType: !2381, size: 64, offset: 2496)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!22}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1456, file: !116, line: 460, baseType: !2385, size: 4032, align: 512, offset: 2560)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 4032, elements: !2402)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2386, file: !116, line: 363, baseType: !20, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2386, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2386, file: !116, line: 367, baseType: !2391, size: 448, offset: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2391, file: !116, line: 320, baseType: !1455, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2391, file: !116, line: 321, baseType: !2395, size: 384, offset: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2396, line: 40, size: 384, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2395, file: !2396, line: 41, baseType: !2399, size: 384, align: 64)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, align: 64, elements: !2400)
!2400 = !{!2401}
!2401 = !DISubrange(count: 2)
!2402 = !{!2403}
!2403 = !DISubrange(count: 7)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1456, file: !116, line: 463, baseType: !2405, size: 192, offset: 6592)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2406, line: 8, size: 192, elements: !2407)
!2406 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2407 = !{!2408, !2409, !2411}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2405, file: !2406, line: 10, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2405, file: !2406, line: 11, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2405, file: !2406, line: 12, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2414, line: 59, size: 48, elements: !2415)
!2414 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2415 = !{!2416, !2419, !2420, !2421, !2422, !2423}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2413, file: !2414, line: 60, baseType: !2417, size: 16)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !899)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2413, file: !2414, line: 61, baseType: !2417, size: 16, offset: 16)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2413, file: !2414, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2413, file: !2414, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2413, file: !2414, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2413, file: !2414, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1456, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1456, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1456, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1456, file: !116, line: 471, baseType: !2428, size: 64, offset: 7040)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2430, line: 33, size: 96, elements: !2431)
!2430 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2431 = !{!2432, !2433, !2434, !2435}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2429, file: !2430, line: 37, baseType: !22, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2429, file: !2430, line: 43, baseType: !22, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2429, file: !2430, line: 45, baseType: !26, size: 16, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2429, file: !2430, line: 47, baseType: !26, size: 16, offset: 80)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1456, file: !116, line: 476, baseType: !2437, size: 64, offset: 7104)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2439)
!2439 = !{!2440, !2456, !2457, !2458}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2438, file: !116, line: 379, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2443, line: 204, baseType: !2444)
!2443 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2443, line: 197, size: 192, elements: !2445)
!2445 = !{!2446, !2448, !2449, !2450, !2452, !2454}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2444, file: !2443, line: 198, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2443, line: 21, baseType: !328)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2444, file: !2443, line: 199, baseType: !87, size: 8, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2444, file: !2443, line: 200, baseType: !87, size: 8, offset: 40)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2444, file: !2443, line: 201, baseType: !2451, size: 16, offset: 48)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2443, line: 17, baseType: !94)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2444, file: !2443, line: 202, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2443, line: 16, baseType: !391)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2444, file: !2443, line: 203, baseType: !2455, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2443, line: 22, baseType: !391)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2438, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2438, file: !116, line: 381, baseType: !939, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2438, file: !116, line: 382, baseType: !939, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1456, file: !116, line: 477, baseType: !2438, size: 256, offset: 7168)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1456, file: !116, line: 480, baseType: !2461, size: 64, offset: 7424)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1456, file: !116, line: 483, baseType: !2464, size: 64, offset: 7488)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1456, file: !116, line: 488, baseType: !939, size: 64, offset: 7552)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1456, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1456, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1456, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1456, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1456, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1456, file: !116, line: 500, baseType: !2473, size: 64, offset: 7872)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2475, line: 45, baseType: !2476)
!2475 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1456, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1456, file: !116, line: 504, baseType: !2479, size: 64, offset: 8000)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2482, line: 96, size: 192, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2483 = !{!2484, !2485, !2538, !2541}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2481, file: !2482, line: 97, baseType: !7, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2481, file: !2482, line: 98, baseType: !2486, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2482, line: 24, size: 3072, elements: !2488)
!2488 = !{!2489, !2491, !2492, !2493, !2494, !2507, !2508, !2509, !2510, !2522, !2523, !2524, !2535, !2536, !2537}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2487, file: !2482, line: 26, baseType: !2490, size: 128)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 128, elements: !2400)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2487, file: !2482, line: 27, baseType: !2490, size: 128, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2487, file: !2482, line: 28, baseType: !22, size: 32, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2487, file: !2482, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2487, file: !2482, line: 32, baseType: !2495, size: 960, offset: 576)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2496, line: 206, size: 960, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2497 = !{!2498, !2499, !2502, !2504, !2505, !2506}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2495, file: !2496, line: 207, baseType: !678, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2495, file: !2496, line: 208, baseType: !2500, size: 256, offset: 64)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2501, size: 256, elements: !752)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2495, file: !2496, line: 209, baseType: !2503, size: 256, offset: 320)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !752)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2495, file: !2496, line: 213, baseType: !1076, size: 64, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2495, file: !2496, line: 215, baseType: !1078, size: 256, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2495, file: !2496, line: 216, baseType: !83, size: 8, offset: 896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2487, file: !2482, line: 33, baseType: !39, size: 64, offset: 1536)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2487, file: !2482, line: 34, baseType: !39, size: 64, offset: 1600)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2487, file: !2482, line: 35, baseType: !851, size: 8, offset: 1664)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2487, file: !2482, line: 36, baseType: !2511, size: 320, offset: 1728)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2512, line: 11, size: 320, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2513 = !{!2514, !2515, !2516, !2521}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2511, file: !2512, line: 16, baseType: !747, size: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2511, file: !2512, line: 17, baseType: !39, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2511, file: !2512, line: 18, baseType: !2517, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2512, line: 19, baseType: !327, size: 32, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2487, file: !2482, line: 37, baseType: !978, size: 256, offset: 2048)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2487, file: !2482, line: 38, baseType: !675, size: 128, align: 64, offset: 2304)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2487, file: !2482, line: 39, baseType: !2525, size: 64, offset: 2432)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2482, line: 49, size: 768, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2526, file: !2482, line: 50, baseType: !59, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2526, file: !2482, line: 51, baseType: !2503, size: 256, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2526, file: !2482, line: 53, baseType: !2503, size: 256, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2526, file: !2482, line: 54, baseType: !39, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2526, file: !2482, line: 55, baseType: !2525, size: 64, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2526, file: !2482, line: 56, baseType: !22, size: 32, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2526, file: !2482, line: 57, baseType: !22, size: 32, offset: 736)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2487, file: !2482, line: 40, baseType: !39, size: 64, offset: 2496)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2487, file: !2482, line: 42, baseType: !22, size: 32, offset: 2560)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2487, file: !2482, line: 43, baseType: !2480, size: 64, offset: 2624)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2481, file: !2482, line: 99, baseType: !2539, offset: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2540, line: 211, elements: !660)
!2540 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2481, file: !2482, line: 100, baseType: !2542, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2482, line: 63, size: 3008, elements: !2544)
!2544 = !{!2545, !2546, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2576}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2543, file: !2482, line: 64, baseType: !2525, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2543, file: !2482, line: 65, baseType: !2547, size: 192, offset: 64)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2525, size: 192, elements: !731)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2543, file: !2482, line: 67, baseType: !22, size: 32, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2543, file: !2482, line: 68, baseType: !695, size: 256, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2543, file: !2482, line: 69, baseType: !59, size: 32, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2543, file: !2482, line: 70, baseType: !695, size: 256, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2543, file: !2482, line: 71, baseType: !39, size: 64, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2543, file: !2482, line: 72, baseType: !39, size: 64, offset: 960)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2543, file: !2482, line: 73, baseType: !39, size: 64, offset: 1024)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2543, file: !2482, line: 74, baseType: !39, size: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2543, file: !2482, line: 75, baseType: !39, size: 64, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2543, file: !2482, line: 76, baseType: !39, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2543, file: !2482, line: 77, baseType: !39, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2543, file: !2482, line: 78, baseType: !39, size: 64, offset: 1344)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2543, file: !2482, line: 79, baseType: !851, size: 8, offset: 1408)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2543, file: !2482, line: 80, baseType: !39, size: 64, offset: 1472)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2543, file: !2482, line: 81, baseType: !695, size: 256, offset: 1536)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2543, file: !2482, line: 82, baseType: !1017, size: 256, offset: 1792)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2543, file: !2482, line: 84, baseType: !49, size: 32, offset: 2048)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2543, file: !2482, line: 87, baseType: !39, size: 64, offset: 2112)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2543, file: !2482, line: 88, baseType: !39, size: 64, offset: 2176)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2543, file: !2482, line: 89, baseType: !2568, size: 704, offset: 2240)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !979, line: 111, size: 704, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2575}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2568, file: !979, line: 112, baseType: !978, size: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2568, file: !979, line: 113, baseType: !2511, size: 320, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2568, file: !979, line: 116, baseType: !2573, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !979, line: 18, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2568, file: !979, line: 117, baseType: !22, size: 32, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2543, file: !2482, line: 90, baseType: !2480, size: 64, offset: 2944)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1456, file: !116, line: 515, baseType: !2578, size: 64, offset: 8064)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2580, line: 117, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2581 = !{!2582, !2583, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2579, file: !2580, line: 118, baseType: !863, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2579, file: !2580, line: 119, baseType: !863, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2579, file: !2580, line: 120, baseType: !1076, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1456, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1456, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1456, file: !116, line: 520, baseType: !2588, size: 64, offset: 8192)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1456, file: !116, line: 523, baseType: !2590, size: 64, offset: 8256)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !160, line: 372, size: 1024, elements: !2593)
!2593 = !{!2594, !2595, !2635, !2695, !2776, !2777, !2780, !2785, !2786, !2787, !2788, !2790, !2793}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2592, file: !160, line: 373, baseType: !97, size: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2592, file: !160, line: 374, baseType: !2596, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !160, line: 291, size: 576, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2606, !2629, !2633, !2634}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2597, file: !160, line: 292, baseType: !16, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2597, file: !160, line: 293, baseType: !20, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2597, file: !160, line: 295, baseType: !20, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2597, file: !160, line: 297, baseType: !2603, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!22, !2591, !159, !20}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2597, file: !160, line: 299, baseType: !2607, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !160, line: 275, size: 320, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2608, file: !160, line: 276, baseType: !16, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !2608, file: !160, line: 277, baseType: !2612, size: 256, offset: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2608, file: !160, line: 277, size: 256, elements: !2613)
!2613 = !{!2614, !2625}
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2612, file: !160, line: 278, baseType: !2615, size: 256)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !160, line: 278, size: 256, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2622, !2623, !2624}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2615, file: !160, line: 279, baseType: !16, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2615, file: !160, line: 280, baseType: !2476, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2615, file: !160, line: 281, baseType: !2476, size: 32, offset: 96)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2615, file: !160, line: 282, baseType: !2621, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2615, file: !160, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2615, file: !160, line: 284, baseType: !2476, size: 32, offset: 160)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2615, file: !160, line: 285, baseType: !2476, size: 32, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2612, file: !160, line: 287, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!22, !2591}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2597, file: !160, line: 300, baseType: !2630, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!100, !2591}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2597, file: !160, line: 301, baseType: !97, size: 128, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2597, file: !160, line: 302, baseType: !2626, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !160, line: 375, baseType: !2636, size: 64, offset: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !160, line: 375, size: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2636, file: !160, line: 376, baseType: !16, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2636, file: !160, line: 378, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2475, line: 32, size: 640, elements: !2642)
!2642 = !{!2643, !2644, !2656, !2680, !2681, !2682, !2683, !2684, !2688}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2641, file: !2475, line: 33, baseType: !16, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2641, file: !2475, line: 34, baseType: !2645, size: 128, offset: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2580, line: 85, size: 128, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2645, file: !2580, line: 86, baseType: !49, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2645, file: !2580, line: 101, baseType: !2649, size: 64, offset: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2645, file: !2580, line: 101, size: 64, elements: !2650)
!2650 = !{!2651, !2652, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2649, file: !2580, line: 102, baseType: !39, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2649, file: !2580, line: 103, baseType: !2578, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2649, file: !2580, line: 104, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2580, line: 104, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2641, file: !2475, line: 35, baseType: !2657, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2659, line: 61, size: 128, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2658, file: !2659, line: 62, baseType: !20, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2658, file: !2659, line: 63, baseType: !2663, size: 64, offset: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2658, file: !2659, line: 63, size: 64, elements: !2664)
!2664 = !{!2665, !2666, !2679}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2663, file: !2659, line: 65, baseType: !39, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2663, file: !2659, line: 66, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2669, line: 169, size: 192, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2668, file: !2669, line: 170, baseType: !2667, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2668, file: !2669, line: 171, baseType: !1455, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2668, file: !2669, line: 172, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2659, line: 32, size: 64, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2675, file: !2659, line: 33, baseType: !863, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2675, file: !2659, line: 34, baseType: !863, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2663, file: !2659, line: 67, baseType: !2674, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2641, file: !2475, line: 36, baseType: !20, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2641, file: !2475, line: 37, baseType: !20, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2641, file: !2475, line: 38, baseType: !20, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2641, file: !2475, line: 39, baseType: !2381, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2641, file: !2475, line: 40, baseType: !2685, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2641, file: !2475, line: 41, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2475, line: 26, size: 192, elements: !2691)
!2691 = !{!2692, !2693, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2690, file: !2475, line: 27, baseType: !20, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2690, file: !2475, line: 28, baseType: !20, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2690, file: !2475, line: 29, baseType: !22, size: 32, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2592, file: !160, line: 380, baseType: !2696, size: 256, offset: 256)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !160, line: 148, size: 256, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2696, file: !160, line: 149, baseType: !747, size: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2696, file: !160, line: 150, baseType: !22, size: 32, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2696, file: !160, line: 151, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !160, line: 141, size: 256, elements: !2703)
!2703 = !{!2704, !2773, !2774, !2775}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2702, file: !160, line: 142, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !160, line: 138, baseType: !2706)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!170, !2709, !22, !2772}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !160, line: 93, size: 67776, elements: !2711)
!2711 = !{!2712, !2715, !2718, !2721, !2722, !2723, !2724, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2752, !2755, !2756, !2757, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2710, file: !160, line: 94, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !160, line: 13, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2710, file: !160, line: 95, baseType: !2716, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !160, line: 15, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2710, file: !160, line: 96, baseType: !2719, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !160, line: 14, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2710, file: !160, line: 97, baseType: !20, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2710, file: !160, line: 98, baseType: !22, size: 32, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2710, file: !160, line: 99, baseType: !695, size: 256, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2710, file: !160, line: 100, baseType: !2725, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2728, line: 10, flags: DIFlagFwdDecl)
!2728 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2710, file: !160, line: 101, baseType: !39, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2710, file: !160, line: 102, baseType: !20, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2710, file: !160, line: 103, baseType: !7, size: 32, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2710, file: !160, line: 104, baseType: !939, size: 64, offset: 832)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2710, file: !160, line: 105, baseType: !7, size: 32, offset: 896)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2710, file: !160, line: 106, baseType: !1076, size: 64, offset: 960)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2710, file: !160, line: 109, baseType: !2736, size: 33088, offset: 1024)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2737, line: 14, size: 33088, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2738 = !{!2739, !2743, !2750, !2751}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2736, file: !2737, line: 15, baseType: !2740, size: 32768)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2741)
!2741 = !{!2742}
!2742 = !DISubrange(count: 4096)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2736, file: !2737, line: 16, baseType: !2744, size: 192, offset: 32768)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2745, line: 18, size: 192, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2746 = !{!2747, !2748, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2744, file: !2745, line: 19, baseType: !939, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2744, file: !2745, line: 20, baseType: !35, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2744, file: !2745, line: 21, baseType: !35, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2736, file: !2737, line: 17, baseType: !35, size: 64, offset: 32960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2736, file: !2737, line: 18, baseType: !22, size: 32, offset: 33024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2710, file: !160, line: 111, baseType: !2753, size: 64, offset: 34112)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !586, line: 913, baseType: !2754)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 64, elements: !591)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2710, file: !160, line: 114, baseType: !851, size: 8, offset: 34176)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2710, file: !160, line: 117, baseType: !2736, size: 33088, offset: 34240)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2710, file: !160, line: 118, baseType: !2758, size: 64, offset: 67328)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !160, line: 79, size: 64, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2759, file: !160, line: 80, baseType: !26, size: 16)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !160, line: 81, baseType: !87, size: 8, offset: 16)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2759, file: !160, line: 82, baseType: !87, size: 8, offset: 24)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2759, file: !160, line: 83, baseType: !22, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2710, file: !160, line: 119, baseType: !39, size: 64, offset: 67392)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2710, file: !160, line: 120, baseType: !22, size: 32, offset: 67456)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2710, file: !160, line: 121, baseType: !22, size: 32, offset: 67488)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2710, file: !160, line: 122, baseType: !22, size: 32, offset: 67520)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2710, file: !160, line: 123, baseType: !390, size: 64, offset: 67584)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2710, file: !160, line: 125, baseType: !41, size: 64, offset: 67648)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2710, file: !160, line: 126, baseType: !1076, size: 64, offset: 67712)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2702, file: !160, line: 143, baseType: !2705, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2702, file: !160, line: 144, baseType: !2705, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2702, file: !160, line: 145, baseType: !2705, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2592, file: !160, line: 381, baseType: !939, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2592, file: !160, line: 382, baseType: !2778, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !230, line: 821, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !160, line: 387, baseType: !2781, size: 64, offset: 640)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !160, line: 387, size: 64, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2781, file: !160, line: 388, baseType: !20, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2781, file: !160, line: 389, baseType: !49, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2592, file: !160, line: 391, baseType: !20, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !160, line: 394, baseType: !22, size: 32, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2592, file: !160, line: 397, baseType: !22, size: 32, offset: 800)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2592, file: !160, line: 398, baseType: !2789, size: 64, offset: 832)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2592, file: !160, line: 399, baseType: !2791, size: 64, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !160, line: 399, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2592, file: !160, line: 401, baseType: !2794, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!22, !2591, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !230, line: 671, size: 8512, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !3332, !3333, !3334, !3335, !3341, !3342, !3343, !3344, !3345, !3429, !3430, !3431, !3432, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3552, !3553, !3554, !3555, !3556, !3557, !3572, !3573, !3574, !3575, !3576, !3582, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3599, !3770, !3771, !3772, !3773, !4043, !4044, !4045}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2798, file: !230, line: 678, baseType: !97, size: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2798, file: !230, line: 684, baseType: !97, size: 128, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2798, file: !230, line: 685, baseType: !97, size: 128, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2798, file: !230, line: 689, baseType: !382, size: 192, align: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2798, file: !230, line: 690, baseType: !390, size: 64, offset: 576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2798, file: !230, line: 696, baseType: !97, size: 128, offset: 640)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2798, file: !230, line: 698, baseType: !747, size: 128, offset: 768)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2798, file: !230, line: 699, baseType: !97, size: 128, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2798, file: !230, line: 700, baseType: !22, size: 32, offset: 1024)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2798, file: !230, line: 703, baseType: !22, size: 32, offset: 1056)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2798, file: !230, line: 705, baseType: !22, size: 32, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2798, file: !230, line: 707, baseType: !7, size: 32, offset: 1120)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2798, file: !230, line: 708, baseType: !2797, size: 64, offset: 1152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2798, file: !230, line: 714, baseType: !2814, size: 64, offset: 1216)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !230, line: 302, size: 2432, elements: !2816)
!2816 = !{!2817, !2818, !2819, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3242, !3243, !3244, !3245, !3246, !3250, !3251, !3255, !3259, !3260, !3264, !3268, !3269, !3270, !3274, !3278, !3282, !3283, !3284, !3288, !3289, !3293, !3297, !3298, !3318, !3322, !3323, !3324, !3328}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2815, file: !230, line: 303, baseType: !97, size: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2815, file: !230, line: 305, baseType: !1455, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2815, file: !230, line: 306, baseType: !2820, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !183, line: 705, size: 5824, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2828, !2829, !2882, !2952, !2953, !2954, !2955, !2956, !2963, !3055, !3068, !3078, !3082, !3084, !3085, !3086, !3090, !3097, !3098, !3101, !3104, !3108, !3111, !3112, !3113, !3114, !3115, !3116, !3146, !3147, !3148, !3151, !3154, !3163, !3164, !3165, !3166, !3167, !3168}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2821, file: !183, line: 706, baseType: !1468, size: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2821, file: !183, line: 707, baseType: !2820, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2821, file: !183, line: 709, baseType: !2826, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !183, line: 37, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2821, file: !183, line: 711, baseType: !16, size: 64, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2821, file: !183, line: 712, baseType: !2830, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !183, line: 89, size: 384, elements: !2833)
!2833 = !{!2834, !2835, !2836, !2842, !2847, !2851}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2832, file: !183, line: 90, baseType: !16, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2832, file: !183, line: 91, baseType: !1548, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2832, file: !183, line: 92, baseType: !2837, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!22, !2840, !1504}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2832, file: !183, line: 93, baseType: !2843, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!939, !2840, !2846, !1042, !1043}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2832, file: !183, line: 95, baseType: !2848, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2820}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2832, file: !183, line: 97, baseType: !2852, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !190, line: 286, size: 1472, elements: !2855)
!2855 = !{!2856, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2854, file: !190, line: 287, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!22, !2820}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2854, file: !190, line: 288, baseType: !2848, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2854, file: !190, line: 289, baseType: !2857, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2854, file: !190, line: 290, baseType: !2857, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2854, file: !190, line: 291, baseType: !2857, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2854, file: !190, line: 292, baseType: !2857, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2854, file: !190, line: 293, baseType: !2857, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2854, file: !190, line: 294, baseType: !2857, size: 64, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2854, file: !190, line: 295, baseType: !2857, size: 64, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2854, file: !190, line: 296, baseType: !2857, size: 64, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2854, file: !190, line: 297, baseType: !2857, size: 64, offset: 640)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2854, file: !190, line: 298, baseType: !2857, size: 64, offset: 704)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2854, file: !190, line: 299, baseType: !2857, size: 64, offset: 768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2854, file: !190, line: 300, baseType: !2857, size: 64, offset: 832)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2854, file: !190, line: 301, baseType: !2857, size: 64, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2854, file: !190, line: 302, baseType: !2857, size: 64, offset: 960)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2854, file: !190, line: 303, baseType: !2857, size: 64, offset: 1024)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2854, file: !190, line: 304, baseType: !2857, size: 64, offset: 1088)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2854, file: !190, line: 305, baseType: !2857, size: 64, offset: 1152)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2854, file: !190, line: 306, baseType: !2857, size: 64, offset: 1216)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2854, file: !190, line: 307, baseType: !2857, size: 64, offset: 1280)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2854, file: !190, line: 308, baseType: !2857, size: 64, offset: 1344)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2854, file: !190, line: 309, baseType: !2857, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2821, file: !183, line: 714, baseType: !2883, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2886, line: 80, size: 1344, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2951}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2885, file: !2886, line: 81, baseType: !16, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2885, file: !2886, line: 82, baseType: !16, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2885, file: !2886, line: 83, baseType: !1548, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2885, file: !2886, line: 84, baseType: !1548, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2885, file: !2886, line: 85, baseType: !1548, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2885, file: !2886, line: 87, baseType: !2894, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!22, !2820, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !177, line: 96, size: 1152, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2910, !2914, !2915, !2916, !2917, !2918, !2926, !2927, !2928, !2929, !2930, !2931}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2898, file: !177, line: 97, baseType: !16, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2898, file: !177, line: 98, baseType: !2883, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2898, file: !177, line: 100, baseType: !1455, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2898, file: !177, line: 101, baseType: !16, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2898, file: !177, line: 103, baseType: !851, size: 8, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2898, file: !177, line: 104, baseType: !176, size: 32, offset: 288)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2898, file: !177, line: 106, baseType: !2907, size: 64, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !177, line: 106, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2898, file: !177, line: 107, baseType: !2911, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !177, line: 107, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2898, file: !177, line: 109, baseType: !2857, size: 64, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2898, file: !177, line: 110, baseType: !2848, size: 64, offset: 512)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2898, file: !177, line: 111, baseType: !2857, size: 64, offset: 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2898, file: !177, line: 112, baseType: !2848, size: 64, offset: 640)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2898, file: !177, line: 113, baseType: !2919, size: 64, offset: 704)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!22, !2820, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !190, line: 60, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !190, line: 58, size: 32, elements: !2924)
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2923, file: !190, line: 59, baseType: !22, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2898, file: !177, line: 114, baseType: !2857, size: 64, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2898, file: !177, line: 115, baseType: !1548, size: 64, offset: 832)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2898, file: !177, line: 116, baseType: !1548, size: 64, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2898, file: !177, line: 118, baseType: !2852, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2898, file: !177, line: 119, baseType: !2848, size: 64, offset: 1024)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2898, file: !177, line: 121, baseType: !2932, size: 64, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !177, line: 121, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2885, file: !2886, line: 88, baseType: !2837, size: 64, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2885, file: !2886, line: 89, baseType: !2857, size: 64, offset: 448)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2885, file: !2886, line: 90, baseType: !2848, size: 64, offset: 512)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2885, file: !2886, line: 91, baseType: !2848, size: 64, offset: 576)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2885, file: !2886, line: 92, baseType: !2848, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2885, file: !2886, line: 94, baseType: !2857, size: 64, offset: 704)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2885, file: !2886, line: 95, baseType: !2857, size: 64, offset: 768)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2885, file: !2886, line: 97, baseType: !2919, size: 64, offset: 832)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2885, file: !2886, line: 98, baseType: !2857, size: 64, offset: 896)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2885, file: !2886, line: 100, baseType: !2857, size: 64, offset: 960)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2885, file: !2886, line: 102, baseType: !2857, size: 64, offset: 1024)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2885, file: !2886, line: 103, baseType: !2848, size: 64, offset: 1088)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2885, file: !2886, line: 105, baseType: !2852, size: 64, offset: 1152)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2885, file: !2886, line: 107, baseType: !2948, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2886, line: 107, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2885, file: !2886, line: 109, baseType: !851, size: 8, offset: 1280)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2821, file: !183, line: 715, baseType: !2897, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2821, file: !183, line: 717, baseType: !20, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2821, file: !183, line: 719, baseType: !20, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2821, file: !183, line: 721, baseType: !695, size: 256, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2821, file: !183, line: 725, baseType: !2957, size: 448, offset: 1280)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !183, line: 517, size: 448, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2957, file: !183, line: 518, baseType: !97, size: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2957, file: !183, line: 519, baseType: !97, size: 128, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2957, file: !183, line: 520, baseType: !97, size: 128, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2957, file: !183, line: 521, baseType: !182, size: 32, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2821, file: !183, line: 726, baseType: !2964, size: 2496, offset: 1728)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !190, line: 663, size: 2496, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3048, !3052}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2964, file: !190, line: 664, baseType: !2922, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2964, file: !190, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2964, file: !190, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2964, file: !190, line: 667, baseType: !851, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2964, file: !190, line: 668, baseType: !851, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2964, file: !190, line: 669, baseType: !851, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2964, file: !190, line: 670, baseType: !851, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2964, file: !190, line: 671, baseType: !851, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2964, file: !190, line: 672, baseType: !851, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2964, file: !190, line: 673, baseType: !851, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2964, file: !190, line: 674, baseType: !851, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2964, file: !190, line: 675, baseType: !327, size: 32, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2964, file: !190, line: 676, baseType: !59, size: 32, offset: 96)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2964, file: !190, line: 678, baseType: !97, size: 128, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2964, file: !190, line: 679, baseType: !1017, size: 256, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2964, file: !190, line: 680, baseType: !2982, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2984, line: 43, size: 1536, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2983, file: !2984, line: 44, baseType: !16, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2983, file: !2984, line: 45, baseType: !22, size: 32, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2983, file: !2984, line: 46, baseType: !97, size: 128, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2983, file: !2984, line: 47, baseType: !59, size: 32, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2983, file: !2984, line: 48, baseType: !2991, size: 64, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !190, line: 629, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2983, file: !2984, line: 49, baseType: !2511, size: 320, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2983, file: !2984, line: 50, baseType: !39, size: 64, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2983, file: !2984, line: 51, baseType: !465, size: 64, offset: 768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2983, file: !2984, line: 52, baseType: !465, size: 64, offset: 832)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2983, file: !2984, line: 53, baseType: !465, size: 64, offset: 896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2983, file: !2984, line: 54, baseType: !465, size: 64, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2983, file: !2984, line: 55, baseType: !465, size: 64, offset: 1024)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2983, file: !2984, line: 56, baseType: !39, size: 64, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2983, file: !2984, line: 57, baseType: !39, size: 64, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2983, file: !2984, line: 58, baseType: !39, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2983, file: !2984, line: 59, baseType: !39, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2983, file: !2984, line: 60, baseType: !39, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2983, file: !2984, line: 61, baseType: !2820, size: 64, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2983, file: !2984, line: 62, baseType: !851, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2983, file: !2984, line: 63, baseType: !851, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2964, file: !190, line: 681, baseType: !851, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2964, file: !190, line: 682, baseType: !851, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2964, file: !190, line: 683, baseType: !851, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2964, file: !190, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2964, file: !190, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2964, file: !190, line: 690, baseType: !457, size: 512, offset: 640)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2964, file: !190, line: 691, baseType: !390, size: 64, offset: 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2964, file: !190, line: 692, baseType: !978, size: 256, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2964, file: !190, line: 693, baseType: !54, size: 192, offset: 1472)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2964, file: !190, line: 694, baseType: !2991, size: 64, offset: 1664)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2964, file: !190, line: 695, baseType: !49, size: 32, offset: 1728)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2964, file: !190, line: 696, baseType: !49, size: 32, offset: 1760)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2964, file: !190, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2964, file: !190, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2964, file: !190, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2964, file: !190, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2964, file: !190, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2964, file: !190, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2964, file: !190, line: 703, baseType: !851, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2964, file: !190, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2964, file: !190, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2964, file: !190, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2964, file: !190, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2964, file: !190, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2964, file: !190, line: 709, baseType: !7, size: 32, offset: 1824)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2964, file: !190, line: 710, baseType: !189, size: 32, offset: 1856)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2964, file: !190, line: 711, baseType: !197, size: 32, offset: 1888)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2964, file: !190, line: 712, baseType: !197, size: 32, offset: 1920)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2964, file: !190, line: 713, baseType: !22, size: 32, offset: 1952)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2964, file: !190, line: 714, baseType: !22, size: 32, offset: 1984)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2964, file: !190, line: 715, baseType: !390, size: 64, offset: 2048)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2964, file: !190, line: 716, baseType: !390, size: 64, offset: 2112)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2964, file: !190, line: 717, baseType: !390, size: 64, offset: 2176)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2964, file: !190, line: 718, baseType: !390, size: 64, offset: 2240)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2964, file: !190, line: 720, baseType: !3043, size: 64, offset: 2304)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !190, line: 632, size: 64, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3044, file: !190, line: 633, baseType: !59, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3044, file: !190, line: 634, baseType: !7, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2964, file: !190, line: 721, baseType: !3049, size: 64, offset: 2368)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !2820, !863}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2964, file: !190, line: 722, baseType: !3053, size: 64, offset: 2432)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !190, line: 722, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2821, file: !183, line: 727, baseType: !3056, size: 64, offset: 4224)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !190, line: 742, size: 1792, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3065, !3066, !3067}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3057, file: !190, line: 743, baseType: !2854, size: 1472)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3057, file: !190, line: 744, baseType: !2857, size: 64, offset: 1472)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3057, file: !190, line: 745, baseType: !3062, size: 64, offset: 1536)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !2820, !851}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3057, file: !190, line: 746, baseType: !2857, size: 64, offset: 1600)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3057, file: !190, line: 747, baseType: !2848, size: 64, offset: 1664)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3057, file: !190, line: 748, baseType: !2848, size: 64, offset: 1728)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2821, file: !183, line: 736, baseType: !3069, size: 128, offset: 4288)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !183, line: 529, size: 128, elements: !3070)
!3070 = !{!3071, !3075}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3069, file: !183, line: 531, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3074, line: 13, flags: DIFlagFwdDecl)
!3074 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3069, file: !183, line: 532, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !183, line: 49, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2821, file: !183, line: 738, baseType: !3079, size: 64, offset: 4416)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3081)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !183, line: 738, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2821, file: !183, line: 740, baseType: !3083, size: 64, offset: 4480)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2821, file: !183, line: 741, baseType: !390, size: 64, offset: 4544)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2821, file: !183, line: 746, baseType: !390, size: 64, offset: 4608)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2821, file: !183, line: 747, baseType: !3087, size: 64, offset: 4672)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !183, line: 747, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2821, file: !183, line: 749, baseType: !3091, size: 64, offset: 4736)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !183, line: 428, size: 128, elements: !3093)
!3093 = !{!3094, !3095, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3092, file: !183, line: 433, baseType: !7, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3092, file: !183, line: 434, baseType: !7, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3092, file: !183, line: 435, baseType: !39, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2821, file: !183, line: 751, baseType: !97, size: 128, offset: 4800)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2821, file: !183, line: 762, baseType: !3099, size: 64, offset: 4928)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !183, line: 762, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2821, file: !183, line: 770, baseType: !3102, offset: 4992)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3103, line: 5, elements: !660)
!3103 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2821, file: !183, line: 772, baseType: !3105, size: 64, offset: 4992)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3107, line: 18, flags: DIFlagFwdDecl)
!3107 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2821, file: !183, line: 773, baseType: !3109, size: 64, offset: 5056)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2886, line: 22, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2821, file: !183, line: 776, baseType: !22, size: 32, offset: 5120)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2821, file: !183, line: 778, baseType: !1295, size: 32, offset: 5152)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2821, file: !183, line: 779, baseType: !327, size: 32, offset: 5184)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2821, file: !183, line: 781, baseType: !59, size: 32, offset: 5216)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2821, file: !183, line: 782, baseType: !97, size: 128, offset: 5248)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2821, file: !183, line: 784, baseType: !3117, size: 64, offset: 5376)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3120, line: 52, size: 768, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3130, !3134, !3135, !3136, !3137, !3141, !3145}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3119, file: !3120, line: 53, baseType: !16, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3119, file: !3120, line: 55, baseType: !1548, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3119, file: !3120, line: 56, baseType: !1548, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3119, file: !3120, line: 58, baseType: !2837, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3119, file: !3120, line: 59, baseType: !3127, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!939, !2840, !2846}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3119, file: !3120, line: 61, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3117}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3119, file: !3120, line: 62, baseType: !2848, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3119, file: !3120, line: 64, baseType: !2857, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3119, file: !3120, line: 66, baseType: !2081, size: 64, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3119, file: !3120, line: 67, baseType: !3138, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!2098, !2840}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3119, file: !3120, line: 69, baseType: !3142, size: 64, offset: 640)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !2840, !1042, !1043}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3119, file: !3120, line: 71, baseType: !2852, size: 64, offset: 704)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2821, file: !183, line: 785, baseType: !1548, size: 64, offset: 5440)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2821, file: !183, line: 787, baseType: !2848, size: 64, offset: 5504)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2821, file: !183, line: 788, baseType: !3149, size: 64, offset: 5568)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !183, line: 46, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2821, file: !183, line: 789, baseType: !3152, size: 64, offset: 5632)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !183, line: 48, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2821, file: !183, line: 791, baseType: !3155, size: 64, offset: 5696)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !183, line: 597, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3156, file: !183, line: 598, baseType: !204, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3156, file: !183, line: 599, baseType: !213, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3156, file: !183, line: 600, baseType: !218, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3156, file: !183, line: 601, baseType: !851, size: 8, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3156, file: !183, line: 602, baseType: !851, size: 8, offset: 104)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2821, file: !183, line: 793, baseType: !223, size: 32, offset: 5760)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2821, file: !183, line: 795, baseType: !851, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2821, file: !183, line: 796, baseType: !851, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2821, file: !183, line: 797, baseType: !851, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2821, file: !183, line: 798, baseType: !851, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2821, file: !183, line: 799, baseType: !851, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2815, file: !230, line: 307, baseType: !2820, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2815, file: !230, line: 308, baseType: !1548, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2815, file: !230, line: 309, baseType: !1548, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2815, file: !230, line: 310, baseType: !16, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2815, file: !230, line: 311, baseType: !22, size: 32, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2815, file: !230, line: 316, baseType: !22, size: 32, offset: 544)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2815, file: !230, line: 318, baseType: !2410, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2815, file: !230, line: 319, baseType: !3177, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !230, line: 977, size: 1856, elements: !3179)
!3179 = !{!3180, !3232, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3178, file: !230, line: 978, baseType: !3181, size: 896)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !230, line: 873, size: 896, elements: !3182)
!3182 = !{!3183, !3184, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3181, file: !230, line: 874, baseType: !2814, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3181, file: !230, line: 875, baseType: !3185, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !230, line: 912, size: 1792, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3186, file: !230, line: 917, baseType: !482, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3186, file: !230, line: 923, baseType: !695, size: 256, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3186, file: !230, line: 925, baseType: !97, size: 128, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3186, file: !230, line: 926, baseType: !3192, size: 128, offset: 448)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !230, line: 901, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3192, file: !230, line: 902, baseType: !525, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3192, file: !230, line: 903, baseType: !390, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3186, file: !230, line: 927, baseType: !3192, size: 128, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3186, file: !230, line: 928, baseType: !97, size: 128, offset: 704)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3186, file: !230, line: 930, baseType: !22, size: 32, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3186, file: !230, line: 931, baseType: !22, size: 32, offset: 864)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3186, file: !230, line: 932, baseType: !22, size: 32, offset: 896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3186, file: !230, line: 934, baseType: !22, size: 32, offset: 928)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3186, file: !230, line: 935, baseType: !22, size: 32, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3186, file: !230, line: 936, baseType: !22, size: 32, offset: 992)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3186, file: !230, line: 937, baseType: !22, size: 32, offset: 1024)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3186, file: !230, line: 939, baseType: !339, size: 32, offset: 1056)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3186, file: !230, line: 940, baseType: !331, size: 64, offset: 1088)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3186, file: !230, line: 945, baseType: !390, size: 64, offset: 1152)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3186, file: !230, line: 946, baseType: !390, size: 64, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3186, file: !230, line: 947, baseType: !390, size: 64, offset: 1280)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3186, file: !230, line: 953, baseType: !3185, size: 64, offset: 1344)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3186, file: !230, line: 954, baseType: !390, size: 64, offset: 1408)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3186, file: !230, line: 955, baseType: !390, size: 64, offset: 1472)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3186, file: !230, line: 956, baseType: !22, size: 32, offset: 1536)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3186, file: !230, line: 958, baseType: !22, size: 32, offset: 1568)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3186, file: !230, line: 960, baseType: !675, size: 128, align: 64, offset: 1600)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3186, file: !230, line: 968, baseType: !3217, size: 64, offset: 1728)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3218, line: 12, baseType: !3219)
!3218 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3218, line: 10, size: 64, elements: !3220)
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3219, file: !3218, line: 11, baseType: !688, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3181, file: !230, line: 877, baseType: !97, size: 128, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3181, file: !230, line: 879, baseType: !97, size: 128, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3181, file: !230, line: 880, baseType: !97, size: 128, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3181, file: !230, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3181, file: !230, line: 885, baseType: !7, size: 32, offset: 544)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3181, file: !230, line: 886, baseType: !7, size: 32, offset: 576)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3181, file: !230, line: 888, baseType: !49, size: 32, offset: 608)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3181, file: !230, line: 889, baseType: !675, size: 128, align: 64, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3181, file: !230, line: 891, baseType: !20, size: 64, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3181, file: !230, line: 898, baseType: !22, size: 32, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3178, file: !230, line: 979, baseType: !3233, size: 64, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3178, file: !230, line: 981, baseType: !97, size: 128, offset: 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3178, file: !230, line: 982, baseType: !22, size: 32, offset: 1088)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3178, file: !230, line: 984, baseType: !22, size: 32, offset: 1120)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3178, file: !230, line: 985, baseType: !22, size: 32, offset: 1152)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3178, file: !230, line: 987, baseType: !482, size: 32, offset: 1184)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3178, file: !230, line: 988, baseType: !457, size: 512, offset: 1216)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3178, file: !230, line: 989, baseType: !465, size: 64, offset: 1728)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3178, file: !230, line: 990, baseType: !7, size: 32, offset: 1792)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2815, file: !230, line: 320, baseType: !49, size: 32, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2815, file: !230, line: 321, baseType: !22, size: 32, offset: 736)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2815, file: !230, line: 322, baseType: !22, size: 32, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2815, file: !230, line: 325, baseType: !7, size: 32, offset: 800)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2815, file: !230, line: 331, baseType: !3247, size: 64, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !2814}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2815, file: !230, line: 332, baseType: !3247, size: 64, offset: 896)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2815, file: !230, line: 350, baseType: !3252, size: 64, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!22, !2797}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2815, file: !230, line: 356, baseType: !3256, size: 64, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !2797, !639}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2815, file: !230, line: 357, baseType: !3256, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2815, file: !230, line: 385, baseType: !3261, size: 64, offset: 1152)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!22, !2797, !22}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2815, file: !230, line: 386, baseType: !3265, size: 64, offset: 1216)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !2797, !22}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2815, file: !230, line: 406, baseType: !3265, size: 64, offset: 1280)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2815, file: !230, line: 407, baseType: !3265, size: 64, offset: 1344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2815, file: !230, line: 415, baseType: !3271, size: 64, offset: 1408)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !2797}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2815, file: !230, line: 427, baseType: !3275, size: 64, offset: 1472)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !2814, !7}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2815, file: !230, line: 436, baseType: !3279, size: 64, offset: 1536)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!22, !2814}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2815, file: !230, line: 443, baseType: !3247, size: 64, offset: 1600)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2815, file: !230, line: 450, baseType: !3252, size: 64, offset: 1664)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2815, file: !230, line: 455, baseType: !3285, size: 64, offset: 1728)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3233, !851}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2815, file: !230, line: 461, baseType: !784, size: 64, offset: 1792)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2815, file: !230, line: 469, baseType: !3290, size: 64, offset: 1856)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !3233, !3233}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2815, file: !230, line: 476, baseType: !3294, size: 64, offset: 1920)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!20, !2797, !1970, !22, !851}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2815, file: !230, line: 483, baseType: !1252, size: 64, offset: 1984)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2815, file: !230, line: 494, baseType: !3299, size: 64, offset: 2048)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!1076, !2797, !3302, !39}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !230, line: 1014, size: 448, elements: !3304)
!3304 = !{!3305, !3306, !3309, !3310, !3311, !3312, !3317}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3303, file: !230, line: 1015, baseType: !2797, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3303, file: !230, line: 1016, baseType: !3307, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !230, line: 641, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3303, file: !230, line: 1017, baseType: !39, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3303, file: !230, line: 1018, baseType: !39, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3303, file: !230, line: 1019, baseType: !390, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !230, line: 1020, baseType: !3313, size: 64, offset: 320)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3303, file: !230, line: 1020, size: 64, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3313, file: !230, line: 1021, baseType: !20, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3313, file: !230, line: 1022, baseType: !39, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3303, file: !230, line: 1024, baseType: !22, size: 32, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2815, file: !230, line: 506, baseType: !3319, size: 64, offset: 2112)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!22, !100}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2815, file: !230, line: 520, baseType: !3271, size: 64, offset: 2176)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2815, file: !230, line: 530, baseType: !3252, size: 64, offset: 2240)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2815, file: !230, line: 537, baseType: !3325, size: 64, offset: 2304)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!851, !2814, !22}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2815, file: !230, line: 542, baseType: !3329, size: 64, offset: 2368)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!22, !2797, !390}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2798, file: !230, line: 715, baseType: !20, size: 64, offset: 1280)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2798, file: !230, line: 717, baseType: !229, size: 32, offset: 1344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2798, file: !230, line: 718, baseType: !7, size: 32, offset: 1376)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2798, file: !230, line: 719, baseType: !3336, size: 64, offset: 1408)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3337, line: 26, baseType: !3338)
!3337 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3337, line: 24, size: 64, elements: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3338, file: !3337, line: 25, baseType: !3217, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2798, file: !230, line: 720, baseType: !690, size: 64, offset: 1472)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2798, file: !230, line: 728, baseType: !390, size: 64, offset: 1536)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2798, file: !230, line: 729, baseType: !390, size: 64, offset: 1600)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2798, file: !230, line: 730, baseType: !390, size: 64, offset: 1664)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2798, file: !230, line: 732, baseType: !3346, size: 1088, offset: 1728)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3347, line: 385, size: 1088, elements: !3348)
!3347 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3348 = !{!3349, !3350, !3351, !3352, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3402, !3403, !3410, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3346, file: !3347, line: 390, baseType: !328, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3346, file: !3347, line: 395, baseType: !328, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3346, file: !3347, line: 400, baseType: !391, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3347, line: 402, baseType: !3353, size: 64, offset: 128)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 402, size: 64, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3353, file: !3347, line: 403, baseType: !391, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3353, file: !3347, line: 404, baseType: !391, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3346, file: !3347, line: 407, baseType: !391, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3346, file: !3347, line: 408, baseType: !391, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3346, file: !3347, line: 410, baseType: !391, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3346, file: !3347, line: 411, baseType: !391, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3346, file: !3347, line: 412, baseType: !391, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3346, file: !3347, line: 413, baseType: !391, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3346, file: !3347, line: 414, baseType: !391, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3346, file: !3347, line: 415, baseType: !391, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3346, file: !3347, line: 416, baseType: !391, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3346, file: !3347, line: 417, baseType: !391, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3346, file: !3347, line: 418, baseType: !391, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3346, file: !3347, line: 419, baseType: !391, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3346, file: !3347, line: 420, baseType: !391, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3346, file: !3347, line: 421, baseType: !391, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3346, file: !3347, line: 422, baseType: !391, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3346, file: !3347, line: 423, baseType: !391, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3346, file: !3347, line: 424, baseType: !391, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3346, file: !3347, line: 435, baseType: !391, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3346, file: !3347, line: 436, baseType: !391, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3346, file: !3347, line: 437, baseType: !391, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3346, file: !3347, line: 439, baseType: !391, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3346, file: !3347, line: 440, baseType: !391, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3346, file: !3347, line: 442, baseType: !391, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3346, file: !3347, line: 443, baseType: !391, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3346, file: !3347, line: 444, baseType: !391, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3346, file: !3347, line: 445, baseType: !391, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3346, file: !3347, line: 446, baseType: !391, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3346, file: !3347, line: 447, baseType: !391, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3346, file: !3347, line: 448, baseType: !391, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3346, file: !3347, line: 449, baseType: !391, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3346, file: !3347, line: 450, baseType: !391, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3346, file: !3347, line: 451, baseType: !391, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3346, file: !3347, line: 452, baseType: !391, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3346, file: !3347, line: 453, baseType: !391, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3346, file: !3347, line: 454, baseType: !391, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3346, file: !3347, line: 455, baseType: !391, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3346, file: !3347, line: 456, baseType: !391, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3346, file: !3347, line: 457, baseType: !391, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3346, file: !3347, line: 458, baseType: !391, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3346, file: !3347, line: 459, baseType: !391, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3347, line: 461, baseType: !3398, size: 32, offset: 384)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 461, size: 32, elements: !3399)
!3399 = !{!3400, !3401}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3398, file: !3347, line: 462, baseType: !328, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3398, file: !3347, line: 463, baseType: !328, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3346, file: !3347, line: 466, baseType: !328, size: 32, offset: 416)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3347, line: 467, baseType: !3404, size: 64, offset: 448)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 467, size: 64, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3404, file: !3347, line: 468, baseType: !391, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3404, file: !3347, line: 469, baseType: !391, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3404, file: !3347, line: 470, baseType: !391, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3404, file: !3347, line: 471, baseType: !391, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3347, line: 473, baseType: !3411, size: 64, offset: 512)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 473, size: 64, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3411, file: !3347, line: 474, baseType: !391, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3411, file: !3347, line: 475, baseType: !391, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3411, file: !3347, line: 476, baseType: !391, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3411, file: !3347, line: 477, baseType: !391, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3346, file: !3347, line: 479, baseType: !391, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3346, file: !3347, line: 485, baseType: !391, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3346, file: !3347, line: 490, baseType: !328, size: 32, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3346, file: !3347, line: 492, baseType: !864, size: 32, offset: 736)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3346, file: !3347, line: 501, baseType: !391, size: 64, offset: 768)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3346, file: !3347, line: 506, baseType: !328, size: 32, offset: 832)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3346, file: !3347, line: 507, baseType: !94, size: 16, offset: 864)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3346, file: !3347, line: 508, baseType: !94, size: 16, offset: 880)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3346, file: !3347, line: 509, baseType: !328, size: 32, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3346, file: !3347, line: 510, baseType: !328, size: 32, offset: 928)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3346, file: !3347, line: 518, baseType: !391, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3346, file: !3347, line: 520, baseType: !391, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2798, file: !230, line: 733, baseType: !93, size: 16, offset: 2816)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2798, file: !230, line: 734, baseType: !93, size: 16, offset: 2832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2798, file: !230, line: 735, baseType: !93, size: 16, offset: 2848)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2798, file: !230, line: 736, baseType: !3433, size: 1536, offset: 2880)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !230, line: 155, size: 1536, elements: !3434)
!3434 = !{!3435, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3519, !3520, !3521, !3522}
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !230, line: 157, baseType: !3436, size: 768)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3433, file: !230, line: 157, size: 768, elements: !3437)
!3437 = !{!3438, !3457, !3461, !3465, !3470, !3492}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 158, baseType: !3439, size: 768)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 158, size: 768, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3456}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3439, file: !230, line: 159, baseType: !390, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3439, file: !230, line: 160, baseType: !390, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3439, file: !230, line: 161, baseType: !39, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3439, file: !230, line: 162, baseType: !39, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3439, file: !230, line: 163, baseType: !22, size: 32, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3439, file: !230, line: 164, baseType: !22, size: 32, offset: 288)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3439, file: !230, line: 165, baseType: !22, size: 32, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3439, file: !230, line: 166, baseType: !22, size: 32, offset: 352)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3439, file: !230, line: 168, baseType: !3450, size: 192, offset: 384)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !230, line: 134, size: 192, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3450, file: !230, line: 135, baseType: !390, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3450, file: !230, line: 136, baseType: !7, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3450, file: !230, line: 137, baseType: !22, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3450, file: !230, line: 138, baseType: !22, size: 32, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3439, file: !230, line: 169, baseType: !3450, size: 192, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 171, baseType: !3458, size: 512)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 171, size: 512, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3458, file: !230, line: 172, baseType: !457, size: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 174, baseType: !3462, size: 128)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 174, size: 128, elements: !3463)
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3462, file: !230, line: 176, baseType: !97, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 178, baseType: !3466, size: 128)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 178, size: 128, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3466, file: !230, line: 179, baseType: !390, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3466, file: !230, line: 180, baseType: !390, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 183, baseType: !3471, size: 320)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 183, size: 320, elements: !3472)
!3472 = !{!3473, !3481}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3471, file: !230, line: 189, baseType: !3474, size: 192)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3475, line: 14, size: 192, elements: !3476)
!3475 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3476 = !{!3477, !3478, !3479, !3480}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3474, file: !3475, line: 15, baseType: !39, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3474, file: !3475, line: 16, baseType: !39, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3474, file: !3475, line: 17, baseType: !83, size: 8, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3474, file: !3475, line: 18, baseType: !83, size: 8, offset: 136)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3471, file: !230, line: 190, baseType: !3482, size: 128, offset: 192)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3483, line: 21, size: 128, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3484 = !{!3485, !3490}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3482, file: !3483, line: 22, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3483, line: 17, size: 64, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3486, file: !3483, line: 18, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3482, file: !3483, line: 23, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !230, line: 193, baseType: !3493, size: 192)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !230, line: 193, size: 192, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3493, file: !230, line: 194, baseType: !83, size: 8)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3493, file: !230, line: 195, baseType: !83, size: 8, offset: 8)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3493, file: !230, line: 196, baseType: !93, size: 16, offset: 16)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3493, file: !230, line: 197, baseType: !390, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3493, file: !230, line: 198, baseType: !390, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3433, file: !230, line: 205, baseType: !331, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3433, file: !230, line: 211, baseType: !20, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3433, file: !230, line: 214, baseType: !39, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3433, file: !230, line: 223, baseType: !22, size: 32, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3433, file: !230, line: 229, baseType: !3336, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3433, file: !230, line: 234, baseType: !390, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !230, line: 236, baseType: !3507, size: 128, offset: 1152)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3433, file: !230, line: 236, size: 128, elements: !3508)
!3508 = !{!3509, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !230, line: 237, baseType: !3510, size: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !230, line: 237, size: 128, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3510, file: !230, line: 241, baseType: !390, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3510, file: !230, line: 249, baseType: !3336, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !230, line: 251, baseType: !3515, size: 128)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !230, line: 251, size: 128, elements: !3516)
!3516 = !{!3517, !3518}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3515, file: !230, line: 252, baseType: !390, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3515, file: !230, line: 253, baseType: !390, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3433, file: !230, line: 261, baseType: !390, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3433, file: !230, line: 262, baseType: !390, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3433, file: !230, line: 268, baseType: !390, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3433, file: !230, line: 269, baseType: !390, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2798, file: !230, line: 738, baseType: !3185, size: 64, offset: 4416)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2798, file: !230, line: 744, baseType: !3233, size: 64, offset: 4480)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2798, file: !230, line: 745, baseType: !688, size: 64, offset: 4544)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2798, file: !230, line: 751, baseType: !690, size: 64, offset: 4608)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2798, file: !230, line: 752, baseType: !690, size: 64, offset: 4672)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2798, file: !230, line: 757, baseType: !695, size: 256, offset: 4736)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2798, file: !230, line: 758, baseType: !97, size: 128, offset: 4992)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2798, file: !230, line: 759, baseType: !2797, size: 64, offset: 5120)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2798, file: !230, line: 761, baseType: !22, size: 32, offset: 5184)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2798, file: !230, line: 762, baseType: !22, size: 32, offset: 5216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2798, file: !230, line: 764, baseType: !97, size: 128, offset: 5248)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2798, file: !230, line: 765, baseType: !331, size: 64, offset: 5376)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2798, file: !230, line: 768, baseType: !695, size: 256, offset: 5440)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2798, file: !230, line: 769, baseType: !49, size: 32, offset: 5696)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2798, file: !230, line: 771, baseType: !3307, size: 64, offset: 5760)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2798, file: !230, line: 772, baseType: !97, size: 128, offset: 5824)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2798, file: !230, line: 773, baseType: !39, size: 64, offset: 5952)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2798, file: !230, line: 774, baseType: !22, size: 32, offset: 6016)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2798, file: !230, line: 777, baseType: !54, size: 192, offset: 6080)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2798, file: !230, line: 778, baseType: !3543, size: 64, offset: 6272)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !239, line: 1083, size: 384, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3544, file: !239, line: 1084, baseType: !712, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3544, file: !239, line: 1085, baseType: !22, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3544, file: !239, line: 1086, baseType: !22, size: 32, offset: 96)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3544, file: !239, line: 1087, baseType: !3543, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3544, file: !239, line: 1088, baseType: !667, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3544, file: !239, line: 1089, baseType: !675, size: 128, align: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2798, file: !230, line: 781, baseType: !7, size: 32, offset: 6336)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2798, file: !230, line: 782, baseType: !7, size: 32, offset: 6368)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2798, file: !230, line: 783, baseType: !7, size: 32, offset: 6400)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2798, file: !230, line: 784, baseType: !7, size: 32, offset: 6432)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2798, file: !230, line: 785, baseType: !39, size: 64, offset: 6464)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2798, file: !230, line: 786, baseType: !3558, size: 256, offset: 6528)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3559, line: 17, size: 256, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3560 = !{!3561, !3562, !3567}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3558, file: !3559, line: 18, baseType: !347, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3558, file: !3559, line: 19, baseType: !3563, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3558, file: !3559, line: 20, baseType: !3568, size: 64, offset: 192)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3569, line: 16, size: 64, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3568, file: !3569, line: 17, baseType: !331, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2798, file: !230, line: 787, baseType: !675, size: 128, align: 64, offset: 6784)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2798, file: !230, line: 788, baseType: !7, size: 32, offset: 6912)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2798, file: !230, line: 789, baseType: !3568, size: 64, offset: 6976)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2798, file: !230, line: 791, baseType: !49, size: 32, offset: 7040)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2798, file: !230, line: 794, baseType: !3577, size: 192, offset: 7104)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !230, line: 579, size: 192, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3577, file: !230, line: 580, baseType: !97, size: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3577, file: !230, line: 581, baseType: !482, size: 32, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3577, file: !230, line: 582, baseType: !7, size: 32, offset: 160)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2798, file: !230, line: 796, baseType: !3583, size: 64, offset: 7296)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !230, line: 585, size: 128, elements: !3585)
!3585 = !{!3586, !3587}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3584, file: !230, line: 586, baseType: !39, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3584, file: !230, line: 587, baseType: !39, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2798, file: !230, line: 797, baseType: !39, size: 64, offset: 7360)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2798, file: !230, line: 800, baseType: !2797, size: 64, offset: 7424)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2798, file: !230, line: 802, baseType: !3271, size: 64, offset: 7488)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2798, file: !230, line: 803, baseType: !675, size: 128, align: 64, offset: 7552)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2798, file: !230, line: 805, baseType: !763, size: 64, offset: 7680)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2798, file: !230, line: 806, baseType: !390, size: 64, offset: 7744)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2798, file: !230, line: 808, baseType: !690, size: 64, offset: 7808)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2798, file: !230, line: 810, baseType: !3596, size: 64, offset: 7872)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!390}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2798, file: !230, line: 811, baseType: !3600, size: 64, offset: 7936)
!3600 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !230, line: 605, baseType: !3601)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !2797, !3604, !3709}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !230, line: 1148, size: 2048, align: 512, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3616, !3617, !3618, !3623, !3624, !3631, !3652, !3674, !3684, !3702, !3703, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3605, file: !230, line: 1153, baseType: !390, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3605, file: !230, line: 1154, baseType: !390, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3605, file: !230, line: 1155, baseType: !390, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3605, file: !230, line: 1161, baseType: !390, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3605, file: !230, line: 1165, baseType: !3612, size: 64, offset: 256)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3605, file: !230, line: 1162, size: 64, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3612, file: !230, line: 1163, baseType: !327, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3612, file: !230, line: 1164, baseType: !327, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3605, file: !230, line: 1166, baseType: !390, size: 64, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3605, file: !230, line: 1167, baseType: !390, size: 64, offset: 384)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3605, file: !230, line: 1171, baseType: !3619, size: 64, offset: 448)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3605, file: !230, line: 1168, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3619, file: !230, line: 1169, baseType: !327, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3619, file: !230, line: 1170, baseType: !327, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3605, file: !230, line: 1177, baseType: !390, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3605, file: !230, line: 1178, baseType: !3625, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !230, line: 67, size: 64, elements: !3627)
!3627 = !{!3628, !3629}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3626, file: !230, line: 68, baseType: !391, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3626, file: !230, line: 69, baseType: !3630, offset: 64)
!3630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !1083)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3605, file: !230, line: 1179, baseType: !3632, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !230, line: 93, size: 256, elements: !3634)
!3634 = !{!3635, !3651}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3633, file: !230, line: 94, baseType: !3636, size: 224)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !230, line: 83, size: 224, elements: !3637)
!3637 = !{!3638, !3644, !3649, !3650}
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !230, line: 84, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !230, line: 84, size: 64, elements: !3640)
!3640 = !{!3641, !3643}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3639, file: !230, line: 85, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3639, file: !230, line: 86, baseType: !39, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3636, file: !230, line: 88, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !230, line: 80, baseType: !3646)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!39, !20, !2098, !39, !39}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3636, file: !230, line: 89, baseType: !20, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3636, file: !230, line: 90, baseType: !327, size: 32, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3633, file: !230, line: 95, baseType: !327, size: 32, offset: 224)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3605, file: !230, line: 1180, baseType: !3653, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !230, line: 123, size: 128, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3654, file: !230, line: 124, baseType: !391, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3654, file: !230, line: 125, baseType: !391, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3654, file: !230, line: 126, baseType: !3659, offset: 128)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3660, elements: !1083)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3347, line: 1415, size: 192, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3660, file: !3347, line: 1416, baseType: !391, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3660, file: !3347, line: 1417, baseType: !391, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3660, file: !3347, line: 1418, baseType: !391, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3660, file: !3347, line: 1419, baseType: !391, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3660, file: !3347, line: 1420, baseType: !391, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3660, file: !3347, line: 1421, baseType: !391, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3660, file: !3347, line: 1422, baseType: !391, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3660, file: !3347, line: 1423, baseType: !391, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3660, file: !3347, line: 1424, baseType: !391, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3660, file: !3347, line: 1425, baseType: !391, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3660, file: !3347, line: 1426, baseType: !391, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3660, file: !3347, line: 1427, baseType: !391, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3605, file: !230, line: 1181, baseType: !3675, size: 64, offset: 768)
!3675 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3347, line: 1430, size: 64, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3675, file: !3347, line: 1431, baseType: !391, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3675, file: !3347, line: 1433, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3675, file: !3347, line: 1433, size: 64, elements: !3680)
!3680 = !{!3681, !3682, !3683}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3679, file: !3347, line: 1434, baseType: !328, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3679, file: !3347, line: 1435, baseType: !94, size: 16, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3679, file: !3347, line: 1436, baseType: !94, size: 16, offset: 48)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3605, file: !230, line: 1182, baseType: !3685, size: 64, offset: 832)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3347, line: 1267, size: 64, elements: !3686)
!3686 = !{!3687, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3685, file: !3347, line: 1268, baseType: !391, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !3347, line: 1269, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3347, line: 1269, size: 64, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3689, file: !3347, line: 1270, baseType: !391, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3689, file: !3347, line: 1271, baseType: !391, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3689, file: !3347, line: 1272, baseType: !391, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3689, file: !3347, line: 1273, baseType: !391, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3689, file: !3347, line: 1274, baseType: !391, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3689, file: !3347, line: 1275, baseType: !391, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3689, file: !3347, line: 1276, baseType: !391, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3689, file: !3347, line: 1277, baseType: !391, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3689, file: !3347, line: 1278, baseType: !391, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3689, file: !3347, line: 1279, baseType: !391, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3689, file: !3347, line: 1280, baseType: !391, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3605, file: !230, line: 1183, baseType: !390, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3605, file: !230, line: 1185, baseType: !3704, size: 128, offset: 960)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3705, line: 7, size: 128, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3704, file: !3705, line: 8, baseType: !391, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3704, file: !3705, line: 9, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3711, line: 103, size: 1344, elements: !3712)
!3711 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3741, !3742, !3743}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3710, file: !3711, line: 109, baseType: !39, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3710, file: !3711, line: 110, baseType: !39, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3710, file: !3711, line: 111, baseType: !39, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3710, file: !3711, line: 112, baseType: !39, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3710, file: !3711, line: 113, baseType: !39, size: 64, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3710, file: !3711, line: 114, baseType: !39, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3710, file: !3711, line: 117, baseType: !39, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3710, file: !3711, line: 118, baseType: !39, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3710, file: !3711, line: 119, baseType: !39, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3710, file: !3711, line: 120, baseType: !39, size: 64, offset: 576)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3710, file: !3711, line: 121, baseType: !39, size: 64, offset: 640)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3710, file: !3711, line: 122, baseType: !39, size: 64, offset: 704)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3710, file: !3711, line: 123, baseType: !39, size: 64, offset: 768)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3710, file: !3711, line: 124, baseType: !39, size: 64, offset: 832)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3710, file: !3711, line: 125, baseType: !39, size: 64, offset: 896)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3710, file: !3711, line: 139, baseType: !39, size: 64, offset: 960)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3710, file: !3711, line: 142, baseType: !39, size: 64, offset: 1024)
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !3710, file: !3711, line: 144, baseType: !3731, size: 64, offset: 1088)
!3731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3710, file: !3711, line: 144, size: 64, elements: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3731, file: !3711, line: 146, baseType: !93, size: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3731, file: !3711, line: 148, baseType: !390, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3731, file: !3711, line: 150, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3711, line: 59, size: 64, elements: !3737)
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3736, file: !3711, line: 61, baseType: !390, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3736, file: !3711, line: 63, baseType: !390, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3736, file: !3711, line: 65, baseType: !390, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3710, file: !3711, line: 153, baseType: !39, size: 64, offset: 1152)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3710, file: !3711, line: 154, baseType: !39, size: 64, offset: 1216)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !3710, file: !3711, line: 156, baseType: !3744, size: 64, offset: 1280)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3710, file: !3711, line: 156, size: 64, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3744, file: !3711, line: 158, baseType: !93, size: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3744, file: !3711, line: 160, baseType: !390, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3744, file: !3711, line: 162, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3711, line: 69, size: 64, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3749, file: !3711, line: 71, baseType: !390, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3749, file: !3711, line: 73, baseType: !390, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3749, file: !3711, line: 75, baseType: !390, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3749, file: !3711, line: 77, baseType: !390, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3749, file: !3711, line: 80, baseType: !390, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3749, file: !3711, line: 83, baseType: !390, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3749, file: !3711, line: 86, baseType: !390, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3749, file: !3711, line: 88, baseType: !390, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3749, file: !3711, line: 93, baseType: !390, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3749, file: !3711, line: 100, baseType: !390, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3605, file: !230, line: 1186, baseType: !3704, size: 128, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3605, file: !230, line: 1187, baseType: !390, size: 64, offset: 1216)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3605, file: !230, line: 1189, baseType: !390, size: 64, offset: 1280)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3605, file: !230, line: 1190, baseType: !390, size: 64, offset: 1344)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3605, file: !230, line: 1191, baseType: !390, size: 64, offset: 1408)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3605, file: !230, line: 1192, baseType: !390, size: 64, offset: 1472)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3605, file: !230, line: 1193, baseType: !390, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3605, file: !230, line: 1194, baseType: !390, size: 64, offset: 1600)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3605, file: !230, line: 1195, baseType: !390, size: 64, offset: 1664)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2798, file: !230, line: 812, baseType: !20, size: 64, offset: 8000)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2798, file: !230, line: 820, baseType: !2591, size: 64, offset: 8064)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2798, file: !230, line: 821, baseType: !2778, size: 64, offset: 8128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2798, file: !230, line: 828, baseType: !3774, size: 64, offset: 8192)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !230, line: 1046, size: 1664, elements: !3776)
!3776 = !{!3777, !4035}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3775, file: !230, line: 1047, baseType: !3778, size: 1600)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3779, line: 152, size: 1600, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3780 = !{!3781, !3891, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4034}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3778, file: !3779, line: 154, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3779, line: 389, size: 7872, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3804, !3805, !3809, !3810, !3811, !3812, !3813, !3818, !3834, !3835, !3837, !3838, !3839, !3861, !3862, !3863, !3864, !3870, !3871, !3872, !3873, !3874, !3878, !3881, !3882, !3889}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3783, file: !3779, line: 391, baseType: !3778, size: 1600)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3783, file: !3779, line: 393, baseType: !39, size: 64, offset: 1600)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3783, file: !3779, line: 401, baseType: !22, size: 32, offset: 1664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3783, file: !3779, line: 404, baseType: !22, size: 32, offset: 1696)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3783, file: !3779, line: 417, baseType: !22, size: 32, offset: 1728)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3783, file: !3779, line: 418, baseType: !22, size: 32, offset: 1760)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3783, file: !3779, line: 419, baseType: !22, size: 32, offset: 1792)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3783, file: !3779, line: 432, baseType: !22, size: 32, offset: 1824)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3783, file: !3779, line: 433, baseType: !22, size: 32, offset: 1856)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3783, file: !3779, line: 434, baseType: !22, size: 32, offset: 1888)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3783, file: !3779, line: 436, baseType: !22, size: 32, offset: 1920)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3783, file: !3779, line: 439, baseType: !7, size: 32, offset: 1952)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3783, file: !3779, line: 441, baseType: !2116, size: 64, offset: 1984)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3783, file: !3779, line: 442, baseType: !3799, size: 448, offset: 2048)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3779, line: 138, size: 448, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3799, file: !3779, line: 140, baseType: !2116, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3799, file: !3779, line: 141, baseType: !39, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3799, file: !3779, line: 142, baseType: !2511, size: 320, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3783, file: !3779, line: 443, baseType: !3799, size: 448, offset: 2496)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3783, file: !3779, line: 446, baseType: !3806, offset: 2944)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3799, elements: !3807)
!3807 = !{!3808}
!3808 = !DISubrange(count: 0)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3783, file: !3779, line: 455, baseType: !93, size: 16, offset: 2944)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3783, file: !3779, line: 456, baseType: !93, size: 16, offset: 2960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3783, file: !3779, line: 457, baseType: !93, size: 16, offset: 2976)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3783, file: !3779, line: 458, baseType: !93, size: 16, offset: 2992)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3783, file: !3779, line: 461, baseType: !3814, size: 896, offset: 3008)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 896, elements: !3816)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3816 = !{!3817}
!3817 = !DISubrange(count: 14)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3783, file: !3779, line: 463, baseType: !3819, size: 64, offset: 3904)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3779, line: 537, size: 41664, elements: !3821)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3820, file: !3779, line: 538, baseType: !2136, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3820, file: !3779, line: 541, baseType: !7, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3820, file: !3779, line: 544, baseType: !22, size: 32, offset: 96)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3820, file: !3779, line: 547, baseType: !97, size: 128, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3820, file: !3779, line: 548, baseType: !675, size: 128, align: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3820, file: !3779, line: 555, baseType: !3783, size: 7872, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3820, file: !3779, line: 558, baseType: !3782, size: 64, offset: 8256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3820, file: !3779, line: 561, baseType: !49, size: 32, offset: 8320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !3779, line: 564, baseType: !7, size: 32, offset: 8352)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3820, file: !3779, line: 567, baseType: !2740, size: 32768, offset: 8384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3820, file: !3779, line: 570, baseType: !3833, size: 512, offset: 41152)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1511)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3783, file: !3779, line: 469, baseType: !97, size: 128, offset: 3968)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3783, file: !3779, line: 478, baseType: !3836, size: 1792, offset: 4096)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !3816)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3783, file: !3779, line: 487, baseType: !3782, size: 64, offset: 5888)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3783, file: !3779, line: 488, baseType: !3782, size: 64, offset: 5952)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3783, file: !3779, line: 491, baseType: !3840, size: 64, offset: 6016)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3779, line: 327, size: 896, elements: !3842)
!3842 = !{!3843, !3846, !3856, !3857, !3858, !3859, !3860}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3841, file: !3779, line: 332, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3845, line: 64, elements: !660)
!3845 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3841, file: !3779, line: 333, baseType: !3847, size: 192)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3779, line: 299, size: 192, elements: !3848)
!3848 = !{!3849}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3847, file: !3779, line: 300, baseType: !3850, size: 192)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3851, line: 17, size: 192, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3852 = !{!3853, !3854, !3855}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3850, file: !3851, line: 18, baseType: !390, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3850, file: !3851, line: 19, baseType: !390, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3850, file: !3851, line: 20, baseType: !392, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3841, file: !3779, line: 339, baseType: !3847, size: 192, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3841, file: !3779, line: 347, baseType: !3847, size: 192, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3841, file: !3779, line: 353, baseType: !3847, size: 192, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3841, file: !3779, line: 366, baseType: !3782, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3841, file: !3779, line: 367, baseType: !3782, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3783, file: !3779, line: 492, baseType: !97, size: 128, offset: 6080)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3783, file: !3779, line: 495, baseType: !3847, size: 192, offset: 6208)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3783, file: !3779, line: 496, baseType: !3847, size: 192, offset: 6400)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3783, file: !3779, line: 497, baseType: !3865, size: 192, offset: 6592)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !333, line: 324, size: 192, elements: !3866)
!3866 = !{!3867, !3868, !3869}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3865, file: !333, line: 326, baseType: !390, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3865, file: !333, line: 327, baseType: !390, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3865, file: !333, line: 328, baseType: !482, size: 32, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3783, file: !3779, line: 503, baseType: !97, size: 128, offset: 6784)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3783, file: !3779, line: 504, baseType: !695, size: 256, offset: 6912)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3783, file: !3779, line: 507, baseType: !54, size: 192, offset: 7168)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3783, file: !3779, line: 510, baseType: !978, size: 256, offset: 7360)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3783, file: !3779, line: 513, baseType: !3875, size: 64, offset: 7616)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3877, line: 214, elements: !660)
!3877 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3783, file: !3779, line: 516, baseType: !3879, offset: 7680)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3880, line: 76, elements: !660)
!3880 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3783, file: !3779, line: 519, baseType: !49, size: 32, offset: 7680)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3783, file: !3779, line: 522, baseType: !3883, size: 128, offset: 7712)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3779, line: 370, size: 128, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3883, file: !3779, line: 372, baseType: !851, size: 8)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3883, file: !3779, line: 375, baseType: !22, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3883, file: !3779, line: 380, baseType: !22, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3883, file: !3779, line: 386, baseType: !22, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3783, file: !3779, line: 529, baseType: !3890, offset: 7872)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3782, elements: !1083)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3778, file: !3779, line: 157, baseType: !3892, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3779, line: 669, size: 1984, elements: !3894)
!3894 = !{!3895, !3899, !3903, !3907, !3908, !3909, !3910, !3914, !3918, !3919, !3925, !3929, !3930, !3931, !3960, !3964, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !4017, !4018}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3893, file: !3779, line: 670, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3815, !3815}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3893, file: !3779, line: 671, baseType: !3900, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!22, !3815}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3893, file: !3779, line: 672, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3815}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3893, file: !3779, line: 673, baseType: !3904, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3893, file: !3779, line: 674, baseType: !3904, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3893, file: !3779, line: 675, baseType: !3904, size: 64, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3893, file: !3779, line: 676, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3815, !22}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3893, file: !3779, line: 677, baseType: !3915, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!22, !2161, !3815}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3893, file: !3779, line: 679, baseType: !3915, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3893, file: !3779, line: 682, baseType: !3920, size: 64, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!22, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3779, line: 30, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3893, file: !3779, line: 683, baseType: !3926, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3923}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3893, file: !3779, line: 684, baseType: !3926, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3893, file: !3779, line: 685, baseType: !2685, size: 64, offset: 768)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3893, file: !3779, line: 686, baseType: !3932, size: 64, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!22, !331, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3779, line: 209, size: 4736, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3936, file: !3779, line: 215, baseType: !3814, size: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3936, file: !3779, line: 218, baseType: !339, size: 32, offset: 896)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3936, file: !3779, line: 226, baseType: !3935, size: 64, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3936, file: !3779, line: 229, baseType: !3782, size: 64, offset: 1024)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3936, file: !3779, line: 232, baseType: !22, size: 32, offset: 1088)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3936, file: !3779, line: 241, baseType: !97, size: 128, offset: 1152)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3936, file: !3779, line: 242, baseType: !97, size: 128, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3936, file: !3779, line: 243, baseType: !97, size: 128, offset: 1408)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3936, file: !3779, line: 246, baseType: !97, size: 128, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3936, file: !3779, line: 255, baseType: !3836, size: 1792, offset: 1664)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3936, file: !3779, line: 258, baseType: !97, size: 128, offset: 3456)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3936, file: !3779, line: 259, baseType: !97, size: 128, offset: 3584)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3936, file: !3779, line: 265, baseType: !747, size: 128, offset: 3712)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3936, file: !3779, line: 271, baseType: !97, size: 128, offset: 3840)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3936, file: !3779, line: 277, baseType: !97, size: 128, offset: 3968)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3936, file: !3779, line: 278, baseType: !97, size: 128, offset: 4096)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3936, file: !3779, line: 279, baseType: !97, size: 128, offset: 4224)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3936, file: !3779, line: 288, baseType: !3782, size: 64, offset: 4352)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3936, file: !3779, line: 289, baseType: !3782, size: 64, offset: 4416)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3936, file: !3779, line: 290, baseType: !3935, size: 64, offset: 4480)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3936, file: !3779, line: 293, baseType: !851, size: 8, offset: 4544)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3936, file: !3779, line: 296, baseType: !675, size: 128, align: 64, offset: 4608)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3893, file: !3779, line: 688, baseType: !3961, size: 64, offset: 896)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !331, !3935}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3893, file: !3779, line: 689, baseType: !3965, size: 64, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{null, !331}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3893, file: !3779, line: 690, baseType: !3965, size: 64, offset: 1024)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3893, file: !3779, line: 691, baseType: !3965, size: 64, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3893, file: !3779, line: 692, baseType: !3904, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3893, file: !3779, line: 694, baseType: !851, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3893, file: !3779, line: 707, baseType: !851, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3893, file: !3779, line: 719, baseType: !851, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3893, file: !3779, line: 722, baseType: !22, size: 32, offset: 1248)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !3779, line: 723, baseType: !16, size: 64, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3893, file: !3779, line: 726, baseType: !16, size: 64, offset: 1344)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3893, file: !3779, line: 729, baseType: !3819, size: 64, offset: 1408)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3893, file: !3779, line: 732, baseType: !768, size: 192, offset: 1472)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3893, file: !3779, line: 738, baseType: !97, size: 128, offset: 1664)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3893, file: !3779, line: 744, baseType: !3981, size: 64, offset: 1792)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3779, line: 580, size: 1728, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3993, !3994, !3995, !3999, !4003, !4004, !4005, !4006, !4007, !4011, !4015, !4016}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3982, file: !3779, line: 586, baseType: !3833, size: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3982, file: !3779, line: 587, baseType: !39, size: 64, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3982, file: !3779, line: 593, baseType: !35, size: 64, offset: 576)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3982, file: !3779, line: 596, baseType: !7, size: 32, offset: 640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3982, file: !3779, line: 604, baseType: !7, size: 32, offset: 672)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3982, file: !3779, line: 610, baseType: !3892, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3982, file: !3779, line: 611, baseType: !97, size: 128, offset: 768)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3982, file: !3779, line: 612, baseType: !3992, size: 64, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3982, file: !3779, line: 614, baseType: !2152, size: 64, offset: 960)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3982, file: !3779, line: 615, baseType: !2210, size: 64, offset: 1024)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3982, file: !3779, line: 621, baseType: !3996, size: 64, offset: 1088)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!390, !3815, !3981}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3982, file: !3779, line: 625, baseType: !4000, size: 64, offset: 1152)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!401, !3815, !3981}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3982, file: !3779, line: 628, baseType: !2191, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3982, file: !3779, line: 631, baseType: !2179, size: 64, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3982, file: !3779, line: 632, baseType: !2187, size: 64, offset: 1344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3982, file: !3779, line: 633, baseType: !2183, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3982, file: !3779, line: 640, baseType: !4008, size: 64, offset: 1472)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!22, !3815, !3981, !390}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3982, file: !3779, line: 645, baseType: !4012, size: 64, offset: 1536)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!22, !3815, !3981, !401}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3982, file: !3779, line: 654, baseType: !2218, size: 64, offset: 1600)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3982, file: !3779, line: 657, baseType: !2225, size: 64, offset: 1664)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3893, file: !3779, line: 745, baseType: !3981, size: 64, offset: 1856)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3893, file: !3779, line: 754, baseType: !7, size: 32, offset: 1920)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3778, file: !3779, line: 160, baseType: !1656, size: 128, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3778, file: !3779, line: 163, baseType: !97, size: 128, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3778, file: !3779, line: 164, baseType: !97, size: 128, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3778, file: !3779, line: 167, baseType: !97, size: 128, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3778, file: !3779, line: 173, baseType: !22, size: 32, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3778, file: !3779, line: 175, baseType: !7, size: 32, offset: 672)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3778, file: !3779, line: 183, baseType: !390, size: 64, offset: 704)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3778, file: !3779, line: 189, baseType: !49, size: 32, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3778, file: !3779, line: 192, baseType: !978, size: 256, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3778, file: !3779, line: 193, baseType: !4029, size: 448, offset: 1088)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !979, line: 120, size: 448, elements: !4030)
!4030 = !{!4031, !4032, !4033}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4029, file: !979, line: 121, baseType: !978, size: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4029, file: !979, line: 122, baseType: !675, size: 128, align: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4029, file: !979, line: 125, baseType: !2573, size: 64, offset: 384)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3778, file: !3779, line: 199, baseType: !3815, size: 64, offset: 1536)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3775, file: !230, line: 1048, baseType: !4036, size: 64, offset: 1600)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !230, line: 1039, size: 256, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4037, file: !230, line: 1040, baseType: !390, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4037, file: !230, line: 1041, baseType: !390, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4037, file: !230, line: 1042, baseType: !390, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4037, file: !230, line: 1043, baseType: !22, size: 32, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2798, file: !230, line: 832, baseType: !20, size: 64, offset: 8256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2798, file: !230, line: 834, baseType: !97, size: 128, offset: 8320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2798, file: !230, line: 842, baseType: !328, size: 32, offset: 8448)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1456, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1456, file: !116, line: 525, baseType: !4048, size: 64, offset: 8384)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4051, line: 28, size: 192, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4050, file: !4051, line: 29, baseType: !16, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4050, file: !4051, line: 30, baseType: !16, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4050, file: !4051, line: 31, baseType: !39, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1456, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1456, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1456, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1456, file: !116, line: 535, baseType: !4060, size: 64, offset: 8640)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1456, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1456, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1456, file: !116, line: 540, baseType: !2674, size: 64, offset: 8768)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1456, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1456, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1456, file: !116, line: 568, baseType: !2685, size: 64, offset: 9088)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1456, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1432, file: !239, line: 2382, baseType: !1431, size: 64, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1432, file: !239, line: 2383, baseType: !743, size: 64, offset: 512)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1432, file: !239, line: 2385, baseType: !4071, offset: 576)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2540, line: 206, elements: !660)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1432, file: !239, line: 2386, baseType: !4071, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1432, file: !239, line: 2387, baseType: !4071, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1432, file: !239, line: 2388, baseType: !4075, offset: 576)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, elements: !731)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1432, file: !239, line: 2390, baseType: !4071, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1432, file: !239, line: 2391, baseType: !4071, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1432, file: !239, line: 2392, baseType: !4071, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1432, file: !239, line: 2393, baseType: !4071, offset: 576)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1423, file: !239, line: 1197, baseType: !4081, size: 64, offset: 384)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !239, line: 2057, size: 1664, elements: !4084)
!4084 = !{!4085, !4089, !4093, !4094, !4098, !4102, !4106, !4107, !4108, !4112, !4116, !4120, !4121, !4122, !4128, !4132, !4133, !4137, !4138, !4139, !4140, !4144, !4148, !4195, !4210, !4211}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4083, file: !239, line: 2058, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!1221, !1422}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4083, file: !239, line: 2059, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !1221}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4083, file: !239, line: 2060, baseType: !4090, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4083, file: !239, line: 2062, baseType: !4095, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !1221, !22}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4083, file: !239, line: 2063, baseType: !4099, size: 64, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!22, !1221, !1879}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4083, file: !239, line: 2064, baseType: !4103, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!22, !1221}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4083, file: !239, line: 2065, baseType: !4090, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4083, file: !239, line: 2066, baseType: !1451, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4083, file: !239, line: 2067, baseType: !4109, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!22, !1422, !22}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4083, file: !239, line: 2068, baseType: !4113, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!22, !1422, !238}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4083, file: !239, line: 2069, baseType: !4117, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!22, !1422}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4083, file: !239, line: 2070, baseType: !4113, size: 64, offset: 704)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4083, file: !239, line: 2071, baseType: !4117, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4083, file: !239, line: 2072, baseType: !4123, size: 64, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!22, !1186, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !239, line: 62, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4083, file: !239, line: 2073, baseType: !4129, size: 64, offset: 896)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!22, !1422, !2410, !939}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4083, file: !239, line: 2074, baseType: !1451, size: 64, offset: 960)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4083, file: !239, line: 2076, baseType: !4134, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!22, !2161, !1186}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4083, file: !239, line: 2077, baseType: !4134, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4083, file: !239, line: 2078, baseType: !4134, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4083, file: !239, line: 2079, baseType: !4134, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4083, file: !239, line: 2081, baseType: !4141, size: 64, offset: 1280)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!1373, !1422, !22, !939, !35, !41}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4083, file: !239, line: 2082, baseType: !4145, size: 64, offset: 1344)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!1373, !1422, !22, !16, !35, !41}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4083, file: !239, line: 2083, baseType: !4149, size: 64, offset: 1408)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!4152, !1221}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !244, line: 296, size: 1664, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4180, !4181, !4182}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4154, file: !244, line: 297, baseType: !747, size: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4154, file: !244, line: 298, baseType: !97, size: 128, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4154, file: !244, line: 299, baseType: !97, size: 128, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4154, file: !244, line: 300, baseType: !97, size: 128, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4154, file: !244, line: 301, baseType: !695, size: 256, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4154, file: !244, line: 302, baseType: !59, size: 32, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4154, file: !244, line: 303, baseType: !49, size: 32, offset: 800)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4154, file: !244, line: 304, baseType: !1422, size: 64, offset: 832)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4154, file: !244, line: 305, baseType: !4165, size: 64, offset: 896)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !244, line: 68, size: 64, elements: !4166)
!4166 = !{!4167, !4179}
!4167 = !DIDerivedType(tag: DW_TAG_member, scope: !4165, file: !244, line: 69, baseType: !4168, size: 32)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4165, file: !244, line: 69, size: 32, elements: !4169)
!4169 = !{!4170, !4171, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4168, file: !244, line: 70, baseType: !824, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4168, file: !244, line: 71, baseType: !832, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4168, file: !244, line: 72, baseType: !4173, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4174, line: 24, baseType: !4175)
!4174 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4174, line: 22, size: 32, elements: !4176)
!4176 = !{!4177}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4175, file: !4174, line: 23, baseType: !4178, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4174, line: 20, baseType: !830)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4165, file: !244, line: 74, baseType: !243, size: 32, offset: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4154, file: !244, line: 306, baseType: !41, size: 64, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4154, file: !244, line: 307, baseType: !39, size: 64, offset: 1024)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4154, file: !244, line: 308, baseType: !4183, size: 576, offset: 1088)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !244, line: 205, size: 576, elements: !4184)
!4184 = !{!4185, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4183, file: !244, line: 206, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !244, line: 66, baseType: !43)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4183, file: !244, line: 207, baseType: !4186, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4183, file: !244, line: 208, baseType: !4186, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4183, file: !244, line: 209, baseType: !4186, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4183, file: !244, line: 210, baseType: !4186, size: 64, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4183, file: !244, line: 211, baseType: !4186, size: 64, offset: 320)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4183, file: !244, line: 212, baseType: !4186, size: 64, offset: 384)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4183, file: !244, line: 213, baseType: !887, size: 64, offset: 448)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4183, file: !244, line: 214, baseType: !887, size: 64, offset: 512)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4083, file: !239, line: 2085, baseType: !4196, size: 64, offset: 1472)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!1076, !1422, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4201, line: 15, size: 256, elements: !4202)
!4201 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4202 = !{!4203, !4204, !4205, !4206, !4207}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4200, file: !4201, line: 16, baseType: !319, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4200, file: !4201, line: 19, baseType: !22, size: 32, offset: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4200, file: !4201, line: 26, baseType: !39, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4200, file: !4201, line: 33, baseType: !39, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4200, file: !4201, line: 36, baseType: !4208, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4201, line: 36, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4083, file: !239, line: 2087, baseType: !4196, size: 64, offset: 1536)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4083, file: !239, line: 2089, baseType: !1451, size: 64, offset: 1600)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1423, file: !239, line: 1198, baseType: !4213, size: 64, offset: 448)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !244, line: 324, size: 704, elements: !4216)
!4216 = !{!4217, !4221, !4225, !4229, !4230, !4231, !4232, !4233, !4238, !4243, !4247}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4215, file: !244, line: 325, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!22, !4153}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4215, file: !244, line: 326, baseType: !4222, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!4153, !1422, !22}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4215, file: !244, line: 327, baseType: !4226, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !4153}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4215, file: !244, line: 328, baseType: !4218, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4215, file: !244, line: 329, baseType: !4218, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4215, file: !244, line: 330, baseType: !4218, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4215, file: !244, line: 331, baseType: !4109, size: 64, offset: 384)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4215, file: !244, line: 334, baseType: !4234, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!4237, !1221}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4215, file: !244, line: 335, baseType: !4239, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!22, !1221, !4242}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4215, file: !244, line: 337, baseType: !4244, size: 64, offset: 576)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!22, !1221, !4237}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4215, file: !244, line: 339, baseType: !4248, size: 64, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!22, !1422, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1423, file: !239, line: 1199, baseType: !4253, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !244, line: 430, size: 704, elements: !4256)
!4256 = !{!4257, !4261, !4262, !4266, !4267, !4268, !4283, !4306, !4310, !4311, !4334}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4255, file: !244, line: 431, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!22, !1422, !22, !22, !1342}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4255, file: !244, line: 432, baseType: !4109, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4255, file: !244, line: 433, baseType: !4263, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!22, !1422, !7}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4255, file: !244, line: 434, baseType: !4263, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4255, file: !244, line: 435, baseType: !4109, size: 64, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4255, file: !244, line: 436, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!22, !1422, !22, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !244, line: 417, size: 256, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4273, file: !244, line: 418, baseType: !22, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4273, file: !244, line: 419, baseType: !7, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4273, file: !244, line: 420, baseType: !7, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4273, file: !244, line: 422, baseType: !7, size: 32, offset: 96)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4273, file: !244, line: 423, baseType: !7, size: 32, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4273, file: !244, line: 424, baseType: !7, size: 32, offset: 160)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4273, file: !244, line: 425, baseType: !7, size: 32, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4273, file: !244, line: 426, baseType: !7, size: 32, offset: 224)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4255, file: !244, line: 437, baseType: !4284, size: 64, offset: 384)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!22, !1422, !4165, !4287}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !244, line: 345, size: 960, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4288, file: !244, line: 346, baseType: !22, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4288, file: !244, line: 347, baseType: !390, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4288, file: !244, line: 348, baseType: !390, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4288, file: !244, line: 349, baseType: !390, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4288, file: !244, line: 350, baseType: !390, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4288, file: !244, line: 351, baseType: !390, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4288, file: !244, line: 352, baseType: !390, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4288, file: !244, line: 353, baseType: !401, size: 64, offset: 448)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4288, file: !244, line: 355, baseType: !401, size: 64, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4288, file: !244, line: 356, baseType: !22, size: 32, offset: 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4288, file: !244, line: 357, baseType: !22, size: 32, offset: 608)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4288, file: !244, line: 358, baseType: !390, size: 64, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4288, file: !244, line: 359, baseType: !390, size: 64, offset: 704)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4288, file: !244, line: 360, baseType: !390, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4288, file: !244, line: 361, baseType: !401, size: 64, offset: 832)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4288, file: !244, line: 362, baseType: !22, size: 32, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4255, file: !244, line: 438, baseType: !4307, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!22, !1422, !4251, !4287}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4255, file: !244, line: 440, baseType: !4284, size: 64, offset: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4255, file: !244, line: 441, baseType: !4312, size: 64, offset: 576)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!22, !1422, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !244, line: 411, size: 1408, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4316, file: !244, line: 412, baseType: !7, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4316, file: !244, line: 413, baseType: !4320, size: 1344, offset: 64)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4321, size: 1344, elements: !731)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !244, line: 397, size: 448, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4333}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4321, file: !244, line: 398, baseType: !7, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4321, file: !244, line: 399, baseType: !7, size: 32, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4321, file: !244, line: 401, baseType: !7, size: 32, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4321, file: !244, line: 402, baseType: !7, size: 32, offset: 96)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4321, file: !244, line: 403, baseType: !7, size: 32, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4321, file: !244, line: 404, baseType: !7, size: 32, offset: 160)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4321, file: !244, line: 405, baseType: !7, size: 32, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4321, file: !244, line: 406, baseType: !392, size: 64, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4321, file: !244, line: 407, baseType: !4332, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !390)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4321, file: !244, line: 408, baseType: !4332, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4255, file: !244, line: 442, baseType: !4263, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1423, file: !239, line: 1200, baseType: !4336, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !239, line: 54, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1423, file: !239, line: 1201, baseType: !39, size: 64, offset: 640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1423, file: !239, line: 1202, baseType: !39, size: 64, offset: 704)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1423, file: !239, line: 1203, baseType: !39, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1423, file: !239, line: 1204, baseType: !1186, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1423, file: !239, line: 1205, baseType: !871, size: 320, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1423, file: !239, line: 1206, baseType: !22, size: 32, offset: 1216)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1423, file: !239, line: 1207, baseType: !49, size: 32, offset: 1248)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1423, file: !239, line: 1209, baseType: !20, size: 64, offset: 1280)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1423, file: !239, line: 1211, baseType: !4348, size: 64, offset: 1344)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4351 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !239, line: 1211, flags: DIFlagFwdDecl)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1423, file: !239, line: 1223, baseType: !4353, size: 64, offset: 1408)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1198, line: 34, size: 64, elements: !4354)
!4354 = !{!4355}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4353, file: !1198, line: 35, baseType: !1201, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1423, file: !239, line: 1224, baseType: !97, size: 128, offset: 1472)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1423, file: !239, line: 1225, baseType: !4358, size: 64, offset: 1600)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !239, line: 1225, flags: DIFlagFwdDecl)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1423, file: !239, line: 1226, baseType: !4361, size: 64, offset: 1664)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !239, line: 1226, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1423, file: !239, line: 1227, baseType: !4364, size: 64, offset: 1728)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !239, line: 50, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1423, file: !239, line: 1228, baseType: !4367, size: 64, offset: 1792)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !239, line: 1228, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1423, file: !239, line: 1229, baseType: !747, size: 128, offset: 1856)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1423, file: !239, line: 1230, baseType: !7, size: 32, offset: 1984)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1423, file: !239, line: 1231, baseType: !4372, size: 2496, offset: 2048)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !244, line: 521, size: 2496, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4378, !4410}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4372, file: !244, line: 522, baseType: !7, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4372, file: !244, line: 523, baseType: !871, size: 320, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4372, file: !244, line: 524, baseType: !4377, size: 192, offset: 384)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 192, elements: !731)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4372, file: !244, line: 525, baseType: !4379, size: 1728, offset: 576)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4380, size: 1728, elements: !731)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !244, line: 222, size: 576, elements: !4381)
!4381 = !{!4382, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4380, file: !244, line: 223, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !244, line: 445, size: 256, elements: !4385)
!4385 = !{!4386, !4387, !4400, !4401}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4384, file: !244, line: 446, baseType: !22, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4384, file: !244, line: 447, baseType: !4388, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4390)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !244, line: 312, size: 512, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4390, file: !244, line: 313, baseType: !4109, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4390, file: !244, line: 314, baseType: !4109, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4390, file: !244, line: 315, baseType: !4109, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4390, file: !244, line: 316, baseType: !4109, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4390, file: !244, line: 317, baseType: !4218, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4390, file: !244, line: 318, baseType: !4218, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4390, file: !244, line: 319, baseType: !4218, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4390, file: !244, line: 320, baseType: !4248, size: 64, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4384, file: !244, line: 448, baseType: !1455, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4384, file: !244, line: 449, baseType: !4383, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4380, file: !244, line: 224, baseType: !22, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4380, file: !244, line: 226, baseType: !97, size: 128, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4380, file: !244, line: 227, baseType: !39, size: 64, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4380, file: !244, line: 228, baseType: !7, size: 32, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4380, file: !244, line: 229, baseType: !7, size: 32, offset: 352)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4380, file: !244, line: 230, baseType: !4186, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4380, file: !244, line: 231, baseType: !4186, size: 64, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4380, file: !244, line: 232, baseType: !20, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4372, file: !244, line: 526, baseType: !4411, size: 192, offset: 2304)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4388, size: 192, elements: !731)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1423, file: !239, line: 1233, baseType: !4413, size: 2368, offset: 4544)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !239, line: 1184, size: 2368, elements: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4413, file: !239, line: 1185, baseType: !26, size: 16)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4413, file: !239, line: 1186, baseType: !26, size: 16, offset: 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4413, file: !239, line: 1187, baseType: !4418, size: 2304, offset: 64)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4419, size: 2304, elements: !731)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4420, line: 12, size: 768, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4421 = !{!4422, !4430, !4431, !4432, !4433}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4419, file: !4420, line: 13, baseType: !4423, size: 384)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4424, line: 17, size: 384, elements: !4425)
!4424 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4425 = !{!4426, !4427, !4428, !4429}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4423, file: !4424, line: 18, baseType: !22, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4423, file: !4424, line: 19, baseType: !22, size: 32, offset: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4423, file: !4424, line: 20, baseType: !54, size: 192, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4423, file: !4424, line: 22, baseType: !675, size: 128, align: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4419, file: !4420, line: 14, baseType: !2362, size: 64, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4419, file: !4420, line: 15, baseType: !3568, size: 64, offset: 448)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4419, file: !4420, line: 16, baseType: !54, size: 192, offset: 512)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4419, file: !4420, line: 17, baseType: !49, size: 32, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1423, file: !239, line: 1240, baseType: !20, size: 64, offset: 6912)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1423, file: !239, line: 1243, baseType: !327, size: 32, offset: 6976)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1423, file: !239, line: 1245, baseType: !887, size: 64, offset: 7040)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1423, file: !239, line: 1246, baseType: !887, size: 64, offset: 7104)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1423, file: !239, line: 1248, baseType: !328, size: 32, offset: 7168)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1423, file: !239, line: 1249, baseType: !4440, size: 64, offset: 7232)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !239, line: 634, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1423, file: !239, line: 1252, baseType: !4443, size: 256, offset: 7296)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !4444)
!4444 = !{!4445}
!4445 = !DISubrange(count: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1423, file: !239, line: 1253, baseType: !4447, size: 128, offset: 7552)
!4447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4448, line: 21, baseType: !4449)
!4448 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4448, line: 19, size: 128, elements: !4450)
!4450 = !{!4451}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4449, file: !4448, line: 20, baseType: !4452, size: 128)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !4453)
!4453 = !{!4454}
!4454 = !DISubrange(count: 16)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1423, file: !239, line: 1255, baseType: !7, size: 32, offset: 7680)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1423, file: !239, line: 1261, baseType: !695, size: 256, offset: 7744)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1423, file: !239, line: 1267, baseType: !16, size: 64, offset: 8000)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1423, file: !239, line: 1269, baseType: !4459, size: 64, offset: 8064)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4461)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1188, line: 128, size: 1024, align: 512, elements: !4462)
!4462 = !{!4463, !4467, !4468, !4475, !4481, !4485, !4489, !4493, !4494, !4498, !4502, !4507, !4511}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4461, file: !1188, line: 129, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!22, !1186, !7}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4461, file: !1188, line: 130, baseType: !4464, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4461, file: !1188, line: 131, baseType: !4469, size: 64, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!22, !4472, !4474}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4461, file: !1188, line: 132, baseType: !4476, size: 64, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!22, !4472, !7, !16, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4461, file: !1188, line: 134, baseType: !4482, size: 64, offset: 256)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!22, !4472}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4461, file: !1188, line: 135, baseType: !4486, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!22, !1186}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4461, file: !1188, line: 136, baseType: !4490, size: 64, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !1186}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4461, file: !1188, line: 137, baseType: !4490, size: 64, offset: 448)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4461, file: !1188, line: 138, baseType: !4495, size: 64, offset: 512)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !1186, !1221}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4461, file: !1188, line: 139, baseType: !4499, size: 64, offset: 576)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!939, !1186, !939, !22}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4461, file: !1188, line: 140, baseType: !4503, size: 64, offset: 640)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!1181, !4506}
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4461, file: !1188, line: 141, baseType: !4508, size: 64, offset: 704)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!22, !1342, !851}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4461, file: !1188, line: 142, baseType: !4512, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!1186, !1186, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1423, file: !239, line: 1271, baseType: !4518, size: 448, offset: 8128)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4201, line: 63, size: 448, elements: !4519)
!4519 = !{!4520, !4525, !4526, !4527, !4528, !4529, !4530}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4518, file: !4201, line: 64, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!39, !4524, !4199}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4518, file: !4201, line: 66, baseType: !4521, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4518, file: !4201, line: 69, baseType: !1076, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4518, file: !4201, line: 70, baseType: !22, size: 32, offset: 192)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4518, file: !4201, line: 71, baseType: !7, size: 32, offset: 224)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4518, file: !4201, line: 74, baseType: !97, size: 128, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4518, file: !4201, line: 85, baseType: !4531, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1423, file: !239, line: 1274, baseType: !688, size: 64, offset: 8576)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1423, file: !239, line: 1280, baseType: !688, size: 64, offset: 8640)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1423, file: !239, line: 1283, baseType: !22, size: 32, offset: 8704)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1423, file: !239, line: 1286, baseType: !2059, size: 32, offset: 8736)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1423, file: !239, line: 1289, baseType: !2573, size: 64, offset: 8768)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1423, file: !239, line: 1290, baseType: !743, size: 64, offset: 8832)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1423, file: !239, line: 1297, baseType: !793, size: 64, offset: 8896)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1423, file: !239, line: 1304, baseType: !4540, size: 64, offset: 8960)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4541, line: 49, size: 64, elements: !4542)
!4541 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4542 = !{!4543}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4540, file: !4541, line: 50, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4541, line: 41, size: 512, align: 512, elements: !4546)
!4546 = !{!4547, !4548, !4553}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4545, file: !4541, line: 43, baseType: !59, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4545, file: !4541, line: 45, baseType: !4549, size: 192, offset: 64)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4541, line: 29, size: 192, elements: !4550)
!4550 = !{!4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4549, file: !4541, line: 30, baseType: !97, size: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4549, file: !4541, line: 32, baseType: !1076, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4545, file: !4541, line: 46, baseType: !1076, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1423, file: !239, line: 1305, baseType: !4540, size: 64, offset: 9024)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1423, file: !239, line: 1306, baseType: !675, size: 128, align: 64, offset: 9088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1423, file: !239, line: 1307, baseType: !978, size: 256, offset: 9216)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1423, file: !239, line: 1309, baseType: !695, size: 256, offset: 9472)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1423, file: !239, line: 1314, baseType: !22, size: 32, offset: 9728)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1423, file: !239, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1423, file: !239, line: 1318, baseType: !97, size: 128, offset: 10304)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1423, file: !239, line: 1320, baseType: !59, size: 32, offset: 10432)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1423, file: !239, line: 1321, baseType: !97, size: 128, offset: 10496)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1222, file: !239, line: 656, baseType: !1572, size: 64, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1222, file: !239, line: 659, baseType: !20, size: 64, offset: 576)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1222, file: !239, line: 663, baseType: !39, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !239, line: 671, baseType: !4567, size: 32, offset: 704)
!4567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !239, line: 671, size: 32, elements: !4568)
!4568 = !{!4569, !4570}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4567, file: !239, line: 672, baseType: !2621, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4567, file: !239, line: 673, baseType: !7, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1222, file: !239, line: 675, baseType: !1295, size: 32, offset: 736)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1222, file: !239, line: 676, baseType: !41, size: 64, offset: 768)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1222, file: !239, line: 677, baseType: !1331, size: 128, offset: 832)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1222, file: !239, line: 678, baseType: !1331, size: 128, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1222, file: !239, line: 679, baseType: !1331, size: 128, offset: 1088)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1222, file: !239, line: 680, baseType: !59, size: 32, offset: 1216)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1222, file: !239, line: 681, baseType: !26, size: 16, offset: 1248)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1222, file: !239, line: 682, baseType: !83, size: 8, offset: 1264)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1222, file: !239, line: 683, baseType: !83, size: 8, offset: 1272)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1222, file: !239, line: 684, baseType: !4332, size: 64, offset: 1280)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1222, file: !239, line: 691, baseType: !39, size: 64, offset: 1344)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1222, file: !239, line: 692, baseType: !871, size: 320, offset: 1408)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1222, file: !239, line: 694, baseType: !39, size: 64, offset: 1728)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1222, file: !239, line: 695, baseType: !39, size: 64, offset: 1792)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1222, file: !239, line: 697, baseType: !747, size: 128, offset: 1856)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1222, file: !239, line: 698, baseType: !97, size: 128, offset: 1984)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1222, file: !239, line: 707, baseType: !97, size: 128, offset: 2112)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1222, file: !239, line: 708, baseType: !97, size: 128, offset: 2240)
!4589 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !239, line: 709, baseType: !4590, size: 128, offset: 2368)
!4590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !239, line: 709, size: 128, elements: !4591)
!4591 = !{!4592, !4593}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4590, file: !239, line: 710, baseType: !743, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4590, file: !239, line: 711, baseType: !675, size: 128, align: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1222, file: !239, line: 713, baseType: !690, size: 64, offset: 2496)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1222, file: !239, line: 714, baseType: !690, size: 64, offset: 2560)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1222, file: !239, line: 715, baseType: !49, size: 32, offset: 2624)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1222, file: !239, line: 716, baseType: !49, size: 32, offset: 2656)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1222, file: !239, line: 717, baseType: !49, size: 32, offset: 2688)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1222, file: !239, line: 719, baseType: !49, size: 32, offset: 2720)
!4600 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !239, line: 721, baseType: !4601, size: 64, offset: 2752)
!4601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !239, line: 721, size: 64, elements: !4602)
!4602 = !{!4603, !4729}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4601, file: !239, line: 722, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4606)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !239, line: 1914, size: 2112, elements: !4607)
!4607 = !{!4608, !4609, !4613, !4617, !4621, !4622, !4623, !4629, !4642, !4646, !4650, !4651, !4655, !4656, !4660, !4665, !4666, !4670, !4674, !4680, !4681, !4685, !4686, !4692, !4696, !4697, !4702, !4706, !4710, !4714, !4718, !4719, !4725}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4606, file: !239, line: 1915, baseType: !1455, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4606, file: !239, line: 1916, baseType: !4610, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!41, !667, !41, !22}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4606, file: !239, line: 1917, baseType: !4614, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!1373, !667, !939, !35, !40}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4606, file: !239, line: 1918, baseType: !4618, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!1373, !667, !16, !35, !40}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4606, file: !239, line: 1919, baseType: !1993, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4606, file: !239, line: 1920, baseType: !1993, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4606, file: !239, line: 1921, baseType: !4624, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!22, !1996, !4627, !7}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !239, line: 53, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4606, file: !239, line: 1923, baseType: !4630, size: 64, offset: 448)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!22, !667, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !239, line: 1858, size: 128, elements: !4635)
!4635 = !{!4636, !4641}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4634, file: !239, line: 1859, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !239, line: 1855, baseType: !4638)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!851, !4633, !16, !22, !41, !390, !7}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4634, file: !239, line: 1860, baseType: !41, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4606, file: !239, line: 1924, baseType: !4643, size: 64, offset: 512)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!2228, !667, !2230}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4606, file: !239, line: 1925, baseType: !4647, size: 64, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!1076, !667, !7, !39}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4606, file: !239, line: 1926, baseType: !4647, size: 64, offset: 640)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4606, file: !239, line: 1927, baseType: !4652, size: 64, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!22, !667, !1702}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4606, file: !239, line: 1928, baseType: !39, size: 64, offset: 768)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4606, file: !239, line: 1929, baseType: !4657, size: 64, offset: 832)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!22, !1221, !667}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4606, file: !239, line: 1930, baseType: !4661, size: 64, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!22, !667, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !239, line: 1061, baseType: !20)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4606, file: !239, line: 1931, baseType: !4657, size: 64, offset: 960)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4606, file: !239, line: 1932, baseType: !4667, size: 64, offset: 1024)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!22, !667, !41, !41, !22}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4606, file: !239, line: 1933, baseType: !4671, size: 64, offset: 1088)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!22, !22, !667, !22}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4606, file: !239, line: 1934, baseType: !4675, size: 64, offset: 1152)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!22, !667, !22, !4678}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !239, line: 1063, flags: DIFlagFwdDecl)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4606, file: !239, line: 1935, baseType: !664, size: 64, offset: 1216)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4606, file: !239, line: 1936, baseType: !4682, size: 64, offset: 1280)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!22, !22}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4606, file: !239, line: 1937, baseType: !4675, size: 64, offset: 1344)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4606, file: !239, line: 1938, baseType: !4687, size: 64, offset: 1408)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!1373, !4690, !667, !40, !35, !7}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !333, line: 59, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4606, file: !239, line: 1939, baseType: !4693, size: 64, offset: 1472)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!1373, !667, !40, !4690, !35, !7}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4606, file: !239, line: 1940, baseType: !2049, size: 64, offset: 1536)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4606, file: !239, line: 1941, baseType: !4698, size: 64, offset: 1600)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!22, !667, !22, !4701, !1970}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4606, file: !239, line: 1942, baseType: !4703, size: 64, offset: 1664)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!1076, !667, !22, !41, !41}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4606, file: !239, line: 1944, baseType: !4707, size: 64, offset: 1728)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{null, !2161, !667}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4606, file: !239, line: 1948, baseType: !4711, size: 64, offset: 1792)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!1373, !667, !41, !667, !41, !35, !7}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4606, file: !239, line: 1950, baseType: !4715, size: 64, offset: 1856)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!41, !667, !41, !667, !41, !41, !7}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4606, file: !239, line: 1953, baseType: !4667, size: 64, offset: 1920)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4606, file: !239, line: 1954, baseType: !4720, size: 64, offset: 1984)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!22, !4723, !7}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !239, line: 1911, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4606, file: !239, line: 1955, baseType: !4726, size: 64, offset: 2048)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!22, !4723, !4627, !7}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4601, file: !239, line: 723, baseType: !4090, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1222, file: !239, line: 725, baseType: !4731, size: 64, offset: 2816)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !239, line: 725, flags: DIFlagFwdDecl)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1222, file: !239, line: 726, baseType: !1573, size: 1536, align: 64, offset: 2880)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1222, file: !239, line: 727, baseType: !97, size: 128, offset: 4416)
!4735 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !239, line: 728, baseType: !4736, size: 64, offset: 4544)
!4736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !239, line: 728, size: 64, elements: !4737)
!4737 = !{!4738, !4739, !4742, !4743}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4736, file: !239, line: 729, baseType: !4690, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4736, file: !239, line: 730, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !239, line: 730, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4736, file: !239, line: 731, baseType: !939, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4736, file: !239, line: 732, baseType: !7, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1222, file: !239, line: 735, baseType: !328, size: 32, offset: 4608)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1222, file: !239, line: 738, baseType: !328, size: 32, offset: 4640)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1222, file: !239, line: 739, baseType: !4440, size: 64, offset: 4672)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1222, file: !239, line: 750, baseType: !20, size: 64, offset: 4736)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1187, file: !1188, line: 91, baseType: !4749, size: 256, offset: 448)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !4444)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1187, file: !1188, line: 94, baseType: !4751, size: 64, offset: 704)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4752, line: 25, size: 64, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4753 = !{!4754}
!4754 = !DIDerivedType(tag: DW_TAG_member, scope: !4751, file: !4752, line: 26, baseType: !4755, size: 64)
!4755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4751, file: !4752, line: 26, size: 64, elements: !4756)
!4756 = !{!4757, !4758}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4755, file: !4752, line: 28, baseType: !391, size: 64, align: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !4755, file: !4752, line: 30, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4755, file: !4752, line: 30, size: 64, elements: !4760)
!4760 = !{!4761, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4759, file: !4752, line: 31, baseType: !59, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4759, file: !4752, line: 32, baseType: !22, size: 32, offset: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1187, file: !1188, line: 95, baseType: !4459, size: 64, offset: 768)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1187, file: !1188, line: 96, baseType: !1422, size: 64, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1187, file: !1188, line: 97, baseType: !39, size: 64, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1187, file: !1188, line: 98, baseType: !20, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1188, line: 100, baseType: !4768, size: 128, offset: 1024)
!4768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 100, size: 128, elements: !4769)
!4769 = !{!4770, !4771}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4768, file: !1188, line: 101, baseType: !97, size: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4768, file: !1188, line: 102, baseType: !2239, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1187, file: !1188, line: 104, baseType: !97, size: 128, offset: 1152)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1187, file: !1188, line: 105, baseType: !97, size: 128, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1187, file: !1188, line: 113, baseType: !4775, size: 128, offset: 1408)
!4775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 109, size: 128, elements: !4776)
!4776 = !{!4777, !4778, !4779}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4775, file: !1188, line: 110, baseType: !747, size: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4775, file: !1188, line: 111, baseType: !1197, size: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4775, file: !1188, line: 112, baseType: !675, size: 128, align: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1182, file: !1183, line: 72, baseType: !1422, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1182, file: !1183, line: 73, baseType: !22, size: 32, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1182, file: !1183, line: 74, baseType: !1260, size: 64, offset: 192)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1177, file: !1178, line: 10, baseType: !1186, size: 64, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !668, file: !239, line: 1015, baseType: !1221, size: 64, offset: 1344)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !668, file: !239, line: 1016, baseType: !4604, size: 64, offset: 1408)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !668, file: !239, line: 1018, baseType: !390, size: 64, offset: 1472)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !668, file: !239, line: 1020, baseType: !20, size: 64, offset: 1536)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !668, file: !239, line: 1023, baseType: !20, size: 64, offset: 1600)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !668, file: !239, line: 1027, baseType: !2789, size: 64, offset: 1664)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !668, file: !239, line: 1029, baseType: !1572, size: 64, offset: 1728)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !668, file: !239, line: 1030, baseType: !2059, size: 32, offset: 1792)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !668, file: !239, line: 1031, baseType: !2059, size: 32, offset: 1824)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !643, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !643, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !643, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !643, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !643, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !643, file: !131, line: 764, baseType: !4799, size: 64, offset: 1024)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1717, line: 299, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1717, line: 299, size: 64, elements: !4802)
!4802 = !{!4803}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4801, file: !1717, line: 299, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1722, line: 18, baseType: !39)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !643, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !643, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !643, file: !131, line: 795, baseType: !4808, size: 64, offset: 1152)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !4810)
!4810 = !{!4811, !4812}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4809, file: !131, line: 727, baseType: !390, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4809, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !643, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !643, file: !131, line: 804, baseType: !688, size: 64, offset: 1280)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !643, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !643, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !643, file: !131, line: 823, baseType: !871, size: 320, offset: 1408)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !643, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !643, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !643, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !643, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !643, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !643, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !643, file: !131, line: 854, baseType: !690, size: 64, offset: 2176)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !643, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !643, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !643, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !643, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !643, file: !131, line: 865, baseType: !513, size: 32, offset: 2496)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !643, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !643, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !643, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !643, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !643, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !643, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !643, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !643, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !643, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !643, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !643, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !643, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !643, file: !131, line: 873, baseType: !4843, size: 3328, offset: 3264)
!4843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !4844)
!4844 = !{!4845}
!4845 = !DISubrange(count: 52)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !643, file: !131, line: 875, baseType: !4847, size: 1280, offset: 6592)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 1280, elements: !752)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !643, file: !131, line: 877, baseType: !4849, size: 64, offset: 7872)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !643, file: !131, line: 880, baseType: !4852, size: 1088, offset: 7936)
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4853, line: 72, baseType: !4854)
!4853 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4853, line: 23, size: 1088, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4859, !4860, !4863, !4864, !4865, !4866, !4891, !4892, !4893}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4854, file: !4853, line: 28, baseType: !390, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4854, file: !4853, line: 38, baseType: !690, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4854, file: !4853, line: 40, baseType: !39, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4854, file: !4853, line: 43, baseType: !871, size: 320, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4854, file: !4853, line: 44, baseType: !4861, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4853, line: 44, flags: DIFlagFwdDecl)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4854, file: !4853, line: 48, baseType: !39, size: 64, offset: 576)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4854, file: !4853, line: 59, baseType: !695, size: 256, offset: 640)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4854, file: !4853, line: 60, baseType: !20, size: 64, offset: 896)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4854, file: !4853, line: 61, baseType: !4867, size: 64, offset: 960)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4870, line: 13, size: 1216, elements: !4871)
!4870 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4869, file: !4870, line: 14, baseType: !20, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4869, file: !4870, line: 15, baseType: !39, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4869, file: !4870, line: 17, baseType: !39, size: 64, offset: 128)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4869, file: !4870, line: 17, baseType: !39, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4869, file: !4870, line: 18, baseType: !39, size: 64, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4869, file: !4870, line: 18, baseType: !39, size: 64, offset: 320)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4869, file: !4870, line: 19, baseType: !2098, size: 64, offset: 384)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4869, file: !4870, line: 21, baseType: !1076, size: 64, offset: 448)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4869, file: !4870, line: 23, baseType: !1076, size: 64, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4869, file: !4870, line: 24, baseType: !1076, size: 64, offset: 576)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4869, file: !4870, line: 25, baseType: !1076, size: 64, offset: 640)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4869, file: !4870, line: 26, baseType: !1076, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4869, file: !4870, line: 27, baseType: !1076, size: 64, offset: 768)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4869, file: !4870, line: 28, baseType: !1076, size: 64, offset: 832)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4869, file: !4870, line: 29, baseType: !1076, size: 64, offset: 896)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4869, file: !4870, line: 30, baseType: !1076, size: 64, offset: 960)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4869, file: !4870, line: 31, baseType: !1076, size: 64, offset: 1024)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4869, file: !4870, line: 32, baseType: !1076, size: 64, offset: 1088)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4869, file: !4870, line: 33, baseType: !1076, size: 64, offset: 1152)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4854, file: !4853, line: 63, baseType: !49, size: 32, offset: 1024)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4854, file: !4853, line: 69, baseType: !93, size: 16, offset: 1056)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4854, file: !4853, line: 70, baseType: !2417, size: 16, offset: 1072)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !643, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !643, file: !131, line: 886, baseType: !4897, size: 64, offset: 9152)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !643, file: !131, line: 901, baseType: !793, size: 64, offset: 9216)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !643, file: !131, line: 904, baseType: !667, size: 64, offset: 9280)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !643, file: !131, line: 906, baseType: !4902, size: 64, offset: 9344)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !643, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !643, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !643, file: !131, line: 935, baseType: !4907, size: 64, offset: 9472)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !256, line: 103, size: 64, elements: !4908)
!4908 = !{!4909}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4907, file: !256, line: 104, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !256, line: 101, flags: DIFlagFwdDecl)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !643, file: !131, line: 940, baseType: !688, size: 64, offset: 9536)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !643, file: !131, line: 942, baseType: !978, size: 256, offset: 9600)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !640, file: !131, line: 986, baseType: !4915, offset: 10240)
!4915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1083)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !332, file: !333, line: 882, baseType: !639, size: 64, offset: 9792)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !332, file: !333, line: 884, baseType: !22, size: 32, offset: 9856)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !332, file: !333, line: 885, baseType: !22, size: 32, offset: 9888)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !332, file: !333, line: 886, baseType: !22, size: 32, offset: 9920)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !332, file: !333, line: 888, baseType: !22, size: 32, offset: 9952)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !332, file: !333, line: 890, baseType: !39, size: 64, offset: 9984)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !332, file: !333, line: 893, baseType: !7, size: 32, offset: 10048)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !332, file: !333, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !332, file: !333, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !332, file: !333, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !332, file: !333, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !332, file: !333, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !332, file: !333, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !332, file: !333, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !332, file: !333, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !332, file: !333, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !332, file: !333, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !332, file: !333, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !332, file: !333, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !332, file: !333, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !332, file: !333, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !332, file: !333, line: 969, baseType: !39, size: 64, offset: 10176)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !332, file: !333, line: 971, baseType: !4939, size: 448, offset: 10240)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !250, line: 25, size: 448, elements: !4940)
!4940 = !{!4941, !4942, !4947}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4939, file: !250, line: 26, baseType: !39, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4939, file: !250, line: 27, baseType: !4943, size: 64, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!1076, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, scope: !4939, file: !250, line: 28, baseType: !4948, size: 320, offset: 128)
!4948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4939, file: !250, line: 28, size: 320, elements: !4949)
!4949 = !{!4950, !4960, !4985}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4948, file: !250, line: 37, baseType: !4951, size: 320)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4948, file: !250, line: 30, size: 320, elements: !4952)
!4952 = !{!4953, !4955, !4956, !4957, !4958, !4959}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4951, file: !250, line: 31, baseType: !4954, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4951, file: !250, line: 32, baseType: !327, size: 32, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4951, file: !250, line: 33, baseType: !327, size: 32, offset: 96)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4951, file: !250, line: 34, baseType: !327, size: 32, offset: 128)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4951, file: !250, line: 35, baseType: !390, size: 64, offset: 192)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4951, file: !250, line: 36, baseType: !4954, size: 64, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4948, file: !250, line: 47, baseType: !4961, size: 192)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4948, file: !250, line: 39, size: 192, elements: !4962)
!4962 = !{!4963, !4964, !4965, !4984}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4961, file: !250, line: 40, baseType: !505, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4961, file: !250, line: 41, baseType: !249, size: 32, offset: 32)
!4965 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !250, line: 42, baseType: !4966, size: 64, offset: 64)
!4966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !250, line: 42, size: 64, elements: !4967)
!4967 = !{!4968, !4976}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4966, file: !250, line: 43, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4971, line: 7, size: 128, elements: !4972)
!4971 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4972 = !{!4973, !4975}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4970, file: !4971, line: 8, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4970, file: !4971, line: 9, baseType: !43, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4966, file: !250, line: 44, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4979, line: 7, size: 64, elements: !4980)
!4979 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4980 = !{!4981, !4983}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4978, file: !4979, line: 8, baseType: !4982, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4979, line: 5, baseType: !863)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4978, file: !4979, line: 9, baseType: !863, size: 32, offset: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4961, file: !250, line: 46, baseType: !390, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4948, file: !250, line: 55, baseType: !4986, size: 256)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4948, file: !250, line: 49, size: 256, elements: !4987)
!4987 = !{!4988, !4996, !4997, !4998, !4999}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4986, file: !250, line: 50, baseType: !4989, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4991, line: 36, size: 64, elements: !4992)
!4991 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4992 = !{!4993, !4994, !4995}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4990, file: !4991, line: 37, baseType: !22, size: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4990, file: !4991, line: 38, baseType: !899, size: 16, offset: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4990, file: !4991, line: 39, baseType: !899, size: 16, offset: 48)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4986, file: !250, line: 51, baseType: !22, size: 32, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4986, file: !250, line: 52, baseType: !22, size: 32, offset: 96)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4986, file: !250, line: 53, baseType: !39, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4986, file: !250, line: 54, baseType: !39, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !332, file: !333, line: 973, baseType: !5001, size: 32, offset: 10688)
!5001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !5002)
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !332, file: !333, line: 974, baseType: !5001, size: 32, offset: 10720)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !332, file: !333, line: 978, baseType: !39, size: 64, offset: 10752)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !332, file: !333, line: 987, baseType: !331, size: 64, offset: 10816)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !332, file: !333, line: 990, baseType: !331, size: 64, offset: 10880)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !332, file: !333, line: 995, baseType: !97, size: 128, offset: 10944)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !332, file: !333, line: 996, baseType: !97, size: 128, offset: 11072)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !332, file: !333, line: 997, baseType: !331, size: 64, offset: 11200)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !332, file: !333, line: 1005, baseType: !97, size: 128, offset: 11264)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !332, file: !333, line: 1006, baseType: !97, size: 128, offset: 11392)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !332, file: !333, line: 1009, baseType: !735, size: 64, offset: 11520)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !332, file: !333, line: 1010, baseType: !5014, size: 512, offset: 11584)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 512, elements: !752)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !332, file: !333, line: 1011, baseType: !97, size: 128, offset: 12096)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !332, file: !333, line: 1012, baseType: !97, size: 128, offset: 12224)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !332, file: !333, line: 1014, baseType: !1016, size: 64, offset: 12352)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !332, file: !333, line: 1017, baseType: !2410, size: 64, offset: 12416)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !332, file: !333, line: 1020, baseType: !2410, size: 64, offset: 12480)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !332, file: !333, line: 1023, baseType: !20, size: 64, offset: 12544)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !332, file: !333, line: 1025, baseType: !390, size: 64, offset: 12608)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !332, file: !333, line: 1026, baseType: !390, size: 64, offset: 12672)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !332, file: !333, line: 1031, baseType: !390, size: 64, offset: 12736)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !332, file: !333, line: 1032, baseType: !3865, size: 192, offset: 12800)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !332, file: !333, line: 1041, baseType: !39, size: 64, offset: 12992)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !332, file: !333, line: 1042, baseType: !39, size: 64, offset: 13056)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !332, file: !333, line: 1045, baseType: !390, size: 64, offset: 13120)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !332, file: !333, line: 1048, baseType: !390, size: 64, offset: 13184)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !332, file: !333, line: 1051, baseType: !39, size: 64, offset: 13248)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !332, file: !333, line: 1052, baseType: !39, size: 64, offset: 13312)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !332, file: !333, line: 1055, baseType: !5032, size: 640, offset: 13376)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5033, line: 132, size: 640, elements: !5034)
!5033 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5034 = !{!5035, !5041, !5042}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5032, file: !5033, line: 133, baseType: !5036, size: 576)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5037, size: 576, elements: !731)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5033, line: 117, size: 192, elements: !5038)
!5038 = !{!5039, !5040}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5037, file: !5033, line: 118, baseType: !390, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5037, file: !5033, line: 119, baseType: !519, size: 128, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5032, file: !5033, line: 134, baseType: !7, size: 32, offset: 576)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5032, file: !5033, line: 135, baseType: !7, size: 32, offset: 608)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !332, file: !333, line: 1058, baseType: !5044, size: 448, offset: 14016)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5033, line: 144, size: 448, elements: !5045)
!5045 = !{!5046, !5047, !5048}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5044, file: !5033, line: 145, baseType: !675, size: 128, align: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5044, file: !5033, line: 146, baseType: !695, size: 256, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5044, file: !5033, line: 147, baseType: !7, size: 32, offset: 384)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !332, file: !333, line: 1064, baseType: !1090, size: 64, offset: 14464)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !332, file: !333, line: 1067, baseType: !1090, size: 64, offset: 14528)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !332, file: !333, line: 1070, baseType: !1090, size: 64, offset: 14592)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !332, file: !333, line: 1074, baseType: !855, size: 64, offset: 14656)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !332, file: !333, line: 1084, baseType: !5054, size: 128, offset: 14720)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !4453)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !332, file: !333, line: 1086, baseType: !5056, size: 64, offset: 14848)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !333, line: 55, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !332, file: !333, line: 1089, baseType: !5059, size: 64, offset: 14912)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5060, line: 12, size: 64, elements: !5061)
!5060 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5061 = !{!5062}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5059, file: !5060, line: 13, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5060, line: 8, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !332, file: !333, line: 1090, baseType: !5066, size: 128, offset: 14976)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5067, line: 13, size: 128, elements: !5068)
!5067 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5068 = !{!5069}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5066, file: !5067, line: 14, baseType: !97, size: 128)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !332, file: !333, line: 1097, baseType: !5071, size: 64, offset: 15104)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !333, line: 50, flags: DIFlagFwdDecl)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !332, file: !333, line: 1100, baseType: !5074, size: 64, offset: 15168)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !333, line: 1100, flags: DIFlagFwdDecl)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !332, file: !333, line: 1103, baseType: !5077, size: 64, offset: 15232)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !333, line: 53, flags: DIFlagFwdDecl)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !332, file: !333, line: 1107, baseType: !5080, size: 64, offset: 15296)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5082, line: 31, size: 576, elements: !5083)
!5082 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5083 = !{!5084, !5085, !5088, !5091, !5094, !5095, !5098, !5101, !5102}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5081, file: !5082, line: 32, baseType: !339, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5081, file: !5082, line: 33, baseType: !5086, size: 64, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5082, line: 9, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5081, file: !5082, line: 34, baseType: !5089, size: 64, offset: 128)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5082, line: 10, flags: DIFlagFwdDecl)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5081, file: !5082, line: 35, baseType: !5092, size: 64, offset: 192)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5082, line: 8, flags: DIFlagFwdDecl)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5081, file: !5082, line: 36, baseType: !763, size: 64, offset: 256)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5081, file: !5082, line: 37, baseType: !5096, size: 64, offset: 320)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !857, line: 34, flags: DIFlagFwdDecl)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5081, file: !5082, line: 38, baseType: !5099, size: 64, offset: 384)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5082, line: 38, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5081, file: !5082, line: 39, baseType: !5099, size: 64, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5081, file: !5082, line: 40, baseType: !5103, size: 64, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5105, line: 771, size: 384, elements: !5106)
!5105 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5106 = !{!5107, !5108, !5109, !5110}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5104, file: !5105, line: 772, baseType: !839, size: 192)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5104, file: !5105, line: 773, baseType: !793, size: 64, offset: 192)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5104, file: !5105, line: 774, baseType: !1061, size: 64, offset: 256)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5104, file: !5105, line: 775, baseType: !3935, size: 64, offset: 320)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !332, file: !333, line: 1110, baseType: !5112, size: 64, offset: 15360)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5114, line: 93, size: 8768, elements: !5115)
!5114 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5115 = !{!5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5164, !5173, !5174, !5176, !5177, !5178, !5181, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5219, !5220, !5227, !5237, !5299, !5300, !5303, !5304, !5305, !5306, !5307, !5308}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5113, file: !5114, line: 94, baseType: !339, size: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5113, file: !5114, line: 95, baseType: !49, size: 32, offset: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5113, file: !5114, line: 96, baseType: !22, size: 32, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5113, file: !5114, line: 97, baseType: !22, size: 32, offset: 96)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5113, file: !5114, line: 98, baseType: !97, size: 128, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5113, file: !5114, line: 100, baseType: !54, size: 192, offset: 256)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5113, file: !5114, line: 103, baseType: !331, size: 64, offset: 448)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5113, file: !5114, line: 106, baseType: !5124, size: 192, offset: 512)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5125, line: 32, size: 192, elements: !5126)
!5125 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5126 = !{!5127, !5128}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5124, file: !5125, line: 33, baseType: !97, size: 128)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5124, file: !5125, line: 34, baseType: !5129, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5130, line: 25, baseType: !5131)
!5130 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5130, line: 23, size: 64, elements: !5132)
!5132 = !{!5133}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5131, file: !5130, line: 24, baseType: !590, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5113, file: !5114, line: 109, baseType: !743, size: 64, offset: 704)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5113, file: !5114, line: 112, baseType: !22, size: 32, offset: 768)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5113, file: !5114, line: 114, baseType: !22, size: 32, offset: 800)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5113, file: !5114, line: 115, baseType: !331, size: 64, offset: 832)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5113, file: !5114, line: 118, baseType: !22, size: 32, offset: 896)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5113, file: !5114, line: 119, baseType: !7, size: 32, offset: 928)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5113, file: !5114, line: 121, baseType: !5141, size: 64, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5114, line: 80, size: 448, elements: !5143)
!5143 = !{!5144, !5145, !5151}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5142, file: !5114, line: 81, baseType: !49, size: 32)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5142, file: !5114, line: 82, baseType: !5146, size: 128, offset: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5114, line: 75, size: 128, elements: !5147)
!5147 = !{!5148, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5146, file: !5114, line: 76, baseType: !331, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5146, file: !5114, line: 77, baseType: !5150, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5142, file: !5114, line: 83, baseType: !1017, size: 256, offset: 192)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5113, file: !5114, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5113, file: !5114, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5113, file: !5114, line: 138, baseType: !7, size: 32, offset: 1056)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5113, file: !5114, line: 139, baseType: !97, size: 128, offset: 1088)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5113, file: !5114, line: 142, baseType: !457, size: 512, offset: 1216)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5113, file: !5114, line: 143, baseType: !465, size: 64, offset: 1728)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5113, file: !5114, line: 150, baseType: !5159, size: 256, offset: 1792)
!5159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5160, size: 256, elements: !2400)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5114, line: 38, size: 128, elements: !5161)
!5161 = !{!5162, !5163}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5160, file: !5114, line: 39, baseType: !390, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5160, file: !5114, line: 40, baseType: !390, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5113, file: !5114, line: 156, baseType: !5165, size: 192, offset: 2048)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5114, line: 66, size: 192, elements: !5166)
!5166 = !{!5167}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5165, file: !5114, line: 67, baseType: !5168, size: 192)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5114, line: 47, size: 192, elements: !5169)
!5169 = !{!5170, !5171, !5172}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5168, file: !5114, line: 48, baseType: !690, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5168, file: !5114, line: 49, baseType: !690, size: 64, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5168, file: !5114, line: 50, baseType: !690, size: 64, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5113, file: !5114, line: 160, baseType: !5032, size: 640, offset: 2240)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5113, file: !5114, line: 163, baseType: !5175, size: 256, offset: 2880)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 256, elements: !752)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5113, file: !5114, line: 169, baseType: !735, size: 64, offset: 3136)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5113, file: !5114, line: 172, baseType: !22, size: 32, offset: 3200)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5113, file: !5114, line: 174, baseType: !5179, size: 64, offset: 3264)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5114, line: 174, flags: DIFlagFwdDecl)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5113, file: !5114, line: 185, baseType: !5182, size: 64, offset: 3328)
!5182 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !509, line: 860, baseType: !5183)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 853, size: 64, elements: !5184)
!5184 = !{!5185, !5186}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5183, file: !509, line: 858, baseType: !1192, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5183, file: !509, line: 859, baseType: !59, size: 32, offset: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5113, file: !5114, line: 186, baseType: !390, size: 64, offset: 3392)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5113, file: !5114, line: 186, baseType: !390, size: 64, offset: 3456)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5113, file: !5114, line: 186, baseType: !390, size: 64, offset: 3520)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5113, file: !5114, line: 186, baseType: !390, size: 64, offset: 3584)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5113, file: !5114, line: 187, baseType: !390, size: 64, offset: 3648)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5113, file: !5114, line: 188, baseType: !390, size: 64, offset: 3712)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5113, file: !5114, line: 189, baseType: !3865, size: 192, offset: 3776)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5113, file: !5114, line: 190, baseType: !39, size: 64, offset: 3968)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5113, file: !5114, line: 190, baseType: !39, size: 64, offset: 4032)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5113, file: !5114, line: 190, baseType: !39, size: 64, offset: 4096)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5113, file: !5114, line: 190, baseType: !39, size: 64, offset: 4160)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5113, file: !5114, line: 191, baseType: !39, size: 64, offset: 4224)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5113, file: !5114, line: 191, baseType: !39, size: 64, offset: 4288)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5113, file: !5114, line: 191, baseType: !39, size: 64, offset: 4352)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5113, file: !5114, line: 191, baseType: !39, size: 64, offset: 4416)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5113, file: !5114, line: 192, baseType: !39, size: 64, offset: 4480)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5113, file: !5114, line: 192, baseType: !39, size: 64, offset: 4544)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5113, file: !5114, line: 192, baseType: !39, size: 64, offset: 4608)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5113, file: !5114, line: 192, baseType: !39, size: 64, offset: 4672)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5113, file: !5114, line: 193, baseType: !39, size: 64, offset: 4736)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5113, file: !5114, line: 193, baseType: !39, size: 64, offset: 4800)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5113, file: !5114, line: 194, baseType: !5209, size: 448, offset: 4864)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5210, line: 12, size: 448, elements: !5211)
!5210 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5209, file: !5210, line: 15, baseType: !390, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5209, file: !5210, line: 17, baseType: !390, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5209, file: !5210, line: 19, baseType: !390, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5209, file: !5210, line: 21, baseType: !390, size: 64, offset: 192)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5209, file: !5210, line: 29, baseType: !390, size: 64, offset: 256)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5209, file: !5210, line: 35, baseType: !390, size: 64, offset: 320)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5209, file: !5210, line: 44, baseType: !390, size: 64, offset: 384)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5113, file: !5114, line: 202, baseType: !392, size: 64, offset: 5312)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5113, file: !5114, line: 213, baseType: !5221, size: 2048, offset: 5376)
!5221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5222, size: 2048, elements: !4453)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5223, line: 43, size: 128, elements: !5224)
!5223 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5224 = !{!5225, !5226}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5222, file: !5223, line: 44, baseType: !38, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5222, file: !5223, line: 45, baseType: !38, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5113, file: !5114, line: 216, baseType: !5228, size: 448, offset: 7424)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5114, line: 30, size: 448, elements: !5229)
!5229 = !{!5230, !5231, !5232, !5233, !5234, !5235, !5236}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5228, file: !5114, line: 31, baseType: !22, size: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5228, file: !5114, line: 32, baseType: !1076, size: 64, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5228, file: !5114, line: 33, baseType: !39, size: 64, offset: 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5228, file: !5114, line: 34, baseType: !390, size: 64, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5228, file: !5114, line: 34, baseType: !390, size: 64, offset: 256)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5228, file: !5114, line: 35, baseType: !39, size: 64, offset: 320)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5228, file: !5114, line: 35, baseType: !39, size: 64, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5113, file: !5114, line: 219, baseType: !5238, size: 64, offset: 7872)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5240, line: 41, size: 3456, elements: !5241)
!5240 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5241 = !{!5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5239, file: !5240, line: 47, baseType: !94, size: 16)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5239, file: !5240, line: 48, baseType: !328, size: 32, offset: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5239, file: !5240, line: 54, baseType: !85, size: 8, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5239, file: !5240, line: 55, baseType: !85, size: 8, offset: 72)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5239, file: !5240, line: 73, baseType: !391, size: 64, align: 64, offset: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5239, file: !5240, line: 74, baseType: !391, size: 64, offset: 192)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5239, file: !5240, line: 81, baseType: !391, size: 64, offset: 256)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5239, file: !5240, line: 82, baseType: !391, size: 64, offset: 320)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5239, file: !5240, line: 85, baseType: !391, size: 64, offset: 384)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5239, file: !5240, line: 86, baseType: !391, size: 64, offset: 448)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5239, file: !5240, line: 94, baseType: !391, size: 64, offset: 512)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5239, file: !5240, line: 102, baseType: !391, size: 64, offset: 576)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5239, file: !5240, line: 107, baseType: !4443, size: 256, offset: 640)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5239, file: !5240, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5239, file: !5240, line: 110, baseType: !5257, size: 24, offset: 904)
!5257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !731)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5239, file: !5240, line: 111, baseType: !328, size: 32, align: 64, offset: 960)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5239, file: !5240, line: 113, baseType: !328, size: 32, offset: 992)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5239, file: !5240, line: 114, baseType: !328, size: 32, offset: 1024)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5239, file: !5240, line: 115, baseType: !328, size: 32, offset: 1056)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5239, file: !5240, line: 117, baseType: !328, size: 32, offset: 1088)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5239, file: !5240, line: 118, baseType: !391, size: 64, align: 64, offset: 1152)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5239, file: !5240, line: 120, baseType: !391, size: 64, offset: 1216)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5239, file: !5240, line: 121, baseType: !391, size: 64, offset: 1280)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5239, file: !5240, line: 122, baseType: !391, size: 64, offset: 1344)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5239, file: !5240, line: 123, baseType: !391, size: 64, offset: 1408)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5239, file: !5240, line: 133, baseType: !391, size: 64, offset: 1472)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5239, file: !5240, line: 137, baseType: !391, size: 64, offset: 1536)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5239, file: !5240, line: 142, baseType: !391, size: 64, offset: 1600)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5239, file: !5240, line: 143, baseType: !391, size: 64, offset: 1664)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5239, file: !5240, line: 146, baseType: !391, size: 64, offset: 1728)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5239, file: !5240, line: 147, baseType: !391, size: 64, offset: 1792)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5239, file: !5240, line: 148, baseType: !391, size: 64, offset: 1856)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5239, file: !5240, line: 149, baseType: !391, size: 64, offset: 1920)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5239, file: !5240, line: 154, baseType: !391, size: 64, offset: 1984)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5239, file: !5240, line: 155, baseType: !391, size: 64, offset: 2048)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5239, file: !5240, line: 156, baseType: !391, size: 64, offset: 2112)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5239, file: !5240, line: 158, baseType: !391, size: 64, offset: 2176)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5239, file: !5240, line: 159, baseType: !391, size: 64, offset: 2240)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5239, file: !5240, line: 162, baseType: !391, size: 64, offset: 2304)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5239, file: !5240, line: 163, baseType: !391, size: 64, offset: 2368)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5239, file: !5240, line: 164, baseType: !391, size: 64, offset: 2432)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5239, file: !5240, line: 167, baseType: !391, size: 64, offset: 2496)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5239, file: !5240, line: 168, baseType: !391, size: 64, offset: 2560)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5239, file: !5240, line: 171, baseType: !391, size: 64, offset: 2624)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5239, file: !5240, line: 172, baseType: !391, size: 64, offset: 2688)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5239, file: !5240, line: 175, baseType: !391, size: 64, offset: 2752)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5239, file: !5240, line: 178, baseType: !391, size: 64, offset: 2816)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5239, file: !5240, line: 179, baseType: !391, size: 64, offset: 2880)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5239, file: !5240, line: 182, baseType: !328, size: 32, offset: 2944)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5239, file: !5240, line: 186, baseType: !391, size: 64, align: 64, offset: 3008)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5239, file: !5240, line: 194, baseType: !391, size: 64, offset: 3072)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5239, file: !5240, line: 195, baseType: !391, size: 64, offset: 3136)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5239, file: !5240, line: 199, baseType: !391, size: 64, offset: 3200)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5239, file: !5240, line: 200, baseType: !391, size: 64, offset: 3264)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5239, file: !5240, line: 203, baseType: !391, size: 64, offset: 3328)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5239, file: !5240, line: 204, baseType: !391, size: 64, offset: 3392)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5113, file: !5114, line: 222, baseType: !7, size: 32, offset: 7936)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5113, file: !5114, line: 223, baseType: !5301, size: 64, offset: 8000)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5114, line: 223, flags: DIFlagFwdDecl)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5113, file: !5114, line: 230, baseType: !851, size: 8, offset: 8064)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5113, file: !5114, line: 231, baseType: !899, size: 16, offset: 8080)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5113, file: !5114, line: 232, baseType: !899, size: 16, offset: 8096)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5113, file: !5114, line: 234, baseType: !639, size: 64, offset: 8128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5113, file: !5114, line: 237, baseType: !695, size: 256, offset: 8192)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5113, file: !5114, line: 243, baseType: !871, size: 320, offset: 8448)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !332, file: !333, line: 1111, baseType: !5310, size: 64, offset: 15424)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5114, line: 20, size: 16640, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5311, file: !5114, line: 21, baseType: !59, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5311, file: !5114, line: 22, baseType: !339, size: 32, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5311, file: !5114, line: 23, baseType: !54, size: 192, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5311, file: !5114, line: 24, baseType: !5317, size: 16384, offset: 256)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5318, size: 16384, elements: !1511)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5125, line: 51, size: 256, elements: !5319)
!5319 = !{!5320}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5318, file: !5125, line: 52, baseType: !5321, size: 256)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5125, line: 37, size: 256, elements: !5322)
!5322 = !{!5323, !5330, !5331, !5335}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5321, file: !5125, line: 39, baseType: !5324, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5325, line: 83, baseType: !5326)
!5325 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5325, line: 82, baseType: !5328)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{null, !22}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5321, file: !5125, line: 40, baseType: !39, size: 64, offset: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5321, file: !5125, line: 46, baseType: !5332, size: 64, offset: 128)
!5332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5325, line: 86, baseType: !5333)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5325, line: 85, baseType: !2686)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5321, file: !5125, line: 48, baseType: !5129, size: 64, offset: 192)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !332, file: !333, line: 1112, baseType: !5129, size: 64, offset: 15488)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !332, file: !333, line: 1113, baseType: !5129, size: 64, offset: 15552)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !332, file: !333, line: 1115, baseType: !5129, size: 64, offset: 15616)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !332, file: !333, line: 1116, baseType: !5124, size: 192, offset: 15680)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !332, file: !333, line: 1117, baseType: !39, size: 64, offset: 15872)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !332, file: !333, line: 1118, baseType: !35, size: 64, offset: 15936)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !332, file: !333, line: 1119, baseType: !7, size: 32, offset: 16000)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !332, file: !333, line: 1121, baseType: !678, size: 64, offset: 16064)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !332, file: !333, line: 1125, baseType: !5345, size: 64, offset: 16128)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !333, line: 43, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !332, file: !333, line: 1127, baseType: !824, size: 32, offset: 16192)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !332, file: !333, line: 1128, baseType: !7, size: 32, offset: 16224)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !332, file: !333, line: 1130, baseType: !5350, size: 128, offset: 16256)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5351, line: 37, size: 128, elements: !5352)
!5351 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5352 = !{!5353, !5354, !5355}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5350, file: !5351, line: 38, baseType: !22, size: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5350, file: !5351, line: 39, baseType: !49, size: 32, offset: 32)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5350, file: !5351, line: 40, baseType: !5356, size: 64, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5351, line: 24, flags: DIFlagFwdDecl)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !332, file: !333, line: 1131, baseType: !5359, size: 256, offset: 16384)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5360, line: 12, size: 256, elements: !5361)
!5360 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5361 = !{!5362, !5363, !5364, !5365}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5359, file: !5360, line: 13, baseType: !939, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5359, file: !5360, line: 14, baseType: !39, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5359, file: !5360, line: 15, baseType: !39, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5359, file: !5360, line: 16, baseType: !851, size: 8, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !332, file: !333, line: 1134, baseType: !390, size: 64, offset: 16640)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !332, file: !333, line: 1135, baseType: !390, size: 64, offset: 16704)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !332, file: !333, line: 1138, baseType: !59, size: 32, offset: 16768)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !332, file: !333, line: 1141, baseType: !482, size: 32, offset: 16800)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !332, file: !333, line: 1143, baseType: !5371, size: 64, offset: 16832)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !333, line: 735, size: 64, elements: !5372)
!5372 = !{!5373}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5371, file: !333, line: 736, baseType: !5374, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !332, file: !333, line: 1147, baseType: !522, size: 128, offset: 16896)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !332, file: !333, line: 1149, baseType: !331, size: 64, offset: 17024)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !332, file: !333, line: 1151, baseType: !5378, size: 64, offset: 17088)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !333, line: 1151, flags: DIFlagFwdDecl)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !332, file: !333, line: 1188, baseType: !20, size: 64, offset: 17152)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !332, file: !333, line: 1191, baseType: !5382, size: 64, offset: 17216)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !333, line: 44, flags: DIFlagFwdDecl)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !332, file: !333, line: 1194, baseType: !5385, size: 64, offset: 17280)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !333, line: 45, flags: DIFlagFwdDecl)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !332, file: !333, line: 1197, baseType: !5388, size: 64, offset: 17344)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !333, line: 61, flags: DIFlagFwdDecl)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !332, file: !333, line: 1199, baseType: !5391, size: 64, offset: 17408)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5393, line: 99, size: 128, elements: !5394)
!5393 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5394 = !{!5395, !5396, !5397}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5392, file: !5393, line: 100, baseType: !688, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5392, file: !5393, line: 101, baseType: !49, size: 32, offset: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5392, file: !5393, line: 103, baseType: !26, size: 16, offset: 96)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !332, file: !333, line: 1202, baseType: !5399, size: 64, offset: 17472)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !333, line: 48, flags: DIFlagFwdDecl)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !332, file: !333, line: 1205, baseType: !39, size: 64, offset: 17536)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !332, file: !333, line: 1206, baseType: !5403, size: 64, offset: 17600)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5125, line: 14, baseType: !5405)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5125, line: 12, size: 384, elements: !5406)
!5406 = !{!5407}
!5407 = !DIDerivedType(tag: DW_TAG_member, scope: !5405, file: !5125, line: 13, baseType: !5408, size: 384)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5405, file: !5125, line: 13, size: 384, elements: !5409)
!5409 = !{!5410, !5411, !5412, !5413}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5408, file: !5125, line: 13, baseType: !22, size: 32)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5408, file: !5125, line: 13, baseType: !22, size: 32, offset: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5408, file: !5125, line: 13, baseType: !22, size: 32, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5408, file: !5125, line: 13, baseType: !5414, size: 256, offset: 128)
!5414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5415, line: 37, size: 256, elements: !5416)
!5415 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5416 = !{!5417, !5422, !5435, !5441, !5450, !5477, !5482}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5414, file: !5415, line: 42, baseType: !5418, size: 64)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 39, size: 64, elements: !5419)
!5419 = !{!5420, !5421}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5418, file: !5415, line: 40, baseType: !5002, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5418, file: !5415, line: 41, baseType: !830, size: 32, offset: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5414, file: !5415, line: 50, baseType: !5423, size: 192)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 45, size: 192, elements: !5424)
!5424 = !{!5425, !5427, !5428, !5434}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5423, file: !5415, line: 46, baseType: !5426, size: 32)
!5426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5423, file: !5415, line: 47, baseType: !22, size: 32, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5423, file: !5415, line: 48, baseType: !5429, size: 64, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5415, line: 11, baseType: !5430)
!5430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5415, line: 8, size: 64, elements: !5431)
!5431 = !{!5432, !5433}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5430, file: !5415, line: 9, baseType: !22, size: 32)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5430, file: !5415, line: 10, baseType: !20, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5423, file: !5415, line: 49, baseType: !22, size: 32, offset: 128)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5414, file: !5415, line: 57, baseType: !5436, size: 128)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 53, size: 128, elements: !5437)
!5437 = !{!5438, !5439, !5440}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5436, file: !5415, line: 54, baseType: !5002, size: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5436, file: !5415, line: 55, baseType: !830, size: 32, offset: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5436, file: !5415, line: 56, baseType: !5429, size: 64, offset: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5414, file: !5415, line: 66, baseType: !5442, size: 256)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 60, size: 256, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5447, !5449}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5442, file: !5415, line: 61, baseType: !5002, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5442, file: !5415, line: 62, baseType: !830, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5442, file: !5415, line: 63, baseType: !22, size: 32, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5442, file: !5415, line: 64, baseType: !5448, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1375)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5442, file: !5415, line: 65, baseType: !5448, size: 64, offset: 192)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5414, file: !5415, line: 105, baseType: !5451, size: 256)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 69, size: 256, elements: !5452)
!5452 = !{!5453, !5454}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5451, file: !5415, line: 70, baseType: !20, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, scope: !5451, file: !5415, line: 79, baseType: !5455, size: 192, offset: 64)
!5455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5451, file: !5415, line: 79, size: 192, elements: !5456)
!5456 = !{!5457, !5458, !5459, !5466, !5471}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5455, file: !5415, line: 81, baseType: !22, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5455, file: !5415, line: 86, baseType: !899, size: 16)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5455, file: !5415, line: 92, baseType: !5460, size: 192)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5415, line: 88, size: 192, elements: !5461)
!5461 = !{!5462, !5464, !5465}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5460, file: !5415, line: 89, baseType: !5463, size: 64)
!5463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !501)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5460, file: !5415, line: 90, baseType: !20, size: 64, offset: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5460, file: !5415, line: 91, baseType: !20, size: 64, offset: 128)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5455, file: !5415, line: 97, baseType: !5467, size: 96)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5415, line: 94, size: 96, elements: !5468)
!5468 = !{!5469, !5470}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5467, file: !5415, line: 95, baseType: !5463, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5467, file: !5415, line: 96, baseType: !328, size: 32, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5455, file: !5415, line: 103, baseType: !5472, size: 128)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5415, line: 99, size: 128, elements: !5473)
!5473 = !{!5474, !5475, !5476}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5472, file: !5415, line: 100, baseType: !39, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5472, file: !5415, line: 101, baseType: !328, size: 32, offset: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5472, file: !5415, line: 102, baseType: !328, size: 32, offset: 96)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5414, file: !5415, line: 111, baseType: !5478, size: 128)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 108, size: 128, elements: !5479)
!5479 = !{!5480, !5481}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5478, file: !5415, line: 109, baseType: !1076, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5478, file: !5415, line: 110, baseType: !22, size: 32, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5414, file: !5415, line: 118, baseType: !5483, size: 128)
!5483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5414, file: !5415, line: 114, size: 128, elements: !5484)
!5484 = !{!5485, !5486, !5487}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5483, file: !5415, line: 115, baseType: !20, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5483, file: !5415, line: 116, baseType: !22, size: 32, offset: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5483, file: !5415, line: 117, baseType: !7, size: 32, offset: 96)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !332, file: !333, line: 1208, baseType: !5209, size: 448, offset: 17664)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !332, file: !333, line: 1215, baseType: !390, size: 64, offset: 18112)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !332, file: !333, line: 1217, baseType: !390, size: 64, offset: 18176)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !332, file: !333, line: 1219, baseType: !390, size: 64, offset: 18240)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !332, file: !333, line: 1223, baseType: !5493, size: 64, offset: 18304)
!5493 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5494, line: 99, baseType: !5495)
!5494 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5494, line: 99, size: 64, elements: !5496)
!5496 = !{!5497}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5495, file: !5494, line: 99, baseType: !590, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !332, file: !333, line: 1225, baseType: !1192, size: 32, offset: 18368)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !332, file: !333, line: 1226, baseType: !22, size: 32, offset: 18400)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !332, file: !333, line: 1227, baseType: !22, size: 32, offset: 18432)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !332, file: !333, line: 1231, baseType: !3935, size: 64, offset: 18496)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !332, file: !333, line: 1233, baseType: !97, size: 128, offset: 18560)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !332, file: !333, line: 1240, baseType: !5504, size: 64, offset: 18688)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !333, line: 62, flags: DIFlagFwdDecl)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !332, file: !333, line: 1242, baseType: !5507, size: 64, offset: 18752)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !333, line: 1242, flags: DIFlagFwdDecl)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !332, file: !333, line: 1244, baseType: !97, size: 128, offset: 18816)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !332, file: !333, line: 1245, baseType: !5511, size: 64, offset: 18944)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !333, line: 51, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !332, file: !333, line: 1246, baseType: !695, size: 256, offset: 19008)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !332, file: !333, line: 1247, baseType: !7, size: 32, offset: 19264)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !332, file: !333, line: 1250, baseType: !3185, size: 64, offset: 19328)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !332, file: !333, line: 1251, baseType: !695, size: 256, offset: 19392)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !332, file: !333, line: 1252, baseType: !97, size: 128, offset: 19648)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !332, file: !333, line: 1259, baseType: !1795, size: 64, offset: 19776)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !332, file: !333, line: 1260, baseType: !899, size: 16, offset: 19840)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !332, file: !333, line: 1261, baseType: !899, size: 16, offset: 19856)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !332, file: !333, line: 1314, baseType: !5522, size: 64, offset: 19904)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5524, line: 62, size: 256, align: 256, elements: !5525)
!5524 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5525 = !{!5526, !5527, !5528, !5529, !5530, !5531, !5532}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5523, file: !5524, line: 75, baseType: !328, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5523, file: !5524, line: 90, baseType: !328, size: 32, offset: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5523, file: !5524, line: 112, baseType: !391, size: 64, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5523, file: !5524, line: 132, baseType: !328, size: 32, offset: 128)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5523, file: !5524, line: 140, baseType: !328, size: 32, offset: 160)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5523, file: !5524, line: 149, baseType: !328, size: 32, offset: 192)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5523, file: !5524, line: 154, baseType: !5533, offset: 224)
!5533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1083)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !332, file: !333, line: 1315, baseType: !327, size: 32, offset: 19968)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !332, file: !333, line: 1316, baseType: !327, size: 32, offset: 20000)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !332, file: !333, line: 1321, baseType: !39, size: 64, offset: 20032)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !332, file: !333, line: 1325, baseType: !22, size: 32, offset: 20096)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !332, file: !333, line: 1326, baseType: !22, size: 32, offset: 20128)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !332, file: !333, line: 1327, baseType: !22, size: 32, offset: 20160)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !332, file: !333, line: 1328, baseType: !22, size: 32, offset: 20192)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !332, file: !333, line: 1329, baseType: !675, size: 128, align: 64, offset: 20224)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !332, file: !333, line: 1332, baseType: !5543, size: 128, offset: 20352)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5544, line: 51, size: 128, elements: !5545)
!5544 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5545 = !{!5546, !5551, !5552}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5543, file: !5544, line: 60, baseType: !5547, size: 64)
!5547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5548, line: 7, size: 64, elements: !5549)
!5548 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5549 = !{!5550}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5547, file: !5548, line: 12, baseType: !587, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5543, file: !5544, line: 63, baseType: !851, size: 8, offset: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5543, file: !5544, line: 70, baseType: !851, size: 8, offset: 72)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !332, file: !333, line: 1335, baseType: !4690, size: 64, offset: 20480)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !332, file: !333, line: 1337, baseType: !5555, size: 128, offset: 20544)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5544, line: 39, size: 128, elements: !5556)
!5556 = !{!5557, !5558, !5559}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5555, file: !5544, line: 40, baseType: !1592, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5555, file: !5544, line: 42, baseType: !328, size: 32, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5555, file: !5544, line: 43, baseType: !328, size: 32, offset: 96)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !332, file: !333, line: 1340, baseType: !5561, size: 64, offset: 20672)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !333, line: 69, flags: DIFlagFwdDecl)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !332, file: !333, line: 1351, baseType: !22, size: 32, offset: 20736)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !332, file: !333, line: 1352, baseType: !22, size: 32, offset: 20768)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !332, file: !333, line: 1354, baseType: !39, size: 64, offset: 20800)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !332, file: !333, line: 1364, baseType: !390, size: 64, offset: 20864)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !332, file: !333, line: 1365, baseType: !390, size: 64, offset: 20928)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !332, file: !333, line: 1412, baseType: !39, size: 64, offset: 20992)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !332, file: !333, line: 1453, baseType: !5570, size: 64, offset: 21056)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !333, line: 1453, flags: DIFlagFwdDecl)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !332, file: !333, line: 1457, baseType: !5573, size: 64, offset: 21120)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !256, line: 61, size: 576, elements: !5575)
!5575 = !{!5576, !5577, !5596, !5599, !5600, !5633, !5643}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5574, file: !256, line: 62, baseType: !255, size: 32)
!5577 = !DIDerivedType(tag: DW_TAG_member, scope: !5574, file: !256, line: 64, baseType: !5578, size: 192, offset: 64)
!5578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5574, file: !256, line: 64, size: 192, elements: !5579)
!5579 = !{!5580, !5591}
!5580 = !DIDerivedType(tag: DW_TAG_member, scope: !5578, file: !256, line: 65, baseType: !5581, size: 192)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5578, file: !256, line: 65, size: 192, elements: !5582)
!5582 = !{!5583, !5590}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5581, file: !256, line: 66, baseType: !5584, size: 128)
!5584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5585, line: 50, size: 128, elements: !5586)
!5585 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5586 = !{!5587, !5588, !5589}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5584, file: !5585, line: 52, baseType: !39, size: 64)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5584, file: !5585, line: 54, baseType: !7, size: 32, offset: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5584, file: !5585, line: 55, baseType: !7, size: 32, offset: 96)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5581, file: !256, line: 67, baseType: !39, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, scope: !5578, file: !256, line: 70, baseType: !5592, size: 192)
!5592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5578, file: !256, line: 70, size: 192, elements: !5593)
!5593 = !{!5594, !5595}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5592, file: !256, line: 71, baseType: !675, size: 128, align: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5592, file: !256, line: 72, baseType: !39, size: 64, offset: 128)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5574, file: !256, line: 76, baseType: !5597, size: 64, offset: 256)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !256, line: 76, flags: DIFlagFwdDecl)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5574, file: !256, line: 77, baseType: !39, size: 64, offset: 320)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5574, file: !256, line: 79, baseType: !5601, size: 64, offset: 384)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5585, line: 25, size: 256, elements: !5603)
!5603 = !{!5604, !5610, !5614}
!5604 = !DIDerivedType(tag: DW_TAG_member, scope: !5602, file: !5585, line: 26, baseType: !5605, size: 128)
!5605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5602, file: !5585, line: 26, size: 128, elements: !5606)
!5606 = !{!5607, !5609}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5605, file: !5585, line: 27, baseType: !5608, size: 128)
!5608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !4453)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5605, file: !5585, line: 28, baseType: !5608, size: 128)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5602, file: !5585, line: 31, baseType: !5611, size: 64, offset: 128)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5613)
!5613 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5585, line: 23, flags: DIFlagFwdDecl)
!5614 = !DIDerivedType(tag: DW_TAG_member, scope: !5602, file: !5585, line: 33, baseType: !5615, size: 64, offset: 192)
!5615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5602, file: !5585, line: 33, size: 64, elements: !5616)
!5616 = !{!5617, !5623, !5628}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5615, file: !5585, line: 38, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5615, file: !5585, line: 34, size: 64, elements: !5619)
!5619 = !{!5620, !5621, !5622}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5618, file: !5585, line: 35, baseType: !863, size: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5618, file: !5585, line: 36, baseType: !83, size: 8, offset: 32)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5618, file: !5585, line: 37, baseType: !83, size: 8, offset: 40)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5615, file: !5585, line: 42, baseType: !5624, size: 16)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5615, file: !5585, line: 39, size: 16, elements: !5625)
!5625 = !{!5626, !5627}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5624, file: !5585, line: 40, baseType: !83, size: 8)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5624, file: !5585, line: 41, baseType: !83, size: 8, offset: 8)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5615, file: !5585, line: 46, baseType: !5629, size: 16)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5615, file: !5585, line: 43, size: 16, elements: !5630)
!5630 = !{!5631, !5632}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5629, file: !5585, line: 44, baseType: !83, size: 8)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5629, file: !5585, line: 45, baseType: !83, size: 8, offset: 8)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5574, file: !256, line: 81, baseType: !5634, size: 64, offset: 448)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !256, line: 85, size: 384, elements: !5636)
!5636 = !{!5637, !5638, !5639, !5640, !5641, !5642}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5635, file: !256, line: 86, baseType: !5597, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5635, file: !256, line: 87, baseType: !39, size: 64, offset: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5635, file: !256, line: 88, baseType: !39, size: 64, offset: 128)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5635, file: !256, line: 89, baseType: !39, size: 64, offset: 192)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5635, file: !256, line: 90, baseType: !851, size: 8, offset: 256)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5635, file: !256, line: 92, baseType: !5634, size: 64, offset: 320)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5574, file: !256, line: 82, baseType: !7, size: 32, offset: 512)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !332, file: !333, line: 1463, baseType: !5645, offset: 21184)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !333, line: 739, elements: !660)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !332, file: !333, line: 1470, baseType: !675, size: 128, align: 64, offset: 21184)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !332, file: !333, line: 1471, baseType: !339, size: 32, offset: 21312)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !332, file: !333, line: 1472, baseType: !22, size: 32, offset: 21344)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !332, file: !333, line: 1474, baseType: !331, size: 64, offset: 21376)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !332, file: !333, line: 1475, baseType: !2511, size: 320, offset: 21440)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !332, file: !333, line: 1478, baseType: !5652, size: 64, offset: 21760)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !333, line: 1478, flags: DIFlagFwdDecl)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !332, file: !333, line: 1482, baseType: !339, size: 32, offset: 21824)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !332, file: !333, line: 1489, baseType: !20, size: 64, offset: 21888)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !332, file: !333, line: 1504, baseType: !20, size: 64, offset: 21952)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !332, file: !333, line: 1505, baseType: !391, size: 64, offset: 22016)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !332, file: !333, line: 1506, baseType: !390, size: 64, offset: 22080)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !332, file: !333, line: 1507, baseType: !391, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !332, file: !333, line: 1508, baseType: !391, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !332, file: !333, line: 1509, baseType: !391, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !332, file: !333, line: 1510, baseType: !675, size: 128, align: 64, offset: 22208)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !332, file: !333, line: 1511, baseType: !22, size: 32, offset: 22336)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !332, file: !333, line: 1515, baseType: !5665, size: 64, offset: 22400)
!5665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !352, line: 56, size: 64, elements: !5666)
!5666 = !{!5667}
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5665, file: !352, line: 57, baseType: !355, size: 64)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !332, file: !333, line: 1518, baseType: !5665, size: 64, offset: 22464)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !332, file: !333, line: 1528, baseType: !675, size: 128, align: 64, offset: 22528)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !332, file: !333, line: 1552, baseType: !5671, size: 35328, offset: 23040)
!5671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5672, line: 430, size: 35328, elements: !5673)
!5672 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5673 = !{!5674, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5701, !5702, !5703, !5704, !5705, !5706, !5718, !5719, !5720, !5721}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5671, file: !5672, line: 432, baseType: !5675, size: 192)
!5675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5676, size: 192, elements: !731)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5677, line: 16, size: 64, elements: !5678)
!5677 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5678 = !{!5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5676, file: !5677, line: 17, baseType: !93, size: 16)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5676, file: !5677, line: 18, baseType: !93, size: 16, offset: 16)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5676, file: !5677, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5676, file: !5677, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5676, file: !5677, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5676, file: !5677, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5676, file: !5677, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5676, file: !5677, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5676, file: !5677, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5676, file: !5677, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5676, file: !5677, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5676, file: !5677, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5676, file: !5677, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5671, file: !5672, line: 436, baseType: !39, size: 64, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5671, file: !5672, line: 440, baseType: !26, size: 16, offset: 256)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5671, file: !5672, line: 441, baseType: !26, size: 16, offset: 272)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5671, file: !5672, line: 442, baseType: !26, size: 16, offset: 288)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5671, file: !5672, line: 443, baseType: !26, size: 16, offset: 304)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5671, file: !5672, line: 447, baseType: !39, size: 64, offset: 320)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5671, file: !5672, line: 448, baseType: !39, size: 64, offset: 384)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5671, file: !5672, line: 459, baseType: !5700, size: 256, offset: 448)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 256, elements: !752)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5671, file: !5672, line: 461, baseType: !39, size: 64, offset: 704)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5671, file: !5672, line: 463, baseType: !39, size: 64, offset: 768)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5671, file: !5672, line: 465, baseType: !39, size: 64, offset: 832)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5671, file: !5672, line: 466, baseType: !39, size: 64, offset: 896)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5671, file: !5672, line: 467, baseType: !39, size: 64, offset: 960)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5671, file: !5672, line: 473, baseType: !5707, size: 64, offset: 1024)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5709, line: 8, size: 65664, elements: !5710)
!5709 = !DIFile(filename: "./arch/x86/include/asm/io_bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36640faa64453937c301d851a5713796")
!5710 = !{!5711, !5712, !5713, !5714}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5708, file: !5709, line: 9, baseType: !390, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5708, file: !5709, line: 10, baseType: !339, size: 32, offset: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5708, file: !5709, line: 12, baseType: !7, size: 32, offset: 96)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !5708, file: !5709, line: 13, baseType: !5715, size: 65536, offset: 128)
!5715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 65536, elements: !5716)
!5716 = !{!5717}
!5717 = !DISubrange(count: 1024)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5671, file: !5672, line: 480, baseType: !39, size: 64, offset: 1088)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5671, file: !5672, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5671, file: !5672, line: 491, baseType: !327, size: 32, offset: 1184)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5671, file: !5672, line: 501, baseType: !5722, size: 33792, offset: 1536)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5723, line: 448, size: 33792, elements: !5724)
!5723 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5724 = !{!5725, !5726, !5727, !5835, !5836, !5842, !5843}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5722, file: !5723, line: 461, baseType: !7, size: 32)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5722, file: !5723, line: 468, baseType: !39, size: 64, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5722, file: !5723, line: 476, baseType: !5728, size: 64, offset: 128)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5723, line: 356, size: 33280, align: 512, elements: !5730)
!5730 = !{!5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5729, file: !5723, line: 358, baseType: !7, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5729, file: !5723, line: 361, baseType: !7, size: 32, offset: 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5729, file: !5723, line: 364, baseType: !390, size: 64, offset: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5729, file: !5723, line: 367, baseType: !390, size: 64, offset: 128)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5729, file: !5723, line: 370, baseType: !390, size: 64, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5729, file: !5723, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5729, file: !5723, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5729, file: !5723, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5729, file: !5723, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5729, file: !5723, line: 397, baseType: !5741, size: 32768, offset: 512)
!5741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5723, line: 348, size: 32768, elements: !5742)
!5742 = !{!5743, !5758, !5795, !5820, !5833}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5741, file: !5723, line: 349, baseType: !5744, size: 896)
!5744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5723, line: 12, size: 896, elements: !5745)
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5757}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5744, file: !5723, line: 13, baseType: !327, size: 32)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5744, file: !5723, line: 14, baseType: !327, size: 32, offset: 32)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5744, file: !5723, line: 15, baseType: !327, size: 32, offset: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5744, file: !5723, line: 16, baseType: !327, size: 32, offset: 96)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5744, file: !5723, line: 17, baseType: !327, size: 32, offset: 128)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5744, file: !5723, line: 18, baseType: !327, size: 32, offset: 160)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5744, file: !5723, line: 19, baseType: !327, size: 32, offset: 192)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5744, file: !5723, line: 22, baseType: !5754, size: 640, offset: 224)
!5754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 640, elements: !5755)
!5755 = !{!5756}
!5756 = !DISubrange(count: 20)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5744, file: !5723, line: 25, baseType: !327, size: 32, offset: 864)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5741, file: !5723, line: 350, baseType: !5759, size: 4096, align: 128)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5723, line: 34, size: 4096, align: 128, elements: !5760)
!5760 = !{!5761, !5762, !5763, !5764, !5765, !5780, !5781, !5782, !5784, !5786, !5790}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5759, file: !5723, line: 35, baseType: !93, size: 16)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5759, file: !5723, line: 36, baseType: !93, size: 16, offset: 16)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5759, file: !5723, line: 37, baseType: !93, size: 16, offset: 32)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5759, file: !5723, line: 38, baseType: !93, size: 16, offset: 48)
!5765 = !DIDerivedType(tag: DW_TAG_member, scope: !5759, file: !5723, line: 39, baseType: !5766, size: 128, offset: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5759, file: !5723, line: 39, size: 128, elements: !5767)
!5767 = !{!5768, !5773}
!5768 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !5723, line: 40, baseType: !5769, size: 128)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !5723, line: 40, size: 128, elements: !5770)
!5770 = !{!5771, !5772}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5769, file: !5723, line: 41, baseType: !390, size: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5769, file: !5723, line: 42, baseType: !390, size: 64, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !5723, line: 44, baseType: !5774, size: 128)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !5723, line: 44, size: 128, elements: !5775)
!5775 = !{!5776, !5777, !5778, !5779}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5774, file: !5723, line: 45, baseType: !327, size: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5774, file: !5723, line: 46, baseType: !327, size: 32, offset: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5774, file: !5723, line: 47, baseType: !327, size: 32, offset: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5774, file: !5723, line: 48, baseType: !327, size: 32, offset: 96)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5759, file: !5723, line: 51, baseType: !327, size: 32, offset: 192)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5759, file: !5723, line: 52, baseType: !327, size: 32, offset: 224)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5759, file: !5723, line: 55, baseType: !5783, size: 1024, offset: 256)
!5783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 1024, elements: !4444)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5759, file: !5723, line: 58, baseType: !5785, size: 2048, offset: 1280)
!5785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2048, elements: !1511)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5759, file: !5723, line: 60, baseType: !5787, size: 384, offset: 3328)
!5787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !5788)
!5788 = !{!5789}
!5789 = !DISubrange(count: 12)
!5790 = !DIDerivedType(tag: DW_TAG_member, scope: !5759, file: !5723, line: 62, baseType: !5791, size: 384, offset: 3712)
!5791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5759, file: !5723, line: 62, size: 384, elements: !5792)
!5792 = !{!5793, !5794}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5791, file: !5723, line: 63, baseType: !5787, size: 384)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5791, file: !5723, line: 64, baseType: !5787, size: 384)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5741, file: !5723, line: 351, baseType: !5796, size: 1088)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5723, line: 79, size: 1088, elements: !5797)
!5797 = !{!5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5819}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5796, file: !5723, line: 80, baseType: !327, size: 32)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5796, file: !5723, line: 81, baseType: !327, size: 32, offset: 32)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5796, file: !5723, line: 82, baseType: !327, size: 32, offset: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5796, file: !5723, line: 83, baseType: !327, size: 32, offset: 96)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5796, file: !5723, line: 84, baseType: !327, size: 32, offset: 128)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5796, file: !5723, line: 85, baseType: !327, size: 32, offset: 160)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5796, file: !5723, line: 86, baseType: !327, size: 32, offset: 192)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5796, file: !5723, line: 88, baseType: !5754, size: 640, offset: 224)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5796, file: !5723, line: 89, baseType: !83, size: 8, offset: 864)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5796, file: !5723, line: 90, baseType: !83, size: 8, offset: 872)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5796, file: !5723, line: 91, baseType: !83, size: 8, offset: 880)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5796, file: !5723, line: 92, baseType: !83, size: 8, offset: 888)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5796, file: !5723, line: 93, baseType: !83, size: 8, offset: 896)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5796, file: !5723, line: 94, baseType: !83, size: 8, offset: 904)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5796, file: !5723, line: 95, baseType: !5813, size: 64, offset: 960)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5815, line: 11, size: 128, elements: !5816)
!5815 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5816 = !{!5817, !5818}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5814, file: !5815, line: 12, baseType: !1076, size: 64)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5814, file: !5815, line: 13, baseType: !3709, size: 64, offset: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5796, file: !5723, line: 96, baseType: !327, size: 32, offset: 1024)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5741, file: !5723, line: 352, baseType: !5821, size: 4608, align: 512)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5723, line: 333, size: 4608, align: 512, elements: !5822)
!5822 = !{!5823, !5824, !5831}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5821, file: !5723, line: 334, baseType: !5759, size: 4096, align: 128)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5821, file: !5723, line: 335, baseType: !5825, size: 512, offset: 4096)
!5825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5723, line: 312, size: 512, elements: !5826)
!5826 = !{!5827, !5828, !5829}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5825, file: !5723, line: 313, baseType: !390, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5825, file: !5723, line: 314, baseType: !390, size: 64, offset: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5825, file: !5723, line: 315, baseType: !5830, size: 384, offset: 128)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !917)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5821, file: !5723, line: 336, baseType: !5832, offset: 4608)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1083)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5741, file: !5723, line: 353, baseType: !5834, size: 32768)
!5834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2741)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5722, file: !5723, line: 484, baseType: !5728, size: 64, offset: 192)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5722, file: !5723, line: 491, baseType: !5837, size: 128, offset: 256)
!5837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5723, line: 404, size: 128, elements: !5838)
!5838 = !{!5839, !5840, !5841}
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5837, file: !5723, line: 424, baseType: !390, size: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5837, file: !5723, line: 432, baseType: !7, size: 32, offset: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5837, file: !5723, line: 440, baseType: !7, size: 32, offset: 96)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5722, file: !5723, line: 498, baseType: !5837, size: 128, offset: 384)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5722, file: !5723, line: 508, baseType: !5729, size: 33280, align: 512, offset: 512)
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1076)
!5848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5849)
!5852 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !39)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!5854 = !{!0, !5855, !5862}
!5855 = !DIGlobalVariableExpression(var: !5856, expr: !DIExpression())
!5856 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule314", scope: !5857, file: !3, line: 48, type: !20, isLocal: true, isDefinition: true)
!5857 = distinct !DISubprogram(name: "task_update_io_bitmap", scope: !3, file: !3, line: 36, type: !3966, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5858 = !{!5859, !5860}
!5859 = !DILocalVariable(name: "tsk", arg: 1, scope: !5857, file: !3, line: 36, type: !331)
!5860 = !DILocalVariable(name: "t", scope: !5857, file: !3, line: 38, type: !5861)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5862 = !DIGlobalVariableExpression(var: !5863, expr: !DIExpression())
!5863 = distinct !DIGlobalVariable(scope: null, file: !309, line: 480, type: !5864, isLocal: true, isDefinition: true)
!5864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !5865)
!5865 = !{!5866}
!5866 = !DISubrange(count: 21)
!5867 = !{!"rsp"}
!5868 = !{i32 7, !"Dwarf Version", i32 5}
!5869 = !{i32 2, !"Debug Info Version", i32 3}
!5870 = !{i32 1, !"wchar_size", i32 2}
!5871 = !{i32 8, !"cf-protection-branch", i32 1}
!5872 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5873 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5874 = !{i32 1, !"Code Model", i32 2}
!5875 = !{i32 1, !"override-stack-alignment", i32 8}
!5876 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5877 = distinct !DISubprogram(name: "io_bitmap_share", scope: !3, file: !3, line: 22, type: !3966, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5878 = !{!5879}
!5879 = !DILocalVariable(name: "tsk", arg: 1, scope: !5877, file: !3, line: 22, type: !331)
!5880 = !DILocation(line: 22, column: 42, scope: !5877)
!5881 = !DILocation(line: 25, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 25, column: 6)
!5883 = !DILocation(line: 25, column: 15, scope: !5882)
!5884 = !DILocation(line: 25, column: 22, scope: !5882)
!5885 = !DILocation(line: 25, column: 6, scope: !5877)
!5886 = !DILocation(line: 30, column: 17, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 25, column: 33)
!5888 = !DILocation(line: 30, column: 26, scope: !5887)
!5889 = !DILocation(line: 30, column: 33, scope: !5887)
!5890 = !DILocation(line: 30, column: 44, scope: !5887)
!5891 = !DILocation(line: 30, column: 3, scope: !5887)
!5892 = !DILocation(line: 31, column: 27, scope: !5887)
!5893 = !DILocation(line: 31, column: 36, scope: !5887)
!5894 = !DILocation(line: 31, column: 43, scope: !5887)
!5895 = !DILocation(line: 31, column: 3, scope: !5887)
!5896 = !DILocation(line: 31, column: 8, scope: !5887)
!5897 = !DILocation(line: 31, column: 15, scope: !5887)
!5898 = !DILocation(line: 31, column: 25, scope: !5887)
!5899 = !DILocation(line: 32, column: 2, scope: !5887)
!5900 = !DILocation(line: 33, column: 22, scope: !5877)
!5901 = !DILocation(line: 33, column: 2, scope: !5877)
!5902 = !DILocation(line: 34, column: 1, scope: !5877)
!5903 = distinct !DISubprogram(name: "get_current", scope: !5904, file: !5904, line: 39, type: !5905, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5904 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!331}
!5907 = !{!5908, !5910, !5912}
!5908 = !DILocalVariable(name: "pscr_ret__", scope: !5909, file: !5904, line: 41, type: !331)
!5909 = distinct !DILexicalBlock(scope: !5903, file: !5904, line: 41, column: 9)
!5910 = !DILocalVariable(name: "__vpp_verify", scope: !5911, file: !5904, line: 41, type: !2098)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !5904, line: 41, column: 9)
!5912 = !DILocalVariable(name: "pfo_val__", scope: !5913, file: !5904, line: 41, type: !390)
!5913 = distinct !DILexicalBlock(scope: !5909, file: !5904, line: 41, column: 9)
!5914 = !DILocation(line: 41, column: 9, scope: !5909)
!5915 = !DILocation(line: 41, column: 9, scope: !5911)
!5916 = !DILocation(line: 41, column: 9, scope: !5913)
!5917 = !{i64 2149056072}
!5918 = !DILocation(line: 41, column: 9, scope: !5903)
!5919 = !DILocation(line: 41, column: 2, scope: !5903)
!5920 = distinct !DISubprogram(name: "refcount_inc", scope: !296, file: !296, line: 265, type: !5921, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{null, !5923}
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "r", arg: 1, scope: !5920, file: !296, line: 265, type: !5923)
!5926 = !DILocation(line: 265, column: 45, scope: !5920)
!5927 = !DILocation(line: 267, column: 17, scope: !5920)
!5928 = !DILocation(line: 267, column: 2, scope: !5920)
!5929 = !DILocation(line: 268, column: 1, scope: !5920)
!5930 = distinct !DISubprogram(name: "set_tsk_thread_flag", scope: !333, file: !333, line: 2040, type: !5931, scopeLine: 2041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5933)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{null, !331, !22}
!5933 = !{!5934, !5935}
!5934 = !DILocalVariable(name: "tsk", arg: 1, scope: !5930, file: !333, line: 2040, type: !331)
!5935 = !DILocalVariable(name: "flag", arg: 2, scope: !5930, file: !333, line: 2040, type: !22)
!5936 = !DILocation(line: 2040, column: 60, scope: !5930)
!5937 = !DILocation(line: 2040, column: 69, scope: !5930)
!5938 = !DILocation(line: 2042, column: 21, scope: !5930)
!5939 = !DILocation(line: 2042, column: 44, scope: !5930)
!5940 = !DILocation(line: 2042, column: 2, scope: !5930)
!5941 = !DILocation(line: 2043, column: 1, scope: !5930)
!5942 = distinct !DISubprogram(name: "io_bitmap_exit", scope: !3, file: !3, line: 52, type: !3966, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5943)
!5943 = !{!5944, !5945}
!5944 = !DILocalVariable(name: "tsk", arg: 1, scope: !5942, file: !3, line: 52, type: !331)
!5945 = !DILocalVariable(name: "iobm", scope: !5942, file: !3, line: 54, type: !5707)
!5946 = !DILocation(line: 52, column: 41, scope: !5942)
!5947 = !DILocation(line: 54, column: 2, scope: !5942)
!5948 = !DILocation(line: 54, column: 20, scope: !5942)
!5949 = !DILocation(line: 54, column: 27, scope: !5942)
!5950 = !DILocation(line: 54, column: 32, scope: !5942)
!5951 = !DILocation(line: 54, column: 39, scope: !5942)
!5952 = !DILocation(line: 56, column: 2, scope: !5942)
!5953 = !DILocation(line: 56, column: 7, scope: !5942)
!5954 = !DILocation(line: 56, column: 14, scope: !5942)
!5955 = !DILocation(line: 56, column: 24, scope: !5942)
!5956 = !DILocation(line: 57, column: 24, scope: !5942)
!5957 = !DILocation(line: 57, column: 2, scope: !5942)
!5958 = !DILocation(line: 58, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 58, column: 6)
!5960 = !DILocation(line: 58, column: 11, scope: !5959)
!5961 = !DILocation(line: 58, column: 37, scope: !5959)
!5962 = !DILocation(line: 58, column: 43, scope: !5959)
!5963 = !DILocation(line: 58, column: 14, scope: !5959)
!5964 = !DILocation(line: 58, column: 6, scope: !5942)
!5965 = !DILocation(line: 59, column: 9, scope: !5959)
!5966 = !DILocation(line: 59, column: 3, scope: !5959)
!5967 = !DILocation(line: 60, column: 1, scope: !5942)
!5968 = !DILocation(line: 36, column: 55, scope: !5857)
!5969 = !DILocation(line: 38, column: 2, scope: !5857)
!5970 = !DILocation(line: 38, column: 24, scope: !5857)
!5971 = !DILocation(line: 38, column: 29, scope: !5857)
!5972 = !DILocation(line: 38, column: 34, scope: !5857)
!5973 = !DILocation(line: 40, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 40, column: 6)
!5975 = !DILocation(line: 40, column: 9, scope: !5974)
!5976 = !DILocation(line: 40, column: 19, scope: !5974)
!5977 = !DILocation(line: 40, column: 24, scope: !5974)
!5978 = !DILocation(line: 40, column: 27, scope: !5974)
!5979 = !DILocation(line: 40, column: 30, scope: !5974)
!5980 = !DILocation(line: 40, column: 6, scope: !5857)
!5981 = !DILocation(line: 42, column: 23, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 40, column: 41)
!5983 = !DILocation(line: 42, column: 3, scope: !5982)
!5984 = !DILocation(line: 43, column: 2, scope: !5982)
!5985 = !DILocation(line: 44, column: 25, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 43, column: 9)
!5987 = !DILocation(line: 44, column: 3, scope: !5986)
!5988 = !DILocation(line: 46, column: 3, scope: !5986)
!5989 = !DILocation(line: 46, column: 3, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 46, column: 3)
!5991 = !{i64 2155522586}
!5992 = !DILocation(line: 47, column: 3, scope: !5986)
!5993 = !DILocation(line: 48, column: 3, scope: !5986)
!5994 = !DILocation(line: 48, column: 3, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 48, column: 3)
!5996 = !{i64 2155522760}
!5997 = !DILocation(line: 48, column: 3, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 48, column: 3)
!5999 = !DILocation(line: 48, column: 3, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 48, column: 3)
!6001 = !{i64 2155522942}
!6002 = !DILocation(line: 50, column: 1, scope: !5857)
!6003 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !296, file: !296, line: 331, type: !6004, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!851, !5923}
!6006 = !{!6007}
!6007 = !DILocalVariable(name: "r", arg: 1, scope: !6003, file: !296, line: 331, type: !5923)
!6008 = !DILocation(line: 331, column: 67, scope: !6003)
!6009 = !DILocation(line: 333, column: 33, scope: !6003)
!6010 = !DILocation(line: 333, column: 9, scope: !6003)
!6011 = !DILocation(line: 333, column: 2, scope: !6003)
!6012 = !DISubprogram(name: "kfree", scope: !309, file: !309, line: 227, type: !6013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{null, !2098}
!6015 = distinct !DISubprogram(name: "ksys_ioperm", scope: !3, file: !3, line: 65, type: !6016, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!1076, !39, !39, !22}
!6018 = !{!6019, !6020, !6021, !6022, !6023, !6024, !6025}
!6019 = !DILocalVariable(name: "from", arg: 1, scope: !6015, file: !3, line: 65, type: !39)
!6020 = !DILocalVariable(name: "num", arg: 2, scope: !6015, file: !3, line: 65, type: !39)
!6021 = !DILocalVariable(name: "turn_on", arg: 3, scope: !6015, file: !3, line: 65, type: !22)
!6022 = !DILocalVariable(name: "t", scope: !6015, file: !3, line: 67, type: !5861)
!6023 = !DILocalVariable(name: "i", scope: !6015, file: !3, line: 68, type: !7)
!6024 = !DILocalVariable(name: "max_long", scope: !6015, file: !3, line: 68, type: !7)
!6025 = !DILocalVariable(name: "iobm", scope: !6015, file: !3, line: 69, type: !5707)
!6026 = !DILocation(line: 65, column: 32, scope: !6015)
!6027 = !DILocation(line: 65, column: 52, scope: !6015)
!6028 = !DILocation(line: 65, column: 61, scope: !6015)
!6029 = !DILocation(line: 67, column: 2, scope: !6015)
!6030 = !DILocation(line: 67, column: 24, scope: !6015)
!6031 = !DILocation(line: 67, column: 29, scope: !6015)
!6032 = !DILocation(line: 67, column: 38, scope: !6015)
!6033 = !DILocation(line: 68, column: 2, scope: !6015)
!6034 = !DILocation(line: 68, column: 15, scope: !6015)
!6035 = !DILocation(line: 68, column: 18, scope: !6015)
!6036 = !DILocation(line: 69, column: 2, scope: !6015)
!6037 = !DILocation(line: 69, column: 20, scope: !6015)
!6038 = !DILocation(line: 71, column: 7, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 71, column: 6)
!6040 = !DILocation(line: 71, column: 14, scope: !6039)
!6041 = !DILocation(line: 71, column: 12, scope: !6039)
!6042 = !DILocation(line: 71, column: 21, scope: !6039)
!6043 = !DILocation(line: 71, column: 18, scope: !6039)
!6044 = !DILocation(line: 71, column: 27, scope: !6039)
!6045 = !DILocation(line: 71, column: 31, scope: !6039)
!6046 = !DILocation(line: 71, column: 38, scope: !6039)
!6047 = !DILocation(line: 71, column: 36, scope: !6039)
!6048 = !DILocation(line: 71, column: 42, scope: !6039)
!6049 = !DILocation(line: 71, column: 6, scope: !6015)
!6050 = !DILocation(line: 72, column: 3, scope: !6039)
!6051 = !DILocation(line: 73, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 73, column: 6)
!6053 = !DILocation(line: 73, column: 14, scope: !6052)
!6054 = !DILocation(line: 73, column: 19, scope: !6052)
!6055 = !DILocation(line: 73, column: 42, scope: !6052)
!6056 = !DILocation(line: 74, column: 4, scope: !6052)
!6057 = !DILocation(line: 73, column: 6, scope: !6015)
!6058 = !DILocation(line: 75, column: 3, scope: !6052)
!6059 = !DILocation(line: 82, column: 9, scope: !6015)
!6060 = !DILocation(line: 82, column: 12, scope: !6015)
!6061 = !DILocation(line: 82, column: 7, scope: !6015)
!6062 = !DILocation(line: 83, column: 7, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 83, column: 6)
!6064 = !DILocation(line: 83, column: 6, scope: !6015)
!6065 = !DILocation(line: 85, column: 8, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 85, column: 7)
!6067 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 83, column: 13)
!6068 = !DILocation(line: 85, column: 7, scope: !6067)
!6069 = !DILocation(line: 86, column: 4, scope: !6066)
!6070 = !DILocation(line: 87, column: 10, scope: !6067)
!6071 = !DILocation(line: 87, column: 8, scope: !6067)
!6072 = !DILocation(line: 88, column: 8, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 88, column: 7)
!6074 = !DILocation(line: 88, column: 7, scope: !6067)
!6075 = !DILocation(line: 89, column: 4, scope: !6073)
!6076 = !DILocation(line: 91, column: 10, scope: !6067)
!6077 = !DILocation(line: 91, column: 16, scope: !6067)
!6078 = !DILocation(line: 91, column: 3, scope: !6067)
!6079 = !DILocation(line: 92, column: 17, scope: !6067)
!6080 = !DILocation(line: 92, column: 23, scope: !6067)
!6081 = !DILocation(line: 92, column: 3, scope: !6067)
!6082 = !DILocation(line: 93, column: 2, scope: !6067)
!6083 = !DILocation(line: 100, column: 21, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 100, column: 6)
!6085 = !DILocation(line: 100, column: 27, scope: !6084)
!6086 = !DILocation(line: 100, column: 6, scope: !6084)
!6087 = !DILocation(line: 100, column: 35, scope: !6084)
!6088 = !DILocation(line: 100, column: 6, scope: !6015)
!6089 = !DILocation(line: 101, column: 18, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6084, file: !3, line: 100, column: 40)
!6091 = !DILocation(line: 101, column: 10, scope: !6090)
!6092 = !DILocation(line: 101, column: 8, scope: !6090)
!6093 = !DILocation(line: 102, column: 8, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 102, column: 7)
!6095 = !DILocation(line: 102, column: 7, scope: !6090)
!6096 = !DILocation(line: 103, column: 4, scope: !6094)
!6097 = !DILocation(line: 104, column: 17, scope: !6090)
!6098 = !DILocation(line: 104, column: 23, scope: !6090)
!6099 = !DILocation(line: 104, column: 3, scope: !6090)
!6100 = !DILocation(line: 105, column: 18, scope: !6090)
!6101 = !DILocation(line: 105, column: 3, scope: !6090)
!6102 = !DILocation(line: 106, column: 2, scope: !6090)
!6103 = !DILocation(line: 113, column: 17, scope: !6015)
!6104 = !DILocation(line: 113, column: 2, scope: !6015)
!6105 = !DILocation(line: 113, column: 5, scope: !6015)
!6106 = !DILocation(line: 113, column: 15, scope: !6015)
!6107 = !DILocation(line: 115, column: 2, scope: !6015)
!6108 = !DILocation(line: 121, column: 6, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 121, column: 6)
!6110 = !DILocation(line: 121, column: 6, scope: !6015)
!6111 = !DILocation(line: 122, column: 16, scope: !6109)
!6112 = !DILocation(line: 122, column: 22, scope: !6109)
!6113 = !DILocation(line: 122, column: 30, scope: !6109)
!6114 = !DILocation(line: 122, column: 36, scope: !6109)
!6115 = !DILocation(line: 122, column: 3, scope: !6109)
!6116 = !DILocation(line: 124, column: 14, scope: !6109)
!6117 = !DILocation(line: 124, column: 20, scope: !6109)
!6118 = !DILocation(line: 124, column: 28, scope: !6109)
!6119 = !DILocation(line: 124, column: 34, scope: !6109)
!6120 = !DILocation(line: 124, column: 3, scope: !6109)
!6121 = !DILocation(line: 130, column: 11, scope: !6015)
!6122 = !DILocation(line: 131, column: 9, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 131, column: 2)
!6124 = !DILocation(line: 131, column: 7, scope: !6123)
!6125 = !DILocation(line: 131, column: 14, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 131, column: 2)
!6127 = !DILocation(line: 131, column: 16, scope: !6126)
!6128 = !DILocation(line: 131, column: 2, scope: !6123)
!6129 = !DILocation(line: 132, column: 7, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 132, column: 7)
!6131 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 131, column: 40)
!6132 = !DILocation(line: 132, column: 13, scope: !6130)
!6133 = !DILocation(line: 132, column: 20, scope: !6130)
!6134 = !DILocation(line: 132, column: 23, scope: !6130)
!6135 = !DILocation(line: 132, column: 7, scope: !6131)
!6136 = !DILocation(line: 133, column: 15, scope: !6130)
!6137 = !DILocation(line: 133, column: 13, scope: !6130)
!6138 = !DILocation(line: 133, column: 4, scope: !6130)
!6139 = !DILocation(line: 134, column: 2, scope: !6131)
!6140 = !DILocation(line: 131, column: 36, scope: !6126)
!6141 = !DILocation(line: 131, column: 2, scope: !6126)
!6142 = distinct !{!6142, !6128, !6143, !6144, !6145}
!6143 = !DILocation(line: 134, column: 2, scope: !6123)
!6144 = !{!"llvm.loop.mustprogress"}
!6145 = !{!"llvm.loop.unroll.disable"}
!6146 = !DILocation(line: 136, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 136, column: 6)
!6148 = !DILocation(line: 136, column: 15, scope: !6147)
!6149 = !DILocation(line: 136, column: 6, scope: !6015)
!6150 = !DILocation(line: 137, column: 18, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 136, column: 28)
!6152 = !DILocation(line: 137, column: 3, scope: !6151)
!6153 = !DILocation(line: 138, column: 3, scope: !6151)
!6154 = !DILocation(line: 141, column: 15, scope: !6015)
!6155 = !DILocation(line: 141, column: 24, scope: !6015)
!6156 = !DILocation(line: 141, column: 14, scope: !6015)
!6157 = !DILocation(line: 141, column: 29, scope: !6015)
!6158 = !DILocation(line: 141, column: 2, scope: !6015)
!6159 = !DILocation(line: 141, column: 8, scope: !6015)
!6160 = !DILocation(line: 141, column: 12, scope: !6015)
!6161 = !DILocation(line: 147, column: 19, scope: !6015)
!6162 = !DILocation(line: 147, column: 2, scope: !6015)
!6163 = !DILocation(line: 147, column: 8, scope: !6015)
!6164 = !DILocation(line: 147, column: 17, scope: !6015)
!6165 = !DILocation(line: 149, column: 2, scope: !6015)
!6166 = !DILocation(line: 150, column: 1, scope: !6015)
!6167 = !DISubprogram(name: "capable", scope: !1107, file: !1107, line: 148, type: !6168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!851, !22}
!6170 = !DISubprogram(name: "security_locked_down", scope: !263, file: !263, line: 488, type: !6171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!22, !262}
!6173 = distinct !DISubprogram(name: "kmalloc", scope: !309, file: !309, line: 591, type: !6174, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6176)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!20, !35, !319}
!6176 = !{!6177, !6178, !6179}
!6177 = !DILocalVariable(name: "size", arg: 1, scope: !6173, file: !309, line: 591, type: !35)
!6178 = !DILocalVariable(name: "flags", arg: 2, scope: !6173, file: !309, line: 591, type: !319)
!6179 = !DILocalVariable(name: "index", scope: !6180, file: !309, line: 594, type: !7)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !309, line: 593, column: 42)
!6181 = distinct !DILexicalBlock(scope: !6173, file: !309, line: 593, column: 6)
!6182 = !DILocation(line: 591, column: 61, scope: !6173)
!6183 = !DILocation(line: 591, column: 73, scope: !6173)
!6184 = !DILocation(line: 593, column: 27, scope: !6181)
!6185 = !DILocation(line: 593, column: 6, scope: !6181)
!6186 = !DILocation(line: 593, column: 33, scope: !6181)
!6187 = !DILocation(line: 593, column: 36, scope: !6181)
!6188 = !DILocation(line: 593, column: 6, scope: !6173)
!6189 = !DILocation(line: 594, column: 3, scope: !6180)
!6190 = !DILocation(line: 594, column: 16, scope: !6180)
!6191 = !DILocation(line: 596, column: 7, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6180, file: !309, line: 596, column: 7)
!6193 = !DILocation(line: 596, column: 12, scope: !6192)
!6194 = !DILocation(line: 596, column: 7, scope: !6180)
!6195 = !DILocation(line: 597, column: 25, scope: !6192)
!6196 = !DILocation(line: 597, column: 31, scope: !6192)
!6197 = !DILocation(line: 597, column: 11, scope: !6192)
!6198 = !DILocation(line: 597, column: 4, scope: !6192)
!6199 = !DILocation(line: 599, column: 11, scope: !6180)
!6200 = !DILocation(line: 599, column: 9, scope: !6180)
!6201 = !DILocation(line: 601, column: 33, scope: !6180)
!6202 = !DILocation(line: 601, column: 40, scope: !6180)
!6203 = !DILocation(line: 601, column: 20, scope: !6180)
!6204 = !DILocation(line: 601, column: 5, scope: !6180)
!6205 = !DILocation(line: 601, column: 51, scope: !6180)
!6206 = !DILocation(line: 602, column: 5, scope: !6180)
!6207 = !DILocation(line: 602, column: 12, scope: !6180)
!6208 = !DILocation(line: 600, column: 10, scope: !6180)
!6209 = !DILocation(line: 600, column: 3, scope: !6180)
!6210 = !DILocation(line: 603, column: 2, scope: !6181)
!6211 = !DILocation(line: 604, column: 19, scope: !6173)
!6212 = !DILocation(line: 604, column: 25, scope: !6173)
!6213 = !DILocation(line: 604, column: 9, scope: !6173)
!6214 = !DILocation(line: 604, column: 2, scope: !6173)
!6215 = !DILocation(line: 605, column: 1, scope: !6173)
!6216 = distinct !DISubprogram(name: "refcount_set", scope: !296, file: !296, line: 134, type: !6217, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{null, !5923, !22}
!6219 = !{!6220, !6221}
!6220 = !DILocalVariable(name: "r", arg: 1, scope: !6216, file: !296, line: 134, type: !5923)
!6221 = !DILocalVariable(name: "n", arg: 2, scope: !6216, file: !296, line: 134, type: !22)
!6222 = !DILocation(line: 134, column: 45, scope: !6216)
!6223 = !DILocation(line: 134, column: 52, scope: !6216)
!6224 = !DILocation(line: 136, column: 14, scope: !6216)
!6225 = !DILocation(line: 136, column: 17, scope: !6216)
!6226 = !DILocation(line: 136, column: 23, scope: !6216)
!6227 = !DILocation(line: 136, column: 2, scope: !6216)
!6228 = !DILocation(line: 137, column: 1, scope: !6216)
!6229 = distinct !DISubprogram(name: "refcount_read", scope: !296, file: !296, line: 145, type: !6230, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6234)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!7, !6232}
!6232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6233, size: 64)
!6233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!6234 = !{!6235}
!6235 = !DILocalVariable(name: "r", arg: 1, scope: !6229, file: !296, line: 145, type: !6232)
!6236 = !DILocation(line: 145, column: 60, scope: !6229)
!6237 = !DILocation(line: 147, column: 22, scope: !6229)
!6238 = !DILocation(line: 147, column: 25, scope: !6229)
!6239 = !DILocation(line: 147, column: 9, scope: !6229)
!6240 = !DILocation(line: 147, column: 2, scope: !6229)
!6241 = !DISubprogram(name: "kmemdup", scope: !6242, file: !6242, line: 219, type: !6243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6242 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!20, !2098, !35, !319}
!6245 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !6246, file: !6246, line: 87, type: !6247, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6249)
!6246 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6247 = !DISubroutineType(types: !6248)
!6248 = !{null, !320, !22}
!6249 = !{!6250, !6251}
!6250 = !DILocalVariable(name: "ti", arg: 1, scope: !6245, file: !6246, line: 87, type: !320)
!6251 = !DILocalVariable(name: "flag", arg: 2, scope: !6245, file: !6246, line: 87, type: !22)
!6252 = !DILocation(line: 87, column: 59, scope: !6245)
!6253 = !DILocation(line: 87, column: 67, scope: !6245)
!6254 = !DILocation(line: 89, column: 10, scope: !6245)
!6255 = !DILocation(line: 89, column: 34, scope: !6245)
!6256 = !DILocation(line: 89, column: 38, scope: !6245)
!6257 = !DILocation(line: 89, column: 2, scope: !6245)
!6258 = !DILocation(line: 90, column: 1, scope: !6245)
!6259 = distinct !DISubprogram(name: "bitmap_clear", scope: !6260, file: !6260, line: 485, type: !6261, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6263)
!6260 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6261 = !DISubroutineType(types: !6262)
!6262 = !{null, !4060, !7, !7}
!6263 = !{!6264, !6265, !6266}
!6264 = !DILocalVariable(name: "map", arg: 1, scope: !6259, file: !6260, line: 485, type: !4060)
!6265 = !DILocalVariable(name: "start", arg: 2, scope: !6259, file: !6260, line: 485, type: !7)
!6266 = !DILocalVariable(name: "nbits", arg: 3, scope: !6259, file: !6260, line: 486, type: !7)
!6267 = !DILocation(line: 485, column: 57, scope: !6259)
!6268 = !DILocation(line: 485, column: 75, scope: !6259)
!6269 = !DILocation(line: 486, column: 16, scope: !6259)
!6270 = !DILocation(line: 488, column: 27, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6259, file: !6260, line: 488, column: 6)
!6272 = !DILocation(line: 488, column: 6, scope: !6271)
!6273 = !DILocation(line: 488, column: 34, scope: !6271)
!6274 = !DILocation(line: 488, column: 37, scope: !6271)
!6275 = !DILocation(line: 488, column: 43, scope: !6271)
!6276 = !DILocation(line: 488, column: 6, scope: !6259)
!6277 = !DILocation(line: 489, column: 3, scope: !6271)
!6278 = !DILocation(line: 490, column: 11, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6271, file: !6260, line: 490, column: 11)
!6280 = !DILocation(line: 490, column: 11, scope: !6271)
!6281 = !DILocation(line: 491, column: 12, scope: !6279)
!6282 = !DILocation(line: 491, column: 11, scope: !6279)
!6283 = !DILocation(line: 491, column: 4, scope: !6279)
!6284 = !DILocation(line: 491, column: 8, scope: !6279)
!6285 = !DILocation(line: 491, column: 3, scope: !6279)
!6286 = !DILocation(line: 492, column: 32, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6279, file: !6260, line: 492, column: 11)
!6288 = !DILocation(line: 492, column: 38, scope: !6287)
!6289 = !DILocation(line: 492, column: 11, scope: !6287)
!6290 = !DILocation(line: 492, column: 57, scope: !6287)
!6291 = !DILocation(line: 493, column: 4, scope: !6287)
!6292 = !DILocation(line: 493, column: 44, scope: !6287)
!6293 = !DILocation(line: 494, column: 25, scope: !6287)
!6294 = !DILocation(line: 494, column: 31, scope: !6287)
!6295 = !DILocation(line: 494, column: 4, scope: !6287)
!6296 = !DILocation(line: 494, column: 50, scope: !6287)
!6297 = !DILocation(line: 495, column: 4, scope: !6287)
!6298 = !DILocation(line: 492, column: 11, scope: !6279)
!6299 = !DILocation(line: 496, column: 18, scope: !6287)
!6300 = !DILocation(line: 496, column: 24, scope: !6287)
!6301 = !DILocation(line: 496, column: 30, scope: !6287)
!6302 = !DILocation(line: 496, column: 22, scope: !6287)
!6303 = !DILocation(line: 496, column: 38, scope: !6287)
!6304 = !DILocation(line: 496, column: 44, scope: !6287)
!6305 = !DILocation(line: 496, column: 3, scope: !6287)
!6306 = !DILocation(line: 498, column: 18, scope: !6287)
!6307 = !DILocation(line: 498, column: 23, scope: !6287)
!6308 = !DILocation(line: 498, column: 30, scope: !6287)
!6309 = !DILocation(line: 498, column: 3, scope: !6287)
!6310 = !DILocation(line: 499, column: 1, scope: !6259)
!6311 = distinct !DISubprogram(name: "bitmap_set", scope: !6260, file: !6260, line: 469, type: !6261, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6312 = !{!6313, !6314, !6315}
!6313 = !DILocalVariable(name: "map", arg: 1, scope: !6311, file: !6260, line: 469, type: !4060)
!6314 = !DILocalVariable(name: "start", arg: 2, scope: !6311, file: !6260, line: 469, type: !7)
!6315 = !DILocalVariable(name: "nbits", arg: 3, scope: !6311, file: !6260, line: 470, type: !7)
!6316 = !DILocation(line: 469, column: 55, scope: !6311)
!6317 = !DILocation(line: 469, column: 73, scope: !6311)
!6318 = !DILocation(line: 470, column: 16, scope: !6311)
!6319 = !DILocation(line: 472, column: 27, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6311, file: !6260, line: 472, column: 6)
!6321 = !DILocation(line: 472, column: 6, scope: !6320)
!6322 = !DILocation(line: 472, column: 34, scope: !6320)
!6323 = !DILocation(line: 472, column: 37, scope: !6320)
!6324 = !DILocation(line: 472, column: 43, scope: !6320)
!6325 = !DILocation(line: 472, column: 6, scope: !6311)
!6326 = !DILocation(line: 473, column: 3, scope: !6320)
!6327 = !DILocation(line: 474, column: 11, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6320, file: !6260, line: 474, column: 11)
!6329 = !DILocation(line: 474, column: 11, scope: !6320)
!6330 = !DILocation(line: 475, column: 11, scope: !6328)
!6331 = !DILocation(line: 475, column: 4, scope: !6328)
!6332 = !DILocation(line: 475, column: 8, scope: !6328)
!6333 = !DILocation(line: 475, column: 3, scope: !6328)
!6334 = !DILocation(line: 476, column: 32, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6328, file: !6260, line: 476, column: 11)
!6336 = !DILocation(line: 476, column: 38, scope: !6335)
!6337 = !DILocation(line: 476, column: 11, scope: !6335)
!6338 = !DILocation(line: 476, column: 57, scope: !6335)
!6339 = !DILocation(line: 477, column: 4, scope: !6335)
!6340 = !DILocation(line: 477, column: 44, scope: !6335)
!6341 = !DILocation(line: 478, column: 25, scope: !6335)
!6342 = !DILocation(line: 478, column: 31, scope: !6335)
!6343 = !DILocation(line: 478, column: 4, scope: !6335)
!6344 = !DILocation(line: 478, column: 50, scope: !6335)
!6345 = !DILocation(line: 479, column: 4, scope: !6335)
!6346 = !DILocation(line: 476, column: 11, scope: !6328)
!6347 = !DILocation(line: 480, column: 18, scope: !6335)
!6348 = !DILocation(line: 480, column: 24, scope: !6335)
!6349 = !DILocation(line: 480, column: 30, scope: !6335)
!6350 = !DILocation(line: 480, column: 22, scope: !6335)
!6351 = !DILocation(line: 480, column: 41, scope: !6335)
!6352 = !DILocation(line: 480, column: 47, scope: !6335)
!6353 = !DILocation(line: 480, column: 3, scope: !6335)
!6354 = !DILocation(line: 482, column: 16, scope: !6335)
!6355 = !DILocation(line: 482, column: 21, scope: !6335)
!6356 = !DILocation(line: 482, column: 28, scope: !6335)
!6357 = !DILocation(line: 482, column: 3, scope: !6335)
!6358 = !DILocation(line: 483, column: 1, scope: !6311)
!6359 = distinct !DISubprogram(name: "atomic64_add_return", scope: !6360, file: !6360, line: 1684, type: !6361, scopeLine: 1685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6364)
!6360 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!401, !401, !6363}
!6363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!6364 = !{!6365, !6366}
!6365 = !DILocalVariable(name: "i", arg: 1, scope: !6359, file: !6360, line: 1684, type: !401)
!6366 = !DILocalVariable(name: "v", arg: 2, scope: !6359, file: !6360, line: 1684, type: !6363)
!6367 = !DILocation(line: 1684, column: 25, scope: !6359)
!6368 = !DILocation(line: 1684, column: 40, scope: !6359)
!6369 = !DILocation(line: 1686, column: 2, scope: !6359)
!6370 = !DILocation(line: 1686, column: 2, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6359, file: !6360, line: 1686, column: 2)
!6372 = !DILocation(line: 1687, column: 31, scope: !6359)
!6373 = !DILocation(line: 1687, column: 2, scope: !6359)
!6374 = !DILocation(line: 1688, column: 33, scope: !6359)
!6375 = !DILocation(line: 1688, column: 36, scope: !6359)
!6376 = !DILocation(line: 1688, column: 9, scope: !6359)
!6377 = !DILocation(line: 1688, column: 2, scope: !6359)
!6378 = distinct !DISubprogram(name: "__x64_sys_ioperm", scope: !3, file: !3, line: 152, type: !6379, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!1076, !6381}
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6382, size: 64)
!6382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!6383 = !{!6384}
!6384 = !DILocalVariable(name: "regs", arg: 1, scope: !6378, file: !3, line: 152, type: !6381)
!6385 = !DILocation(line: 152, column: 1, scope: !6378)
!6386 = distinct !DISubprogram(name: "__se_sys_ioperm", scope: !3, file: !3, line: 152, type: !6387, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!1076, !1076, !1076, !1076}
!6389 = !{!6390, !6391, !6392, !6393}
!6390 = !DILocalVariable(name: "from", arg: 1, scope: !6386, file: !3, line: 152, type: !1076)
!6391 = !DILocalVariable(name: "num", arg: 2, scope: !6386, file: !3, line: 152, type: !1076)
!6392 = !DILocalVariable(name: "turn_on", arg: 3, scope: !6386, file: !3, line: 152, type: !1076)
!6393 = !DILocalVariable(name: "ret", scope: !6386, file: !3, line: 152, type: !1076)
!6394 = !DILocation(line: 152, column: 1, scope: !6386)
!6395 = !DILocation(line: 152, column: 1, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 152, column: 1)
!6397 = distinct !DISubprogram(name: "__ia32_sys_ioperm", scope: !3, file: !3, line: 152, type: !6379, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6398)
!6398 = !{!6399}
!6399 = !DILocalVariable(name: "regs", arg: 1, scope: !6397, file: !3, line: 152, type: !6381)
!6400 = !DILocation(line: 152, column: 1, scope: !6397)
!6401 = distinct !DISubprogram(name: "__x64_sys_iopl", scope: !3, file: !3, line: 173, type: !6379, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6402)
!6402 = !{!6403}
!6403 = !DILocalVariable(name: "regs", arg: 1, scope: !6401, file: !3, line: 173, type: !6381)
!6404 = !DILocation(line: 173, column: 1, scope: !6401)
!6405 = distinct !DISubprogram(name: "__se_sys_iopl", scope: !3, file: !3, line: 173, type: !6406, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6408)
!6406 = !DISubroutineType(types: !6407)
!6407 = !{!1076, !1076}
!6408 = !{!6409, !6410}
!6409 = !DILocalVariable(name: "level", arg: 1, scope: !6405, file: !3, line: 173, type: !1076)
!6410 = !DILocalVariable(name: "ret", scope: !6405, file: !3, line: 173, type: !1076)
!6411 = !DILocation(line: 173, column: 1, scope: !6405)
!6412 = !DILocation(line: 173, column: 1, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 173, column: 1)
!6414 = distinct !DISubprogram(name: "__ia32_sys_iopl", scope: !3, file: !3, line: 173, type: !6379, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6415)
!6415 = !{!6416}
!6416 = !DILocalVariable(name: "regs", arg: 1, scope: !6414, file: !3, line: 173, type: !6381)
!6417 = !DILocation(line: 173, column: 1, scope: !6414)
!6418 = distinct !DISubprogram(name: "__refcount_inc", scope: !296, file: !296, line: 248, type: !6419, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6421)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{null, !5923, !2410}
!6421 = !{!6422, !6423}
!6422 = !DILocalVariable(name: "r", arg: 1, scope: !6418, file: !296, line: 248, type: !5923)
!6423 = !DILocalVariable(name: "oldp", arg: 2, scope: !6418, file: !296, line: 248, type: !2410)
!6424 = !DILocation(line: 248, column: 47, scope: !6418)
!6425 = !DILocation(line: 248, column: 55, scope: !6418)
!6426 = !DILocation(line: 250, column: 20, scope: !6418)
!6427 = !DILocation(line: 250, column: 23, scope: !6418)
!6428 = !DILocation(line: 250, column: 2, scope: !6418)
!6429 = !DILocation(line: 251, column: 1, scope: !6418)
!6430 = distinct !DISubprogram(name: "__refcount_add", scope: !296, file: !296, line: 191, type: !6431, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6433)
!6431 = !DISubroutineType(types: !6432)
!6432 = !{null, !22, !5923, !2410}
!6433 = !{!6434, !6435, !6436, !6437}
!6434 = !DILocalVariable(name: "i", arg: 1, scope: !6430, file: !296, line: 191, type: !22)
!6435 = !DILocalVariable(name: "r", arg: 2, scope: !6430, file: !296, line: 191, type: !5923)
!6436 = !DILocalVariable(name: "oldp", arg: 3, scope: !6430, file: !296, line: 191, type: !2410)
!6437 = !DILocalVariable(name: "old", scope: !6430, file: !296, line: 193, type: !22)
!6438 = !DILocation(line: 191, column: 39, scope: !6430)
!6439 = !DILocation(line: 191, column: 54, scope: !6430)
!6440 = !DILocation(line: 191, column: 62, scope: !6430)
!6441 = !DILocation(line: 193, column: 2, scope: !6430)
!6442 = !DILocation(line: 193, column: 6, scope: !6430)
!6443 = !DILocation(line: 193, column: 37, scope: !6430)
!6444 = !DILocation(line: 193, column: 41, scope: !6430)
!6445 = !DILocation(line: 193, column: 44, scope: !6430)
!6446 = !DILocation(line: 193, column: 12, scope: !6430)
!6447 = !DILocation(line: 195, column: 6, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6430, file: !296, line: 195, column: 6)
!6449 = !DILocation(line: 195, column: 6, scope: !6430)
!6450 = !DILocation(line: 196, column: 11, scope: !6448)
!6451 = !DILocation(line: 196, column: 4, scope: !6448)
!6452 = !DILocation(line: 196, column: 9, scope: !6448)
!6453 = !DILocation(line: 196, column: 3, scope: !6448)
!6454 = !DILocation(line: 198, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6430, file: !296, line: 198, column: 6)
!6456 = !DILocation(line: 198, column: 6, scope: !6430)
!6457 = !DILocation(line: 199, column: 26, scope: !6455)
!6458 = !DILocation(line: 199, column: 3, scope: !6455)
!6459 = !DILocation(line: 200, column: 11, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6455, file: !296, line: 200, column: 11)
!6461 = !DILocation(line: 200, column: 11, scope: !6455)
!6462 = !DILocation(line: 201, column: 26, scope: !6460)
!6463 = !DILocation(line: 201, column: 3, scope: !6460)
!6464 = !DILocation(line: 202, column: 1, scope: !6430)
!6465 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6360, file: !6360, line: 250, type: !6466, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!22, !22, !6468}
!6468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "i", arg: 1, scope: !6465, file: !6360, line: 250, type: !22)
!6471 = !DILocalVariable(name: "v", arg: 2, scope: !6465, file: !6360, line: 250, type: !6468)
!6472 = !DILocation(line: 250, column: 30, scope: !6465)
!6473 = !DILocation(line: 250, column: 43, scope: !6465)
!6474 = !DILocation(line: 252, column: 31, scope: !6465)
!6475 = !DILocation(line: 252, column: 2, scope: !6465)
!6476 = !DILocation(line: 253, column: 38, scope: !6465)
!6477 = !DILocation(line: 253, column: 41, scope: !6465)
!6478 = !DILocation(line: 253, column: 9, scope: !6465)
!6479 = !DILocation(line: 253, column: 2, scope: !6465)
!6480 = !DISubprogram(name: "refcount_warn_saturate", scope: !296, file: !296, line: 127, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !5923, !295}
!6483 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6484, file: !6484, line: 94, type: !6485, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6484 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !6487, !35}
!6487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6488, size: 64)
!6488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6489)
!6489 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6490 = !{!6491, !6492}
!6491 = !DILocalVariable(name: "v", arg: 1, scope: !6483, file: !6484, line: 94, type: !6487)
!6492 = !DILocalVariable(name: "size", arg: 2, scope: !6483, file: !6484, line: 94, type: !35)
!6493 = !DILocation(line: 94, column: 79, scope: !6483)
!6494 = !DILocation(line: 94, column: 89, scope: !6483)
!6495 = !DILocation(line: 96, column: 20, scope: !6483)
!6496 = !DILocation(line: 96, column: 23, scope: !6483)
!6497 = !DILocation(line: 96, column: 2, scope: !6483)
!6498 = !DILocation(line: 97, column: 2, scope: !6483)
!6499 = !DILocation(line: 98, column: 1, scope: !6483)
!6500 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6501, file: !6501, line: 731, type: !6466, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6501 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6502 = !{!6503, !6504}
!6503 = !DILocalVariable(name: "i", arg: 1, scope: !6500, file: !6501, line: 731, type: !22)
!6504 = !DILocalVariable(name: "v", arg: 2, scope: !6500, file: !6501, line: 731, type: !6468)
!6505 = !DILocation(line: 731, column: 34, scope: !6500)
!6506 = !DILocation(line: 731, column: 47, scope: !6500)
!6507 = !DILocation(line: 736, column: 31, scope: !6500)
!6508 = !DILocation(line: 736, column: 34, scope: !6500)
!6509 = !DILocation(line: 736, column: 9, scope: !6500)
!6510 = !DILocation(line: 736, column: 2, scope: !6500)
!6511 = distinct !DISubprogram(name: "kasan_check_write", scope: !6512, file: !6512, line: 44, type: !6513, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6515)
!6512 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!851, !6487, !7}
!6515 = !{!6516, !6517}
!6516 = !DILocalVariable(name: "p", arg: 1, scope: !6511, file: !6512, line: 44, type: !6487)
!6517 = !DILocalVariable(name: "size", arg: 2, scope: !6511, file: !6512, line: 44, type: !7)
!6518 = !DILocation(line: 44, column: 59, scope: !6511)
!6519 = !DILocation(line: 44, column: 75, scope: !6511)
!6520 = !DILocation(line: 46, column: 2, scope: !6511)
!6521 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6522, file: !6522, line: 229, type: !6523, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6522 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6523 = !DISubroutineType(types: !6524)
!6524 = !{null, !6487, !35, !22}
!6525 = !{!6526, !6527, !6528}
!6526 = !DILocalVariable(name: "ptr", arg: 1, scope: !6521, file: !6522, line: 229, type: !6487)
!6527 = !DILocalVariable(name: "size", arg: 2, scope: !6521, file: !6522, line: 229, type: !35)
!6528 = !DILocalVariable(name: "type", arg: 3, scope: !6521, file: !6522, line: 230, type: !22)
!6529 = !DILocation(line: 229, column: 60, scope: !6521)
!6530 = !DILocation(line: 229, column: 72, scope: !6521)
!6531 = !DILocation(line: 230, column: 15, scope: !6521)
!6532 = !DILocation(line: 230, column: 23, scope: !6521)
!6533 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6534, file: !6534, line: 95, type: !6466, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6535)
!6534 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6535 = !{!6536, !6537, !6538}
!6536 = !DILocalVariable(name: "i", arg: 1, scope: !6533, file: !6534, line: 95, type: !22)
!6537 = !DILocalVariable(name: "v", arg: 2, scope: !6533, file: !6534, line: 95, type: !6468)
!6538 = !DILocalVariable(name: "__ret", scope: !6539, file: !6534, line: 97, type: !22)
!6539 = distinct !DILexicalBlock(scope: !6533, file: !6534, line: 97, column: 9)
!6540 = !DILocation(line: 95, column: 54, scope: !6533)
!6541 = !DILocation(line: 95, column: 67, scope: !6533)
!6542 = !DILocation(line: 97, column: 9, scope: !6539)
!6543 = !{i64 2148078202, i64 2148078241, i64 2148078262, i64 2148078299, i64 2148078322, i64 2148078331}
!6544 = !DILocation(line: 97, column: 9, scope: !6533)
!6545 = !DILocation(line: 97, column: 2, scope: !6533)
!6546 = distinct !DISubprogram(name: "clear_tsk_thread_flag", scope: !333, file: !333, line: 2045, type: !5931, scopeLine: 2046, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6547 = !{!6548, !6549}
!6548 = !DILocalVariable(name: "tsk", arg: 1, scope: !6546, file: !333, line: 2045, type: !331)
!6549 = !DILocalVariable(name: "flag", arg: 2, scope: !6546, file: !333, line: 2045, type: !22)
!6550 = !DILocation(line: 2045, column: 62, scope: !6546)
!6551 = !DILocation(line: 2045, column: 71, scope: !6546)
!6552 = !DILocation(line: 2047, column: 23, scope: !6546)
!6553 = !DILocation(line: 2047, column: 46, scope: !6546)
!6554 = !DILocation(line: 2047, column: 2, scope: !6546)
!6555 = !DILocation(line: 2048, column: 1, scope: !6546)
!6556 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6557, file: !6557, line: 78, type: !5328, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6558)
!6557 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6558 = !{!6559, !6560, !6562}
!6559 = !DILocalVariable(name: "val", arg: 1, scope: !6556, file: !6557, line: 78, type: !22)
!6560 = !DILocalVariable(name: "pao_ID__", scope: !6561, file: !6557, line: 80, type: !2476)
!6561 = distinct !DILexicalBlock(scope: !6556, file: !6557, line: 80, column: 2)
!6562 = !DILocalVariable(name: "pto_val__", scope: !6563, file: !6557, line: 80, type: !327)
!6563 = distinct !DILexicalBlock(scope: !6564, file: !6557, line: 80, column: 2)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !6557, line: 80, column: 2)
!6565 = distinct !DILexicalBlock(scope: !6561, file: !6557, line: 80, column: 2)
!6566 = !DILocation(line: 78, column: 53, scope: !6556)
!6567 = !DILocation(line: 80, column: 2, scope: !6556)
!6568 = !DILocation(line: 80, column: 2, scope: !6561)
!6569 = !DILocation(line: 80, column: 2, scope: !6565)
!6570 = !DILocation(line: 80, column: 2, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6565, file: !6557, line: 80, column: 2)
!6572 = !{i64 2149612561}
!6573 = !DILocation(line: 80, column: 2, scope: !6564)
!6574 = !DILocation(line: 80, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6564, file: !6557, line: 80, column: 2)
!6576 = !{i64 2149612856}
!6577 = !DILocation(line: 80, column: 2, scope: !6563)
!6578 = !{i64 2149613561}
!6579 = !DILocation(line: 81, column: 1, scope: !6556)
!6580 = !DISubprogram(name: "native_tss_update_io_bitmap", scope: !5709, file: !5709, line: 37, type: !2686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6581 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6557, file: !6557, line: 93, type: !2088, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6582)
!6582 = !{!6583}
!6583 = !DILocalVariable(name: "c", scope: !6584, file: !6557, line: 95, type: !851)
!6584 = distinct !DILexicalBlock(scope: !6581, file: !6557, line: 95, column: 9)
!6585 = !DILocation(line: 95, column: 9, scope: !6584)
!6586 = !{i64 2149616917, i64 2149617010}
!6587 = !{i8 0, i8 2}
!6588 = !DILocation(line: 95, column: 9, scope: !6581)
!6589 = !DILocation(line: 95, column: 2, scope: !6581)
!6590 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !6246, file: !6246, line: 92, type: !6247, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6591)
!6591 = !{!6592, !6593}
!6592 = !DILocalVariable(name: "ti", arg: 1, scope: !6590, file: !6246, line: 92, type: !320)
!6593 = !DILocalVariable(name: "flag", arg: 2, scope: !6590, file: !6246, line: 92, type: !22)
!6594 = !DILocation(line: 92, column: 61, scope: !6590)
!6595 = !DILocation(line: 92, column: 69, scope: !6590)
!6596 = !DILocation(line: 94, column: 12, scope: !6590)
!6597 = !DILocation(line: 94, column: 36, scope: !6590)
!6598 = !DILocation(line: 94, column: 40, scope: !6590)
!6599 = !DILocation(line: 94, column: 2, scope: !6590)
!6600 = !DILocation(line: 95, column: 1, scope: !6590)
!6601 = distinct !DISubprogram(name: "clear_bit", scope: !6602, file: !6602, line: 39, type: !6603, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6607)
!6602 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6603 = !DISubroutineType(types: !6604)
!6604 = !{null, !1076, !6605}
!6605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6606, size: 64)
!6606 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!6607 = !{!6608, !6609}
!6608 = !DILocalVariable(name: "nr", arg: 1, scope: !6601, file: !6602, line: 39, type: !1076)
!6609 = !DILocalVariable(name: "addr", arg: 2, scope: !6601, file: !6602, line: 39, type: !6605)
!6610 = !DILocation(line: 39, column: 44, scope: !6601)
!6611 = !DILocation(line: 39, column: 72, scope: !6601)
!6612 = !DILocation(line: 41, column: 26, scope: !6601)
!6613 = !DILocation(line: 41, column: 33, scope: !6601)
!6614 = !DILocation(line: 41, column: 31, scope: !6601)
!6615 = !DILocation(line: 41, column: 2, scope: !6601)
!6616 = !DILocation(line: 42, column: 17, scope: !6601)
!6617 = !DILocation(line: 42, column: 21, scope: !6601)
!6618 = !DILocation(line: 42, column: 2, scope: !6601)
!6619 = !DILocation(line: 43, column: 1, scope: !6601)
!6620 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6484, file: !6484, line: 80, type: !6485, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6621 = !{!6622, !6623}
!6622 = !DILocalVariable(name: "v", arg: 1, scope: !6620, file: !6484, line: 80, type: !6487)
!6623 = !DILocalVariable(name: "size", arg: 2, scope: !6620, file: !6484, line: 80, type: !35)
!6624 = !DILocation(line: 80, column: 74, scope: !6620)
!6625 = !DILocation(line: 80, column: 84, scope: !6620)
!6626 = !DILocation(line: 82, column: 20, scope: !6620)
!6627 = !DILocation(line: 82, column: 23, scope: !6620)
!6628 = !DILocation(line: 82, column: 2, scope: !6620)
!6629 = !DILocation(line: 83, column: 2, scope: !6620)
!6630 = !DILocation(line: 84, column: 1, scope: !6620)
!6631 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6632, file: !6632, line: 72, type: !6603, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6632 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6633 = !{!6634, !6635}
!6634 = !DILocalVariable(name: "nr", arg: 1, scope: !6631, file: !6632, line: 72, type: !1076)
!6635 = !DILocalVariable(name: "addr", arg: 2, scope: !6631, file: !6632, line: 72, type: !6605)
!6636 = !DILocation(line: 72, column: 21, scope: !6631)
!6637 = !DILocation(line: 72, column: 49, scope: !6631)
!6638 = !DILocation(line: 74, column: 27, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6631, file: !6632, line: 74, column: 6)
!6640 = !DILocation(line: 74, column: 6, scope: !6639)
!6641 = !DILocation(line: 74, column: 6, scope: !6631)
!6642 = !DILocation(line: 76, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6639, file: !6632, line: 74, column: 32)
!6644 = !DILocation(line: 77, column: 13, scope: !6643)
!6645 = !DILocation(line: 77, column: 12, scope: !6643)
!6646 = !DILocation(line: 75, column: 3, scope: !6643)
!6647 = !{i64 2148842477, i64 2148842516, i64 2148842537, i64 2148842574, i64 2148842597, i64 2148842467}
!6648 = !DILocation(line: 78, column: 2, scope: !6643)
!6649 = !DILocation(line: 80, column: 8, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6639, file: !6632, line: 78, column: 9)
!6651 = !DILocation(line: 80, column: 32, scope: !6650)
!6652 = !DILocation(line: 79, column: 3, scope: !6650)
!6653 = !{i64 2148842762, i64 2148842801, i64 2148842822, i64 2148842859, i64 2148842882, i64 2148842752}
!6654 = !DILocation(line: 82, column: 1, scope: !6631)
!6655 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !296, file: !296, line: 313, type: !6656, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!851, !5923, !2410}
!6658 = !{!6659, !6660}
!6659 = !DILocalVariable(name: "r", arg: 1, scope: !6655, file: !296, line: 313, type: !5923)
!6660 = !DILocalVariable(name: "oldp", arg: 2, scope: !6655, file: !296, line: 313, type: !2410)
!6661 = !DILocation(line: 313, column: 69, scope: !6655)
!6662 = !DILocation(line: 313, column: 77, scope: !6655)
!6663 = !DILocation(line: 315, column: 36, scope: !6655)
!6664 = !DILocation(line: 315, column: 39, scope: !6655)
!6665 = !DILocation(line: 315, column: 9, scope: !6655)
!6666 = !DILocation(line: 315, column: 2, scope: !6655)
!6667 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !296, file: !296, line: 270, type: !6668, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6670)
!6668 = !DISubroutineType(types: !6669)
!6669 = !{!851, !22, !5923, !2410}
!6670 = !{!6671, !6672, !6673, !6674}
!6671 = !DILocalVariable(name: "i", arg: 1, scope: !6667, file: !296, line: 270, type: !22)
!6672 = !DILocalVariable(name: "r", arg: 2, scope: !6667, file: !296, line: 270, type: !5923)
!6673 = !DILocalVariable(name: "oldp", arg: 3, scope: !6667, file: !296, line: 270, type: !2410)
!6674 = !DILocalVariable(name: "old", scope: !6667, file: !296, line: 272, type: !22)
!6675 = !DILocation(line: 270, column: 61, scope: !6667)
!6676 = !DILocation(line: 270, column: 76, scope: !6667)
!6677 = !DILocation(line: 270, column: 84, scope: !6667)
!6678 = !DILocation(line: 272, column: 2, scope: !6667)
!6679 = !DILocation(line: 272, column: 6, scope: !6667)
!6680 = !DILocation(line: 272, column: 37, scope: !6667)
!6681 = !DILocation(line: 272, column: 41, scope: !6667)
!6682 = !DILocation(line: 272, column: 44, scope: !6667)
!6683 = !DILocation(line: 272, column: 12, scope: !6667)
!6684 = !DILocation(line: 274, column: 6, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6667, file: !296, line: 274, column: 6)
!6686 = !DILocation(line: 274, column: 6, scope: !6667)
!6687 = !DILocation(line: 275, column: 11, scope: !6685)
!6688 = !DILocation(line: 275, column: 4, scope: !6685)
!6689 = !DILocation(line: 275, column: 9, scope: !6685)
!6690 = !DILocation(line: 275, column: 3, scope: !6685)
!6691 = !DILocation(line: 277, column: 6, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6667, file: !296, line: 277, column: 6)
!6693 = !DILocation(line: 277, column: 13, scope: !6692)
!6694 = !DILocation(line: 277, column: 10, scope: !6692)
!6695 = !DILocation(line: 277, column: 6, scope: !6667)
!6696 = !DILocation(line: 278, column: 3, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6692, file: !296, line: 277, column: 16)
!6698 = !DILocation(line: 278, column: 3, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6697, file: !296, line: 278, column: 3)
!6700 = !DILocation(line: 278, column: 3, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6699, file: !296, line: 278, column: 3)
!6702 = !DILocation(line: 278, column: 3, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6699, file: !296, line: 278, column: 3)
!6704 = !DILocation(line: 278, column: 3, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6703, file: !296, line: 278, column: 3)
!6706 = !{i64 2150070972}
!6707 = !DILocation(line: 279, column: 3, scope: !6697)
!6708 = !DILocation(line: 282, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6667, file: !296, line: 282, column: 6)
!6710 = !DILocation(line: 282, column: 6, scope: !6667)
!6711 = !DILocation(line: 283, column: 26, scope: !6709)
!6712 = !DILocation(line: 283, column: 3, scope: !6709)
!6713 = !DILocation(line: 285, column: 2, scope: !6667)
!6714 = !DILocation(line: 286, column: 1, scope: !6667)
!6715 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6360, file: !6360, line: 397, type: !6466, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6716 = !{!6717, !6718}
!6717 = !DILocalVariable(name: "i", arg: 1, scope: !6715, file: !6360, line: 397, type: !22)
!6718 = !DILocalVariable(name: "v", arg: 2, scope: !6715, file: !6360, line: 397, type: !6468)
!6719 = !DILocation(line: 397, column: 30, scope: !6715)
!6720 = !DILocation(line: 397, column: 43, scope: !6715)
!6721 = !DILocation(line: 399, column: 2, scope: !6715)
!6722 = !DILocation(line: 399, column: 2, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6715, file: !6360, line: 399, column: 2)
!6724 = !DILocation(line: 400, column: 31, scope: !6715)
!6725 = !DILocation(line: 400, column: 2, scope: !6715)
!6726 = !DILocation(line: 401, column: 38, scope: !6715)
!6727 = !DILocation(line: 401, column: 41, scope: !6715)
!6728 = !DILocation(line: 401, column: 9, scope: !6715)
!6729 = !DILocation(line: 401, column: 2, scope: !6715)
!6730 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6501, file: !6501, line: 928, type: !6466, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6731)
!6731 = !{!6732, !6733}
!6732 = !DILocalVariable(name: "i", arg: 1, scope: !6730, file: !6501, line: 928, type: !22)
!6733 = !DILocalVariable(name: "v", arg: 2, scope: !6730, file: !6501, line: 928, type: !6468)
!6734 = !DILocation(line: 928, column: 34, scope: !6730)
!6735 = !DILocation(line: 928, column: 47, scope: !6730)
!6736 = !DILocation(line: 936, column: 31, scope: !6730)
!6737 = !DILocation(line: 936, column: 34, scope: !6730)
!6738 = !DILocation(line: 936, column: 9, scope: !6730)
!6739 = !DILocation(line: 936, column: 2, scope: !6730)
!6740 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6534, file: !6534, line: 101, type: !6466, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6741 = !{!6742, !6743, !6744}
!6742 = !DILocalVariable(name: "i", arg: 1, scope: !6740, file: !6534, line: 101, type: !22)
!6743 = !DILocalVariable(name: "v", arg: 2, scope: !6740, file: !6534, line: 101, type: !6468)
!6744 = !DILocalVariable(name: "__ret", scope: !6745, file: !6534, line: 103, type: !22)
!6745 = distinct !DILexicalBlock(scope: !6740, file: !6534, line: 103, column: 9)
!6746 = !DILocation(line: 101, column: 54, scope: !6740)
!6747 = !DILocation(line: 101, column: 67, scope: !6740)
!6748 = !DILocation(line: 103, column: 9, scope: !6745)
!6749 = !{i64 2148080391, i64 2148080430, i64 2148080451, i64 2148080488, i64 2148080511, i64 2148080520}
!6750 = !DILocation(line: 103, column: 9, scope: !6740)
!6751 = !DILocation(line: 103, column: 2, scope: !6740)
!6752 = !DISubprogram(name: "kmalloc_large", scope: !309, file: !309, line: 531, type: !6174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6753 = distinct !DISubprogram(name: "__kmalloc_index", scope: !309, file: !309, line: 444, type: !6754, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!7, !35, !851}
!6756 = !{!6757, !6758}
!6757 = !DILocalVariable(name: "size", arg: 1, scope: !6753, file: !309, line: 444, type: !35)
!6758 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6753, file: !309, line: 445, type: !851)
!6759 = !DILocation(line: 444, column: 60, scope: !6753)
!6760 = !DILocation(line: 445, column: 16, scope: !6753)
!6761 = !DILocation(line: 447, column: 7, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 447, column: 6)
!6763 = !DILocation(line: 447, column: 6, scope: !6753)
!6764 = !DILocation(line: 448, column: 3, scope: !6762)
!6765 = !DILocation(line: 450, column: 6, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 450, column: 6)
!6767 = !DILocation(line: 450, column: 11, scope: !6766)
!6768 = !DILocation(line: 450, column: 6, scope: !6753)
!6769 = !DILocation(line: 451, column: 3, scope: !6766)
!6770 = !DILocation(line: 453, column: 32, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 453, column: 6)
!6772 = !DILocation(line: 453, column: 37, scope: !6771)
!6773 = !DILocation(line: 453, column: 42, scope: !6771)
!6774 = !DILocation(line: 453, column: 45, scope: !6771)
!6775 = !DILocation(line: 453, column: 50, scope: !6771)
!6776 = !DILocation(line: 453, column: 6, scope: !6753)
!6777 = !DILocation(line: 454, column: 3, scope: !6771)
!6778 = !DILocation(line: 455, column: 32, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 455, column: 6)
!6780 = !DILocation(line: 455, column: 37, scope: !6779)
!6781 = !DILocation(line: 455, column: 43, scope: !6779)
!6782 = !DILocation(line: 455, column: 46, scope: !6779)
!6783 = !DILocation(line: 455, column: 51, scope: !6779)
!6784 = !DILocation(line: 455, column: 6, scope: !6753)
!6785 = !DILocation(line: 456, column: 3, scope: !6779)
!6786 = !DILocation(line: 457, column: 6, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 457, column: 6)
!6788 = !DILocation(line: 457, column: 11, scope: !6787)
!6789 = !DILocation(line: 457, column: 6, scope: !6753)
!6790 = !DILocation(line: 457, column: 26, scope: !6787)
!6791 = !DILocation(line: 458, column: 6, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 458, column: 6)
!6793 = !DILocation(line: 458, column: 11, scope: !6792)
!6794 = !DILocation(line: 458, column: 6, scope: !6753)
!6795 = !DILocation(line: 458, column: 26, scope: !6792)
!6796 = !DILocation(line: 459, column: 6, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 459, column: 6)
!6798 = !DILocation(line: 459, column: 11, scope: !6797)
!6799 = !DILocation(line: 459, column: 6, scope: !6753)
!6800 = !DILocation(line: 459, column: 26, scope: !6797)
!6801 = !DILocation(line: 460, column: 6, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 460, column: 6)
!6803 = !DILocation(line: 460, column: 11, scope: !6802)
!6804 = !DILocation(line: 460, column: 6, scope: !6753)
!6805 = !DILocation(line: 460, column: 26, scope: !6802)
!6806 = !DILocation(line: 461, column: 6, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 461, column: 6)
!6808 = !DILocation(line: 461, column: 11, scope: !6807)
!6809 = !DILocation(line: 461, column: 6, scope: !6753)
!6810 = !DILocation(line: 461, column: 26, scope: !6807)
!6811 = !DILocation(line: 462, column: 6, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 462, column: 6)
!6813 = !DILocation(line: 462, column: 11, scope: !6812)
!6814 = !DILocation(line: 462, column: 6, scope: !6753)
!6815 = !DILocation(line: 462, column: 26, scope: !6812)
!6816 = !DILocation(line: 463, column: 6, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 463, column: 6)
!6818 = !DILocation(line: 463, column: 11, scope: !6817)
!6819 = !DILocation(line: 463, column: 6, scope: !6753)
!6820 = !DILocation(line: 463, column: 26, scope: !6817)
!6821 = !DILocation(line: 464, column: 6, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 464, column: 6)
!6823 = !DILocation(line: 464, column: 11, scope: !6822)
!6824 = !DILocation(line: 464, column: 6, scope: !6753)
!6825 = !DILocation(line: 464, column: 26, scope: !6822)
!6826 = !DILocation(line: 465, column: 6, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 465, column: 6)
!6828 = !DILocation(line: 465, column: 11, scope: !6827)
!6829 = !DILocation(line: 465, column: 6, scope: !6753)
!6830 = !DILocation(line: 465, column: 26, scope: !6827)
!6831 = !DILocation(line: 466, column: 6, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 466, column: 6)
!6833 = !DILocation(line: 466, column: 11, scope: !6832)
!6834 = !DILocation(line: 466, column: 6, scope: !6753)
!6835 = !DILocation(line: 466, column: 26, scope: !6832)
!6836 = !DILocation(line: 467, column: 6, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 467, column: 6)
!6838 = !DILocation(line: 467, column: 11, scope: !6837)
!6839 = !DILocation(line: 467, column: 6, scope: !6753)
!6840 = !DILocation(line: 467, column: 26, scope: !6837)
!6841 = !DILocation(line: 468, column: 6, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 468, column: 6)
!6843 = !DILocation(line: 468, column: 11, scope: !6842)
!6844 = !DILocation(line: 468, column: 6, scope: !6753)
!6845 = !DILocation(line: 468, column: 26, scope: !6842)
!6846 = !DILocation(line: 469, column: 6, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 469, column: 6)
!6848 = !DILocation(line: 469, column: 11, scope: !6847)
!6849 = !DILocation(line: 469, column: 6, scope: !6753)
!6850 = !DILocation(line: 469, column: 26, scope: !6847)
!6851 = !DILocation(line: 470, column: 6, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 470, column: 6)
!6853 = !DILocation(line: 470, column: 11, scope: !6852)
!6854 = !DILocation(line: 470, column: 6, scope: !6753)
!6855 = !DILocation(line: 470, column: 26, scope: !6852)
!6856 = !DILocation(line: 471, column: 6, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 471, column: 6)
!6858 = !DILocation(line: 471, column: 11, scope: !6857)
!6859 = !DILocation(line: 471, column: 6, scope: !6753)
!6860 = !DILocation(line: 471, column: 26, scope: !6857)
!6861 = !DILocation(line: 472, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 472, column: 6)
!6863 = !DILocation(line: 472, column: 11, scope: !6862)
!6864 = !DILocation(line: 472, column: 6, scope: !6753)
!6865 = !DILocation(line: 472, column: 26, scope: !6862)
!6866 = !DILocation(line: 473, column: 6, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 473, column: 6)
!6868 = !DILocation(line: 473, column: 11, scope: !6867)
!6869 = !DILocation(line: 473, column: 6, scope: !6753)
!6870 = !DILocation(line: 473, column: 26, scope: !6867)
!6871 = !DILocation(line: 474, column: 6, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 474, column: 6)
!6873 = !DILocation(line: 474, column: 11, scope: !6872)
!6874 = !DILocation(line: 474, column: 6, scope: !6753)
!6875 = !DILocation(line: 474, column: 27, scope: !6872)
!6876 = !DILocation(line: 475, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 475, column: 6)
!6878 = !DILocation(line: 475, column: 11, scope: !6877)
!6879 = !DILocation(line: 475, column: 6, scope: !6753)
!6880 = !DILocation(line: 475, column: 32, scope: !6877)
!6881 = !DILocation(line: 477, column: 50, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6753, file: !309, line: 477, column: 6)
!6883 = !DILocation(line: 477, column: 6, scope: !6753)
!6884 = !DILocation(line: 478, column: 3, scope: !6882)
!6885 = !DILocation(line: 478, column: 3, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6887, file: !309, line: 478, column: 3)
!6887 = distinct !DILexicalBlock(scope: !6882, file: !309, line: 478, column: 3)
!6888 = !{i32 -2141645374}
!6889 = !DILocation(line: 478, column: 3, scope: !6887)
!6890 = !DILocation(line: 480, column: 3, scope: !6882)
!6891 = !DILocation(line: 480, column: 3, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6882, file: !309, line: 480, column: 3)
!6893 = !DILocation(line: 480, column: 3, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6892, file: !309, line: 480, column: 3)
!6895 = !DILocation(line: 480, column: 3, scope: !6896)
!6896 = distinct !DILexicalBlock(scope: !6892, file: !309, line: 480, column: 3)
!6897 = !{i64 2153322125, i64 2153322154, i64 2153322200, i64 2153322258, i64 2153322312, i64 2153322366, i64 2153322421, i64 2153322452}
!6898 = !DILocation(line: 483, column: 2, scope: !6753)
!6899 = !DILocation(line: 484, column: 1, scope: !6753)
!6900 = !DISubprogram(name: "kmalloc_trace", scope: !309, file: !309, line: 525, type: !6901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6901 = !DISubroutineType(types: !6902)
!6902 = !{!20, !784, !319, !35}
!6903 = distinct !DISubprogram(name: "kmalloc_type", scope: !309, file: !309, line: 401, type: !6904, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6906)
!6904 = !DISubroutineType(types: !6905)
!6905 = !{!308, !319, !39}
!6906 = !{!6907, !6908}
!6907 = !DILocalVariable(name: "flags", arg: 1, scope: !6903, file: !309, line: 401, type: !319)
!6908 = !DILocalVariable(name: "caller", arg: 2, scope: !6903, file: !309, line: 401, type: !39)
!6909 = !DILocation(line: 401, column: 67, scope: !6903)
!6910 = !DILocation(line: 401, column: 88, scope: !6903)
!6911 = !DILocation(line: 407, column: 6, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6903, file: !309, line: 407, column: 6)
!6913 = !DILocation(line: 407, column: 6, scope: !6903)
!6914 = !DILocation(line: 413, column: 3, scope: !6912)
!6915 = !DILocation(line: 423, column: 38, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6903, file: !309, line: 423, column: 6)
!6917 = !DILocation(line: 423, column: 44, scope: !6916)
!6918 = !DILocation(line: 423, column: 6, scope: !6903)
!6919 = !DILocation(line: 424, column: 3, scope: !6916)
!6920 = !DILocation(line: 426, column: 3, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6903, file: !309, line: 425, column: 6)
!6922 = !DILocation(line: 429, column: 1, scope: !6903)
!6923 = !DISubprogram(name: "__kmalloc", scope: !309, file: !309, line: 488, type: !6174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6924 = !DISubprogram(name: "__compiletime_assert_245", scope: !309, file: !309, line: 478, type: !2686, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6925 = distinct !DISubprogram(name: "atomic_set", scope: !6360, file: !6360, line: 65, type: !6926, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6928)
!6926 = !DISubroutineType(types: !6927)
!6927 = !{null, !6468, !22}
!6928 = !{!6929, !6930}
!6929 = !DILocalVariable(name: "v", arg: 1, scope: !6925, file: !6360, line: 65, type: !6468)
!6930 = !DILocalVariable(name: "i", arg: 2, scope: !6925, file: !6360, line: 65, type: !22)
!6931 = !DILocation(line: 65, column: 22, scope: !6925)
!6932 = !DILocation(line: 65, column: 29, scope: !6925)
!6933 = !DILocation(line: 67, column: 26, scope: !6925)
!6934 = !DILocation(line: 67, column: 2, scope: !6925)
!6935 = !DILocation(line: 68, column: 17, scope: !6925)
!6936 = !DILocation(line: 68, column: 20, scope: !6925)
!6937 = !DILocation(line: 68, column: 2, scope: !6925)
!6938 = !DILocation(line: 69, column: 1, scope: !6925)
!6939 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6501, file: !6501, line: 488, type: !6926, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6940 = !{!6941, !6942}
!6941 = !DILocalVariable(name: "v", arg: 1, scope: !6939, file: !6501, line: 488, type: !6468)
!6942 = !DILocalVariable(name: "i", arg: 2, scope: !6939, file: !6501, line: 488, type: !22)
!6943 = !DILocation(line: 488, column: 26, scope: !6939)
!6944 = !DILocation(line: 488, column: 33, scope: !6939)
!6945 = !DILocation(line: 490, column: 18, scope: !6939)
!6946 = !DILocation(line: 490, column: 21, scope: !6939)
!6947 = !DILocation(line: 490, column: 2, scope: !6939)
!6948 = !DILocation(line: 491, column: 1, scope: !6939)
!6949 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6534, file: !6534, line: 26, type: !6926, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6950)
!6950 = !{!6951, !6952}
!6951 = !DILocalVariable(name: "v", arg: 1, scope: !6949, file: !6534, line: 26, type: !6468)
!6952 = !DILocalVariable(name: "i", arg: 2, scope: !6949, file: !6534, line: 26, type: !22)
!6953 = !DILocation(line: 26, column: 55, scope: !6949)
!6954 = !DILocation(line: 26, column: 62, scope: !6949)
!6955 = !DILocation(line: 28, column: 2, scope: !6949)
!6956 = !DILocation(line: 28, column: 2, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6949, file: !6534, line: 28, column: 2)
!6958 = !DILocation(line: 29, column: 1, scope: !6949)
!6959 = distinct !DISubprogram(name: "atomic_read", scope: !6360, file: !6360, line: 30, type: !6960, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6964)
!6960 = !DISubroutineType(types: !6961)
!6961 = !{!22, !6962}
!6962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6963, size: 64)
!6963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!6964 = !{!6965}
!6965 = !DILocalVariable(name: "v", arg: 1, scope: !6959, file: !6360, line: 30, type: !6962)
!6966 = !DILocation(line: 30, column: 29, scope: !6959)
!6967 = !DILocation(line: 32, column: 25, scope: !6959)
!6968 = !DILocation(line: 32, column: 2, scope: !6959)
!6969 = !DILocation(line: 33, column: 25, scope: !6959)
!6970 = !DILocation(line: 33, column: 9, scope: !6959)
!6971 = !DILocation(line: 33, column: 2, scope: !6959)
!6972 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6484, file: !6484, line: 66, type: !6485, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6973)
!6973 = !{!6974, !6975}
!6974 = !DILocalVariable(name: "v", arg: 1, scope: !6972, file: !6484, line: 66, type: !6487)
!6975 = !DILocalVariable(name: "size", arg: 2, scope: !6972, file: !6484, line: 66, type: !35)
!6976 = !DILocation(line: 66, column: 73, scope: !6972)
!6977 = !DILocation(line: 66, column: 83, scope: !6972)
!6978 = !DILocation(line: 68, column: 19, scope: !6972)
!6979 = !DILocation(line: 68, column: 22, scope: !6972)
!6980 = !DILocation(line: 68, column: 2, scope: !6972)
!6981 = !DILocation(line: 69, column: 2, scope: !6972)
!6982 = !DILocation(line: 70, column: 1, scope: !6972)
!6983 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6501, file: !6501, line: 442, type: !6960, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6984)
!6984 = !{!6985}
!6985 = !DILocalVariable(name: "v", arg: 1, scope: !6983, file: !6501, line: 442, type: !6962)
!6986 = !DILocation(line: 442, column: 33, scope: !6983)
!6987 = !DILocation(line: 444, column: 26, scope: !6983)
!6988 = !DILocation(line: 444, column: 9, scope: !6983)
!6989 = !DILocation(line: 444, column: 2, scope: !6983)
!6990 = distinct !DISubprogram(name: "kasan_check_read", scope: !6512, file: !6512, line: 40, type: !6513, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6991 = !{!6992, !6993}
!6992 = !DILocalVariable(name: "p", arg: 1, scope: !6990, file: !6512, line: 40, type: !6487)
!6993 = !DILocalVariable(name: "size", arg: 2, scope: !6990, file: !6512, line: 40, type: !7)
!6994 = !DILocation(line: 40, column: 58, scope: !6990)
!6995 = !DILocation(line: 40, column: 74, scope: !6990)
!6996 = !DILocation(line: 42, column: 2, scope: !6990)
!6997 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6534, file: !6534, line: 17, type: !6960, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6998)
!6998 = !{!6999}
!6999 = !DILocalVariable(name: "v", arg: 1, scope: !6997, file: !6534, line: 17, type: !6962)
!7000 = !DILocation(line: 17, column: 61, scope: !6997)
!7001 = !DILocation(line: 23, column: 9, scope: !6997)
!7002 = !DILocation(line: 23, column: 2, scope: !6997)
!7003 = distinct !DISubprogram(name: "set_bit", scope: !6602, file: !6602, line: 26, type: !6603, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7004)
!7004 = !{!7005, !7006}
!7005 = !DILocalVariable(name: "nr", arg: 1, scope: !7003, file: !6602, line: 26, type: !1076)
!7006 = !DILocalVariable(name: "addr", arg: 2, scope: !7003, file: !6602, line: 26, type: !6605)
!7007 = !DILocation(line: 26, column: 42, scope: !7003)
!7008 = !DILocation(line: 26, column: 70, scope: !7003)
!7009 = !DILocation(line: 28, column: 26, scope: !7003)
!7010 = !DILocation(line: 28, column: 33, scope: !7003)
!7011 = !DILocation(line: 28, column: 31, scope: !7003)
!7012 = !DILocation(line: 28, column: 2, scope: !7003)
!7013 = !DILocation(line: 29, column: 15, scope: !7003)
!7014 = !DILocation(line: 29, column: 19, scope: !7003)
!7015 = !DILocation(line: 29, column: 2, scope: !7003)
!7016 = !DILocation(line: 30, column: 1, scope: !7003)
!7017 = distinct !DISubprogram(name: "arch_set_bit", scope: !6632, file: !6632, line: 52, type: !6603, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7018)
!7018 = !{!7019, !7020}
!7019 = !DILocalVariable(name: "nr", arg: 1, scope: !7017, file: !6632, line: 52, type: !1076)
!7020 = !DILocalVariable(name: "addr", arg: 2, scope: !7017, file: !6632, line: 52, type: !6605)
!7021 = !DILocation(line: 52, column: 19, scope: !7017)
!7022 = !DILocation(line: 52, column: 47, scope: !7017)
!7023 = !DILocation(line: 54, column: 27, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !7017, file: !6632, line: 54, column: 6)
!7025 = !DILocation(line: 54, column: 6, scope: !7024)
!7026 = !DILocation(line: 54, column: 6, scope: !7017)
!7027 = !DILocation(line: 56, column: 6, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7024, file: !6632, line: 54, column: 32)
!7029 = !DILocation(line: 57, column: 12, scope: !7028)
!7030 = !DILocation(line: 55, column: 3, scope: !7028)
!7031 = !{i64 2148841189, i64 2148841228, i64 2148841249, i64 2148841286, i64 2148841309, i64 2148841179}
!7032 = !DILocation(line: 59, column: 2, scope: !7028)
!7033 = !DILocation(line: 61, column: 8, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7024, file: !6632, line: 59, column: 9)
!7035 = !DILocation(line: 61, column: 32, scope: !7034)
!7036 = !DILocation(line: 60, column: 3, scope: !7034)
!7037 = !{i64 2148841474, i64 2148841513, i64 2148841534, i64 2148841571, i64 2148841594, i64 2148841464}
!7038 = !DILocation(line: 63, column: 1, scope: !7017)
!7039 = distinct !DISubprogram(name: "generic___clear_bit", scope: !7040, file: !7040, line: 37, type: !7041, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7043)
!7040 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7041 = !DISubroutineType(types: !7042)
!7042 = !{null, !39, !6605}
!7043 = !{!7044, !7045, !7046, !7047}
!7044 = !DILocalVariable(name: "nr", arg: 1, scope: !7039, file: !7040, line: 37, type: !39)
!7045 = !DILocalVariable(name: "addr", arg: 2, scope: !7039, file: !7040, line: 37, type: !6605)
!7046 = !DILocalVariable(name: "mask", scope: !7039, file: !7040, line: 39, type: !39)
!7047 = !DILocalVariable(name: "p", scope: !7039, file: !7040, line: 40, type: !4060)
!7048 = !DILocation(line: 37, column: 35, scope: !7039)
!7049 = !DILocation(line: 37, column: 63, scope: !7039)
!7050 = !DILocation(line: 39, column: 2, scope: !7039)
!7051 = !DILocation(line: 39, column: 16, scope: !7039)
!7052 = !DILocation(line: 39, column: 23, scope: !7039)
!7053 = !DILocation(line: 40, column: 2, scope: !7039)
!7054 = !DILocation(line: 40, column: 17, scope: !7039)
!7055 = !DILocation(line: 40, column: 39, scope: !7039)
!7056 = !DILocation(line: 40, column: 47, scope: !7039)
!7057 = !DILocation(line: 40, column: 45, scope: !7039)
!7058 = !DILocation(line: 42, column: 9, scope: !7039)
!7059 = !DILocation(line: 42, column: 8, scope: !7039)
!7060 = !DILocation(line: 42, column: 3, scope: !7039)
!7061 = !DILocation(line: 42, column: 5, scope: !7039)
!7062 = !DILocation(line: 43, column: 1, scope: !7039)
!7063 = distinct !DISubprogram(name: "___clear_bit", scope: !7064, file: !7064, line: 42, type: !7041, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7065)
!7064 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7065 = !{!7066, !7067}
!7066 = !DILocalVariable(name: "nr", arg: 1, scope: !7063, file: !7064, line: 42, type: !39)
!7067 = !DILocalVariable(name: "addr", arg: 2, scope: !7063, file: !7064, line: 42, type: !6605)
!7068 = !DILocation(line: 42, column: 28, scope: !7063)
!7069 = !DILocation(line: 42, column: 56, scope: !7063)
!7070 = !DILocation(line: 44, column: 19, scope: !7063)
!7071 = !DILocation(line: 44, column: 26, scope: !7063)
!7072 = !DILocation(line: 44, column: 24, scope: !7063)
!7073 = !DILocation(line: 44, column: 2, scope: !7063)
!7074 = !DILocation(line: 45, column: 19, scope: !7063)
!7075 = !DILocation(line: 45, column: 23, scope: !7063)
!7076 = !DILocation(line: 45, column: 2, scope: !7063)
!7077 = !DILocation(line: 46, column: 1, scope: !7063)
!7078 = !DISubprogram(name: "__bitmap_clear", scope: !6260, file: !6260, line: 175, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7079 = !DISubroutineType(types: !7080)
!7080 = !{null, !4060, !7, !22}
!7081 = distinct !DISubprogram(name: "instrument_write", scope: !6484, file: !6484, line: 38, type: !6485, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7082)
!7082 = !{!7083, !7084}
!7083 = !DILocalVariable(name: "v", arg: 1, scope: !7081, file: !6484, line: 38, type: !6487)
!7084 = !DILocalVariable(name: "size", arg: 2, scope: !7081, file: !6484, line: 38, type: !35)
!7085 = !DILocation(line: 38, column: 67, scope: !7081)
!7086 = !DILocation(line: 38, column: 77, scope: !7081)
!7087 = !DILocation(line: 40, column: 20, scope: !7081)
!7088 = !DILocation(line: 40, column: 23, scope: !7081)
!7089 = !DILocation(line: 40, column: 2, scope: !7081)
!7090 = !DILocation(line: 41, column: 2, scope: !7081)
!7091 = !DILocation(line: 42, column: 1, scope: !7081)
!7092 = distinct !DISubprogram(name: "arch___clear_bit", scope: !6632, file: !6632, line: 92, type: !7041, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7093)
!7093 = !{!7094, !7095}
!7094 = !DILocalVariable(name: "nr", arg: 1, scope: !7092, file: !6632, line: 92, type: !39)
!7095 = !DILocalVariable(name: "addr", arg: 2, scope: !7092, file: !6632, line: 92, type: !6605)
!7096 = !DILocation(line: 92, column: 32, scope: !7092)
!7097 = !DILocation(line: 92, column: 60, scope: !7092)
!7098 = !DILocation(line: 94, column: 44, scope: !7092)
!7099 = !DILocation(line: 94, column: 56, scope: !7092)
!7100 = !DILocation(line: 94, column: 2, scope: !7092)
!7101 = !{i64 2148843648}
!7102 = !DILocation(line: 95, column: 1, scope: !7092)
!7103 = distinct !DISubprogram(name: "generic___set_bit", scope: !7040, file: !7040, line: 28, type: !7041, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7104)
!7104 = !{!7105, !7106, !7107, !7108}
!7105 = !DILocalVariable(name: "nr", arg: 1, scope: !7103, file: !7040, line: 28, type: !39)
!7106 = !DILocalVariable(name: "addr", arg: 2, scope: !7103, file: !7040, line: 28, type: !6605)
!7107 = !DILocalVariable(name: "mask", scope: !7103, file: !7040, line: 30, type: !39)
!7108 = !DILocalVariable(name: "p", scope: !7103, file: !7040, line: 31, type: !4060)
!7109 = !DILocation(line: 28, column: 33, scope: !7103)
!7110 = !DILocation(line: 28, column: 61, scope: !7103)
!7111 = !DILocation(line: 30, column: 2, scope: !7103)
!7112 = !DILocation(line: 30, column: 16, scope: !7103)
!7113 = !DILocation(line: 30, column: 23, scope: !7103)
!7114 = !DILocation(line: 31, column: 2, scope: !7103)
!7115 = !DILocation(line: 31, column: 17, scope: !7103)
!7116 = !DILocation(line: 31, column: 39, scope: !7103)
!7117 = !DILocation(line: 31, column: 47, scope: !7103)
!7118 = !DILocation(line: 31, column: 45, scope: !7103)
!7119 = !DILocation(line: 33, column: 9, scope: !7103)
!7120 = !DILocation(line: 33, column: 3, scope: !7103)
!7121 = !DILocation(line: 33, column: 6, scope: !7103)
!7122 = !DILocation(line: 34, column: 1, scope: !7103)
!7123 = distinct !DISubprogram(name: "___set_bit", scope: !7064, file: !7064, line: 26, type: !7041, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7124)
!7124 = !{!7125, !7126}
!7125 = !DILocalVariable(name: "nr", arg: 1, scope: !7123, file: !7064, line: 26, type: !39)
!7126 = !DILocalVariable(name: "addr", arg: 2, scope: !7123, file: !7064, line: 26, type: !6605)
!7127 = !DILocation(line: 26, column: 26, scope: !7123)
!7128 = !DILocation(line: 26, column: 54, scope: !7123)
!7129 = !DILocation(line: 28, column: 19, scope: !7123)
!7130 = !DILocation(line: 28, column: 26, scope: !7123)
!7131 = !DILocation(line: 28, column: 24, scope: !7123)
!7132 = !DILocation(line: 28, column: 2, scope: !7123)
!7133 = !DILocation(line: 29, column: 17, scope: !7123)
!7134 = !DILocation(line: 29, column: 21, scope: !7123)
!7135 = !DILocation(line: 29, column: 2, scope: !7123)
!7136 = !DILocation(line: 30, column: 1, scope: !7123)
!7137 = !DISubprogram(name: "__bitmap_set", scope: !6260, file: !6260, line: 174, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7138 = distinct !DISubprogram(name: "arch___set_bit", scope: !6632, file: !6632, line: 66, type: !7041, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7139)
!7139 = !{!7140, !7141}
!7140 = !DILocalVariable(name: "nr", arg: 1, scope: !7138, file: !6632, line: 66, type: !39)
!7141 = !DILocalVariable(name: "addr", arg: 2, scope: !7138, file: !6632, line: 66, type: !6605)
!7142 = !DILocation(line: 66, column: 30, scope: !7138)
!7143 = !DILocation(line: 66, column: 58, scope: !7138)
!7144 = !DILocation(line: 68, column: 44, scope: !7138)
!7145 = !DILocation(line: 68, column: 56, scope: !7138)
!7146 = !DILocation(line: 68, column: 2, scope: !7138)
!7147 = !{i64 2148842115}
!7148 = !DILocation(line: 69, column: 1, scope: !7138)
!7149 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !6501, file: !6501, line: 2660, type: !6361, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7150)
!7150 = !{!7151, !7152}
!7151 = !DILocalVariable(name: "i", arg: 1, scope: !7149, file: !6501, line: 2660, type: !401)
!7152 = !DILocalVariable(name: "v", arg: 2, scope: !7149, file: !6501, line: 2660, type: !6363)
!7153 = !DILocation(line: 2660, column: 29, scope: !7149)
!7154 = !DILocation(line: 2660, column: 44, scope: !7149)
!7155 = !DILocation(line: 2663, column: 34, scope: !7149)
!7156 = !DILocation(line: 2663, column: 37, scope: !7149)
!7157 = !DILocation(line: 2663, column: 9, scope: !7149)
!7158 = !DILocation(line: 2663, column: 2, scope: !7149)
!7159 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !7160, file: !7160, line: 77, type: !6361, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7160 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7161 = !{!7162, !7163, !7164}
!7162 = !DILocalVariable(name: "i", arg: 1, scope: !7159, file: !7160, line: 77, type: !401)
!7163 = !DILocalVariable(name: "v", arg: 2, scope: !7159, file: !7160, line: 77, type: !6363)
!7164 = !DILocalVariable(name: "__ret", scope: !7165, file: !7160, line: 79, type: !401)
!7165 = distinct !DILexicalBlock(scope: !7159, file: !7160, line: 79, column: 13)
!7166 = !DILocation(line: 77, column: 57, scope: !7159)
!7167 = !DILocation(line: 77, column: 72, scope: !7159)
!7168 = !DILocation(line: 79, column: 9, scope: !7159)
!7169 = !DILocation(line: 79, column: 13, scope: !7165)
!7170 = !{i64 2148106967, i64 2148107006, i64 2148107027, i64 2148107064, i64 2148107087, i64 2148107096}
!7171 = !DILocation(line: 79, column: 13, scope: !7159)
!7172 = !DILocation(line: 79, column: 11, scope: !7159)
!7173 = !DILocation(line: 79, column: 2, scope: !7159)
!7174 = distinct !DISubprogram(name: "__do_sys_ioperm", scope: !3, file: !3, line: 152, type: !6016, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7175)
!7175 = !{!7176, !7177, !7178}
!7176 = !DILocalVariable(name: "from", arg: 1, scope: !7174, file: !3, line: 152, type: !39)
!7177 = !DILocalVariable(name: "num", arg: 2, scope: !7174, file: !3, line: 152, type: !39)
!7178 = !DILocalVariable(name: "turn_on", arg: 3, scope: !7174, file: !3, line: 152, type: !22)
!7179 = !DILocation(line: 152, column: 1, scope: !7174)
!7180 = !DILocation(line: 154, column: 21, scope: !7174)
!7181 = !DILocation(line: 154, column: 27, scope: !7174)
!7182 = !DILocation(line: 154, column: 32, scope: !7174)
!7183 = !DILocation(line: 154, column: 9, scope: !7174)
!7184 = !DILocation(line: 154, column: 2, scope: !7174)
!7185 = distinct !DISubprogram(name: "__do_sys_iopl", scope: !3, file: !3, line: 173, type: !7186, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7188)
!7186 = !DISubroutineType(types: !7187)
!7187 = !{!1076, !7}
!7188 = !{!7189, !7190, !7191}
!7189 = !DILocalVariable(name: "level", arg: 1, scope: !7185, file: !3, line: 173, type: !7)
!7190 = !DILocalVariable(name: "t", scope: !7185, file: !3, line: 175, type: !5861)
!7191 = !DILocalVariable(name: "old", scope: !7185, file: !3, line: 176, type: !7)
!7192 = !DILocation(line: 173, column: 1, scope: !7185)
!7193 = !DILocation(line: 175, column: 2, scope: !7185)
!7194 = !DILocation(line: 175, column: 24, scope: !7185)
!7195 = !DILocation(line: 175, column: 29, scope: !7185)
!7196 = !DILocation(line: 175, column: 38, scope: !7185)
!7197 = !DILocation(line: 176, column: 2, scope: !7185)
!7198 = !DILocation(line: 176, column: 15, scope: !7185)
!7199 = !DILocation(line: 178, column: 6, scope: !7200)
!7200 = distinct !DILexicalBlock(scope: !7185, file: !3, line: 178, column: 6)
!7201 = !DILocation(line: 178, column: 12, scope: !7200)
!7202 = !DILocation(line: 178, column: 6, scope: !7185)
!7203 = !DILocation(line: 179, column: 3, scope: !7200)
!7204 = !DILocation(line: 181, column: 8, scope: !7185)
!7205 = !DILocation(line: 181, column: 11, scope: !7185)
!7206 = !DILocation(line: 181, column: 6, scope: !7185)
!7207 = !DILocation(line: 184, column: 6, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7185, file: !3, line: 184, column: 6)
!7209 = !DILocation(line: 184, column: 15, scope: !7208)
!7210 = !DILocation(line: 184, column: 12, scope: !7208)
!7211 = !DILocation(line: 184, column: 6, scope: !7185)
!7212 = !DILocation(line: 185, column: 3, scope: !7208)
!7213 = !DILocation(line: 188, column: 6, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7185, file: !3, line: 188, column: 6)
!7215 = !DILocation(line: 188, column: 14, scope: !7214)
!7216 = !DILocation(line: 188, column: 12, scope: !7214)
!7217 = !DILocation(line: 188, column: 6, scope: !7185)
!7218 = !DILocation(line: 189, column: 8, scope: !7219)
!7219 = distinct !DILexicalBlock(scope: !7220, file: !3, line: 189, column: 7)
!7220 = distinct !DILexicalBlock(scope: !7214, file: !3, line: 188, column: 19)
!7221 = !DILocation(line: 189, column: 31, scope: !7219)
!7222 = !DILocation(line: 190, column: 7, scope: !7219)
!7223 = !DILocation(line: 189, column: 7, scope: !7220)
!7224 = !DILocation(line: 191, column: 4, scope: !7219)
!7225 = !DILocation(line: 192, column: 2, scope: !7220)
!7226 = !DILocation(line: 194, column: 17, scope: !7185)
!7227 = !DILocation(line: 194, column: 2, scope: !7185)
!7228 = !DILocation(line: 194, column: 5, scope: !7185)
!7229 = !DILocation(line: 194, column: 15, scope: !7185)
!7230 = !DILocation(line: 195, column: 24, scope: !7185)
!7231 = !DILocation(line: 195, column: 2, scope: !7185)
!7232 = !DILocation(line: 197, column: 2, scope: !7185)
!7233 = !DILocation(line: 198, column: 1, scope: !7185)
