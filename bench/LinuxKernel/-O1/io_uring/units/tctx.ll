; ModuleID = 'io_uring/tctx.c'
source_filename = "io_uring/tctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.21 }
%union.anon.21 = type { i64 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.io_uring_task = type { i32, ptr, ptr, [16 x ptr], %struct.xarray, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.percpu_counter, [16 x i8], %struct.anon.14 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.anon.14 = type { %struct.llist_head, %struct.callback_head, [40 x i8] }
%struct.io_wq_data = type { ptr, ptr, ptr, ptr }
%struct.io_ring_ctx = type { %struct.anon.13, %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, [16 x %struct.io_uring_cqe], %struct.spinlock, %struct.io_wq_work_list, i32, %struct.list_head, %struct.list_head, %struct.io_hash_table, ptr, ptr, %struct.wait_queue_head, %struct.list_head, i32, i32, %struct.xarray, i32, %struct.list_head, %struct.hlist_head, %struct.wait_queue_head, %struct.io_restriction, ptr, ptr, ptr, %struct.list_head, %struct.io_alloc_cache, %struct.wait_queue_head, i32, %struct.list_head, ptr, ptr, ptr, %struct.llist_head, %struct.delayed_work, %struct.work_struct, %struct.list_head, %struct.completion, [2 x i32], i8, %struct.callback_head, %struct.list_head, i32, i32, i16, i16, ptr, ptr, [8 x i8] }
%struct.anon.13 = type { i32, i16, ptr, ptr, %struct.percpu_ref, i32, [20 x i8] }
%struct.percpu_ref = type { i64, ptr }
%struct.anon.15 = type { %struct.mutex, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.io_file_table, i32, i32, ptr, %struct.io_submit_state, %struct.xarray, %struct.io_hash_table, %struct.io_alloc_cache, %struct.io_alloc_cache, %struct.io_wq_work_list, i8, [23 x i8] }
%struct.io_file_table = type { ptr, ptr, i32 }
%struct.io_submit_state = type { %struct.io_wq_work_node, %struct.io_wq_work_list, %struct.io_submit_link, i8, i8, i16, i32, %struct.blk_plug }
%struct.io_wq_work_node = type { ptr }
%struct.io_submit_link = type { ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, %struct.list_head }
%struct.anon.16 = type { ptr, ptr, i32, i32, ptr, i32, [28 x i8] }
%struct.anon.17 = type { %struct.llist_head, i64, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [16 x i8] }
%struct.anon.18 = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, [20 x i8] }
%struct.io_uring_cqe = type { i64, i32, i32, [0 x i64] }
%struct.io_wq_work_list = type { ptr, ptr }
%struct.io_hash_table = type { ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.io_restriction = type { [1 x i64], [1 x i64], i8, i8, i8 }
%struct.io_alloc_cache = type { %struct.io_wq_work_node, i32, i32, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.io_wq_hash = type { %struct.refcount_struct, i64, %struct.wait_queue_head }
%struct.io_tctx_node = type { %struct.list_head, ptr, ptr }
%struct.io_uring_rsrc_update = type { i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"io_uring/tctx.c\00", align 1, !dbg !0
@io_uring_alloc_task_context.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !7
@io_uring_alloc_task_context.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5973
@.str.2 = private unnamed_addr constant [12 x i8] c"&tctx->wait\00", align 1, !dbg !5975
@io_init_wq_offload.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5978
@.str.3 = private unnamed_addr constant [12 x i8] c"&hash->wait\00", align 1, !dbg !6007
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6009
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !6014
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !6017
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__io_uring_free(ptr noundef %tsk) #0 align 16 !dbg !6037 {
entry:
  %tsk.addr = alloca ptr, align 8
  %tctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %index = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on22 = alloca i32, align 4
  %__flags38 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %__ret_warn_on59 = alloca i32, align 4
  %__flags75 = alloca i32, align 4
  %tmp88 = alloca i64, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6039, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6040, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6071
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 102, !dbg !6072
  %1 = load ptr, ptr %io_uring, align 16, !dbg !6072
  store ptr %1, ptr %tctx, align 8, !dbg !6070
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6041, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #17, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6049, metadata !DIExpression()), !dbg !6076
  store i64 0, ptr %index, align 8, !dbg !6077
  %2 = load ptr, ptr %tctx, align 8, !dbg !6077
  %xa = getelementptr inbounds %struct.io_uring_task, ptr %2, i32 0, i32 4, !dbg !6077
  %call = call ptr @xa_find(ptr noundef %xa, ptr noundef %index, i64 noundef -1, i32 noundef 8) #18, !dbg !6077
  store ptr %call, ptr %node, align 8, !dbg !6077
  br label %for.cond, !dbg !6077

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !6078
  %tobool = icmp ne ptr %3, null, !dbg !6077
  br i1 %tobool, label %for.body, label %for.end, !dbg !6077

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6050, metadata !DIExpression()), !dbg !6079
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6079
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6080
  %tobool1 = icmp ne i32 %4, 0, !dbg !6080
  %lnot = xor i1 %tobool1, true, !dbg !6080
  %lnot2 = xor i1 %lnot, true, !dbg !6080
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6080
  %conv = sext i32 %lnot.ext to i64, !dbg !6080
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6080
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6080
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6079

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !6080

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6055, metadata !DIExpression()), !dbg !6081
  store i32 2307, ptr %__flags, align 4, !dbg !6081
  br label %do.body4, !dbg !6081

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !6082

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6081

do.body5:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !6084
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 60, i32 %5, i64 12) #17, !dbg !6084, !srcloc !6086
  br label %do.cond6, !dbg !6084

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6084

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6081

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !6087

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6087

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6080
  br label %do.cond11, !dbg !6081

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !6081

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !6081

if.end:                                           ; preds = %do.end12, %for.body
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6079
  %tobool13 = icmp ne i32 %6, 0, !dbg !6079
  %lnot14 = xor i1 %tobool13, true, !dbg !6079
  %lnot16 = xor i1 %lnot14, true, !dbg !6079
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6079
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6079
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !6079
  store i64 %expval19, ptr %tmp, align 8, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6089
  %7 = load i64, ptr %tmp, align 8, !dbg !6079
  br label %for.end, !dbg !6090

for.inc:                                          ; No predecessors!
  %8 = load ptr, ptr %tctx, align 8, !dbg !6078
  %xa20 = getelementptr inbounds %struct.io_uring_task, ptr %8, i32 0, i32 4, !dbg !6078
  %call21 = call ptr @xa_find_after(ptr noundef %xa20, ptr noundef %index, i64 noundef -1, i32 noundef 8) #18, !dbg !6078
  store ptr %call21, ptr %node, align 8, !dbg !6078
  br label %for.cond, !dbg !6078, !llvm.loop !6091

for.end:                                          ; preds = %if.end, %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on22) #17, !dbg !6095
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on22, metadata !6058, metadata !DIExpression()), !dbg !6095
  %9 = load ptr, ptr %tctx, align 8, !dbg !6095
  %io_wq = getelementptr inbounds %struct.io_uring_task, ptr %9, i32 0, i32 2, !dbg !6095
  %10 = load ptr, ptr %io_wq, align 16, !dbg !6095
  %tobool23 = icmp ne ptr %10, null, !dbg !6095
  %lnot24 = xor i1 %tobool23, true, !dbg !6095
  %lnot26 = xor i1 %lnot24, true, !dbg !6095
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6095
  store i32 %lnot.ext27, ptr %__ret_warn_on22, align 4, !dbg !6095
  %11 = load i32, ptr %__ret_warn_on22, align 4, !dbg !6096
  %tobool28 = icmp ne i32 %11, 0, !dbg !6096
  %lnot29 = xor i1 %tobool28, true, !dbg !6096
  %lnot31 = xor i1 %lnot29, true, !dbg !6096
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !6096
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !6096
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !6096
  %tobool35 = icmp ne i64 %expval34, 0, !dbg !6096
  br i1 %tobool35, label %if.then36, label %if.end50, !dbg !6095

if.then36:                                        ; preds = %for.end
  br label %do.body37, !dbg !6096

do.body37:                                        ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags38) #17, !dbg !6097
  call void @llvm.dbg.declare(metadata ptr %__flags38, metadata !6060, metadata !DIExpression()), !dbg !6097
  store i32 2307, ptr %__flags38, align 4, !dbg !6097
  br label %do.body39, !dbg !6097

do.body39:                                        ; preds = %do.body37
  br label %do.cond40, !dbg !6098

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6098

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !6097

do.body42:                                        ; preds = %do.end41
  %12 = load i32, ptr %__flags38, align 4, !dbg !6100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 63, i32 %12, i64 12) #17, !dbg !6100, !srcloc !6102
  br label %do.cond43, !dbg !6100

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !6100

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !6097

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !6103

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6103

do.end47:                                         ; preds = %do.cond46
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags38) #17, !dbg !6096
  br label %do.cond48, !dbg !6097

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !6097

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !6097

if.end50:                                         ; preds = %do.end49, %for.end
  %13 = load i32, ptr %__ret_warn_on22, align 4, !dbg !6095
  %tobool52 = icmp ne i32 %13, 0, !dbg !6095
  %lnot53 = xor i1 %tobool52, true, !dbg !6095
  %lnot55 = xor i1 %lnot53, true, !dbg !6095
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !6095
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !6095
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !6095
  store i64 %expval58, ptr %tmp51, align 8, !dbg !6096
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on22) #17, !dbg !6105
  %14 = load i64, ptr %tmp51, align 8, !dbg !6095
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on59) #17, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on59, metadata !6063, metadata !DIExpression()), !dbg !6106
  %15 = load ptr, ptr %tctx, align 8, !dbg !6106
  %cached_refs = getelementptr inbounds %struct.io_uring_task, ptr %15, i32 0, i32 0, !dbg !6106
  %16 = load i32, ptr %cached_refs, align 64, !dbg !6106
  %tobool60 = icmp ne i32 %16, 0, !dbg !6106
  %lnot61 = xor i1 %tobool60, true, !dbg !6106
  %lnot63 = xor i1 %lnot61, true, !dbg !6106
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !6106
  store i32 %lnot.ext64, ptr %__ret_warn_on59, align 4, !dbg !6106
  %17 = load i32, ptr %__ret_warn_on59, align 4, !dbg !6107
  %tobool65 = icmp ne i32 %17, 0, !dbg !6107
  %lnot66 = xor i1 %tobool65, true, !dbg !6107
  %lnot68 = xor i1 %lnot66, true, !dbg !6107
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !6107
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !6107
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !6107
  %tobool72 = icmp ne i64 %expval71, 0, !dbg !6107
  br i1 %tobool72, label %if.then73, label %if.end87, !dbg !6106

if.then73:                                        ; preds = %if.end50
  br label %do.body74, !dbg !6107

do.body74:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags75) #17, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %__flags75, metadata !6065, metadata !DIExpression()), !dbg !6108
  store i32 2307, ptr %__flags75, align 4, !dbg !6108
  br label %do.body76, !dbg !6108

do.body76:                                        ; preds = %do.body74
  br label %do.cond77, !dbg !6109

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !6109

do.end78:                                         ; preds = %do.cond77
  br label %do.body79, !dbg !6108

do.body79:                                        ; preds = %do.end78
  %18 = load i32, ptr %__flags75, align 4, !dbg !6111
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 64, i32 %18, i64 12) #17, !dbg !6111, !srcloc !6113
  br label %do.cond80, !dbg !6111

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !6111

do.end81:                                         ; preds = %do.cond80
  br label %do.body82, !dbg !6108

do.body82:                                        ; preds = %do.end81
  br label %do.cond83, !dbg !6114

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !6114

do.end84:                                         ; preds = %do.cond83
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags75) #17, !dbg !6107
  br label %do.cond85, !dbg !6108

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !6108

do.end86:                                         ; preds = %do.cond85
  br label %if.end87, !dbg !6108

if.end87:                                         ; preds = %do.end86, %if.end50
  %19 = load i32, ptr %__ret_warn_on59, align 4, !dbg !6106
  %tobool89 = icmp ne i32 %19, 0, !dbg !6106
  %lnot90 = xor i1 %tobool89, true, !dbg !6106
  %lnot92 = xor i1 %lnot90, true, !dbg !6106
  %lnot.ext93 = zext i1 %lnot92 to i32, !dbg !6106
  %conv94 = sext i32 %lnot.ext93 to i64, !dbg !6106
  %expval95 = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !6106
  store i64 %expval95, ptr %tmp88, align 8, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on59) #17, !dbg !6116
  %20 = load i64, ptr %tmp88, align 8, !dbg !6106
  %21 = load ptr, ptr %tctx, align 8, !dbg !6117
  %inflight = getelementptr inbounds %struct.io_uring_task, ptr %21, i32 0, i32 8, !dbg !6118
  call void @percpu_counter_destroy(ptr noundef %inflight) #18, !dbg !6119
  %22 = load ptr, ptr %tctx, align 8, !dbg !6120
  call void @kfree(ptr noundef %22) #18, !dbg !6121
  %23 = load ptr, ptr %tsk.addr, align 8, !dbg !6122
  %io_uring96 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 102, !dbg !6123
  store ptr null, ptr %io_uring96, align 16, !dbg !6124
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #17, !dbg !6125
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !6125
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !6125
  ret void, !dbg !6125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6129 dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_destroy(ptr noundef %fbc) #5 align 16 !dbg !6130 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !6137
  call void @percpu_counter_destroy_many(ptr noundef %0, i32 noundef 1) #18, !dbg !6138
  ret void, !dbg !6139
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6140 dso_local void @kfree(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @io_uring_alloc_task_context(ptr noundef %task, ptr noundef %ctx) #6 align 16 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %tctx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6024, metadata !DIExpression()), !dbg !6143
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6025, metadata !DIExpression()), !dbg !6144
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6026, metadata !DIExpression()), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6027, metadata !DIExpression()), !dbg !6148
  %call = call noalias ptr @kzalloc(i64 noundef 320, i32 noundef 3264) #19, !dbg !6149
  store ptr %call, ptr %tctx, align 8, !dbg !6150
  %0 = load ptr, ptr %tctx, align 8, !dbg !6151
  %tobool = icmp ne ptr %0, null, !dbg !6151
  %lnot = xor i1 %tobool, true, !dbg !6151
  %lnot1 = xor i1 %lnot, true, !dbg !6151
  %lnot2 = xor i1 %lnot1, true, !dbg !6151
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6151
  %conv = sext i32 %lnot.ext to i64, !dbg !6151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6151
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6151
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6153

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6154

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tctx, align 8, !dbg !6155
  %inflight = getelementptr inbounds %struct.io_uring_task, ptr %1, i32 0, i32 8, !dbg !6155
  %call4 = call i32 @__percpu_counter_init_many(ptr noundef %inflight, i64 noundef 0, i32 noundef 3264, i32 noundef 1, ptr noundef @io_uring_alloc_task_context.__key) #18, !dbg !6155
  store i32 %call4, ptr %tmp, align 4, !dbg !6155
  %2 = load i32, ptr %tmp, align 4, !dbg !6155
  store i32 %2, ptr %ret, align 4, !dbg !6157
  %3 = load i32, ptr %ret, align 4, !dbg !6158
  %tobool5 = icmp ne i32 %3, 0, !dbg !6158
  %lnot6 = xor i1 %tobool5, true, !dbg !6158
  %lnot8 = xor i1 %lnot6, true, !dbg !6158
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6158
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6158
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !6158
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !6158
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6160

if.then13:                                        ; preds = %if.end
  %4 = load ptr, ptr %tctx, align 8, !dbg !6161
  call void @kfree(ptr noundef %4) #18, !dbg !6163
  %5 = load i32, ptr %ret, align 4, !dbg !6164
  store i32 %5, ptr %retval, align 4, !dbg !6165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6165

if.end14:                                         ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6166
  %7 = load ptr, ptr %task.addr, align 8, !dbg !6167
  %call15 = call ptr @io_init_wq_offload(ptr noundef %6, ptr noundef %7) #18, !dbg !6168
  %8 = load ptr, ptr %tctx, align 8, !dbg !6169
  %io_wq = getelementptr inbounds %struct.io_uring_task, ptr %8, i32 0, i32 2, !dbg !6170
  store ptr %call15, ptr %io_wq, align 16, !dbg !6171
  %9 = load ptr, ptr %tctx, align 8, !dbg !6172
  %io_wq16 = getelementptr inbounds %struct.io_uring_task, ptr %9, i32 0, i32 2, !dbg !6174
  %10 = load ptr, ptr %io_wq16, align 16, !dbg !6174
  %call17 = call zeroext i1 @IS_ERR(ptr noundef %10) #18, !dbg !6175
  br i1 %call17, label %if.then18, label %if.end23, !dbg !6176

if.then18:                                        ; preds = %if.end14
  %11 = load ptr, ptr %tctx, align 8, !dbg !6177
  %io_wq19 = getelementptr inbounds %struct.io_uring_task, ptr %11, i32 0, i32 2, !dbg !6179
  %12 = load ptr, ptr %io_wq19, align 16, !dbg !6179
  %call20 = call i64 @PTR_ERR(ptr noundef %12) #18, !dbg !6180
  %conv21 = trunc i64 %call20 to i32, !dbg !6180
  store i32 %conv21, ptr %ret, align 4, !dbg !6181
  %13 = load ptr, ptr %tctx, align 8, !dbg !6182
  %inflight22 = getelementptr inbounds %struct.io_uring_task, ptr %13, i32 0, i32 8, !dbg !6183
  call void @percpu_counter_destroy(ptr noundef %inflight22) #18, !dbg !6184
  %14 = load ptr, ptr %tctx, align 8, !dbg !6185
  call void @kfree(ptr noundef %14) #18, !dbg !6186
  %15 = load i32, ptr %ret, align 4, !dbg !6187
  store i32 %15, ptr %retval, align 4, !dbg !6188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6188

if.end23:                                         ; preds = %if.end14
  %16 = load ptr, ptr %tctx, align 8, !dbg !6189
  %xa = getelementptr inbounds %struct.io_uring_task, ptr %16, i32 0, i32 4, !dbg !6190
  call void @xa_init(ptr noundef %xa) #18, !dbg !6191
  br label %do.body, !dbg !6192

do.body:                                          ; preds = %if.end23
  %17 = load ptr, ptr %tctx, align 8, !dbg !6193
  %wait = getelementptr inbounds %struct.io_uring_task, ptr %17, i32 0, i32 5, !dbg !6193
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str.2, ptr noundef @io_uring_alloc_task_context.__key.1) #18, !dbg !6193
  br label %do.cond, !dbg !6193

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6193

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %tctx, align 8, !dbg !6195
  %in_cancel = getelementptr inbounds %struct.io_uring_task, ptr %18, i32 0, i32 6, !dbg !6196
  call void @atomic_set(ptr noundef %in_cancel, i32 noundef 0) #18, !dbg !6197
  %19 = load ptr, ptr %tctx, align 8, !dbg !6198
  %inflight_tracked = getelementptr inbounds %struct.io_uring_task, ptr %19, i32 0, i32 7, !dbg !6199
  call void @atomic_set(ptr noundef %inflight_tracked, i32 noundef 0) #18, !dbg !6200
  %20 = load ptr, ptr %tctx, align 8, !dbg !6201
  %21 = load ptr, ptr %task.addr, align 8, !dbg !6202
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 102, !dbg !6203
  store ptr %20, ptr %io_uring, align 16, !dbg !6204
  %22 = load ptr, ptr %tctx, align 8, !dbg !6205
  %23 = getelementptr inbounds %struct.io_uring_task, ptr %22, i32 0, i32 10, !dbg !6206
  %task_list = getelementptr inbounds %struct.anon.14, ptr %23, i32 0, i32 0, !dbg !6206
  call void @init_llist_head(ptr noundef %task_list) #18, !dbg !6207
  %24 = load ptr, ptr %tctx, align 8, !dbg !6208
  %25 = getelementptr inbounds %struct.io_uring_task, ptr %24, i32 0, i32 10, !dbg !6209
  %task_work = getelementptr inbounds %struct.anon.14, ptr %25, i32 0, i32 1, !dbg !6209
  call void @init_task_work(ptr noundef %task_work, ptr noundef @tctx_task_work) #18, !dbg !6210
  store i32 0, ptr %retval, align 4, !dbg !6211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6211

cleanup:                                          ; preds = %do.end, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6212
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !6212
  %26 = load i32, ptr %retval, align 4, !dbg !6212
  ret i32 %26, !dbg !6212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6213 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6217, metadata !DIExpression()), !dbg !6219
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6218, metadata !DIExpression()), !dbg !6220
  %0 = load i64, ptr %size.addr, align 8, !dbg !6221
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6222
  %or = or i32 %1, 256, !dbg !6223
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6224
  ret ptr %call, !dbg !6225
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6226 dso_local i32 @__percpu_counter_init_many(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @io_init_wq_offload(ptr noundef %ctx, ptr noundef %task) #0 align 16 !dbg !5980 {
entry:
  %retval = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %data = alloca %struct.io_wq_data, align 8
  %concurrency = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x499 = alloca i32, align 4
  %__UNIQUE_ID___y500 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5984, metadata !DIExpression()), !dbg !6230
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5985, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #17, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !5986, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 32, ptr %data) #17, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5987, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 4, ptr %concurrency) #17, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %concurrency, metadata !6003, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6238
  %1 = getelementptr inbounds %struct.io_ring_ctx, ptr %0, i32 0, i32 1, !dbg !6239
  %uring_lock = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 0, !dbg !6239
  call void @mutex_lock(ptr noundef %uring_lock) #18, !dbg !6240
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6241
  %hash_map = getelementptr inbounds %struct.io_ring_ctx, ptr %2, i32 0, i32 32, !dbg !6242
  %3 = load ptr, ptr %hash_map, align 32, !dbg !6242
  store ptr %3, ptr %hash, align 8, !dbg !6243
  %4 = load ptr, ptr %hash, align 8, !dbg !6244
  %tobool = icmp ne ptr %4, null, !dbg !6244
  br i1 %tobool, label %if.end6, label %if.then, !dbg !6246

if.then:                                          ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #19, !dbg !6247
  store ptr %call, ptr %hash, align 8, !dbg !6249
  %5 = load ptr, ptr %hash, align 8, !dbg !6250
  %tobool1 = icmp ne ptr %5, null, !dbg !6250
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !6252

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6253
  %7 = getelementptr inbounds %struct.io_ring_ctx, ptr %6, i32 0, i32 1, !dbg !6255
  %uring_lock3 = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 0, !dbg !6255
  call void @mutex_unlock(ptr noundef %uring_lock3) #18, !dbg !6256
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !6257
  store ptr %call4, ptr %retval, align 8, !dbg !6258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6258

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %hash, align 8, !dbg !6259
  %refs = getelementptr inbounds %struct.io_wq_hash, ptr %8, i32 0, i32 0, !dbg !6260
  call void @refcount_set(ptr noundef %refs, i32 noundef 1) #18, !dbg !6261
  br label %do.body, !dbg !6262

do.body:                                          ; preds = %if.end
  %9 = load ptr, ptr %hash, align 8, !dbg !6263
  %wait = getelementptr inbounds %struct.io_wq_hash, ptr %9, i32 0, i32 2, !dbg !6263
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str.3, ptr noundef @io_init_wq_offload.__key) #18, !dbg !6263
  br label %do.cond, !dbg !6263

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6263

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %hash, align 8, !dbg !6265
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6266
  %hash_map5 = getelementptr inbounds %struct.io_ring_ctx, ptr %11, i32 0, i32 32, !dbg !6267
  store ptr %10, ptr %hash_map5, align 32, !dbg !6268
  br label %if.end6, !dbg !6269

if.end6:                                          ; preds = %do.end, %entry
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !6270
  %13 = getelementptr inbounds %struct.io_ring_ctx, ptr %12, i32 0, i32 1, !dbg !6271
  %uring_lock7 = getelementptr inbounds %struct.anon.15, ptr %13, i32 0, i32 0, !dbg !6271
  call void @mutex_unlock(ptr noundef %uring_lock7) #18, !dbg !6272
  %14 = load ptr, ptr %hash, align 8, !dbg !6273
  %hash8 = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 0, !dbg !6274
  store ptr %14, ptr %hash8, align 8, !dbg !6275
  %15 = load ptr, ptr %task.addr, align 8, !dbg !6276
  %task9 = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 1, !dbg !6277
  store ptr %15, ptr %task9, align 8, !dbg !6278
  %free_work = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 3, !dbg !6279
  store ptr @io_wq_free_work, ptr %free_work, align 8, !dbg !6280
  %do_work = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 2, !dbg !6281
  store ptr @io_wq_submit_work, ptr %do_work, align 8, !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x499) #17, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x499, metadata !6004, metadata !DIExpression()), !dbg !6283
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !6283
  %17 = getelementptr inbounds %struct.io_ring_ctx, ptr %16, i32 0, i32 1, !dbg !6283
  %sq_entries = getelementptr inbounds %struct.anon.15, ptr %17, i32 0, i32 4, !dbg !6283
  %18 = load i32, ptr %sq_entries, align 4, !dbg !6283
  store i32 %18, ptr %__UNIQUE_ID___x499, align 4, !dbg !6283
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y500) #17, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y500, metadata !6006, metadata !DIExpression()), !dbg !6283
  %call10 = call i32 @num_online_cpus() #18, !dbg !6283
  %mul = mul i32 4, %call10, !dbg !6283
  store i32 %mul, ptr %__UNIQUE_ID___y500, align 4, !dbg !6283
  %19 = load i32, ptr %__UNIQUE_ID___x499, align 4, !dbg !6283
  %20 = load i32, ptr %__UNIQUE_ID___y500, align 4, !dbg !6283
  %cmp = icmp ult i32 %19, %20, !dbg !6283
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6283

cond.true:                                        ; preds = %if.end6
  %21 = load i32, ptr %__UNIQUE_ID___x499, align 4, !dbg !6283
  br label %cond.end, !dbg !6283

cond.false:                                       ; preds = %if.end6
  %22 = load i32, ptr %__UNIQUE_ID___y500, align 4, !dbg !6283
  br label %cond.end, !dbg !6283

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !6283
  store i32 %cond, ptr %tmp, align 4, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y500) #17, !dbg !6284
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x499) #17, !dbg !6284
  %23 = load i32, ptr %tmp, align 4, !dbg !6283
  store i32 %23, ptr %concurrency, align 4, !dbg !6285
  %24 = load i32, ptr %concurrency, align 4, !dbg !6286
  %call11 = call ptr @io_wq_create(i32 noundef %24, ptr noundef %data) #18, !dbg !6287
  store ptr %call11, ptr %retval, align 8, !dbg !6288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6288

cleanup:                                          ; preds = %cond.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %concurrency) #17, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 32, ptr %data) #17, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #17, !dbg !6289
  %25 = load ptr, ptr %retval, align 8, !dbg !6289
  ret ptr %25, !dbg !6289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !6290 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6297
  %1 = ptrtoint ptr %0 to i64, !dbg !6297
  %2 = inttoptr i64 %1 to ptr, !dbg !6297
  %3 = ptrtoint ptr %2 to i64, !dbg !6297
  %cmp = icmp uge i64 %3, -4095, !dbg !6297
  %lnot = xor i1 %cmp, true, !dbg !6297
  %lnot1 = xor i1 %lnot, true, !dbg !6297
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6297
  %conv = sext i32 %lnot.ext to i64, !dbg !6297
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6297
  %tobool = icmp ne i64 %expval, 0, !dbg !6297
  ret i1 %tobool, !dbg !6298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !6299 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6305
  %1 = ptrtoint ptr %0 to i64, !dbg !6306
  ret i64 %1, !dbg !6307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init(ptr noundef %xa) #5 align 16 !dbg !6308 {
entry:
  %xa.addr = alloca ptr, align 8
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !6314
  call void @xa_init_flags(ptr noundef %0, i32 noundef 0) #18, !dbg !6315
  ret void, !dbg !6316
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6317 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !6321 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6327, metadata !DIExpression()), !dbg !6329
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6328, metadata !DIExpression()), !dbg !6330
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6331
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6332
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6333
  %2 = load i32, ptr %i.addr, align 4, !dbg !6334
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !6335
  ret void, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_llist_head(ptr noundef %list) #5 align 16 !dbg !6337 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6344
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !6345
  store ptr null, ptr %first, align 8, !dbg !6346
  ret void, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_task_work(ptr noundef %twork, ptr noundef %func) #5 align 16 !dbg !6348 {
entry:
  %twork.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %twork, ptr %twork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %twork.addr, metadata !6353, metadata !DIExpression()), !dbg !6355
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  %0 = load ptr, ptr %func.addr, align 8, !dbg !6357
  %1 = load ptr, ptr %twork.addr, align 8, !dbg !6358
  %func1 = getelementptr inbounds %struct.callback_head, ptr %1, i32 0, i32 1, !dbg !6359
  store ptr %0, ptr %func1, align 8, !dbg !6360
  ret void, !dbg !6361
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tctx_task_work(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__io_uring_add_tctx_node(ptr noundef %ctx) #0 align 16 !dbg !6362 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %tctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %limits = alloca [2 x i32], align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6366, metadata !DIExpression()), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6367, metadata !DIExpression()), !dbg !6378
  %call = call ptr @get_current() #18, !dbg !6379
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 102, !dbg !6380
  %0 = load ptr, ptr %io_uring, align 16, !dbg !6380
  store ptr %0, ptr %tctx, align 8, !dbg !6378
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6368, metadata !DIExpression()), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6369, metadata !DIExpression()), !dbg !6384
  %1 = load ptr, ptr %tctx, align 8, !dbg !6385
  %tobool = icmp ne ptr %1, null, !dbg !6385
  %lnot = xor i1 %tobool, true, !dbg !6385
  %lnot1 = xor i1 %lnot, true, !dbg !6385
  %lnot2 = xor i1 %lnot1, true, !dbg !6385
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6385
  %conv = sext i32 %lnot.ext to i64, !dbg !6385
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6385
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6385
  br i1 %tobool3, label %if.then, label %if.end26, !dbg !6386

if.then:                                          ; preds = %entry
  %call4 = call ptr @get_current() #18, !dbg !6387
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6388
  %call5 = call i32 @io_uring_alloc_task_context(ptr noundef %call4, ptr noundef %2) #20, !dbg !6389
  store i32 %call5, ptr %ret, align 4, !dbg !6390
  %3 = load i32, ptr %ret, align 4, !dbg !6391
  %tobool6 = icmp ne i32 %3, 0, !dbg !6391
  %lnot7 = xor i1 %tobool6, true, !dbg !6391
  %lnot9 = xor i1 %lnot7, true, !dbg !6391
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6391
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6391
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6391
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !6391
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !6393

if.then14:                                        ; preds = %if.then
  %4 = load i32, ptr %ret, align 4, !dbg !6394
  store i32 %4, ptr %retval, align 4, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6395

if.end:                                           ; preds = %if.then
  %call15 = call ptr @get_current() #18, !dbg !6396
  %io_uring16 = getelementptr inbounds %struct.task_struct, ptr %call15, i32 0, i32 102, !dbg !6397
  %5 = load ptr, ptr %io_uring16, align 16, !dbg !6397
  store ptr %5, ptr %tctx, align 8, !dbg !6398
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6399
  %iowq_limits_set = getelementptr inbounds %struct.io_ring_ctx, ptr %6, i32 0, i32 41, !dbg !6400
  %7 = load i8, ptr %iowq_limits_set, align 16, !dbg !6400, !range !6401, !noundef !411
  %tobool17 = trunc i8 %7 to i1, !dbg !6400
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !6402

if.then18:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %limits) #17, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %limits, metadata !6370, metadata !DIExpression()), !dbg !6404
  %arrayinit.begin = getelementptr inbounds [2 x i32], ptr %limits, i64 0, i64 0, !dbg !6405
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !6406
  %iowq_limits = getelementptr inbounds %struct.io_ring_ctx, ptr %8, i32 0, i32 40, !dbg !6407
  %arrayidx = getelementptr [2 x i32], ptr %iowq_limits, i64 0, i64 0, !dbg !6406
  %9 = load i32, ptr %arrayidx, align 8, !dbg !6406
  store i32 %9, ptr %arrayinit.begin, align 4, !dbg !6405
  %arrayinit.element = getelementptr inbounds i32, ptr %arrayinit.begin, i64 1, !dbg !6405
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !6408
  %iowq_limits19 = getelementptr inbounds %struct.io_ring_ctx, ptr %10, i32 0, i32 40, !dbg !6409
  %arrayidx20 = getelementptr [2 x i32], ptr %iowq_limits19, i64 0, i64 1, !dbg !6408
  %11 = load i32, ptr %arrayidx20, align 4, !dbg !6408
  store i32 %11, ptr %arrayinit.element, align 4, !dbg !6405
  %12 = load ptr, ptr %tctx, align 8, !dbg !6410
  %io_wq = getelementptr inbounds %struct.io_uring_task, ptr %12, i32 0, i32 2, !dbg !6411
  %13 = load ptr, ptr %io_wq, align 16, !dbg !6411
  %arraydecay = getelementptr inbounds [2 x i32], ptr %limits, i64 0, i64 0, !dbg !6412
  %call21 = call i32 @io_wq_max_workers(ptr noundef %13, ptr noundef %arraydecay) #18, !dbg !6413
  store i32 %call21, ptr %ret, align 4, !dbg !6414
  %14 = load i32, ptr %ret, align 4, !dbg !6415
  %tobool22 = icmp ne i32 %14, 0, !dbg !6415
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !6417

if.then23:                                        ; preds = %if.then18
  %15 = load i32, ptr %ret, align 4, !dbg !6418
  store i32 %15, ptr %retval, align 4, !dbg !6419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6419

if.end24:                                         ; preds = %if.then18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6420
  br label %cleanup, !dbg !6420

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %limits) #17, !dbg !6420
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !6421

if.end25:                                         ; preds = %cleanup.cont, %if.end
  br label %if.end26, !dbg !6422

if.end26:                                         ; preds = %if.end25, %entry
  %16 = load ptr, ptr %tctx, align 8, !dbg !6423
  %xa = getelementptr inbounds %struct.io_uring_task, ptr %16, i32 0, i32 4, !dbg !6425
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !6426
  %18 = ptrtoint ptr %17 to i64, !dbg !6427
  %call27 = call ptr @xa_load(ptr noundef %xa, i64 noundef %18) #18, !dbg !6428
  %tobool28 = icmp ne ptr %call27, null, !dbg !6428
  br i1 %tobool28, label %if.end43, label %if.then29, !dbg !6429

if.then29:                                        ; preds = %if.end26
  %call30 = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 3264) #19, !dbg !6430
  store ptr %call30, ptr %node, align 8, !dbg !6432
  %19 = load ptr, ptr %node, align 8, !dbg !6433
  %tobool31 = icmp ne ptr %19, null, !dbg !6433
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !6435

if.then32:                                        ; preds = %if.then29
  store i32 -12, ptr %retval, align 4, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6436

if.end33:                                         ; preds = %if.then29
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !6437
  %21 = load ptr, ptr %node, align 8, !dbg !6438
  %ctx34 = getelementptr inbounds %struct.io_tctx_node, ptr %21, i32 0, i32 2, !dbg !6439
  store ptr %20, ptr %ctx34, align 8, !dbg !6440
  %call35 = call ptr @get_current() #18, !dbg !6441
  %22 = load ptr, ptr %node, align 8, !dbg !6442
  %task = getelementptr inbounds %struct.io_tctx_node, ptr %22, i32 0, i32 1, !dbg !6443
  store ptr %call35, ptr %task, align 8, !dbg !6444
  %23 = load ptr, ptr %tctx, align 8, !dbg !6445
  %xa36 = getelementptr inbounds %struct.io_uring_task, ptr %23, i32 0, i32 4, !dbg !6446
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !6447
  %25 = ptrtoint ptr %24 to i64, !dbg !6448
  %26 = load ptr, ptr %node, align 8, !dbg !6449
  %call37 = call ptr @xa_store(ptr noundef %xa36, i64 noundef %25, ptr noundef %26, i32 noundef 3264) #18, !dbg !6450
  %call38 = call i32 @xa_err(ptr noundef %call37) #18, !dbg !6451
  store i32 %call38, ptr %ret, align 4, !dbg !6452
  %27 = load i32, ptr %ret, align 4, !dbg !6453
  %tobool39 = icmp ne i32 %27, 0, !dbg !6453
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !6455

if.then40:                                        ; preds = %if.end33
  %28 = load ptr, ptr %node, align 8, !dbg !6456
  call void @kfree(ptr noundef %28) #18, !dbg !6458
  %29 = load i32, ptr %ret, align 4, !dbg !6459
  store i32 %29, ptr %retval, align 4, !dbg !6460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6460

if.end41:                                         ; preds = %if.end33
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !6461
  %31 = getelementptr inbounds %struct.io_ring_ctx, ptr %30, i32 0, i32 1, !dbg !6462
  %uring_lock = getelementptr inbounds %struct.anon.15, ptr %31, i32 0, i32 0, !dbg !6462
  call void @mutex_lock(ptr noundef %uring_lock) #18, !dbg !6463
  %32 = load ptr, ptr %node, align 8, !dbg !6464
  %ctx_node = getelementptr inbounds %struct.io_tctx_node, ptr %32, i32 0, i32 0, !dbg !6465
  %33 = load ptr, ptr %ctx.addr, align 8, !dbg !6466
  %tctx_list = getelementptr inbounds %struct.io_ring_ctx, ptr %33, i32 0, i32 38, !dbg !6467
  call void @list_add(ptr noundef %ctx_node, ptr noundef %tctx_list) #18, !dbg !6468
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !6469
  %35 = getelementptr inbounds %struct.io_ring_ctx, ptr %34, i32 0, i32 1, !dbg !6470
  %uring_lock42 = getelementptr inbounds %struct.anon.15, ptr %35, i32 0, i32 0, !dbg !6470
  call void @mutex_unlock(ptr noundef %uring_lock42) #18, !dbg !6471
  br label %if.end43, !dbg !6472

if.end43:                                         ; preds = %if.end41, %if.end26
  store i32 0, ptr %retval, align 4, !dbg !6473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6473

cleanup44:                                        ; preds = %if.end43, %if.then40, %if.then32, %cleanup, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !6474
  %36 = load i32, ptr %retval, align 4, !dbg !6474
  ret i32 %36, !dbg !6474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #8 align 16 !dbg !6475 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6480, metadata !DIExpression()), !dbg !6486
  br label %do.body, !dbg !6486

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6482, metadata !DIExpression()), !dbg !6487
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6487
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6486
  br label %do.cond, !dbg !6487

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6487

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6484, metadata !DIExpression()), !dbg !6488
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !6488, !srcloc !6489
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6488
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6488
  %3 = inttoptr i64 %2 to ptr, !dbg !6488
  store ptr %3, ptr %tmp, align 8, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !6486
  %4 = load ptr, ptr %tmp, align 8, !dbg !6488
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6486
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6486
  store ptr %5, ptr %tmp1, align 8, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6490
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6486
  ret ptr %6, !dbg !6491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6492 dso_local i32 @io_wq_max_workers(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6495 dso_local ptr @xa_load(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6498 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6500, metadata !DIExpression()), !dbg !6505
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6501, metadata !DIExpression()), !dbg !6506
  %0 = load i64, ptr %size.addr, align 8, !dbg !6507
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6508
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6509

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6510
  %tobool = icmp ne i64 %2, 0, !dbg !6510
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6511

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6502, metadata !DIExpression()), !dbg !6513
  %3 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp = icmp ugt i64 %3, 8192, !dbg !6516
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6517

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6518
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6519
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6520
  store ptr %call, ptr %retval, align 8, !dbg !6521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6521

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6522
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6522
  store i32 %call2, ptr %index, align 4, !dbg !6523
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6524
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6525
  %9 = ptrtoint ptr %8 to i64, !dbg !6525
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6526
  %idxprom = zext i32 %call3 to i64, !dbg !6527
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6527
  %10 = load i32, ptr %index, align 4, !dbg !6528
  %idxprom4 = zext i32 %10 to i64, !dbg !6527
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6527
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6527
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6529
  %13 = load i64, ptr %size.addr, align 8, !dbg !6530
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6531
  store ptr %call6, ptr %retval, align 8, !dbg !6532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6532

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6533
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6534
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6535
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6536
  store ptr %call8, ptr %retval, align 8, !dbg !6537
  br label %return, !dbg !6537

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6538
  ret ptr %16, !dbg !6538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xa_err(ptr noundef %entry1) #5 align 16 !dbg !6539 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6543, metadata !DIExpression()), !dbg !6544
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6545
  %call = call zeroext i1 @xa_is_err(ptr noundef %0) #18, !dbg !6547
  br i1 %call, label %if.then, label %if.end, !dbg !6548

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6549
  %2 = ptrtoint ptr %1 to i64, !dbg !6550
  %shr = ashr i64 %2, 2, !dbg !6551
  %conv = trunc i64 %shr to i32, !dbg !6550
  store i32 %conv, ptr %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6554
  ret i32 %3, !dbg !6554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6555 dso_local ptr @xa_store(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6558 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6562 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6567, metadata !DIExpression()), !dbg !6569
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6568, metadata !DIExpression()), !dbg !6570
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6571
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6572
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6573
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6574
  %3 = load ptr, ptr %next, align 8, !dbg !6574
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !6575
  ret void, !dbg !6576
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6577 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__io_uring_add_tctx_node_from_submit(ptr noundef %ctx) #0 align 16 !dbg !6578 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6580, metadata !DIExpression()), !dbg !6582
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6583
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6581, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6585
  %1 = getelementptr inbounds %struct.io_ring_ctx, ptr %0, i32 0, i32 0, !dbg !6587
  %flags = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 0, !dbg !6587
  %2 = load i32, ptr %flags, align 64, !dbg !6587
  %and = and i32 %2, 4096, !dbg !6588
  %tobool = icmp ne i32 %and, 0, !dbg !6588
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6589

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6590
  %4 = getelementptr inbounds %struct.io_ring_ctx, ptr %3, i32 0, i32 0, !dbg !6591
  %submitter_task = getelementptr inbounds %struct.anon.13, ptr %4, i32 0, i32 2, !dbg !6591
  %5 = load ptr, ptr %submitter_task, align 8, !dbg !6591
  %call = call ptr @get_current() #18, !dbg !6592
  %cmp = icmp ne ptr %5, %call, !dbg !6593
  br i1 %cmp, label %if.then, label %if.end, !dbg !6594

if.then:                                          ; preds = %land.lhs.true
  store i32 -17, ptr %retval, align 4, !dbg !6595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6596
  %call1 = call i32 @__io_uring_add_tctx_node(ptr noundef %6) #18, !dbg !6597
  store i32 %call1, ptr %ret, align 4, !dbg !6598
  %7 = load i32, ptr %ret, align 4, !dbg !6599
  %tobool2 = icmp ne i32 %7, 0, !dbg !6599
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6601

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !6602
  store i32 %8, ptr %retval, align 4, !dbg !6603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6603

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6604
  %call5 = call ptr @get_current() #18, !dbg !6605
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 102, !dbg !6606
  %10 = load ptr, ptr %io_uring, align 16, !dbg !6606
  %last = getelementptr inbounds %struct.io_uring_task, ptr %10, i32 0, i32 1, !dbg !6607
  store ptr %9, ptr %last, align 8, !dbg !6608
  store i32 0, ptr %retval, align 4, !dbg !6609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6609

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6610
  %11 = load i32, ptr %retval, align 4, !dbg !6610
  ret i32 %11, !dbg !6610
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @io_uring_del_tctx_node(i64 noundef %index) #6 align 16 !dbg !6611 {
entry:
  %index.addr = alloca i64, align 8
  %tctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on31 = alloca i32, align 4
  %__flags48 = alloca i32, align 4
  %tmp61 = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6615, metadata !DIExpression()), !dbg !6628
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6629
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6616, metadata !DIExpression()), !dbg !6630
  %call = call ptr @get_current() #18, !dbg !6631
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 102, !dbg !6632
  %0 = load ptr, ptr %io_uring, align 16, !dbg !6632
  store ptr %0, ptr %tctx, align 8, !dbg !6630
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !6633
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6617, metadata !DIExpression()), !dbg !6634
  %1 = load ptr, ptr %tctx, align 8, !dbg !6635
  %tobool = icmp ne ptr %1, null, !dbg !6635
  br i1 %tobool, label %if.end, label %if.then, !dbg !6637

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tctx, align 8, !dbg !6639
  %xa = getelementptr inbounds %struct.io_uring_task, ptr %2, i32 0, i32 4, !dbg !6640
  %3 = load i64, ptr %index.addr, align 8, !dbg !6641
  %call1 = call ptr @xa_erase(ptr noundef %xa, i64 noundef %3) #18, !dbg !6642
  store ptr %call1, ptr %node, align 8, !dbg !6643
  %4 = load ptr, ptr %node, align 8, !dbg !6644
  %tobool2 = icmp ne ptr %4, null, !dbg !6644
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6646

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6647

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6648
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6618, metadata !DIExpression()), !dbg !6648
  %call5 = call ptr @get_current() #18, !dbg !6648
  %5 = load ptr, ptr %node, align 8, !dbg !6648
  %task = getelementptr inbounds %struct.io_tctx_node, ptr %5, i32 0, i32 1, !dbg !6648
  %6 = load ptr, ptr %task, align 8, !dbg !6648
  %cmp = icmp ne ptr %call5, %6, !dbg !6648
  %lnot = xor i1 %cmp, true, !dbg !6648
  %lnot6 = xor i1 %lnot, true, !dbg !6648
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6648
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6648
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6649
  %tobool7 = icmp ne i32 %7, 0, !dbg !6649
  %lnot8 = xor i1 %tobool7, true, !dbg !6649
  %lnot10 = xor i1 %lnot8, true, !dbg !6649
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !6649
  %conv = sext i32 %lnot.ext11 to i64, !dbg !6649
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6649
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6649
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !6648

if.then13:                                        ; preds = %if.end4
  br label %do.body, !dbg !6649

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6650
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6620, metadata !DIExpression()), !dbg !6650
  store i32 2307, ptr %__flags, align 4, !dbg !6650
  br label %do.body14, !dbg !6650

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !6651

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !6651

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !6650

do.body15:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !6653
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 177, i32 %8, i64 12) #17, !dbg !6653, !srcloc !6655
  br label %do.cond16, !dbg !6653

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6653

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6650

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !6656

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6656

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6649
  br label %do.cond21, !dbg !6650

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6650

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !6650

if.end23:                                         ; preds = %do.end22, %if.end4
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6648
  %tobool24 = icmp ne i32 %9, 0, !dbg !6648
  %lnot25 = xor i1 %tobool24, true, !dbg !6648
  %lnot27 = xor i1 %lnot25, true, !dbg !6648
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6648
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6648
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6648
  store i64 %expval30, ptr %tmp, align 8, !dbg !6649
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6658
  %10 = load i64, ptr %tmp, align 8, !dbg !6648
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on31) #17, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on31, metadata !6623, metadata !DIExpression()), !dbg !6659
  %11 = load ptr, ptr %node, align 8, !dbg !6659
  %ctx_node = getelementptr inbounds %struct.io_tctx_node, ptr %11, i32 0, i32 0, !dbg !6659
  %call32 = call i32 @list_empty(ptr noundef %ctx_node) #18, !dbg !6659
  %tobool33 = icmp ne i32 %call32, 0, !dbg !6659
  %lnot34 = xor i1 %tobool33, true, !dbg !6659
  %lnot36 = xor i1 %lnot34, true, !dbg !6659
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !6659
  store i32 %lnot.ext37, ptr %__ret_warn_on31, align 4, !dbg !6659
  %12 = load i32, ptr %__ret_warn_on31, align 4, !dbg !6660
  %tobool38 = icmp ne i32 %12, 0, !dbg !6660
  %lnot39 = xor i1 %tobool38, true, !dbg !6660
  %lnot41 = xor i1 %lnot39, true, !dbg !6660
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6660
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6660
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6660
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !6660
  br i1 %tobool45, label %if.then46, label %if.end60, !dbg !6659

if.then46:                                        ; preds = %if.end23
  br label %do.body47, !dbg !6660

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags48) #17, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %__flags48, metadata !6625, metadata !DIExpression()), !dbg !6661
  store i32 2307, ptr %__flags48, align 4, !dbg !6661
  br label %do.body49, !dbg !6661

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !6662

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6662

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !6661

do.body52:                                        ; preds = %do.end51
  %13 = load i32, ptr %__flags48, align 4, !dbg !6664
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 178, i32 %13, i64 12) #17, !dbg !6664, !srcloc !6666
  br label %do.cond53, !dbg !6664

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6664

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !6661

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !6667

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6667

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags48) #17, !dbg !6660
  br label %do.cond58, !dbg !6661

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !6661

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !6661

if.end60:                                         ; preds = %do.end59, %if.end23
  %14 = load i32, ptr %__ret_warn_on31, align 4, !dbg !6659
  %tobool62 = icmp ne i32 %14, 0, !dbg !6659
  %lnot63 = xor i1 %tobool62, true, !dbg !6659
  %lnot65 = xor i1 %lnot63, true, !dbg !6659
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !6659
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !6659
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !6659
  store i64 %expval68, ptr %tmp61, align 8, !dbg !6660
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on31) #17, !dbg !6669
  %15 = load i64, ptr %tmp61, align 8, !dbg !6659
  %16 = load ptr, ptr %node, align 8, !dbg !6670
  %ctx = getelementptr inbounds %struct.io_tctx_node, ptr %16, i32 0, i32 2, !dbg !6671
  %17 = load ptr, ptr %ctx, align 8, !dbg !6671
  %18 = getelementptr inbounds %struct.io_ring_ctx, ptr %17, i32 0, i32 1, !dbg !6672
  %uring_lock = getelementptr inbounds %struct.anon.15, ptr %18, i32 0, i32 0, !dbg !6672
  call void @mutex_lock(ptr noundef %uring_lock) #18, !dbg !6673
  %19 = load ptr, ptr %node, align 8, !dbg !6674
  %ctx_node69 = getelementptr inbounds %struct.io_tctx_node, ptr %19, i32 0, i32 0, !dbg !6675
  call void @list_del(ptr noundef %ctx_node69) #18, !dbg !6676
  %20 = load ptr, ptr %node, align 8, !dbg !6677
  %ctx70 = getelementptr inbounds %struct.io_tctx_node, ptr %20, i32 0, i32 2, !dbg !6678
  %21 = load ptr, ptr %ctx70, align 8, !dbg !6678
  %22 = getelementptr inbounds %struct.io_ring_ctx, ptr %21, i32 0, i32 1, !dbg !6679
  %uring_lock71 = getelementptr inbounds %struct.anon.15, ptr %22, i32 0, i32 0, !dbg !6679
  call void @mutex_unlock(ptr noundef %uring_lock71) #18, !dbg !6680
  %23 = load ptr, ptr %tctx, align 8, !dbg !6681
  %last = getelementptr inbounds %struct.io_uring_task, ptr %23, i32 0, i32 1, !dbg !6683
  %24 = load ptr, ptr %last, align 8, !dbg !6683
  %25 = load ptr, ptr %node, align 8, !dbg !6684
  %ctx72 = getelementptr inbounds %struct.io_tctx_node, ptr %25, i32 0, i32 2, !dbg !6685
  %26 = load ptr, ptr %ctx72, align 8, !dbg !6685
  %cmp73 = icmp eq ptr %24, %26, !dbg !6686
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !6687

if.then75:                                        ; preds = %if.end60
  %27 = load ptr, ptr %tctx, align 8, !dbg !6688
  %last76 = getelementptr inbounds %struct.io_uring_task, ptr %27, i32 0, i32 1, !dbg !6689
  store ptr null, ptr %last76, align 8, !dbg !6690
  br label %if.end77, !dbg !6688

if.end77:                                         ; preds = %if.then75, %if.end60
  %28 = load ptr, ptr %node, align 8, !dbg !6691
  call void @kfree(ptr noundef %28) #18, !dbg !6692
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6693
  br label %cleanup, !dbg !6693

cleanup:                                          ; preds = %if.end77, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !6693
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6693

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6694 dso_local ptr @xa_erase(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !6695 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6701, metadata !DIExpression()), !dbg !6702
  br label %do.body, !dbg !6703

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6705

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6703
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6703
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6703
  store ptr %1, ptr %tmp, align 8, !dbg !6705
  %2 = load ptr, ptr %tmp, align 8, !dbg !6703
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6707
  %cmp = icmp eq ptr %2, %3, !dbg !6708
  %conv = zext i1 %cmp to i32, !dbg !6708
  ret i32 %conv, !dbg !6709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !6710 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6716
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6717
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6718
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6719
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6720
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6721
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6722
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6723
  ret void, !dbg !6724
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @io_uring_clean_tctx(ptr noundef %tctx) #6 align 16 !dbg !6725 {
entry:
  %tctx.addr = alloca ptr, align 8
  %wq = alloca ptr, align 8
  %node = alloca ptr, align 8
  %index = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tctx, ptr %tctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !6729, metadata !DIExpression()), !dbg !6733
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #17, !dbg !6734
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !6730, metadata !DIExpression()), !dbg !6735
  %0 = load ptr, ptr %tctx.addr, align 8, !dbg !6736
  %io_wq = getelementptr inbounds %struct.io_uring_task, ptr %0, i32 0, i32 2, !dbg !6737
  %1 = load ptr, ptr %io_wq, align 16, !dbg !6737
  store ptr %1, ptr %wq, align 8, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6731, metadata !DIExpression()), !dbg !6739
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #17, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6732, metadata !DIExpression()), !dbg !6741
  store i64 0, ptr %index, align 8, !dbg !6742
  %2 = load ptr, ptr %tctx.addr, align 8, !dbg !6742
  %xa = getelementptr inbounds %struct.io_uring_task, ptr %2, i32 0, i32 4, !dbg !6742
  %call = call ptr @xa_find(ptr noundef %xa, ptr noundef %index, i64 noundef -1, i32 noundef 8) #18, !dbg !6742
  store ptr %call, ptr %node, align 8, !dbg !6742
  br label %for.cond, !dbg !6742

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !6744
  %tobool = icmp ne ptr %3, null, !dbg !6742
  br i1 %tobool, label %for.body, label %for.end, !dbg !6742

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %index, align 8, !dbg !6746
  call void @io_uring_del_tctx_node(i64 noundef %4) #20, !dbg !6748
  call void @__might_resched(ptr noundef @.str, i32 noundef 197, i32 noundef 0) #18, !dbg !6749
  %call1 = call i32 @_cond_resched() #18, !dbg !6749
  store i32 %call1, ptr %tmp, align 4, !dbg !6749
  %5 = load i32, ptr %tmp, align 4, !dbg !6749
  br label %for.inc, !dbg !6751

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %tctx.addr, align 8, !dbg !6744
  %xa2 = getelementptr inbounds %struct.io_uring_task, ptr %6, i32 0, i32 4, !dbg !6744
  %call3 = call ptr @xa_find_after(ptr noundef %xa2, ptr noundef %index, i64 noundef -1, i32 noundef 8) #18, !dbg !6744
  store ptr %call3, ptr %node, align 8, !dbg !6744
  br label %for.cond, !dbg !6744, !llvm.loop !6752

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %wq, align 8, !dbg !6754
  %tobool4 = icmp ne ptr %7, null, !dbg !6754
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6756

if.then:                                          ; preds = %for.end
  %8 = load ptr, ptr %wq, align 8, !dbg !6757
  call void @io_wq_put_and_exit(ptr noundef %8) #18, !dbg !6759
  %9 = load ptr, ptr %tctx.addr, align 8, !dbg !6760
  %io_wq5 = getelementptr inbounds %struct.io_uring_task, ptr %9, i32 0, i32 2, !dbg !6761
  store ptr null, ptr %io_wq5, align 16, !dbg !6762
  br label %if.end, !dbg !6763

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #17, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #17, !dbg !6764
  ret void, !dbg !6764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !6765 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6770, metadata !DIExpression()), !dbg !6773
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6771, metadata !DIExpression()), !dbg !6774
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6772, metadata !DIExpression()), !dbg !6775
  ret void, !dbg !6776
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #8 align 16 !dbg !6016 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6777
  %0 = load ptr, ptr %tmp, align 8, !dbg !6777
  %call = call i32 %0() #18, !dbg !6779
  ret i32 %call, !dbg !6780
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6781 dso_local void @io_wq_put_and_exit(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_uring_unreg_ringfd() #0 align 16 !dbg !6784 {
entry:
  %tctx = alloca ptr, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6786, metadata !DIExpression()), !dbg !6789
  %call = call ptr @get_current() #18, !dbg !6790
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 102, !dbg !6791
  %0 = load ptr, ptr %io_uring, align 16, !dbg !6791
  store ptr %0, ptr %tctx, align 8, !dbg !6789
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6787, metadata !DIExpression()), !dbg !6793
  store i32 0, ptr %i, align 4, !dbg !6794
  br label %for.cond, !dbg !6796

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6797
  %cmp = icmp slt i32 %1, 16, !dbg !6799
  br i1 %cmp, label %for.body, label %for.end, !dbg !6800

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %tctx, align 8, !dbg !6801
  %registered_rings = getelementptr inbounds %struct.io_uring_task, ptr %2, i32 0, i32 3, !dbg !6804
  %3 = load i32, ptr %i, align 4, !dbg !6805
  %idxprom = sext i32 %3 to i64, !dbg !6801
  %arrayidx = getelementptr [16 x ptr], ptr %registered_rings, i64 0, i64 %idxprom, !dbg !6801
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6801
  %tobool = icmp ne ptr %4, null, !dbg !6801
  br i1 %tobool, label %if.then, label %if.end, !dbg !6806

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %tctx, align 8, !dbg !6807
  %registered_rings1 = getelementptr inbounds %struct.io_uring_task, ptr %5, i32 0, i32 3, !dbg !6809
  %6 = load i32, ptr %i, align 4, !dbg !6810
  %idxprom2 = sext i32 %6 to i64, !dbg !6807
  %arrayidx3 = getelementptr [16 x ptr], ptr %registered_rings1, i64 0, i64 %idxprom2, !dbg !6807
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !6807
  call void @fput(ptr noundef %7) #18, !dbg !6811
  %8 = load ptr, ptr %tctx, align 8, !dbg !6812
  %registered_rings4 = getelementptr inbounds %struct.io_uring_task, ptr %8, i32 0, i32 3, !dbg !6813
  %9 = load i32, ptr %i, align 4, !dbg !6814
  %idxprom5 = sext i32 %9 to i64, !dbg !6812
  %arrayidx6 = getelementptr [16 x ptr], ptr %registered_rings4, i64 0, i64 %idxprom5, !dbg !6812
  store ptr null, ptr %arrayidx6, align 8, !dbg !6815
  br label %if.end, !dbg !6816

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6817

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6818
  %inc = add i32 %10, 1, !dbg !6818
  store i32 %inc, ptr %i, align 4, !dbg !6818
  br label %for.cond, !dbg !6819, !llvm.loop !6820

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6822
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !6822
  ret void, !dbg !6822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6823 dso_local void @fput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_ring_add_registered_file(ptr noundef %tctx, ptr noundef %file, i32 noundef %start, i32 noundef %end) #0 align 16 !dbg !6825 {
entry:
  %retval = alloca i32, align 4
  %tctx.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tctx, ptr %tctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !6829, metadata !DIExpression()), !dbg !6841
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6830, metadata !DIExpression()), !dbg !6842
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6831, metadata !DIExpression()), !dbg !6843
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6832, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #17, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6833, metadata !DIExpression()), !dbg !6846
  %0 = load i32, ptr %start.addr, align 4, !dbg !6847
  store i32 %0, ptr %offset, align 4, !dbg !6848
  br label %for.cond, !dbg !6849

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %offset, align 4, !dbg !6850
  %2 = load i32, ptr %end.addr, align 4, !dbg !6851
  %cmp = icmp slt i32 %1, %2, !dbg !6852
  br i1 %cmp, label %for.body, label %for.end, !dbg !6853

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #17, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !6834, metadata !DIExpression()), !dbg !6854
  %3 = load i32, ptr %offset, align 4, !dbg !6854
  store i32 %3, ptr %_i, align 4, !dbg !6854
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #17, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !6839, metadata !DIExpression()), !dbg !6854
  store i32 16, ptr %_s, align 4, !dbg !6854
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #17, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !6840, metadata !DIExpression()), !dbg !6854
  %4 = load i32, ptr %_i, align 4, !dbg !6854
  %conv = sext i32 %4 to i64, !dbg !6854
  %5 = load i32, ptr %_s, align 4, !dbg !6854
  %conv1 = sext i32 %5 to i64, !dbg !6854
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv1) #18, !dbg !6854
  store i64 %call, ptr %_mask, align 8, !dbg !6854
  br label %do.body, !dbg !6854

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !6855

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6855

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6854

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !6857

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6857

do.end4:                                          ; preds = %do.cond3
  %6 = load i32, ptr %_i, align 4, !dbg !6854
  %conv5 = sext i32 %6 to i64, !dbg !6854
  %7 = load i64, ptr %_mask, align 8, !dbg !6854
  %and = and i64 %conv5, %7, !dbg !6854
  %conv6 = trunc i64 %and to i32, !dbg !6854
  store i32 %conv6, ptr %tmp, align 4, !dbg !6857
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #17, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #17, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #17, !dbg !6859
  %8 = load i32, ptr %tmp, align 4, !dbg !6854
  store i32 %8, ptr %offset, align 4, !dbg !6860
  %9 = load ptr, ptr %tctx.addr, align 8, !dbg !6861
  %registered_rings = getelementptr inbounds %struct.io_uring_task, ptr %9, i32 0, i32 3, !dbg !6863
  %10 = load i32, ptr %offset, align 4, !dbg !6864
  %idxprom = sext i32 %10 to i64, !dbg !6861
  %arrayidx = getelementptr [16 x ptr], ptr %registered_rings, i64 0, i64 %idxprom, !dbg !6861
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !6861
  %tobool = icmp ne ptr %11, null, !dbg !6861
  br i1 %tobool, label %if.then, label %if.end, !dbg !6865

if.then:                                          ; preds = %do.end4
  br label %for.inc, !dbg !6866

if.end:                                           ; preds = %do.end4
  %12 = load ptr, ptr %file.addr, align 8, !dbg !6867
  %13 = load ptr, ptr %tctx.addr, align 8, !dbg !6868
  %registered_rings7 = getelementptr inbounds %struct.io_uring_task, ptr %13, i32 0, i32 3, !dbg !6869
  %14 = load i32, ptr %offset, align 4, !dbg !6870
  %idxprom8 = sext i32 %14 to i64, !dbg !6868
  %arrayidx9 = getelementptr [16 x ptr], ptr %registered_rings7, i64 0, i64 %idxprom8, !dbg !6868
  store ptr %12, ptr %arrayidx9, align 8, !dbg !6871
  %15 = load i32, ptr %offset, align 4, !dbg !6872
  store i32 %15, ptr %retval, align 4, !dbg !6873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6873

for.inc:                                          ; preds = %if.then
  %16 = load i32, ptr %offset, align 4, !dbg !6874
  %inc = add i32 %16, 1, !dbg !6874
  store i32 %inc, ptr %offset, align 4, !dbg !6874
  br label %for.cond, !dbg !6875, !llvm.loop !6876

for.end:                                          ; preds = %for.cond
  store i32 -16, ptr %retval, align 4, !dbg !6878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6878

cleanup:                                          ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #17, !dbg !6879
  %17 = load i32, ptr %retval, align 4, !dbg !6879
  ret i32 %17, !dbg !6879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #5 align 16 !dbg !6880 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6885, metadata !DIExpression()), !dbg !6888
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6886, metadata !DIExpression()), !dbg !6889
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6887, metadata !DIExpression()), !dbg !6891
  %0 = load i64, ptr %size.addr, align 8, !dbg !6892
  %1 = load i64, ptr %index.addr, align 8, !dbg !6893
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #17, !dbg !6894, !srcloc !6895
  store i64 %2, ptr %mask, align 8, !dbg !6894
  %3 = load i64, ptr %mask, align 8, !dbg !6896
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6897
  ret i64 %3, !dbg !6898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_ringfd_register(ptr noundef %ctx, ptr noundef %__arg, i32 noundef %nr_args) #0 align 16 !dbg !6899 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %__arg.addr = alloca ptr, align 8
  %nr_args.addr = alloca i32, align 4
  %arg = alloca ptr, align 8
  %reg = alloca %struct.io_uring_rsrc_update, align 8
  %tctx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6903, metadata !DIExpression()), !dbg !6922
  store ptr %__arg, ptr %__arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__arg.addr, metadata !6904, metadata !DIExpression()), !dbg !6923
  store i32 %nr_args, ptr %nr_args.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_args.addr, metadata !6905, metadata !DIExpression()), !dbg !6924
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #17, !dbg !6925
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !6906, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %__arg.addr, align 8, !dbg !6927
  store ptr %0, ptr %arg, align 8, !dbg !6926
  call void @llvm.lifetime.start.p0(i64 16, ptr %reg) #17, !dbg !6928
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !6913, metadata !DIExpression()), !dbg !6929
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !6930
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !6914, metadata !DIExpression()), !dbg !6931
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6932
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6915, metadata !DIExpression()), !dbg !6933
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6932
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6916, metadata !DIExpression()), !dbg !6934
  %1 = load i32, ptr %nr_args.addr, align 4, !dbg !6935
  %tobool = icmp ne i32 %1, 0, !dbg !6935
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6937

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %nr_args.addr, align 4, !dbg !6938
  %cmp = icmp ugt i32 %2, 16, !dbg !6939
  br i1 %cmp, label %if.then, label %if.end, !dbg !6940

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !6941

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6942
  %4 = getelementptr inbounds %struct.io_ring_ctx, ptr %3, i32 0, i32 1, !dbg !6943
  %uring_lock = getelementptr inbounds %struct.anon.15, ptr %4, i32 0, i32 0, !dbg !6943
  call void @mutex_unlock(ptr noundef %uring_lock) #18, !dbg !6944
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !6945
  %call = call i32 @__io_uring_add_tctx_node(ptr noundef %5) #18, !dbg !6946
  store i32 %call, ptr %ret, align 4, !dbg !6947
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6948
  %7 = getelementptr inbounds %struct.io_ring_ctx, ptr %6, i32 0, i32 1, !dbg !6949
  %uring_lock1 = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 0, !dbg !6949
  call void @mutex_lock(ptr noundef %uring_lock1) #18, !dbg !6950
  %8 = load i32, ptr %ret, align 4, !dbg !6951
  %tobool2 = icmp ne i32 %8, 0, !dbg !6951
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6953

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !6954
  store i32 %9, ptr %retval, align 4, !dbg !6955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !6955

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @get_current() #18, !dbg !6956
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 102, !dbg !6957
  %10 = load ptr, ptr %io_uring, align 16, !dbg !6957
  store ptr %10, ptr %tctx, align 8, !dbg !6958
  store i32 0, ptr %i, align 4, !dbg !6959
  br label %for.cond, !dbg !6960

for.cond:                                         ; preds = %for.inc, %if.end4
  %11 = load i32, ptr %i, align 4, !dbg !6961
  %12 = load i32, ptr %nr_args.addr, align 4, !dbg !6962
  %cmp6 = icmp ult i32 %11, %12, !dbg !6963
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6964

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #17, !dbg !6965
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6917, metadata !DIExpression()), !dbg !6966
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #17, !dbg !6965
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6921, metadata !DIExpression()), !dbg !6967
  %13 = load ptr, ptr %arg, align 8, !dbg !6968
  %14 = load i32, ptr %i, align 4, !dbg !6970
  %idxprom = sext i32 %14 to i64, !dbg !6968
  %arrayidx = getelementptr %struct.io_uring_rsrc_update, ptr %13, i64 %idxprom, !dbg !6968
  %call7 = call i64 @copy_from_user(ptr noundef %reg, ptr noundef %arrayidx, i64 noundef 16) #18, !dbg !6971
  %tobool8 = icmp ne i64 %call7, 0, !dbg !6971
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6972

if.then9:                                         ; preds = %for.body
  store i32 -14, ptr %ret, align 4, !dbg !6973
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6975

if.end10:                                         ; preds = %for.body
  %resv = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 1, !dbg !6976
  %15 = load i32, ptr %resv, align 4, !dbg !6976
  %tobool11 = icmp ne i32 %15, 0, !dbg !6978
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6979

if.then12:                                        ; preds = %if.end10
  store i32 -22, ptr %ret, align 4, !dbg !6980
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6982

if.end13:                                         ; preds = %if.end10
  %offset = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !6983
  %16 = load i32, ptr %offset, align 8, !dbg !6983
  %cmp14 = icmp eq i32 %16, -1, !dbg !6985
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !6986

if.then15:                                        ; preds = %if.end13
  store i32 0, ptr %start, align 4, !dbg !6987
  store i32 16, ptr %end, align 4, !dbg !6989
  br label %if.end21, !dbg !6990

if.else:                                          ; preds = %if.end13
  %offset16 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !6991
  %17 = load i32, ptr %offset16, align 8, !dbg !6991
  %cmp17 = icmp uge i32 %17, 16, !dbg !6994
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6995

if.then18:                                        ; preds = %if.else
  store i32 -22, ptr %ret, align 4, !dbg !6996
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6998

if.end19:                                         ; preds = %if.else
  %offset20 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !6999
  %18 = load i32, ptr %offset20, align 8, !dbg !6999
  store i32 %18, ptr %start, align 4, !dbg !7000
  %19 = load i32, ptr %start, align 4, !dbg !7001
  %add = add i32 %19, 1, !dbg !7002
  store i32 %add, ptr %end, align 4, !dbg !7003
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.then15
  %20 = load ptr, ptr %tctx, align 8, !dbg !7004
  %data = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 2, !dbg !7005
  %21 = load i64, ptr %data, align 8, !dbg !7005
  %conv = trunc i64 %21 to i32, !dbg !7006
  %22 = load i32, ptr %start, align 4, !dbg !7007
  %23 = load i32, ptr %end, align 4, !dbg !7008
  %call22 = call i32 @io_ring_add_registered_fd(ptr noundef %20, i32 noundef %conv, i32 noundef %22, i32 noundef %23) #18, !dbg !7009
  store i32 %call22, ptr %ret, align 4, !dbg !7010
  %24 = load i32, ptr %ret, align 4, !dbg !7011
  %cmp23 = icmp slt i32 %24, 0, !dbg !7013
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !7014

if.then25:                                        ; preds = %if.end21
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7015

if.end26:                                         ; preds = %if.end21
  %25 = load i32, ptr %ret, align 4, !dbg !7016
  %offset27 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7017
  store i32 %25, ptr %offset27, align 8, !dbg !7018
  %26 = load ptr, ptr %arg, align 8, !dbg !7019
  %27 = load i32, ptr %i, align 4, !dbg !7021
  %idxprom28 = sext i32 %27 to i64, !dbg !7019
  %arrayidx29 = getelementptr %struct.io_uring_rsrc_update, ptr %26, i64 %idxprom28, !dbg !7019
  %call30 = call i64 @copy_to_user(ptr noundef %arrayidx29, ptr noundef %reg, i64 noundef 16) #18, !dbg !7022
  %tobool31 = icmp ne i64 %call30, 0, !dbg !7022
  br i1 %tobool31, label %if.then32, label %if.end40, !dbg !7023

if.then32:                                        ; preds = %if.end26
  %28 = load ptr, ptr %tctx, align 8, !dbg !7024
  %registered_rings = getelementptr inbounds %struct.io_uring_task, ptr %28, i32 0, i32 3, !dbg !7026
  %offset33 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7027
  %29 = load i32, ptr %offset33, align 8, !dbg !7027
  %idxprom34 = zext i32 %29 to i64, !dbg !7024
  %arrayidx35 = getelementptr [16 x ptr], ptr %registered_rings, i64 0, i64 %idxprom34, !dbg !7024
  %30 = load ptr, ptr %arrayidx35, align 8, !dbg !7024
  call void @fput(ptr noundef %30) #18, !dbg !7028
  %31 = load ptr, ptr %tctx, align 8, !dbg !7029
  %registered_rings36 = getelementptr inbounds %struct.io_uring_task, ptr %31, i32 0, i32 3, !dbg !7030
  %offset37 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7031
  %32 = load i32, ptr %offset37, align 8, !dbg !7031
  %idxprom38 = zext i32 %32 to i64, !dbg !7029
  %arrayidx39 = getelementptr [16 x ptr], ptr %registered_rings36, i64 0, i64 %idxprom38, !dbg !7029
  store ptr null, ptr %arrayidx39, align 8, !dbg !7032
  store i32 -14, ptr %ret, align 4, !dbg !7033
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7034

if.end40:                                         ; preds = %if.end26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7035
  br label %cleanup, !dbg !7035

cleanup:                                          ; preds = %if.end40, %if.then32, %if.then25, %if.then18, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #17, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #17, !dbg !7035
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !7036

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, ptr %i, align 4, !dbg !7037
  %inc = add i32 %33, 1, !dbg !7037
  store i32 %inc, ptr %i, align 4, !dbg !7037
  br label %for.cond, !dbg !7038, !llvm.loop !7039

for.end:                                          ; preds = %cleanup, %for.cond
  %34 = load i32, ptr %i, align 4, !dbg !7041
  %tobool42 = icmp ne i32 %34, 0, !dbg !7041
  br i1 %tobool42, label %cond.true, label %cond.false, !dbg !7041

cond.true:                                        ; preds = %for.end
  %35 = load i32, ptr %i, align 4, !dbg !7042
  br label %cond.end, !dbg !7041

cond.false:                                       ; preds = %for.end
  %36 = load i32, ptr %ret, align 4, !dbg !7043
  br label %cond.end, !dbg !7041

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ], !dbg !7041
  store i32 %cond, ptr %retval, align 4, !dbg !7044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !7044

cleanup43:                                        ; preds = %cond.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 16, ptr %reg) #17, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #17, !dbg !7045
  %37 = load i32, ptr %retval, align 4, !dbg !7045
  ret i32 %37, !dbg !7045

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #8 align 16 !dbg !7046 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7051, metadata !DIExpression()), !dbg !7054
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7052, metadata !DIExpression()), !dbg !7055
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7053, metadata !DIExpression()), !dbg !7056
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7057
  %1 = load i64, ptr %n.addr, align 8, !dbg !7059
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !7060
  br i1 %call, label %if.then, label %if.end, !dbg !7061

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7062
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7063
  %4 = load i64, ptr %n.addr, align 8, !dbg !7064
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !7065
  store i64 %call1, ptr %n.addr, align 8, !dbg !7066
  br label %if.end, !dbg !7067

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7068
  ret i64 %5, !dbg !7069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @io_ring_add_registered_fd(ptr noundef %tctx, i32 noundef %fd, i32 noundef %start, i32 noundef %end) #0 align 16 !dbg !7070 {
entry:
  %retval = alloca i32, align 4
  %tctx.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tctx, ptr %tctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !7074, metadata !DIExpression()), !dbg !7080
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7075, metadata !DIExpression()), !dbg !7081
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7076, metadata !DIExpression()), !dbg !7082
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7077, metadata !DIExpression()), !dbg !7083
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #17, !dbg !7084
  call void @llvm.dbg.declare(metadata ptr %file, metadata !7078, metadata !DIExpression()), !dbg !7085
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #17, !dbg !7086
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !7079, metadata !DIExpression()), !dbg !7087
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7088
  %call = call ptr @fget(i32 noundef %0) #18, !dbg !7089
  store ptr %call, ptr %file, align 8, !dbg !7090
  %1 = load ptr, ptr %file, align 8, !dbg !7091
  %tobool = icmp ne ptr %1, null, !dbg !7091
  br i1 %tobool, label %if.else, label %if.then, !dbg !7093

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4, !dbg !7094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7094

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %file, align 8, !dbg !7096
  %call1 = call zeroext i1 @io_is_uring_fops(ptr noundef %2) #18, !dbg !7098
  br i1 %call1, label %if.end, label %if.then2, !dbg !7099

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %file, align 8, !dbg !7100
  call void @fput(ptr noundef %3) #18, !dbg !7102
  store i32 -95, ptr %retval, align 4, !dbg !7103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7103

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %tctx.addr, align 8, !dbg !7104
  %5 = load ptr, ptr %file, align 8, !dbg !7105
  %6 = load i32, ptr %start.addr, align 4, !dbg !7106
  %7 = load i32, ptr %end.addr, align 4, !dbg !7107
  %call4 = call i32 @io_ring_add_registered_file(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #18, !dbg !7108
  store i32 %call4, ptr %offset, align 4, !dbg !7109
  %8 = load i32, ptr %offset, align 4, !dbg !7110
  %cmp = icmp slt i32 %8, 0, !dbg !7112
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !7113

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %file, align 8, !dbg !7114
  call void @fput(ptr noundef %9) #18, !dbg !7115
  br label %if.end6, !dbg !7115

if.end6:                                          ; preds = %if.then5, %if.end3
  %10 = load i32, ptr %offset, align 4, !dbg !7116
  store i32 %10, ptr %retval, align 4, !dbg !7117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7117

cleanup:                                          ; preds = %if.end6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #17, !dbg !7118
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #17, !dbg !7118
  %11 = load i32, ptr %retval, align 4, !dbg !7118
  ret i32 %11, !dbg !7118
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #8 align 16 !dbg !7119 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7121, metadata !DIExpression()), !dbg !7124
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7122, metadata !DIExpression()), !dbg !7125
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7123, metadata !DIExpression()), !dbg !7126
  %0 = load ptr, ptr %from.addr, align 8, !dbg !7127
  %1 = load i64, ptr %n.addr, align 8, !dbg !7129
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #18, !dbg !7130
  br i1 %call, label %if.then, label %if.end, !dbg !7131

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7132
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7133
  %4 = load i64, ptr %n.addr, align 8, !dbg !7134
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !7135
  store i64 %call1, ptr %n.addr, align 8, !dbg !7136
  br label %if.end, !dbg !7137

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7138
  ret i64 %5, !dbg !7139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_ringfd_unregister(ptr noundef %ctx, ptr noundef %__arg, i32 noundef %nr_args) #0 align 16 !dbg !7140 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %__arg.addr = alloca ptr, align 8
  %nr_args.addr = alloca i32, align 4
  %arg = alloca ptr, align 8
  %tctx = alloca ptr, align 8
  %reg = alloca %struct.io_uring_rsrc_update, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !7142, metadata !DIExpression()), !dbg !7157
  store ptr %__arg, ptr %__arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__arg.addr, metadata !7143, metadata !DIExpression()), !dbg !7158
  store i32 %nr_args, ptr %nr_args.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_args.addr, metadata !7144, metadata !DIExpression()), !dbg !7159
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #17, !dbg !7160
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !7145, metadata !DIExpression()), !dbg !7161
  %0 = load ptr, ptr %__arg.addr, align 8, !dbg !7162
  store ptr %0, ptr %arg, align 8, !dbg !7161
  call void @llvm.lifetime.start.p0(i64 8, ptr %tctx) #17, !dbg !7163
  call void @llvm.dbg.declare(metadata ptr %tctx, metadata !7146, metadata !DIExpression()), !dbg !7164
  %call = call ptr @get_current() #18, !dbg !7165
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 102, !dbg !7166
  %1 = load ptr, ptr %io_uring, align 16, !dbg !7166
  store ptr %1, ptr %tctx, align 8, !dbg !7164
  call void @llvm.lifetime.start.p0(i64 16, ptr %reg) #17, !dbg !7167
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !7147, metadata !DIExpression()), !dbg !7168
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7169
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7148, metadata !DIExpression()), !dbg !7170
  store i32 0, ptr %ret, align 4, !dbg !7170
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !7169
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7149, metadata !DIExpression()), !dbg !7171
  %2 = load i32, ptr %nr_args.addr, align 4, !dbg !7172
  %tobool = icmp ne i32 %2, 0, !dbg !7172
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7174

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %nr_args.addr, align 4, !dbg !7175
  %cmp = icmp ugt i32 %3, 16, !dbg !7176
  br i1 %cmp, label %if.then, label %if.end, !dbg !7177

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !7178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7178

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %tctx, align 8, !dbg !7179
  %tobool1 = icmp ne ptr %4, null, !dbg !7179
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !7181

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7182

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !7183
  br label %for.cond, !dbg !7184

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i32, ptr %i, align 4, !dbg !7185
  %6 = load i32, ptr %nr_args.addr, align 4, !dbg !7186
  %cmp4 = icmp ult i32 %5, %6, !dbg !7187
  br i1 %cmp4, label %for.body, label %for.end, !dbg !7188

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %arg, align 8, !dbg !7189
  %8 = load i32, ptr %i, align 4, !dbg !7191
  %idxprom = sext i32 %8 to i64, !dbg !7189
  %arrayidx = getelementptr %struct.io_uring_rsrc_update, ptr %7, i64 %idxprom, !dbg !7189
  %call5 = call i64 @copy_from_user(ptr noundef %reg, ptr noundef %arrayidx, i64 noundef 16) #18, !dbg !7192
  %tobool6 = icmp ne i64 %call5, 0, !dbg !7192
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !7193

if.then7:                                         ; preds = %for.body
  store i32 -14, ptr %ret, align 4, !dbg !7194
  br label %for.end, !dbg !7196

if.end8:                                          ; preds = %for.body
  %resv = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 1, !dbg !7197
  %9 = load i32, ptr %resv, align 4, !dbg !7197
  %tobool9 = icmp ne i32 %9, 0, !dbg !7199
  br i1 %tobool9, label %if.then14, label %lor.lhs.false10, !dbg !7200

lor.lhs.false10:                                  ; preds = %if.end8
  %data = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 2, !dbg !7201
  %10 = load i64, ptr %data, align 8, !dbg !7201
  %tobool11 = icmp ne i64 %10, 0, !dbg !7202
  br i1 %tobool11, label %if.then14, label %lor.lhs.false12, !dbg !7203

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %offset = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7204
  %11 = load i32, ptr %offset, align 8, !dbg !7204
  %cmp13 = icmp uge i32 %11, 16, !dbg !7205
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !7206

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %if.end8
  store i32 -22, ptr %ret, align 4, !dbg !7207
  br label %for.end, !dbg !7209

if.end15:                                         ; preds = %lor.lhs.false12
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #17, !dbg !7210
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !7150, metadata !DIExpression()), !dbg !7210
  %offset16 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7210
  %12 = load i32, ptr %offset16, align 8, !dbg !7210
  store i32 %12, ptr %_i, align 4, !dbg !7210
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #17, !dbg !7210
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !7155, metadata !DIExpression()), !dbg !7210
  store i32 16, ptr %_s, align 4, !dbg !7210
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #17, !dbg !7210
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !7156, metadata !DIExpression()), !dbg !7210
  %13 = load i32, ptr %_i, align 4, !dbg !7210
  %conv = zext i32 %13 to i64, !dbg !7210
  %14 = load i32, ptr %_s, align 4, !dbg !7210
  %conv17 = sext i32 %14 to i64, !dbg !7210
  %call18 = call i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv17) #18, !dbg !7210
  store i64 %call18, ptr %_mask, align 8, !dbg !7210
  br label %do.body, !dbg !7210

do.body:                                          ; preds = %if.end15
  br label %do.cond, !dbg !7211

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7211

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !7210

do.body19:                                        ; preds = %do.end
  br label %do.cond20, !dbg !7213

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !7213

do.end21:                                         ; preds = %do.cond20
  %15 = load i32, ptr %_i, align 4, !dbg !7210
  %conv22 = zext i32 %15 to i64, !dbg !7210
  %16 = load i64, ptr %_mask, align 8, !dbg !7210
  %and = and i64 %conv22, %16, !dbg !7210
  %conv23 = trunc i64 %and to i32, !dbg !7210
  store i32 %conv23, ptr %tmp, align 4, !dbg !7213
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #17, !dbg !7215
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #17, !dbg !7215
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #17, !dbg !7215
  %17 = load i32, ptr %tmp, align 4, !dbg !7210
  %offset24 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7216
  store i32 %17, ptr %offset24, align 8, !dbg !7217
  %18 = load ptr, ptr %tctx, align 8, !dbg !7218
  %registered_rings = getelementptr inbounds %struct.io_uring_task, ptr %18, i32 0, i32 3, !dbg !7220
  %offset25 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7221
  %19 = load i32, ptr %offset25, align 8, !dbg !7221
  %idxprom26 = zext i32 %19 to i64, !dbg !7218
  %arrayidx27 = getelementptr [16 x ptr], ptr %registered_rings, i64 0, i64 %idxprom26, !dbg !7218
  %20 = load ptr, ptr %arrayidx27, align 8, !dbg !7218
  %tobool28 = icmp ne ptr %20, null, !dbg !7218
  br i1 %tobool28, label %if.then29, label %if.end38, !dbg !7222

if.then29:                                        ; preds = %do.end21
  %21 = load ptr, ptr %tctx, align 8, !dbg !7223
  %registered_rings30 = getelementptr inbounds %struct.io_uring_task, ptr %21, i32 0, i32 3, !dbg !7225
  %offset31 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7226
  %22 = load i32, ptr %offset31, align 8, !dbg !7226
  %idxprom32 = zext i32 %22 to i64, !dbg !7223
  %arrayidx33 = getelementptr [16 x ptr], ptr %registered_rings30, i64 0, i64 %idxprom32, !dbg !7223
  %23 = load ptr, ptr %arrayidx33, align 8, !dbg !7223
  call void @fput(ptr noundef %23) #18, !dbg !7227
  %24 = load ptr, ptr %tctx, align 8, !dbg !7228
  %registered_rings34 = getelementptr inbounds %struct.io_uring_task, ptr %24, i32 0, i32 3, !dbg !7229
  %offset35 = getelementptr inbounds %struct.io_uring_rsrc_update, ptr %reg, i32 0, i32 0, !dbg !7230
  %25 = load i32, ptr %offset35, align 8, !dbg !7230
  %idxprom36 = zext i32 %25 to i64, !dbg !7228
  %arrayidx37 = getelementptr [16 x ptr], ptr %registered_rings34, i64 0, i64 %idxprom36, !dbg !7228
  store ptr null, ptr %arrayidx37, align 8, !dbg !7231
  br label %if.end38, !dbg !7232

if.end38:                                         ; preds = %if.then29, %do.end21
  br label %for.inc, !dbg !7233

for.inc:                                          ; preds = %if.end38
  %26 = load i32, ptr %i, align 4, !dbg !7234
  %inc = add i32 %26, 1, !dbg !7234
  store i32 %inc, ptr %i, align 4, !dbg !7234
  br label %for.cond, !dbg !7235, !llvm.loop !7236

for.end:                                          ; preds = %if.then14, %if.then7, %for.cond
  %27 = load i32, ptr %i, align 4, !dbg !7238
  %tobool39 = icmp ne i32 %27, 0, !dbg !7238
  br i1 %tobool39, label %cond.true, label %cond.false, !dbg !7238

cond.true:                                        ; preds = %for.end
  %28 = load i32, ptr %i, align 4, !dbg !7239
  br label %cond.end, !dbg !7238

cond.false:                                       ; preds = %for.end
  %29 = load i32, ptr %ret, align 4, !dbg !7240
  br label %cond.end, !dbg !7238

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !7238
  store i32 %cond, ptr %retval, align 4, !dbg !7241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7241

cleanup:                                          ; preds = %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 16, ptr %reg) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 8, ptr %tctx) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #17, !dbg !7242
  %30 = load i32, ptr %retval, align 4, !dbg !7242
  ret i32 %30, !dbg !7242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7243 dso_local void @percpu_counter_destroy_many(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !7246 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7250, metadata !DIExpression()), !dbg !7251
  %0 = load i64, ptr %error.addr, align 8, !dbg !7252
  %1 = inttoptr i64 %0 to ptr, !dbg !7253
  ret ptr %1, !dbg !7254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !7255 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7260, metadata !DIExpression()), !dbg !7262
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7261, metadata !DIExpression()), !dbg !7263
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7264
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !7265
  %1 = load i32, ptr %n.addr, align 4, !dbg !7266
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #18, !dbg !7267
  ret void, !dbg !7268
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @io_wq_free_work(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_wq_submit_work(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #8 align 16 !dbg !7269 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #18, !dbg !7272
  ret i32 %call, !dbg !7273
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7274 dso_local ptr @io_wq_create(i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #8 align 16 !dbg !7278 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7285, metadata !DIExpression()), !dbg !7286
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7287
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !7288
  ret i32 %call, !dbg !7289
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #8 align 16 !dbg !7290 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7293, metadata !DIExpression()), !dbg !7294
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7295
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7295
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7295
  ret i32 %1, !dbg !7296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #5 align 16 !dbg !7297 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !7301, metadata !DIExpression()), !dbg !7303
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7302, metadata !DIExpression()), !dbg !7304
  br label %do.body, !dbg !7305

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !7306
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !7306
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #18, !dbg !7306
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !7306
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !7306
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !7306
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !7306
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !7306
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !7306
  store i32 0, ptr %counter, align 4, !dbg !7306
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !7306
  br label %do.end, !dbg !7306

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !7308
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !7309
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !7310
  store i32 %4, ptr %xa_flags, align 4, !dbg !7311
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !7312
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !7313
  store ptr null, ptr %xa_head, align 8, !dbg !7314
  ret void, !dbg !7315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #8 align 16 !dbg !7316 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7322, metadata !DIExpression()), !dbg !7323
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7324
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7325
  ret ptr %1, !dbg !7326
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7327 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7335, metadata !DIExpression()), !dbg !7337
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7336, metadata !DIExpression()), !dbg !7338
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7339
  %1 = load i64, ptr %size.addr, align 8, !dbg !7340
  %conv = trunc i64 %1 to i32, !dbg !7340
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7341
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7342
  %3 = load i64, ptr %size.addr, align 8, !dbg !7342
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !7342
  ret void, !dbg !7343
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !7344 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7346, metadata !DIExpression()), !dbg !7348
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7347, metadata !DIExpression()), !dbg !7349
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7350
  %1 = load i32, ptr %i.addr, align 4, !dbg !7351
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !7352
  ret void, !dbg !7353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7354 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7359, metadata !DIExpression()), !dbg !7361
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7360, metadata !DIExpression()), !dbg !7362
  ret i1 true, !dbg !7363
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7364 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7369, metadata !DIExpression()), !dbg !7372
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7370, metadata !DIExpression()), !dbg !7373
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7371, metadata !DIExpression()), !dbg !7374
  ret void, !dbg !7375
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !7376 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7378, metadata !DIExpression()), !dbg !7380
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7379, metadata !DIExpression()), !dbg !7381
  br label %do.body, !dbg !7382

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7383
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7383
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7383
  store volatile i32 %0, ptr %counter, align 4, !dbg !7383
  br label %do.end, !dbg !7383

do.end:                                           ; preds = %do.body
  ret void, !dbg !7385
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7386 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !7387 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7391, metadata !DIExpression()), !dbg !7393
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7392, metadata !DIExpression()), !dbg !7394
  %0 = load i64, ptr %size.addr, align 8, !dbg !7395
  %tobool = icmp ne i64 %0, 0, !dbg !7395
  br i1 %tobool, label %if.end, label %if.then, !dbg !7397

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7398
  br label %return, !dbg !7398

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7399
  %cmp = icmp ule i64 %1, 8, !dbg !7401
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7402

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7403
  br label %return, !dbg !7403

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7404
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7406
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7407

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7408
  %cmp4 = icmp ule i64 %3, 96, !dbg !7409
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7410

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7411
  br label %return, !dbg !7411

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7412
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7414
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7415

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7416
  %cmp9 = icmp ule i64 %5, 192, !dbg !7417
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7418

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7419
  br label %return, !dbg !7419

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7420
  %cmp12 = icmp ule i64 %6, 8, !dbg !7422
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7423

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7424
  br label %return, !dbg !7424

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7425
  %cmp15 = icmp ule i64 %7, 16, !dbg !7427
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7428

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7429
  br label %return, !dbg !7429

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7430
  %cmp18 = icmp ule i64 %8, 32, !dbg !7432
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7433

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7434
  br label %return, !dbg !7434

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7435
  %cmp21 = icmp ule i64 %9, 64, !dbg !7437
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7438

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7439
  br label %return, !dbg !7439

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7440
  %cmp24 = icmp ule i64 %10, 128, !dbg !7442
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7443

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7444
  br label %return, !dbg !7444

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7445
  %cmp27 = icmp ule i64 %11, 256, !dbg !7447
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7448

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7449
  br label %return, !dbg !7449

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7450
  %cmp30 = icmp ule i64 %12, 512, !dbg !7452
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7453

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7454
  br label %return, !dbg !7454

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7455
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7457
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7458

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7459
  br label %return, !dbg !7459

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7460
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7462
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7463

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7464
  br label %return, !dbg !7464

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7465
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7467
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7468

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7469
  br label %return, !dbg !7469

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7470
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7472
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7473

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7474
  br label %return, !dbg !7474

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7475
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7477
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7478

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7479
  br label %return, !dbg !7479

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7480
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7482
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7483

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7484
  br label %return, !dbg !7484

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7485
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7487
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7488

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7489
  br label %return, !dbg !7489

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7490
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7492
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7493

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7494
  br label %return, !dbg !7494

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7495
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7497
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7498

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7499
  br label %return, !dbg !7499

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7500
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7502
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7503

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7504
  br label %return, !dbg !7504

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7505
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7507
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7508

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7509
  br label %return, !dbg !7509

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7510
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7512
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7513

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7514
  br label %return, !dbg !7514

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7515, !range !6401, !noundef !411
  %tobool69 = trunc i8 %25 to i1, !dbg !7515
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7517

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7518

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #23, !dbg !7519, !srcloc !7522
  unreachable, !dbg !7519

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7523

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7524

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7525

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7527

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7525

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #17, !dbg !7529, !srcloc !7531
  br label %do.end75, !dbg !7529

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7525

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7532
  br label %return, !dbg !7532

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7533
  ret i32 %26, !dbg !7533
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7534 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !7537 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7541, metadata !DIExpression()), !dbg !7543
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7542, metadata !DIExpression()), !dbg !7544
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7545
  %and = and i32 %0, 17, !dbg !7545
  %cmp = icmp eq i32 %and, 0, !dbg !7545
  %lnot = xor i1 %cmp, true, !dbg !7545
  %lnot1 = xor i1 %lnot, true, !dbg !7545
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7545
  %conv = sext i32 %lnot.ext to i64, !dbg !7545
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7545
  %tobool = icmp ne i64 %expval, 0, !dbg !7545
  br i1 %tobool, label %if.then, label %if.end, !dbg !7547

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7548
  br label %return, !dbg !7548

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7549
  %and2 = and i32 %1, 1, !dbg !7551
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7551
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7552

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7553
  br label %return, !dbg !7553

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7554
  br label %return, !dbg !7554

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7556
  ret i32 %2, !dbg !7556
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7557 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7558 dso_local void @__compiletime_assert_206() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_err(ptr noundef %entry1) #5 align 16 !dbg !7559 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7561, metadata !DIExpression()), !dbg !7562
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7563
  %call = call zeroext i1 @xa_is_internal(ptr noundef %0) #18, !dbg !7563
  br i1 %call, label %land.rhs, label %land.end, !dbg !7563

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7563
  %call2 = call ptr @xa_mk_internal(i64 noundef -4095) #18, !dbg !7563
  %cmp = icmp uge ptr %1, %call2, !dbg !7563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7564
  %lnot = xor i1 %2, true, !dbg !7563
  %lnot3 = xor i1 %lnot, true, !dbg !7563
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7563
  %conv = sext i32 %lnot.ext to i64, !dbg !7563
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7563
  %tobool = icmp ne i64 %expval, 0, !dbg !7563
  ret i1 %tobool, !dbg !7565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_internal(ptr noundef %entry1) #5 align 16 !dbg !7566 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7568, metadata !DIExpression()), !dbg !7569
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7570
  %1 = ptrtoint ptr %0 to i64, !dbg !7571
  %and = and i64 %1, 3, !dbg !7572
  %cmp = icmp eq i64 %and, 2, !dbg !7573
  ret i1 %cmp, !dbg !7574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_mk_internal(i64 noundef %v) #5 align 16 !dbg !7575 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7579, metadata !DIExpression()), !dbg !7580
  %0 = load i64, ptr %v.addr, align 8, !dbg !7581
  %shl = shl i64 %0, 2, !dbg !7582
  %or = or i64 %shl, 2, !dbg !7583
  %1 = inttoptr i64 %or to ptr, !dbg !7584
  ret ptr %1, !dbg !7585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7586 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7590, metadata !DIExpression()), !dbg !7593
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7591, metadata !DIExpression()), !dbg !7594
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7592, metadata !DIExpression()), !dbg !7595
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7596
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7598
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7599
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !7600
  br i1 %call, label %if.end, label %if.then, !dbg !7601

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7602

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7603
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7604
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7605
  store ptr %3, ptr %prev1, align 8, !dbg !7606
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7607
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7608
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7609
  store ptr %5, ptr %next2, align 8, !dbg !7610
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7611
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7612
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7613
  store ptr %7, ptr %prev3, align 8, !dbg !7614
  br label %do.body, !dbg !7615

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7616

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7618

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7616

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7620
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7620
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7620
  store volatile ptr %9, ptr %next6, align 8, !dbg !7620
  br label %do.end7, !dbg !7620

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7616

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7623 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7627, metadata !DIExpression()), !dbg !7630
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7628, metadata !DIExpression()), !dbg !7631
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7629, metadata !DIExpression()), !dbg !7632
  ret i1 true, !dbg !7633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !7634 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7636, metadata !DIExpression()), !dbg !7637
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7638
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !7640
  br i1 %call, label %if.end, label %if.then, !dbg !7641

if.then:                                          ; preds = %entry
  br label %return, !dbg !7642

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7643
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7644
  %2 = load ptr, ptr %prev, align 8, !dbg !7644
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7645
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7646
  %4 = load ptr, ptr %next, align 8, !dbg !7646
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !7647
  br label %return, !dbg !7648

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !7649 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7653, metadata !DIExpression()), !dbg !7654
  ret i1 true, !dbg !7655
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7656 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7658, metadata !DIExpression()), !dbg !7660
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7659, metadata !DIExpression()), !dbg !7661
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7662
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7663
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7664
  store ptr %0, ptr %prev1, align 8, !dbg !7665
  br label %do.body, !dbg !7666

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7667

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7669

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7667

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7671
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7671
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7671
  store volatile ptr %2, ptr %next4, align 8, !dbg !7671
  br label %do.end5, !dbg !7671

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7667

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7673
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #8 align 16 !dbg !7674 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7678, metadata !DIExpression()), !dbg !7688
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7679, metadata !DIExpression()), !dbg !7689
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7680, metadata !DIExpression()), !dbg !7690
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !7691
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7681, metadata !DIExpression()), !dbg !7692
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7693
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7694
  %conv = trunc i64 %1 to i32, !dbg !7694
  store i32 %conv, ptr %sz, align 4, !dbg !7692
  %2 = load i32, ptr %sz, align 4, !dbg !7695
  %cmp = icmp sge i32 %2, 0, !dbg !7695
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7695

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7695
  %conv2 = sext i32 %3 to i64, !dbg !7695
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7695
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7697
  %lnot = xor i1 %5, true, !dbg !7695
  %lnot5 = xor i1 %lnot, true, !dbg !7695
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7695
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7695
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7695
  %tobool = icmp ne i64 %expval, 0, !dbg !7695
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7698

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7699
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7702
  br i1 %7, label %if.else, label %if.then7, !dbg !7703

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7704
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7705
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !7706
  br label %if.end11, !dbg !7706

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7707, !range !6401, !noundef !411
  %tobool8 = trunc i8 %10 to i1, !dbg !7707
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7709

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !7710, !srcloc !7711
  br label %if.end, !dbg !7710

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !7712, !srcloc !7713
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7714

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !7715
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7682, metadata !DIExpression()), !dbg !7715
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7715
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7715
  %lnot15 = xor i1 %cmp13, true, !dbg !7715
  %lnot17 = xor i1 %lnot15, true, !dbg !7715
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7715
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7715
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7716
  %tobool19 = icmp ne i32 %12, 0, !dbg !7716
  %lnot20 = xor i1 %tobool19, true, !dbg !7716
  %lnot22 = xor i1 %lnot20, true, !dbg !7716
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7716
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7716
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7716
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7716
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7715

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7716

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !7717
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7685, metadata !DIExpression()), !dbg !7717
  store i32 2307, ptr %__flags, align 4, !dbg !7717
  br label %do.body28, !dbg !7717

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7718

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7718

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7717

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7720
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 249, i32 %13, i64 12) #17, !dbg !7720, !srcloc !7722
  br label %do.cond30, !dbg !7720

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7720

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7717

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7723

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7723

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !7716
  br label %do.cond35, !dbg !7717

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7717

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7717

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7715
  %tobool38 = icmp ne i32 %14, 0, !dbg !7715
  %lnot39 = xor i1 %tobool38, true, !dbg !7715
  %lnot41 = xor i1 %lnot39, true, !dbg !7715
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7715
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7715
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7715
  store i64 %expval44, ptr %tmp, align 8, !dbg !7716
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !7725
  %15 = load i64, ptr %tmp, align 8, !dbg !7715
  %tobool45 = icmp ne i64 %15, 0, !dbg !7725
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7726

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7727

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7728
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7729
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7730, !range !6401, !noundef !411
  %tobool48 = trunc i8 %18 to i1, !dbg !7730
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !7731
  store i1 true, ptr %retval, align 1, !dbg !7732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7732

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !7733
  %19 = load i1, ptr %retval, align 1, !dbg !7733
  ret i1 %19, !dbg !7733
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7734 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !7735 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7739, metadata !DIExpression()), !dbg !7741
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7740, metadata !DIExpression()), !dbg !7742
  %0 = load i32, ptr %size.addr, align 4, !dbg !7743
  %1 = load i64, ptr %count.addr, align 8, !dbg !7745
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !7746
  ret void, !dbg !7747
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7748 dso_local void @__bad_copy_from() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7749 dso_local void @__bad_copy_to() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !7750 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7754, metadata !DIExpression()), !dbg !7757
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7755, metadata !DIExpression()), !dbg !7758
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7756, metadata !DIExpression()), !dbg !7759
  ret void, !dbg !7760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7761 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7762 dso_local ptr @fget(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7765 dso_local zeroext i1 @io_is_uring_fops(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7768 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind memory(none) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!5944}
!llvm.module.flags = !{!6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035}
!llvm.ident = !{!6036}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "io_uring/tctx.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "603953cf9d72674c899052fe7bc90b57")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__key", scope: !9, file: !2, line: 81, type: !2516, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "io_uring_alloc_task_context", scope: !2, file: !2, line: 71, type: !10, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6023)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !4668}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !15, line: 746, size: 58368, elements: !16)
!15 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!16 = !{!17, !31, !32, !34, !45, !46, !47, !48, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !140, !151, !283, !287, !290, !321, !322, !323, !324, !335, !337, !338, !339, !340, !341, !342, !353, !354, !357, !358, !359, !360, !361, !362, !363, !364, !371, !372, !379, !380, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4448, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4496, !4502, !4503, !4504, !4505, !4506, !4507, !4510, !4517, !4522, !4525, !4528, !4875, !5165, !5363, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5401, !5402, !5403, !5412, !5420, !5421, !5422, !5423, !5424, !5429, !5430, !5431, !5434, !5435, !5437, !5439, !5442, !5450, !5453, !5454, !5540, !5541, !5542, !5543, !5544, !5550, !5551, !5552, !5553, !5554, !5555, !5558, !5561, !5562, !5565, !5566, !5567, !5570, !5571, !5572, !5573, !5574, !5575, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5607, !5608, !5614, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5702, !5704, !5705, !5706, !5707, !5708, !5709, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !14, file: !15, line: 752, baseType: !18, size: 192)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !19, line: 56, size: 192, elements: !20)
!19 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!20 = !{!21, !23, !24, !30}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 57, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !18, file: !19, line: 58, baseType: !22, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !18, file: !19, line: 59, baseType: !25, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !18, file: !19, line: 61, baseType: !25, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !14, file: !15, line: 754, baseType: !29, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !14, file: !15, line: 767, baseType: !33, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !14, file: !15, line: 768, baseType: !35, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !36, line: 113, baseType: !37)
!36 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !36, line: 111, size: 32, elements: !38)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !37, file: !36, line: 112, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !42, file: !41, line: 173, baseType: !12, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 770, baseType: !29, size: 32, offset: 352)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !14, file: !15, line: 771, baseType: !29, size: 32, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !14, file: !15, line: 774, baseType: !12, size: 32, offset: 416)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !14, file: !15, line: 775, baseType: !49, size: 128, offset: 448)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !50, line: 58, size: 128, elements: !51)
!50 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!51 = !{!52, !58, !63, !67}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !49, file: !50, line: 59, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !54, line: 60, size: 64, elements: !55)
!54 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !54, line: 61, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !49, file: !50, line: 60, baseType: !59, size: 32, offset: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !50, line: 60, size: 32, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !59, file: !50, line: 61, baseType: !29, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !59, file: !50, line: 62, baseType: !40, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !49, file: !50, line: 65, baseType: !64, size: 16, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !66)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !49, file: !50, line: 65, baseType: !64, size: 16, offset: 112)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !14, file: !15, line: 776, baseType: !29, size: 32, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !14, file: !15, line: 777, baseType: !22, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !14, file: !15, line: 778, baseType: !13, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !14, file: !15, line: 787, baseType: !12, size: 32, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !14, file: !15, line: 788, baseType: !12, size: 32, offset: 800)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !14, file: !15, line: 790, baseType: !12, size: 32, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !14, file: !15, line: 792, baseType: !12, size: 32, offset: 864)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !14, file: !15, line: 793, baseType: !12, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !14, file: !15, line: 794, baseType: !12, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !14, file: !15, line: 795, baseType: !29, size: 32, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !14, file: !15, line: 797, baseType: !79, size: 2048, offset: 1024)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !15, line: 551, size: 2048, elements: !80)
!80 = !{!81, !86, !94, !98, !99, !105, !106, !107, !108, !109, !110, !114, !115, !116, !117, !119, !122, !123, !124}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !79, file: !15, line: 553, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !15, line: 411, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !82, file: !15, line: 412, baseType: !22, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !82, file: !15, line: 413, baseType: !25, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !79, file: !15, line: 554, baseType: !87, size: 192, align: 64, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !88, line: 5, size: 192, align: 64, elements: !89)
!88 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!89 = !{!90, !91, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !87, file: !88, line: 6, baseType: !22, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !87, file: !88, line: 7, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !87, file: !88, line: 8, baseType: !92, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !79, file: !15, line: 555, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !79, file: !15, line: 556, baseType: !95, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !79, file: !15, line: 558, baseType: !100, size: 128, offset: 448)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !41, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !41, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !79, file: !15, line: 559, baseType: !29, size: 32, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !79, file: !15, line: 561, baseType: !95, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !79, file: !15, line: 562, baseType: !95, size: 64, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !79, file: !15, line: 563, baseType: !95, size: 64, offset: 768)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !79, file: !15, line: 564, baseType: !95, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !79, file: !15, line: 565, baseType: !111, size: 64, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !26, line: 22, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !28, line: 30, baseType: !113)
!113 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !79, file: !15, line: 566, baseType: !95, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !79, file: !15, line: 568, baseType: !95, size: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !79, file: !15, line: 571, baseType: !12, size: 32, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !15, line: 572, baseType: !118, size: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !79, file: !15, line: 574, baseType: !120, size: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !15, line: 49, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !79, file: !15, line: 576, baseType: !120, size: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !79, file: !15, line: 578, baseType: !22, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !79, file: !15, line: 588, baseType: !125, size: 512, align: 512, offset: 1536)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !15, line: 497, size: 512, align: 512, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !125, file: !15, line: 498, baseType: !95, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !125, file: !15, line: 499, baseType: !95, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !125, file: !15, line: 500, baseType: !95, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !125, file: !15, line: 501, baseType: !25, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !125, file: !15, line: 502, baseType: !25, size: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !125, file: !15, line: 503, baseType: !22, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !125, file: !15, line: 504, baseType: !22, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !125, file: !15, line: 505, baseType: !22, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !125, file: !15, line: 506, baseType: !136, size: 64, align: 64, offset: 448)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !15, line: 445, size: 64, align: 64, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !136, file: !15, line: 446, baseType: !29, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !136, file: !15, line: 447, baseType: !29, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !14, file: !15, line: 798, baseType: !141, size: 384, offset: 3072)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !15, line: 592, size: 384, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !141, file: !15, line: 593, baseType: !100, size: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !141, file: !15, line: 594, baseType: !22, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !141, file: !15, line: 595, baseType: !22, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !141, file: !15, line: 596, baseType: !29, size: 32, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !141, file: !15, line: 597, baseType: !66, size: 16, offset: 288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !141, file: !15, line: 598, baseType: !66, size: 16, offset: 304)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !141, file: !15, line: 600, baseType: !150, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !14, file: !15, line: 799, baseType: !152, size: 1792, offset: 3456)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !15, line: 610, size: 1792, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !280, !281}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !152, file: !15, line: 611, baseType: !87, size: 192, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !152, file: !15, line: 618, baseType: !95, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !152, file: !15, line: 619, baseType: !95, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !152, file: !15, line: 620, baseType: !95, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !152, file: !15, line: 621, baseType: !95, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !152, file: !15, line: 622, baseType: !95, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !152, file: !15, line: 629, baseType: !111, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !152, file: !15, line: 630, baseType: !95, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !15, line: 631, baseType: !29, size: 32, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !152, file: !15, line: 653, baseType: !29, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !152, file: !15, line: 654, baseType: !29, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !152, file: !15, line: 655, baseType: !29, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !152, file: !15, line: 656, baseType: !29, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !152, file: !15, line: 662, baseType: !168, size: 512, offset: 704)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !169, line: 118, size: 512, elements: !170)
!169 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!170 = !{!171, !179, !180, !189, !276, !277, !278, !279}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !169, line: 119, baseType: !172, size: 256)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !173, line: 9, size: 256, elements: !174)
!173 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !173, line: 10, baseType: !87, size: 192, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !172, file: !173, line: 11, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !178, line: 29, baseType: !111)
!178 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !168, file: !169, line: 120, baseType: !177, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !168, file: !169, line: 121, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !188}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !169, line: 65, baseType: !29, size: 32, elements: !185)
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!187 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !168, file: !169, line: 122, baseType: !190, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !169, line: 159, size: 512, align: 512, elements: !192)
!192 = !{!193, !244, !245, !249, !259, !260, !271, !275}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !191, file: !169, line: 160, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !169, line: 215, size: 4608, align: 512, elements: !196)
!196 = !{!197, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !195, file: !169, line: 216, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 14, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !199, line: 15, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !204, line: 44, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !204, line: 14, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 15, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 15, size: 32, elements: !209)
!209 = !{!210, !211, !219}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !208, file: !204, line: 16, baseType: !40, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 24, baseType: !212, size: 16)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 24, size: 16, elements: !213)
!213 = !{!214, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !212, file: !204, line: 25, baseType: !215, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !217)
!217 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !204, line: 26, baseType: !215, size: 8, offset: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 28, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 28, size: 32, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !220, file: !204, line: 29, baseType: !64, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !220, file: !204, line: 30, baseType: !64, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !195, file: !169, line: 217, baseType: !29, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !195, file: !169, line: 218, baseType: !29, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !195, file: !169, line: 219, baseType: !29, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !195, file: !169, line: 220, baseType: !29, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !195, file: !169, line: 221, baseType: !29, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !195, file: !169, line: 222, baseType: !29, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !195, file: !169, line: 223, baseType: !29, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !195, file: !169, line: 224, baseType: !29, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !195, file: !169, line: 226, baseType: !29, size: 32, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !195, file: !169, line: 227, baseType: !66, size: 16, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !195, file: !169, line: 228, baseType: !66, size: 16, offset: 208)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !195, file: !169, line: 229, baseType: !29, size: 32, offset: 224)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !195, file: !169, line: 235, baseType: !177, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !195, file: !169, line: 236, baseType: !188, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !195, file: !169, line: 237, baseType: !177, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !195, file: !169, line: 238, baseType: !188, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !195, file: !169, line: 239, baseType: !241, size: 4096, align: 512, offset: 512)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 4096, align: 512, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !191, file: !169, line: 161, baseType: !29, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !191, file: !169, line: 162, baseType: !246, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !248, line: 96, baseType: !12)
!248 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !191, file: !169, line: 163, baseType: !250, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !251, line: 274, baseType: !252)
!251 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !251, line: 274, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !252, file: !251, line: 274, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !251, line: 69, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !251, line: 64, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !256, file: !251, line: 65, baseType: !29, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !191, file: !169, line: 164, baseType: !188, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !191, file: !169, line: 165, baseType: !261, size: 128, offset: 256)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !173, line: 14, size: 128, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !261, file: !173, line: 15, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !88, line: 26, size: 128, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !264, file: !88, line: 27, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !88, line: 12, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !267, file: !88, line: 13, baseType: !92, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !264, file: !88, line: 28, baseType: !92, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !191, file: !169, line: 166, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!177}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !191, file: !169, line: 167, baseType: !177, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !168, file: !169, line: 123, baseType: !215, size: 8, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !168, file: !169, line: 124, baseType: !215, size: 8, offset: 456)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !168, file: !169, line: 125, baseType: !215, size: 8, offset: 464)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !168, file: !169, line: 126, baseType: !215, size: 8, offset: 472)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !152, file: !15, line: 671, baseType: !168, size: 512, offset: 1216)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !152, file: !15, line: 679, baseType: !282, size: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !14, file: !15, line: 800, baseType: !284, size: 64, offset: 5248)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !15, line: 800, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !14, file: !15, line: 809, baseType: !288, size: 64, offset: 5312)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !15, line: 70, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !14, file: !15, line: 825, baseType: !291, size: 2048, align: 512, offset: 5632)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !15, line: 509, size: 2048, align: 512, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !291, file: !15, line: 511, baseType: !95, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !291, file: !15, line: 512, baseType: !95, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !291, file: !15, line: 513, baseType: !95, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !291, file: !15, line: 514, baseType: !95, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !291, file: !15, line: 515, baseType: !95, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !291, file: !15, line: 516, baseType: !95, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !291, file: !15, line: 518, baseType: !95, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !291, file: !15, line: 519, baseType: !95, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !291, file: !15, line: 520, baseType: !111, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !291, file: !15, line: 522, baseType: !95, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !291, file: !15, line: 523, baseType: !95, size: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !291, file: !15, line: 524, baseType: !111, size: 64, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !291, file: !15, line: 526, baseType: !111, size: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !291, file: !15, line: 527, baseType: !95, size: 64, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !291, file: !15, line: 529, baseType: !95, size: 64, offset: 896)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !291, file: !15, line: 530, baseType: !95, size: 64, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !291, file: !15, line: 531, baseType: !95, size: 64, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !291, file: !15, line: 532, baseType: !95, size: 64, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !291, file: !15, line: 533, baseType: !95, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !291, file: !15, line: 535, baseType: !95, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !291, file: !15, line: 536, baseType: !95, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !291, file: !15, line: 537, baseType: !95, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !291, file: !15, line: 538, baseType: !95, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !291, file: !15, line: 539, baseType: !95, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !291, file: !15, line: 540, baseType: !95, size: 64, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !291, file: !15, line: 541, baseType: !95, size: 64, offset: 1600)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !291, file: !15, line: 542, baseType: !95, size: 64, offset: 1664)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !291, file: !15, line: 543, baseType: !95, size: 64, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !14, file: !15, line: 833, baseType: !29, size: 32, offset: 7680)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !14, file: !15, line: 836, baseType: !29, size: 32, offset: 7712)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !14, file: !15, line: 837, baseType: !12, size: 32, offset: 7744)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !14, file: !15, line: 838, baseType: !325, size: 64, offset: 7808)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !328, line: 19, baseType: !329)
!328 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !328, line: 19, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !329, file: !328, line: 19, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 1)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !14, file: !15, line: 839, baseType: !336, size: 64, offset: 7872)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !14, file: !15, line: 840, baseType: !327, size: 64, offset: 7936)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !14, file: !15, line: 841, baseType: !33, size: 64, offset: 8000)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !14, file: !15, line: 843, baseType: !66, size: 16, offset: 8064)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !14, file: !15, line: 845, baseType: !66, size: 16, offset: 8080)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !14, file: !15, line: 848, baseType: !12, size: 32, offset: 8096)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !14, file: !15, line: 849, baseType: !343, size: 32, offset: 8128)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !15, line: 718, size: 32, elements: !344)
!344 = !{!345, !352}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !343, file: !15, line: 724, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !15, line: 719, size: 32, elements: !347)
!347 = !{!348, !349, !350, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !346, file: !15, line: 720, baseType: !215, size: 8)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !346, file: !15, line: 721, baseType: !215, size: 8, offset: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !346, file: !15, line: 722, baseType: !215, size: 8, offset: 16)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !346, file: !15, line: 723, baseType: !215, size: 8, offset: 24)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !343, file: !15, line: 725, baseType: !25, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !14, file: !15, line: 850, baseType: !100, size: 128, offset: 8192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !14, file: !15, line: 851, baseType: !355, size: 64, offset: 8320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !15, line: 60, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !14, file: !15, line: 855, baseType: !22, size: 64, offset: 8384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !14, file: !15, line: 856, baseType: !215, size: 8, offset: 8448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !14, file: !15, line: 857, baseType: !215, size: 8, offset: 8456)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !14, file: !15, line: 858, baseType: !12, size: 32, offset: 8480)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !14, file: !15, line: 859, baseType: !100, size: 128, offset: 8512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !14, file: !15, line: 860, baseType: !12, size: 32, offset: 8640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !14, file: !15, line: 861, baseType: !100, size: 128, offset: 8704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !14, file: !15, line: 873, baseType: !365, size: 256, offset: 8832)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !15, line: 376, size: 256, elements: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !365, file: !15, line: 381, baseType: !22, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !365, file: !15, line: 384, baseType: !97, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !365, file: !15, line: 389, baseType: !97, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !365, file: !15, line: 392, baseType: !97, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !14, file: !15, line: 875, baseType: !100, size: 128, offset: 9088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !14, file: !15, line: 877, baseType: !373, size: 320, offset: 9216)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !374, line: 86, size: 320, elements: !375)
!374 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!375 = !{!376, !377, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !373, file: !374, line: 87, baseType: !12, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !373, file: !374, line: 88, baseType: !100, size: 128, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !373, file: !374, line: 89, baseType: !100, size: 128, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !14, file: !15, line: 878, baseType: !87, size: 192, align: 64, offset: 9536)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !14, file: !15, line: 881, baseType: !381, size: 64, offset: 9728)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !383, line: 733, size: 10240, elements: !384)
!383 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!384 = !{!385, !4361}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !383, line: 734, baseType: !386, size: 10240)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 734, size: 10240, elements: !387)
!387 = !{!388, !392, !414, !4240, !4241, !4242, !4243, !4244, !4245, !4252, !4253, !4254, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4293, !4294, !4297, !4340, !4341, !4342, !4345, !4346, !4347, !4350, !4351, !4352, !4359, !4360}
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !383, line: 739, baseType: !389, size: 512, align: 512)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !383, line: 739, size: 512, align: 512, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !389, file: !383, line: 747, baseType: !40, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !386, file: !383, line: 750, baseType: !393, size: 128, offset: 512)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !394, line: 218, size: 128, elements: !395)
!394 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!395 = !{!396, !412, !413}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 219, baseType: !397, size: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 219, size: 32, elements: !398)
!398 = !{!399, !408}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !397, file: !394, line: 220, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !401, line: 29, baseType: !402)
!401 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !401, line: 17, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !401, line: 18, baseType: !405, size: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !401, line: 18, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !405, file: !401, line: 19, baseType: !200, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !397, file: !394, line: 221, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !394, line: 197, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 197, elements: !411)
!411 = !{}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !393, file: !394, line: 223, baseType: !29, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !393, file: !394, line: 224, baseType: !33, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !386, file: !383, line: 752, baseType: !415, size: 64, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!22, !418, !22, !22, !22, !22}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !420, line: 994, size: 1856, align: 64, elements: !421)
!420 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!421 = !{!422, !436, !437, !439, !446, !458, !461, !462, !546, !937, !946, !4230, !4231, !4232, !4233, !4234, !4235, !4237, !4238, !4239}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !420, line: 995, baseType: !423, size: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 995, size: 128, elements: !424)
!424 = !{!425, !426, !435}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !423, file: !420, line: 996, baseType: !53, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !423, file: !420, line: 997, baseType: !427, size: 128, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !428)
!428 = !{!429, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !41, line: 233, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !427, file: !41, line: 234, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !430}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !423, file: !420, line: 998, baseType: !29, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !419, file: !420, line: 1005, baseType: !400, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !419, file: !420, line: 1006, baseType: !438, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !29)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !419, file: !420, line: 1007, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !441, line: 13, baseType: !442)
!441 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !443, file: !41, line: 180, baseType: !111, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !419, file: !420, line: 1008, baseType: !447, size: 256, offset: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !448, line: 66, size: 256, elements: !449)
!448 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!449 = !{!450, !451, !452, !457}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !447, file: !448, line: 67, baseType: !440, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !447, file: !448, line: 68, baseType: !198, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !447, file: !448, line: 70, baseType: !453, size: 32, offset: 96)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !454, line: 15, size: 32, elements: !455)
!454 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !453, file: !454, line: 20, baseType: !40, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !447, file: !448, line: 72, baseType: !100, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !419, file: !420, line: 1009, baseType: !459, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !248, line: 88, baseType: !113)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !419, file: !420, line: 1010, baseType: !29, size: 32, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !419, file: !420, line: 1011, baseType: !463, size: 256, offset: 640)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !420, line: 948, size: 256, elements: !464)
!464 = !{!465, !488, !528, !536, !544, !545}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !420, line: 949, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !467, line: 34, baseType: !468)
!467 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 25, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !468, file: !467, line: 26, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !472, line: 27, baseType: !473)
!472 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !472, line: 13, size: 64, elements: !474)
!474 = !{!475, !487}
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !472, line: 14, baseType: !476, size: 32)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !472, line: 14, size: 32, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !476, file: !472, line: 15, baseType: !40, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !472, line: 16, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !476, file: !472, line: 16, size: 32, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !480, file: !472, line: 18, baseType: !215, size: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !480, file: !472, line: 19, baseType: !484, size: 24, offset: 8)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 3)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !473, file: !472, line: 26, baseType: !203, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !463, file: !420, line: 950, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !491, line: 59, size: 768, elements: !492)
!491 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!492 = !{!493, !494, !495, !496, !509, !510, !517, !518}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !490, file: !491, line: 61, baseType: !35, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !490, file: !491, line: 62, baseType: !29, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !490, file: !491, line: 63, baseType: !400, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !490, file: !491, line: 65, baseType: !497, size: 256, offset: 128)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 256, elements: !507)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !498, file: !41, line: 195, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !41, line: 199, baseType: !501, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !502, file: !41, line: 199, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!507 = !{!508}
!508 = !DISubrange(count: 4)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !490, file: !491, line: 66, baseType: !498, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !490, file: !491, line: 68, baseType: !511, size: 192, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !512, line: 41, baseType: !513)
!512 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !512, line: 37, size: 192, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !513, file: !512, line: 38, baseType: !400, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !513, file: !512, line: 39, baseType: !100, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !491, line: 69, baseType: !427, size: 128, align: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !490, file: !491, line: 70, baseType: !519, offset: 768)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, elements: !526)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !491, line: 54, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !520, file: !491, line: 55, baseType: !12, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !520, file: !491, line: 56, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !491, line: 56, flags: DIFlagFwdDecl)
!526 = !{!527}
!527 = !DISubrange(count: -1)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !463, file: !420, line: 951, baseType: !529, size: 32, offset: 128)
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !491, line: 9, baseType: !29, size: 32, elements: !530)
!530 = !{!531, !532, !533, !534, !535}
!531 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!532 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!533 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!534 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!535 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !463, file: !420, line: 952, baseType: !537, size: 32, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !538, line: 23, baseType: !539)
!538 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 21, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !538, line: 22, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !248, line: 49, baseType: !29)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !463, file: !420, line: 952, baseType: !537, size: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !463, file: !420, line: 953, baseType: !12, size: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !419, file: !420, line: 1012, baseType: !547, size: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !550, line: 110, size: 1472, elements: !551)
!550 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!551 = !{!552, !553, !554, !561, !562, !563, !564, !565, !566, !567, !568, !574, !575, !576, !577, !578, !579, !705, !706, !707, !708, !709, !740, !923, !924, !932}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !549, file: !550, line: 111, baseType: !440, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 112, baseType: !537, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !550, line: 113, baseType: !555, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !538, line: 28, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 26, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !538, line: 27, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !248, line: 50, baseType: !29)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !549, file: !550, line: 114, baseType: !537, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !549, file: !550, line: 115, baseType: !555, size: 32, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !549, file: !550, line: 116, baseType: !537, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !549, file: !550, line: 117, baseType: !555, size: 32, offset: 224)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !549, file: !550, line: 118, baseType: !537, size: 32, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !549, file: !550, line: 119, baseType: !555, size: 32, offset: 288)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !549, file: !550, line: 120, baseType: !29, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !549, file: !550, line: 121, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !570, line: 24, baseType: !571)
!570 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 24, size: 64, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !571, file: !570, line: 24, baseType: !95, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !549, file: !550, line: 122, baseType: !569, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !549, file: !550, line: 123, baseType: !569, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !549, file: !550, line: 124, baseType: !569, size: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !549, file: !550, line: 125, baseType: !569, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !549, file: !550, line: 127, baseType: !217, size: 8, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !549, file: !550, line: 129, baseType: !580, size: 64, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !582, line: 195, size: 1728, elements: !583)
!582 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!583 = !{!584, !585, !590, !595, !604, !607, !608, !615, !616, !617, !618, !621, !622, !623, !625, !626, !669, !690}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !581, file: !582, line: 196, baseType: !35, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !581, file: !582, line: 197, baseType: !586, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !582, line: 28, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !26, line: 20, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !28, line: 26, baseType: !12)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !582, line: 198, baseType: !591, size: 192, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !582, line: 198, size: 192, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !591, file: !582, line: 199, baseType: !100, size: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !591, file: !582, line: 200, baseType: !87, size: 192, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !581, file: !582, line: 205, baseType: !596, size: 320, offset: 256)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !597, line: 48, size: 320, elements: !598)
!597 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!598 = !{!599, !600, !601, !602, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !597, line: 49, baseType: !440, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !596, file: !597, line: 55, baseType: !440, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !596, file: !597, line: 57, baseType: !453, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !596, file: !597, line: 59, baseType: !198, size: 32, offset: 160)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !596, file: !597, line: 60, baseType: !100, size: 128, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !581, file: !582, line: 206, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !582, line: 206, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !581, file: !582, line: 207, baseType: !33, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !582, line: 208, baseType: !609, size: 64, offset: 704)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !582, line: 208, size: 64, elements: !610)
!610 = !{!611, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !609, file: !582, line: 209, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !613, line: 8, baseType: !112)
!613 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !609, file: !582, line: 210, baseType: !612, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !581, file: !582, line: 212, baseType: !612, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !581, file: !582, line: 213, baseType: !537, size: 32, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !581, file: !582, line: 214, baseType: !555, size: 32, offset: 864)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !581, file: !582, line: 215, baseType: !619, size: 32, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !582, line: 31, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !25)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !581, file: !582, line: 216, baseType: !66, size: 16, offset: 928)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !581, file: !582, line: 217, baseType: !66, size: 16, offset: 944)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !581, file: !582, line: 221, baseType: !624, size: 16, offset: 960)
!624 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !582, line: 228, baseType: !22, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !582, line: 245, baseType: !627, size: 320, offset: 1088)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !582, line: 245, size: 320, elements: !628)
!628 = !{!629, !660}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !627, file: !582, line: 246, baseType: !630, size: 320)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !582, line: 114, size: 320, elements: !631)
!631 = !{!632, !633, !645, !648, !657}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !630, file: !582, line: 116, baseType: !22, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !582, line: 117, baseType: !634, size: 64, offset: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !582, line: 117, size: 64, elements: !635)
!635 = !{!636, !644}
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !582, line: 118, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !582, line: 118, size: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !637, file: !582, line: 120, baseType: !64, size: 16)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !637, file: !582, line: 121, baseType: !641, size: 48, offset: 16)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 6)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !634, file: !582, line: 127, baseType: !22, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !582, line: 129, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !582, line: 102, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !630, file: !582, line: 130, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !582, line: 108, size: 192, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !650, file: !582, line: 109, baseType: !427, size: 128, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !650, file: !582, line: 110, baseType: !35, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !650, file: !582, line: 111, baseType: !655, size: 8, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !656)
!656 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !630, file: !582, line: 131, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !582, line: 247, baseType: !661, size: 320)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !582, line: 247, size: 320, elements: !662)
!662 = !{!663, !664, !665, !666, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !661, file: !582, line: 248, baseType: !22, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !661, file: !582, line: 249, baseType: !22, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !582, line: 250, baseType: !646, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !661, file: !582, line: 251, baseType: !649, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !661, file: !582, line: 252, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !582, line: 260, baseType: !670, size: 256, offset: 1408)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !582, line: 260, size: 256, elements: !671)
!671 = !{!672, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !670, file: !582, line: 261, baseType: !673, size: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !582, line: 134, size: 256, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !673, file: !582, line: 135, baseType: !33, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !673, file: !582, line: 136, baseType: !677, size: 256)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !507)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !582, line: 262, baseType: !679, size: 256)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !582, line: 262, size: 256, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !679, file: !582, line: 264, baseType: !100, size: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !679, file: !582, line: 265, baseType: !683, size: 128, offset: 128)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !684, line: 22, size: 128, elements: !685)
!684 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!685 = !{!686, !689}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !683, file: !684, line: 23, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !684, line: 23, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !683, file: !684, line: 24, baseType: !22, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !581, file: !582, line: 280, baseType: !691, size: 64, offset: 1664)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !582, line: 176, size: 192, elements: !693)
!693 = !{!694, !703, !704}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !692, file: !582, line: 177, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !582, line: 171, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!12, !580, !699, !701, !580}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !692, file: !582, line: 178, baseType: !580, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !692, file: !582, line: 179, baseType: !646, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !549, file: !550, line: 130, baseType: !580, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !549, file: !550, line: 131, baseType: !580, size: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !549, file: !550, line: 132, baseType: !580, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !549, file: !550, line: 135, baseType: !33, size: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !549, file: !550, line: 137, baseType: !710, size: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !712, line: 14, size: 1088, elements: !713)
!712 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!713 = !{!714, !715, !724, !725, !726, !727, !728, !729}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !711, file: !712, line: 15, baseType: !35, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !711, file: !712, line: 17, baseType: !716, size: 320, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !717, line: 22, size: 320, elements: !718)
!717 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!718 = !{!719, !720, !721, !722}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !717, line: 23, baseType: !198, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !717, line: 24, baseType: !111, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !716, file: !717, line: 26, baseType: !100, size: 128, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !716, file: !717, line: 28, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !711, file: !712, line: 19, baseType: !22, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !711, file: !712, line: 20, baseType: !440, size: 64, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !711, file: !712, line: 23, baseType: !502, size: 128, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !711, file: !712, line: 24, baseType: !537, size: 32, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !711, file: !712, line: 29, baseType: !440, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !711, file: !712, line: 36, baseType: !730, size: 320, offset: 768)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !731, line: 15, size: 320, elements: !732)
!731 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!732 = !{!733, !734, !735, !736, !737, !738, !739}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !731, line: 16, baseType: !198, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !730, file: !731, line: 18, baseType: !12, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !730, file: !731, line: 19, baseType: !12, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !730, file: !731, line: 20, baseType: !12, size: 32, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !730, file: !731, line: 21, baseType: !12, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !730, file: !731, line: 22, baseType: !22, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !731, line: 23, baseType: !22, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !549, file: !550, line: 138, baseType: !741, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !743, line: 68, size: 4800, elements: !744)
!743 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!744 = !{!745, !767, !768, !769, !770, !771, !772, !773, !784, !785, !786, !787, !788, !789, !801, !903, !904, !918, !921}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !742, file: !743, line: 69, baseType: !746, size: 576)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !743, line: 23, size: 576, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !746, file: !743, line: 24, baseType: !25, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !743, line: 25, baseType: !750, size: 512, offset: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !743, line: 25, size: 512, elements: !751)
!751 = !{!752, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !750, file: !743, line: 26, baseType: !753, size: 480)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 480, elements: !759)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !743, line: 17, size: 96, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !754, file: !743, line: 18, baseType: !25, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !754, file: !743, line: 19, baseType: !25, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !743, line: 20, baseType: !25, size: 32, offset: 64)
!759 = !{!760}
!760 = !DISubrange(count: 5)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !743, line: 27, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !743, line: 27, size: 128, elements: !763)
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !762, file: !743, line: 28, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !762, file: !743, line: 29, baseType: !765, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !742, file: !743, line: 70, baseType: !746, size: 576, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !742, file: !743, line: 71, baseType: !746, size: 576, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !742, file: !743, line: 72, baseType: !741, size: 64, offset: 1728)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !742, file: !743, line: 73, baseType: !12, size: 32, offset: 1792)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !742, file: !743, line: 74, baseType: !537, size: 32, offset: 1824)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !742, file: !743, line: 75, baseType: !555, size: 32, offset: 1856)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !742, file: !743, line: 76, baseType: !774, size: 192, offset: 1920)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !775, line: 9, size: 192, elements: !776)
!775 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!776 = !{!777, !778, !782, !783}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !774, file: !775, line: 10, baseType: !440, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !774, file: !775, line: 11, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !775, line: 7, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !774, file: !775, line: 12, baseType: !29, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !774, file: !775, line: 13, baseType: !35, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !743, line: 77, baseType: !22, size: 64, offset: 2112)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !742, file: !743, line: 80, baseType: !655, size: 8, offset: 2176)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !742, file: !743, line: 88, baseType: !100, size: 128, offset: 2240)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !742, file: !743, line: 89, baseType: !580, size: 64, offset: 2368)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !742, file: !743, line: 90, baseType: !596, size: 320, offset: 2432)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !742, file: !743, line: 97, baseType: !790, size: 256, offset: 2752)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !791, line: 98, size: 256, elements: !792)
!791 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !790, file: !791, line: 99, baseType: !440, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !790, file: !791, line: 100, baseType: !100, size: 128, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !790, file: !791, line: 101, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !791, line: 21, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !742, file: !743, line: 99, baseType: !802, size: 768, offset: 3008)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !803, line: 199, size: 768, elements: !804)
!803 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!804 = !{!805, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !802, file: !803, line: 200, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!12, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !802, file: !803, line: 201, baseType: !811, size: 704, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !803, line: 193, size: 704, elements: !812)
!812 = !{!813, !902}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !811, file: !803, line: 195, baseType: !814, size: 640)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !803, line: 173, size: 640, elements: !815)
!815 = !{!816, !859, !871, !872, !892, !893, !895, !901}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !803, line: 174, baseType: !817, size: 192)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !803, line: 174, size: 192, elements: !818)
!818 = !{!819, !858}
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !803, line: 175, baseType: !820, size: 192)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !803, line: 175, size: 192, elements: !821)
!821 = !{!822, !854, !855, !856, !857}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !820, file: !803, line: 176, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !803, line: 135, size: 512, elements: !825)
!825 = !{!826, !827, !828, !829, !831, !836, !846, !852, !853}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !824, file: !803, line: 136, baseType: !658, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !824, file: !803, line: 137, baseType: !33, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !824, file: !803, line: 138, baseType: !12, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !824, file: !803, line: 139, baseType: !830, size: 16, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !66)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !803, line: 150, baseType: !832, size: 32, offset: 192)
!832 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !824, file: !803, line: 147, baseType: !29, size: 32, elements: !833)
!833 = !{!834, !835}
!834 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!835 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !824, file: !803, line: 151, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !803, line: 64, baseType: !839)
!839 = !DISubroutineType(types: !840)
!840 = !{!12, !823, !12, !33, !841, !845}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !248, line: 72, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !248, line: 16, baseType: !22)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !824, file: !803, line: 152, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !803, line: 117, size: 256, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !848, file: !803, line: 118, baseType: !40, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !848, file: !803, line: 119, baseType: !511, size: 192, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !824, file: !803, line: 153, baseType: !33, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !824, file: !803, line: 154, baseType: !33, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !820, file: !803, line: 177, baseType: !12, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !820, file: !803, line: 178, baseType: !12, size: 32, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !803, line: 179, baseType: !12, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !820, file: !803, line: 180, baseType: !12, size: 32, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !817, file: !803, line: 182, baseType: !427, size: 128, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !814, file: !803, line: 184, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !862, line: 26, size: 256, elements: !863)
!862 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !861, file: !862, line: 27, baseType: !29, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !861, file: !862, line: 28, baseType: !866, size: 192, offset: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !867, line: 43, size: 192, elements: !868)
!867 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !867, line: 44, baseType: !198, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !866, file: !867, line: 45, baseType: !100, size: 128, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !814, file: !803, line: 185, baseType: !823, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !814, file: !803, line: 186, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !803, line: 204, size: 960, elements: !875)
!875 = !{!876, !877, !881, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !874, file: !803, line: 205, baseType: !802, size: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !874, file: !803, line: 206, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!809, !873}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !874, file: !803, line: 207, baseType: !882, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !874, file: !803, line: 209, baseType: !889, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!12, !885, !823}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !814, file: !803, line: 187, baseType: !809, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !814, file: !803, line: 188, baseType: !894, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !814, file: !803, line: 189, baseType: !896, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !803, line: 157, size: 256, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !897, file: !803, line: 158, baseType: !87, size: 192, align: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !897, file: !803, line: 159, baseType: !885, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !814, file: !803, line: 190, baseType: !498, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !811, file: !803, line: 196, baseType: !267, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !742, file: !743, line: 100, baseType: !885, size: 64, offset: 3776)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !742, file: !743, line: 102, baseType: !905, size: 64, offset: 3840)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !743, line: 107, size: 1152, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !916}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !906, file: !743, line: 108, baseType: !502, size: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !906, file: !743, line: 109, baseType: !741, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !906, file: !743, line: 110, baseType: !537, size: 32, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !743, line: 111, baseType: !40, size: 32, offset: 224)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !906, file: !743, line: 112, baseType: !913, size: 640, offset: 256)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 640, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 10)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !906, file: !743, line: 113, baseType: !917, size: 256, offset: 896)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 256, elements: !507)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !742, file: !743, line: 103, baseType: !919, size: 640, offset: 3904)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 640, elements: !914)
!920 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !742, file: !743, line: 104, baseType: !922, size: 256, offset: 4544)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 256, elements: !507)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !549, file: !550, line: 139, baseType: !905, size: 64, offset: 1216)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !549, file: !550, line: 140, baseType: !925, size: 64, offset: 1280)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !550, line: 25, size: 64, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !926, file: !550, line: 26, baseType: !40, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !926, file: !550, line: 27, baseType: !12, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !926, file: !550, line: 28, baseType: !931, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !526)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !550, line: 142, baseType: !933, size: 128, offset: 1344)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !550, line: 142, size: 128, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !933, file: !550, line: 143, baseType: !12, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !933, file: !550, line: 144, baseType: !427, size: 128, align: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !419, file: !420, line: 1013, baseType: !938, size: 256, offset: 960)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !420, line: 970, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !938, file: !420, line: 971, baseType: !22, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !938, file: !420, line: 972, baseType: !29, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !938, file: !420, line: 973, baseType: !29, size: 32, offset: 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !938, file: !420, line: 974, baseType: !29, size: 32, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !938, file: !420, line: 975, baseType: !29, size: 32, offset: 160)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !938, file: !420, line: 976, baseType: !459, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !419, file: !420, line: 1014, baseType: !947, size: 128, offset: 1216)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !948, line: 8, size: 128, elements: !949)
!948 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!949 = !{!950, !4229}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !947, file: !948, line: 9, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !953, line: 70, size: 256, elements: !954)
!953 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!954 = !{!955, !4226, !4227, !4228}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !952, file: !953, line: 71, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !958, line: 82, size: 1536, elements: !959)
!958 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!959 = !{!960, !961, !966, !974, !975, !990, !4193, !4195, !4208, !4209, !4210, !4211, !4212, !4218, !4219, !4220}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !957, file: !958, line: 84, baseType: !29, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !957, file: !958, line: 85, baseType: !962, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !251, line: 275, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !251, line: 275, size: 32, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !963, file: !251, line: 275, baseType: !255, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !957, file: !958, line: 86, baseType: !967, size: 128, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !968, line: 38, size: 128, elements: !969)
!968 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!969 = !{!970, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !968, line: 39, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !967, file: !968, line: 39, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !957, file: !958, line: 87, baseType: !956, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !957, file: !958, line: 88, baseType: !976, size: 128, offset: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !958, line: 49, size: 128, elements: !977)
!977 = !{!978, !987}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !958, line: 50, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !958, line: 50, size: 64, elements: !980)
!980 = !{!981, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !958, line: 51, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !958, line: 51, size: 64, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !982, file: !958, line: 52, baseType: !25, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !982, file: !958, line: 52, baseType: !25, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !979, file: !958, line: 54, baseType: !95, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !976, file: !958, line: 56, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !957, file: !958, line: 89, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !420, line: 641, size: 4800, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1003, !1004, !1198, !3913, !3914, !3915, !3916, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !4175, !4178, !4179, !4180, !4189, !4190, !4191, !4192}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !992, file: !420, line: 642, baseType: !830, size: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !992, file: !420, line: 643, baseType: !66, size: 16, offset: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !992, file: !420, line: 644, baseType: !537, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !992, file: !420, line: 645, baseType: !100, size: 128, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !992, file: !420, line: 646, baseType: !555, size: 32, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !992, file: !420, line: 647, baseType: !29, size: 32, offset: 224)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !992, file: !420, line: 650, baseType: !1001, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !420, line: 607, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !992, file: !420, line: 651, baseType: !1001, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !992, file: !420, line: 654, baseType: !1005, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !420, line: 1966, size: 2048, align: 512, elements: !1008)
!1008 = !{!1009, !1013, !1026, !1032, !1036, !1040, !1044, !1048, !1052, !1056, !1060, !1061, !1067, !1071, !1108, !1139, !1146, !1152, !1156, !1160, !1164, !1168, !1172, !1178, !1182}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1007, file: !420, line: 1967, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!956, !991, !956, !29}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1007, file: !420, line: 1968, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!658, !956, !991, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1019, line: 10, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1020 = !{!1021, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1018, file: !1019, line: 11, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !33}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1018, file: !1019, line: 12, baseType: !33, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1007, file: !420, line: 1969, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!12, !1030, !991, !12}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !570, line: 42, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1007, file: !420, line: 1970, baseType: !1033, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1001, !991, !12, !655}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1007, file: !420, line: 1972, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!12, !956, !668, !12}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1007, file: !420, line: 1974, baseType: !1041, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!12, !1030, !991, !956, !830, !655}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1007, file: !420, line: 1976, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!12, !956, !991, !956}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1007, file: !420, line: 1977, baseType: !1049, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!12, !991, !956}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1007, file: !420, line: 1978, baseType: !1053, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!12, !1030, !991, !956, !658}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1007, file: !420, line: 1980, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!12, !1030, !991, !956, !830}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1007, file: !420, line: 1982, baseType: !1049, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1007, file: !420, line: 1983, baseType: !1062, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!12, !1030, !991, !956, !830, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !25)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1007, file: !420, line: 1985, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!12, !1030, !991, !956, !991, !956, !29}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1007, file: !420, line: 1987, baseType: !1072, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!12, !1030, !956, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !420, line: 226, size: 640, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1090, !1099, !1100, !1105, !1106, !1107}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1076, file: !420, line: 227, baseType: !29, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1076, file: !420, line: 228, baseType: !830, size: 16, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !420, line: 241, baseType: !1081, size: 32, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !420, line: 241, size: 32, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1081, file: !420, line: 242, baseType: !537, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1081, file: !420, line: 243, baseType: !1085, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1086, line: 16, baseType: !1087)
!1086 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 14, size: 32, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1087, file: !1086, line: 15, baseType: !542, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !420, line: 245, baseType: !1091, size: 32, offset: 96)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !420, line: 245, size: 32, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1091, file: !420, line: 246, baseType: !555, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1091, file: !420, line: 247, baseType: !1095, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1086, line: 20, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 18, size: 32, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1096, file: !1086, line: 19, baseType: !559, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1076, file: !420, line: 249, baseType: !459, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1076, file: !420, line: 250, baseType: !1101, size: 128, offset: 192)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !613, line: 13, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1101, file: !613, line: 14, baseType: !612, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1101, file: !613, line: 15, baseType: !920, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1076, file: !420, line: 251, baseType: !1101, size: 128, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1076, file: !420, line: 252, baseType: !1101, size: 128, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1076, file: !420, line: 259, baseType: !418, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1007, file: !420, line: 1988, baseType: !1109, size: 64, offset: 896)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!12, !1030, !1112, !1114, !25, !29}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1116, line: 22, size: 1280, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1115, file: !1116, line: 23, baseType: !25, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1115, file: !1116, line: 24, baseType: !830, size: 16, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1115, file: !1116, line: 25, baseType: !29, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1115, file: !1116, line: 26, baseType: !620, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1115, file: !1116, line: 27, baseType: !95, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1115, file: !1116, line: 28, baseType: !95, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1115, file: !1116, line: 41, baseType: !95, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1115, file: !1116, line: 42, baseType: !1065, size: 32, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1115, file: !1116, line: 43, baseType: !1065, size: 32, offset: 352)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1115, file: !1116, line: 44, baseType: !537, size: 32, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1115, file: !1116, line: 45, baseType: !555, size: 32, offset: 416)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1115, file: !1116, line: 46, baseType: !459, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1115, file: !1116, line: 47, baseType: !1101, size: 128, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1115, file: !1116, line: 48, baseType: !1101, size: 128, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1115, file: !1116, line: 49, baseType: !1101, size: 128, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1115, file: !1116, line: 50, baseType: !1101, size: 128, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1115, file: !1116, line: 51, baseType: !95, size: 64, offset: 1024)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1115, file: !1116, line: 52, baseType: !95, size: 64, offset: 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1115, file: !1116, line: 53, baseType: !25, size: 32, offset: 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1115, file: !1116, line: 54, baseType: !25, size: 32, offset: 1184)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1115, file: !1116, line: 55, baseType: !95, size: 64, offset: 1216)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1007, file: !420, line: 1990, baseType: !1140, size: 64, offset: 960)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1143, !956, !668, !842}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !248, line: 73, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !248, line: 15, baseType: !920)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1007, file: !420, line: 1991, baseType: !1147, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!12, !991, !1150, !95, !95}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !420, line: 55, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1007, file: !420, line: 1993, baseType: !1153, size: 64, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!12, !991, !12}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1007, file: !420, line: 1994, baseType: !1157, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!12, !991, !956, !418, !29, !830}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1007, file: !420, line: 1997, baseType: !1161, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!12, !1030, !991, !418, !830}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1007, file: !420, line: 1999, baseType: !1165, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1001, !1030, !956, !12}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1007, file: !420, line: 2001, baseType: !1169, size: 64, offset: 1344)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!12, !1030, !956, !1001, !12}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1007, file: !420, line: 2003, baseType: !1173, size: 64, offset: 1408)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!12, !1030, !956, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !420, line: 76, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1007, file: !420, line: 2005, baseType: !1179, size: 64, offset: 1472)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!12, !956, !1176}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1007, file: !420, line: 2006, baseType: !1183, size: 64, offset: 1536)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1186, !991}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !420, line: 3192, size: 192, elements: !1188)
!1188 = !{!1189, !1197}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1187, file: !420, line: 3193, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1191, line: 296, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1192 = !{!1193, !1194, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1190, file: !1191, line: 297, baseType: !400, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1190, file: !1191, line: 299, baseType: !1195, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !29)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1190, file: !1191, line: 300, baseType: !33, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1187, file: !420, line: 3194, baseType: !25, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !992, file: !420, line: 655, baseType: !1199, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !420, line: 1190, size: 10752, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !2525, !2667, !2707, !2790, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2807, !2811, !2812, !3710, !3716, !3717, !3720, !3721, !3722, !3763, !3789, !3790, !3791, !3792, !3793, !3794, !3797, !3798, !3805, !3806, !3807, !3808, !3867, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1200, file: !420, line: 1191, baseType: !100, size: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1200, file: !420, line: 1192, baseType: !1065, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1200, file: !420, line: 1193, baseType: !217, size: 8, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1200, file: !420, line: 1194, baseType: !22, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1200, file: !420, line: 1195, baseType: !459, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1200, file: !420, line: 1196, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !420, line: 2366, size: 576, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1219, !1223, !1227, !1231, !2513, !2514, !2515, !2517, !2518, !2519, !2521, !2522, !2523, !2524}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1209, file: !420, line: 2367, baseType: !658, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1209, file: !420, line: 2368, baseType: !12, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1209, file: !420, line: 2376, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!12, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !953, line: 21, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1209, file: !420, line: 2377, baseType: !1220, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !420, line: 75, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1209, file: !420, line: 2378, baseType: !1224, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!956, !1208, !12, !658, !33}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1209, file: !420, line: 2380, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1199}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1209, file: !420, line: 2381, baseType: !1232, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1234, line: 402, size: 9216, align: 512, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1235 = !{!1236, !1243, !1244, !1248, !2163, !2189, !2190, !2191, !2192, !2196, !2199, !2200, !2201, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2269, !2273, !2293, !2313, !2314, !2315, !2316, !2325, !2348, !2349, !2352, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2366, !2367, !2466, !2474, !2475, !2476, !2478, !2482, !2483, !2492, !2493, !2494, !2495, !2497, !2498, !2499, !2506, !2507, !2508, !2512}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1233, file: !1234, line: 403, baseType: !1237, size: 32)
!1237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1234, line: 312, baseType: !29, size: 32, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242}
!1239 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1240 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1241 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1242 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1233, file: !1234, line: 406, baseType: !100, size: 128, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1233, file: !1234, line: 409, baseType: !1245, size: 448, offset: 192)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 56)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1233, file: !1234, line: 417, baseType: !1249, size: 768, offset: 640)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1234, line: 45, size: 768, elements: !1250)
!1250 = !{!1251, !2157, !2158, !2159, !2162}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1249, file: !1234, line: 46, baseType: !1252, size: 512)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1253, line: 64, size: 512, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1254 = !{!1255, !1256, !1257, !1259, !1303, !2013, !2147, !2152, !2153, !2154, !2155, !2156}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1252, file: !1253, line: 65, baseType: !658, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1252, file: !1253, line: 66, baseType: !100, size: 128, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1252, file: !1253, line: 67, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1252, file: !1253, line: 68, baseType: !1260, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1253, line: 168, size: 768, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1261, file: !1253, line: 169, baseType: !100, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1261, file: !1253, line: 170, baseType: !400, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1261, file: !1253, line: 171, baseType: !1252, size: 512, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1261, file: !1253, line: 172, baseType: !1267, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1253, line: 133, size: 192, elements: !1270)
!1270 = !{!1271, !1278, !1283}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1269, file: !1253, line: 134, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!12, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1269, file: !1253, line: 135, baseType: !1279, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!658, !1276}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1269, file: !1253, line: 136, baseType: !1284, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!12, !1276, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1253, line: 125, size: 20736, elements: !1290)
!1290 = !{!1291, !1293, !1297, !1298, !1302}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1289, file: !1253, line: 126, baseType: !1292, size: 192)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 192, elements: !485)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1289, file: !1253, line: 127, baseType: !1294, size: 4096, offset: 192)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 4096, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1289, file: !1253, line: 128, baseType: !12, size: 32, offset: 4288)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1289, file: !1253, line: 129, baseType: !1299, size: 16384, offset: 4320)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 2048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1289, file: !1253, line: 130, baseType: !12, size: 32, offset: 20704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1252, file: !1253, line: 69, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1253, line: 116, size: 384, elements: !1307)
!1307 = !{!1308, !1312, !1331, !1969, !2005, !2009}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1306, file: !1253, line: 117, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1258}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1306, file: !1253, line: 118, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1316, line: 254, size: 128, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1317 = !{!1318, !1327}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1315, file: !1316, line: 255, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1143, !1258, !1322, !668}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1316, line: 30, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !1316, line: 31, baseType: !658, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1323, file: !1316, line: 32, baseType: !830, size: 16, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1315, file: !1316, line: 256, baseType: !1328, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1143, !1258, !1322, !658, !842}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1306, file: !1253, line: 119, baseType: !1332, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1316, line: 84, size: 320, elements: !1336)
!1336 = !{!1337, !1338, !1342, !1965, !1967}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1335, file: !1316, line: 85, baseType: !658, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1335, file: !1316, line: 86, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!830, !1258, !1322, !12}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1335, file: !1316, line: 88, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!830, !1258, !1346, !12}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1316, line: 175, size: 512, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1956, !1960, !1961}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1347, file: !1316, line: 176, baseType: !1323, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1347, file: !1316, line: 177, baseType: !842, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1347, file: !1316, line: 178, baseType: !33, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1347, file: !1316, line: 179, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !420, line: 472, size: 1536, align: 64, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1948, !1949, !1950, !1953, !1954, !1955}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1357, file: !420, line: 473, baseType: !991, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1357, file: !420, line: 474, baseType: !1190, size: 128, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1357, file: !420, line: 475, baseType: !596, size: 320, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1357, file: !420, line: 476, baseType: !1195, size: 32, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1357, file: !420, line: 477, baseType: !40, size: 32, offset: 544)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1357, file: !420, line: 482, baseType: !264, size: 128, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1357, file: !420, line: 483, baseType: !22, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1357, file: !420, line: 484, baseType: !22, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1357, file: !420, line: 485, baseType: !1368, size: 64, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !420, line: 404, size: 1280, elements: !1371)
!1371 = !{!1372, !1711, !1781, !1785, !1789, !1795, !1801, !1805, !1810, !1814, !1818, !1822, !1905, !1916, !1920, !1924, !1929, !1933, !1940, !1944}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1370, file: !420, line: 405, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!12, !1376, !1686}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !383, line: 74, size: 512, align: 128, elements: !1378)
!1378 = !{!1379, !1380, !1680, !1685}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !383, line: 75, baseType: !22, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !383, line: 83, baseType: !1381, size: 320, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !383, line: 83, size: 320, elements: !1382)
!1382 = !{!1383, !1404, !1418, !1422, !1679}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !383, line: 84, baseType: !1384, size: 320)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !383, line: 84, size: 320, elements: !1385)
!1385 = !{!1386, !1397, !1398, !1403}
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !383, line: 90, baseType: !1387, size: 128)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !383, line: 90, size: 128, elements: !1388)
!1388 = !{!1389, !1390, !1395, !1396}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1387, file: !383, line: 91, baseType: !100, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !383, line: 94, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !383, line: 94, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1391, file: !383, line: 96, baseType: !33, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1391, file: !383, line: 98, baseType: !29, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1387, file: !383, line: 102, baseType: !100, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1387, file: !383, line: 103, baseType: !100, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1384, file: !383, line: 106, baseType: !1356, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !383, line: 107, baseType: !1399, size: 64, offset: 192)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !383, line: 107, size: 64, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1399, file: !383, line: 108, baseType: !22, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1399, file: !383, line: 109, baseType: !22, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1384, file: !383, line: 117, baseType: !22, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !383, line: 119, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !383, line: 119, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1411, !1412, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1405, file: !383, line: 124, baseType: !22, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1405, file: !383, line: 125, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !383, line: 125, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1405, file: !383, line: 126, baseType: !22, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1405, file: !383, line: 127, baseType: !22, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !383, line: 128, baseType: !1414, size: 64, offset: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !383, line: 128, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1414, file: !383, line: 133, baseType: !22, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1414, file: !383, line: 138, baseType: !440, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !383, line: 141, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !383, line: 141, size: 64, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1419, file: !383, line: 142, baseType: !22, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !383, line: 144, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !383, line: 144, size: 128, elements: !1424)
!1424 = !{!1425, !1678}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1423, file: !383, line: 146, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1428, line: 126, size: 1216, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1429 = !{!1430, !1440, !1461, !1462, !1470, !1471, !1472, !1660, !1661, !1662}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1427, file: !1428, line: 127, baseType: !1431, size: 384)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1428, line: 21, size: 384, elements: !1432)
!1432 = !{!1433, !1434, !1436, !1437, !1438, !1439}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1431, file: !1428, line: 22, baseType: !22, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1431, file: !1428, line: 23, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1431, file: !1428, line: 24, baseType: !1435, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1431, file: !1428, line: 25, baseType: !22, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1431, file: !1428, line: 26, baseType: !22, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1431, file: !1428, line: 27, baseType: !22, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1427, file: !1428, line: 128, baseType: !1441, size: 128, offset: 384)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1442, line: 105, size: 128, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1441, file: !1442, line: 110, baseType: !22, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1441, file: !1442, line: 118, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1442, line: 95, size: 448, elements: !1448)
!1448 = !{!1449, !1450, !1456, !1457, !1458, !1459, !1460}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1447, file: !1442, line: 96, baseType: !440, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1447, file: !1442, line: 97, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1442, line: 60, baseType: !1453)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1447, file: !1442, line: 98, baseType: !1451, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1447, file: !1442, line: 99, baseType: !655, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1447, file: !1442, line: 100, baseType: !655, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !1442, line: 101, baseType: !427, size: 128, align: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1447, file: !1442, line: 102, baseType: !1455, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1427, file: !1428, line: 129, baseType: !861, size: 256, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1427, file: !1428, line: 130, baseType: !1463, size: 32, offset: 768)
!1463 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1428, line: 68, baseType: !29, size: 32, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469}
!1465 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1466 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1467 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1468 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1469 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1428, line: 131, baseType: !29, size: 32, offset: 800)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1427, file: !1428, line: 132, baseType: !22, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1427, file: !1428, line: 133, baseType: !1473, size: 64, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1428, line: 77, size: 192, elements: !1476)
!1476 = !{!1477, !1481, !1656}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1475, file: !1428, line: 83, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1376}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1475, file: !1428, line: 89, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !383, line: 1184, baseType: !29)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1488, line: 512, size: 896, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1489 = !{!1490, !1608, !1624, !1631, !1638, !1648, !1649, !1650, !1652, !1654}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 513, baseType: !1491, size: 320)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1487, file: !1488, line: 513, size: 320, elements: !1492)
!1492 = !{!1493, !1604, !1605, !1606, !1607}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1491, file: !1488, line: 514, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !383, line: 625, size: 1344, elements: !1496)
!1496 = !{!1497, !1506, !1507, !1515, !1522, !1523, !1528, !1529, !1534, !1535, !1538, !1597, !1598, !1599, !1600, !1601, !1602}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !383, line: 628, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !383, line: 628, size: 128, elements: !1499)
!1499 = !{!1500, !1505}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !383, line: 629, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !383, line: 629, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1501, file: !383, line: 631, baseType: !22, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1501, file: !383, line: 632, baseType: !22, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1498, file: !383, line: 635, baseType: !427, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1495, file: !383, line: 639, baseType: !381, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1495, file: !383, line: 640, baseType: !1508, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1509, line: 297, baseType: !1510)
!1509 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1509, line: 297, size: 64, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1510, file: !1509, line: 297, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1514, line: 19, baseType: !22)
!1514 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !383, line: 646, baseType: !1516, size: 64, offset: 256)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !383, line: 646, size: 64, elements: !1517)
!1517 = !{!1518, !1521}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1516, file: !383, line: 647, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !383, line: 542, baseType: !22)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1516, file: !383, line: 648, baseType: !1520, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1495, file: !383, line: 666, baseType: !12, size: 32, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1495, file: !383, line: 667, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !383, line: 579, size: 320, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !383, line: 580, baseType: !596, size: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1495, file: !383, line: 670, baseType: !655, size: 8, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1495, file: !383, line: 681, baseType: !1530, size: 256, offset: 512)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !383, line: 678, size: 256, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1530, file: !383, line: 679, baseType: !87, size: 192, align: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1530, file: !383, line: 680, baseType: !22, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1495, file: !383, line: 689, baseType: !100, size: 128, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1495, file: !383, line: 691, baseType: !1536, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !383, line: 691, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1495, file: !383, line: 694, baseType: !1539, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1488, line: 563, size: 1024, elements: !1542)
!1542 = !{!1543, !1547, !1548, !1552, !1556, !1560, !1561, !1565, !1569, !1573, !1574, !1575, !1579, !1583, !1589, !1593}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1541, file: !1488, line: 564, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1494}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1541, file: !1488, line: 569, baseType: !1544, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1541, file: !1488, line: 571, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!12, !1494, !22}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1541, file: !1488, line: 572, baseType: !1553, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!12, !1494}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1541, file: !1488, line: 578, baseType: !1557, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!12, !1494, !22, !22, !22}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1541, file: !1488, line: 580, baseType: !1482, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1541, file: !1488, line: 581, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1485, !1486, !29}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1541, file: !1488, line: 582, baseType: !1566, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1485, !1486, !22, !22}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1541, file: !1488, line: 584, baseType: !1570, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!22, !1494}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1541, file: !1488, line: 588, baseType: !1482, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1541, file: !1488, line: 591, baseType: !1482, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1541, file: !1488, line: 597, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!12, !1494, !22, !33, !12, !12}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1541, file: !1488, line: 603, baseType: !1580, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!658, !1494}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1541, file: !1488, line: 613, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!12, !1494, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !383, line: 717, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1541, file: !1488, line: 625, baseType: !1590, size: 64, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1587, !1494, !22}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1541, file: !1488, line: 633, baseType: !1594, size: 64, offset: 960)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1376, !1494, !22}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1495, file: !383, line: 697, baseType: !22, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1495, file: !383, line: 699, baseType: !418, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1495, file: !383, line: 700, baseType: !33, size: 64, offset: 1152)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1495, file: !383, line: 711, baseType: !440, size: 64, offset: 1216)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1495, file: !383, line: 717, baseType: !1587, size: 64, offset: 1280)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1495, file: !383, line: 722, baseType: !1603, offset: 1344)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !383, line: 570, elements: !411)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1491, file: !1488, line: 515, baseType: !1195, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1491, file: !1488, line: 516, baseType: !22, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1491, file: !1488, line: 517, baseType: !22, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1491, file: !1488, line: 518, baseType: !22, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1488, line: 520, baseType: !1609, size: 32, offset: 320)
!1609 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !383, line: 1325, baseType: !29, size: 32, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1611 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1612 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1613 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1614 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1615 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1616 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1617 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1618 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1619 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1620 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1621 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1622 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1623 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1487, file: !1488, line: 522, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1514, line: 22, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1514, line: 22, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1627, file: !1514, line: 22, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1514, line: 15, baseType: !22)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1487, file: !1488, line: 524, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1509, line: 372, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 372, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1634, file: !1509, line: 372, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1514, line: 16, baseType: !22)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 527, baseType: !1639, size: 64, offset: 512)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 527, size: 64, elements: !1640)
!1640 = !{!1641, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1639, file: !1488, line: 528, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1514, line: 21, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1514, line: 21, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1643, file: !1514, line: 21, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1514, line: 14, baseType: !22)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1639, file: !1488, line: 529, baseType: !1626, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1487, file: !1488, line: 534, baseType: !1376, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1487, file: !1488, line: 535, baseType: !1376, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1487, file: !1488, line: 541, baseType: !1651, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1487, file: !1488, line: 545, baseType: !1653, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1487, file: !1488, line: 549, baseType: !1655, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1509, line: 520, baseType: !1376)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1475, file: !1428, line: 100, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!12, !1426, !22, !22, !12}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1427, file: !1428, line: 134, baseType: !33, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1427, file: !1428, line: 135, baseType: !12, size: 32, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 136, baseType: !1663, size: 128, offset: 1088)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 136, size: 128, elements: !1664)
!1664 = !{!1665, !1671}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1663, file: !1428, line: 137, baseType: !1666, size: 128)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1667, line: 6, size: 128, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1666, file: !1667, line: 7, baseType: !95, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1666, file: !1667, line: 8, baseType: !95, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1428, line: 138, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1428, line: 138, elements: !1673)
!1673 = !{!1674, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1672, file: !1428, line: 138, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1428, line: 138, elements: !411)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1672, file: !1428, line: 138, baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, elements: !526)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1423, file: !383, line: 147, baseType: !33, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1381, file: !383, line: 161, baseType: !427, size: 128, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !383, line: 164, baseType: !1681, size: 32, offset: 384)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !383, line: 164, size: 32, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1681, file: !383, line: 169, baseType: !40, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1681, file: !383, line: 177, baseType: !29, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1377, file: !383, line: 181, baseType: !40, size: 32, offset: 416)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !1688, line: 42, size: 384, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1687, file: !1688, line: 43, baseType: !920, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1687, file: !1688, line: 45, baseType: !920, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1687, file: !1688, line: 52, baseType: !459, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1687, file: !1688, line: 53, baseType: !459, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1687, file: !1688, line: 55, baseType: !1695, size: 32, offset: 256)
!1695 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !1688, line: 32, baseType: !29, size: 32, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!1698 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1687, file: !1688, line: 57, baseType: !29, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1687, file: !1688, line: 58, baseType: !29, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1687, file: !1688, line: 59, baseType: !29, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1687, file: !1688, line: 60, baseType: !29, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1687, file: !1688, line: 61, baseType: !29, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1687, file: !1688, line: 62, baseType: !29, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1687, file: !1688, line: 63, baseType: !29, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1687, file: !1688, line: 71, baseType: !29, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1687, file: !1688, line: 78, baseType: !1708, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !1688, line: 78, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1370, file: !420, line: 406, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!12, !418, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !383, line: 293, size: 1536, elements: !1717)
!1717 = !{!1718, !1748, !1762}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !383, line: 295, baseType: !1719, size: 512)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !383, line: 295, size: 512, elements: !1720)
!1720 = !{!1721, !1747}
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !383, line: 296, baseType: !1722, size: 448)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1719, file: !383, line: 296, size: 448, elements: !1723)
!1723 = !{!1724, !1725, !1734, !1735, !1736, !1745, !1746}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !383, line: 298, baseType: !22, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !383, line: 299, baseType: !1726, size: 128, offset: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !383, line: 299, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1726, file: !383, line: 300, baseType: !100, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !383, line: 302, baseType: !1730, size: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !383, line: 302, size: 128, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1730, file: !383, line: 303, baseType: !33, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1730, file: !383, line: 305, baseType: !29, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1722, file: !383, line: 310, baseType: !1356, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1722, file: !383, line: 311, baseType: !22, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !383, line: 312, baseType: !1737, size: 64, offset: 320)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !383, line: 312, size: 64, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1737, file: !383, line: 313, baseType: !33, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1737, file: !383, line: 314, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !383, line: 257, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 255, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1742, file: !383, line: 256, baseType: !22, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1722, file: !383, line: 316, baseType: !40, size: 32, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1722, file: !383, line: 317, baseType: !40, size: 32, offset: 416)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1719, file: !383, line: 323, baseType: !1377, size: 512, align: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !383, line: 325, baseType: !1749, size: 512, offset: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !383, line: 325, size: 512, elements: !1750)
!1750 = !{!1751, !1761}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !383, line: 326, baseType: !1752, size: 320)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !383, line: 326, size: 320, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1752, file: !383, line: 327, baseType: !22, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1752, file: !383, line: 328, baseType: !22, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1752, file: !383, line: 329, baseType: !22, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1752, file: !383, line: 331, baseType: !40, size: 32, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1752, file: !383, line: 332, baseType: !40, size: 32, offset: 224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1752, file: !383, line: 333, baseType: !40, size: 32, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1752, file: !383, line: 335, baseType: !29, size: 32, offset: 288)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1749, file: !383, line: 339, baseType: !1377, size: 512, align: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !383, line: 341, baseType: !1763, size: 512, offset: 1024)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !383, line: 341, size: 512, elements: !1764)
!1764 = !{!1765, !1774, !1780}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !383, line: 342, baseType: !1766, size: 384)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !383, line: 342, size: 384, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1766, file: !383, line: 343, baseType: !22, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1766, file: !383, line: 344, baseType: !22, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1766, file: !383, line: 346, baseType: !33, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1766, file: !383, line: 347, baseType: !33, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1766, file: !383, line: 348, baseType: !33, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1766, file: !383, line: 349, baseType: !33, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !383, line: 352, baseType: !1775, size: 256)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !383, line: 352, size: 256, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1775, file: !383, line: 353, baseType: !22, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1775, file: !383, line: 354, baseType: !22, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1775, file: !383, line: 356, baseType: !100, size: 128, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1763, file: !383, line: 359, baseType: !1377, size: 512, align: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1370, file: !420, line: 409, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!12, !1356, !1686}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1370, file: !420, line: 412, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!655, !1356, !1715}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1370, file: !420, line: 414, baseType: !1790, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !420, line: 310, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1370, file: !420, line: 416, baseType: !1796, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!12, !418, !1356, !459, !29, !1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1370, file: !420, line: 419, baseType: !1802, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!12, !418, !1356, !459, !29, !29, !1376, !33}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1370, file: !420, line: 424, baseType: !1806, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1809, !1356, !1809}
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !95)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1370, file: !420, line: 425, baseType: !1811, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1715, !842, !842}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1370, file: !420, line: 426, baseType: !1815, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!655, !1715, !1195}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1370, file: !420, line: 427, baseType: !1819, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1715}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1370, file: !420, line: 428, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1143, !1826, !1848}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !420, line: 373, size: 384, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1835, !1836, !1837, !1838}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1827, file: !420, line: 374, baseType: !418, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1827, file: !420, line: 375, baseType: !459, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1827, file: !420, line: 376, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1826, !920}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1827, file: !420, line: 377, baseType: !33, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1827, file: !420, line: 378, baseType: !12, size: 32, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1827, file: !420, line: 379, baseType: !64, size: 16, offset: 288)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !420, line: 380, baseType: !1839, size: 64, offset: 320)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !420, line: 380, size: 64, elements: !1840)
!1840 = !{!1841, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1839, file: !420, line: 386, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !420, line: 386, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1839, file: !420, line: 395, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1143, !33}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1850, line: 41, size: 320, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1862, !1900}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1849, file: !1850, line: 42, baseType: !215, size: 8)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1849, file: !1850, line: 43, baseType: !655, size: 8, offset: 8)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1849, file: !1850, line: 44, baseType: !655, size: 8, offset: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1849, file: !1850, line: 45, baseType: !655, size: 8, offset: 24)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1849, file: !1850, line: 46, baseType: !655, size: 8, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 47, baseType: !1858, size: 64, offset: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1850, line: 47, size: 64, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1858, file: !1850, line: 48, baseType: !842, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1858, file: !1850, line: 49, baseType: !12, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 61, baseType: !1863, size: 128, offset: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1850, line: 61, size: 128, elements: !1864)
!1864 = !{!1865, !1871}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1863, file: !1850, line: 67, baseType: !1866, size: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1867, line: 17, size: 128, elements: !1868)
!1867 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1866, file: !1867, line: 19, baseType: !33, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1866, file: !1867, line: 20, baseType: !843, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !1850, line: 68, baseType: !1872, size: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !1850, line: 68, size: 128, elements: !1873)
!1873 = !{!1874, !1899}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1850, line: 69, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1850, line: 69, size: 64, elements: !1876)
!1876 = !{!1877, !1880, !1887, !1896, !1898}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1875, file: !1850, line: 71, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1875, file: !1850, line: 72, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1850, line: 17, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1883, file: !1850, line: 18, baseType: !33, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1883, file: !1850, line: 19, baseType: !842, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1875, file: !1850, line: 73, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1891, line: 31, size: 128, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1890, file: !1891, line: 32, baseType: !1376, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1890, file: !1891, line: 33, baseType: !29, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1890, file: !1891, line: 34, baseType: !29, size: 32, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1875, file: !1850, line: 74, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1875, file: !1850, line: 75, baseType: !33, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1872, file: !1850, line: 77, baseType: !842, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 80, baseType: !1901, size: 64, offset: 256)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1850, line: 80, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1901, file: !1850, line: 81, baseType: !22, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1901, file: !1850, line: 82, baseType: !459, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1370, file: !420, line: 433, baseType: !1906, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!12, !1356, !1715, !1715, !1909}
!1909 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1910, line: 15, baseType: !29, size: 32, elements: !1911)
!1910 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1913 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1914 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1915 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1370, file: !420, line: 435, baseType: !1917, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!12, !1715}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1370, file: !420, line: 436, baseType: !1921, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!655, !1715, !842, !842}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1370, file: !420, line: 438, baseType: !1925, size: 64, offset: 960)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1715, !1928, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1370, file: !420, line: 439, baseType: !1930, size: 64, offset: 1024)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!12, !1356, !1376}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1370, file: !420, line: 442, baseType: !1934, size: 64, offset: 1088)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!12, !1937, !418, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !420, line: 66, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1370, file: !420, line: 444, baseType: !1941, size: 64, offset: 1152)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !418}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1370, file: !420, line: 445, baseType: !1945, size: 64, offset: 1216)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!12, !1826, !1848}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !420, line: 486, baseType: !22, size: 64, offset: 896)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1357, file: !420, line: 487, baseType: !596, size: 320, offset: 960)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1357, file: !420, line: 488, baseType: !1951, size: 32, offset: 1280)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1952, line: 8, baseType: !25)
!1952 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1357, file: !420, line: 489, baseType: !400, size: 32, offset: 1312)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1357, file: !420, line: 490, baseType: !100, size: 128, offset: 1344)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1357, file: !420, line: 491, baseType: !33, size: 64, offset: 1472)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1347, file: !1316, line: 180, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1143, !418, !1258, !1346, !668, !459, !842}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1347, file: !1316, line: 182, baseType: !1957, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1347, file: !1316, line: 184, baseType: !1962, size: 64, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!12, !418, !1258, !1346, !1494}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1335, file: !1316, line: 90, baseType: !1966, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1335, file: !1316, line: 91, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1306, file: !1253, line: 120, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1973, !1276}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1976, line: 39, size: 384, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1977 = !{!1978, !1984, !1988, !1992, !2000, !2004}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1975, file: !1976, line: 40, baseType: !1979, size: 32)
!1979 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1976, line: 26, baseType: !29, size: 32, elements: !1980)
!1980 = !{!1981, !1982, !1983}
!1981 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1982 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1983 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1975, file: !1976, line: 41, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!655}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1975, file: !1976, line: 42, baseType: !1989, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!33}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1975, file: !1976, line: 43, baseType: !1993, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1976, line: 19, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1975, file: !1976, line: 44, baseType: !2001, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1996}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1975, file: !1976, line: 45, baseType: !1022, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1306, file: !1253, line: 121, baseType: !2006, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!1996, !1276}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1306, file: !1253, line: 122, baseType: !2010, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1276, !886, !887}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1252, file: !1253, line: 70, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2016, line: 190, size: 1152, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2139, !2140, !2141, !2142, !2143, !2146}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2015, file: !2016, line: 191, baseType: !40, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2015, file: !2016, line: 192, baseType: !40, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2015, file: !2016, line: 202, baseType: !2014, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2015, file: !2016, line: 203, baseType: !658, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2015, file: !2016, line: 205, baseType: !87, size: 192, align: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2015, file: !2016, line: 207, baseType: !1996, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2015, file: !2016, line: 208, baseType: !29, size: 32, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 209, baseType: !2026, size: 256, offset: 512)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 209, size: 256, elements: !2027)
!2027 = !{!2028, !2037, !2041}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2026, file: !2016, line: 210, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2016, line: 153, size: 256, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2029, file: !2016, line: 154, baseType: !22, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2029, file: !2016, line: 156, baseType: !267, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2029, file: !2016, line: 162, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2016, line: 162, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2029, file: !2016, line: 167, baseType: !22, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2026, file: !2016, line: 211, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2016, line: 170, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2038, file: !2016, line: 171, baseType: !2014, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2026, file: !2016, line: 212, baseType: !2042, size: 256)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2016, line: 174, size: 256, elements: !2043)
!2043 = !{!2044, !2134, !2137, !2138}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2042, file: !2016, line: 175, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2016, line: 271, size: 768, elements: !2048)
!2048 = !{!2049, !2107, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2130}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2047, file: !2016, line: 276, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!12, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2016, line: 251, size: 1216, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2054, file: !2016, line: 253, baseType: !2014, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2054, file: !2016, line: 254, baseType: !418, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2054, file: !2016, line: 255, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2061, line: 17, size: 960, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2092, !2093, !2096}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2060, file: !2061, line: 18, baseType: !668, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2060, file: !2061, line: 19, baseType: !842, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2060, file: !2061, line: 20, baseType: !842, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2060, file: !2061, line: 21, baseType: !842, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2060, file: !2061, line: 22, baseType: !842, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2060, file: !2061, line: 23, baseType: !459, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2060, file: !2061, line: 24, baseType: !459, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2060, file: !2061, line: 25, baseType: !447, size: 256, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2060, file: !2061, line: 26, baseType: !2072, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2061, line: 32, size: 256, elements: !2075)
!2075 = !{!2076, !2080, !2084, !2088}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2074, file: !2061, line: 33, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!33, !2059, !845}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2074, file: !2061, line: 34, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2059, !33}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2074, file: !2061, line: 35, baseType: !2085, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!33, !2059, !33, !845}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2074, file: !2061, line: 36, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!12, !2059, !33}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2060, file: !2061, line: 27, baseType: !12, size: 32, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2060, file: !2061, line: 28, baseType: !2094, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2060, file: !2061, line: 29, baseType: !33, size: 64, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2054, file: !2016, line: 256, baseType: !33, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2054, file: !2016, line: 259, baseType: !447, size: 256, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2054, file: !2016, line: 260, baseType: !447, size: 256, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2054, file: !2016, line: 261, baseType: !12, size: 32, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2054, file: !2016, line: 262, baseType: !100, size: 128, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2054, file: !2016, line: 263, baseType: !668, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2054, file: !2016, line: 265, baseType: !842, size: 64, offset: 1024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2054, file: !2016, line: 266, baseType: !655, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2054, file: !2016, line: 267, baseType: !655, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2054, file: !2016, line: 268, baseType: !1539, size: 64, offset: 1152)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2047, file: !2016, line: 277, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2053}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2047, file: !2016, line: 290, baseType: !2089, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2047, file: !2016, line: 292, baseType: !2077, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2047, file: !2016, line: 293, baseType: !2085, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2047, file: !2016, line: 294, baseType: !2081, size: 64, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2047, file: !2016, line: 296, baseType: !2116, size: 64, offset: 384)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!1143, !2053, !668, !842, !459}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2047, file: !2016, line: 306, baseType: !842, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2047, file: !2016, line: 313, baseType: !655, size: 8, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2047, file: !2016, line: 314, baseType: !2116, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2047, file: !2016, line: 317, baseType: !2123, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !2053, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2127, line: 59, baseType: !29)
!2127 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !420, line: 61, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2047, file: !2016, line: 320, baseType: !2131, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!12, !2053, !1494}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2042, file: !2016, line: 176, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2016, line: 35, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2042, file: !2016, line: 177, baseType: !459, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2042, file: !2016, line: 178, baseType: !2014, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2015, file: !2016, line: 215, baseType: !33, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2015, file: !2016, line: 221, baseType: !95, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 223, baseType: !66, size: 16, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2015, file: !2016, line: 224, baseType: !830, size: 16, offset: 912)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2015, file: !2016, line: 225, baseType: !2144, size: 64, offset: 960)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2016, line: 36, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2015, file: !2016, line: 227, baseType: !427, size: 128, align: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1252, file: !1253, line: 71, baseType: !2148, size: 32, offset: 448)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2149, line: 19, size: 32, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2148, file: !2149, line: 20, baseType: !35, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1252, file: !1253, line: 73, baseType: !29, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1252, file: !1253, line: 74, baseType: !29, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1252, file: !1253, line: 75, baseType: !29, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1252, file: !1253, line: 76, baseType: !29, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1252, file: !1253, line: 77, baseType: !29, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1249, file: !1234, line: 47, baseType: !1232, size: 64, offset: 512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1249, file: !1234, line: 48, baseType: !1258, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1249, file: !1234, line: 49, baseType: !2160, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1234, line: 49, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1249, file: !1234, line: 50, baseType: !860, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1233, file: !1234, line: 418, baseType: !2164, size: 64, offset: 1408)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1234, line: 53, size: 448, elements: !2166)
!2166 = !{!2167, !2168, !2173, !2177, !2181, !2185}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2165, file: !1234, line: 54, baseType: !1323, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2165, file: !1234, line: 55, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!1143, !2164, !2172, !668}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2165, file: !1234, line: 57, baseType: !2174, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!1143, !2164, !2172, !658, !842}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2165, file: !1234, line: 59, baseType: !2178, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !1232, !658}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2165, file: !1234, line: 60, baseType: !2182, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!12, !1232}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2165, file: !1234, line: 61, baseType: !2186, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !1232}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1233, file: !1234, line: 419, baseType: !658, size: 64, offset: 1472)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1233, file: !1234, line: 420, baseType: !658, size: 64, offset: 1536)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1233, file: !1234, line: 421, baseType: !1258, size: 64, offset: 1600)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1233, file: !1234, line: 424, baseType: !2193, size: 64, offset: 1664)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2195)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1234, line: 424, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1233, file: !1234, line: 425, baseType: !2197, size: 64, offset: 1728)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1233, file: !1234, line: 426, baseType: !29, size: 32, offset: 1792)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1233, file: !1234, line: 435, baseType: !447, size: 256, offset: 1856)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1233, file: !1234, line: 437, baseType: !2202, size: 64, offset: 2112)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2204, line: 69, size: 320, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2205 = !{!2206, !2207, !2208, !2225, !2227, !2231, !2232}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2203, file: !2204, line: 70, baseType: !658, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2203, file: !2204, line: 71, baseType: !1232, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2203, file: !2204, line: 72, baseType: !2209, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2204, line: 47, size: 256, elements: !2212)
!2212 = !{!2213, !2214, !2220, !2224}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !2204, line: 49, baseType: !29, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2211, file: !2204, line: 51, baseType: !2215, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!12, !658, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2211, file: !2204, line: 53, baseType: !2221, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!12, !668, !2218}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2211, file: !2204, line: 55, baseType: !1022, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2203, file: !2204, line: 73, baseType: !2226, size: 16, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2203, file: !2204, line: 74, baseType: !2228, size: 8, offset: 208)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !26, line: 16, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !28, line: 20, baseType: !2230)
!2230 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2203, file: !2204, line: 75, baseType: !215, size: 8, offset: 216)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !2204, line: 76, baseType: !2233, size: 64, offset: 256)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2203, file: !2204, line: 76, size: 64, elements: !2234)
!2234 = !{!2235, !2236, !2243}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2233, file: !2204, line: 77, baseType: !33, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2233, file: !2204, line: 78, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2204, line: 86, size: 128, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2239, file: !2204, line: 87, baseType: !29, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2239, file: !2204, line: 88, baseType: !668, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2233, file: !2204, line: 79, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2204, line: 92, size: 256, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2252, !2253}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2246, file: !2204, line: 94, baseType: !29, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2246, file: !2204, line: 95, baseType: !29, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2246, file: !2204, line: 96, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2246, file: !2204, line: 97, baseType: !2209, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2246, file: !2204, line: 98, baseType: !33, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1233, file: !1234, line: 438, baseType: !29, size: 32, offset: 2176)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1233, file: !1234, line: 441, baseType: !29, size: 32, offset: 2208)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1233, file: !1234, line: 442, baseType: !2193, size: 64, offset: 2240)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1233, file: !1234, line: 443, baseType: !2197, size: 64, offset: 2304)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1233, file: !1234, line: 444, baseType: !655, size: 8, offset: 2368)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1233, file: !1234, line: 451, baseType: !655, size: 8, offset: 2376)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1233, file: !1234, line: 454, baseType: !29, size: 32, offset: 2400)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1233, file: !1234, line: 455, baseType: !2262, size: 64, offset: 2432)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2264, line: 23, size: 96, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2265 = !{!2266, !2267, !2268}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2263, file: !2264, line: 24, baseType: !12, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2263, file: !2264, line: 24, baseType: !12, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2263, file: !2264, line: 24, baseType: !12, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1233, file: !1234, line: 458, baseType: !2270, size: 64, offset: 2496)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!12}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1233, file: !1234, line: 460, baseType: !2274, size: 4032, align: 512, offset: 2560)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 4032, elements: !2291)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1234, line: 362, size: 576, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2275, file: !1234, line: 363, baseType: !33, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2275, file: !1234, line: 364, baseType: !29, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2275, file: !1234, line: 367, baseType: !2280, size: 448, offset: 128)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1234, line: 319, size: 448, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2280, file: !1234, line: 320, baseType: !1232, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2280, file: !1234, line: 321, baseType: !2284, size: 384, offset: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2285, line: 40, size: 384, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2284, file: !2285, line: 41, baseType: !2288, size: 384, align: 64)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 384, align: 64, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 2)
!2291 = !{!2292}
!2292 = !DISubrange(count: 7)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1233, file: !1234, line: 463, baseType: !2294, size: 192, offset: 6592)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2295, line: 8, size: 192, elements: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2296 = !{!2297, !2298, !2300}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2294, file: !2295, line: 10, baseType: !29, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2294, file: !2295, line: 11, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2294, file: !2295, line: 12, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2303, line: 59, size: 48, elements: !2304)
!2303 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2304 = !{!2305, !2308, !2309, !2310, !2311, !2312}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2302, file: !2303, line: 60, baseType: !2306, size: 16)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !26, line: 18, baseType: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !28, line: 23, baseType: !624)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2302, file: !2303, line: 61, baseType: !2306, size: 16, offset: 16)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2302, file: !2303, line: 63, baseType: !29, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2302, file: !2303, line: 64, baseType: !29, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2302, file: !2303, line: 65, baseType: !29, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2302, file: !2303, line: 66, baseType: !29, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1233, file: !1234, line: 465, baseType: !22, size: 64, offset: 6784)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1233, file: !1234, line: 469, baseType: !29, size: 32, offset: 6848)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1233, file: !1234, line: 470, baseType: !100, size: 128, offset: 6912)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1233, file: !1234, line: 471, baseType: !2317, size: 64, offset: 7040)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2319, line: 33, size: 96, elements: !2320)
!2319 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2320 = !{!2321, !2322, !2323, !2324}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2318, file: !2319, line: 37, baseType: !12, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2318, file: !2319, line: 43, baseType: !12, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2318, file: !2319, line: 45, baseType: !66, size: 16, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !2319, line: 47, baseType: !66, size: 16, offset: 80)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1233, file: !1234, line: 476, baseType: !2326, size: 64, offset: 7104)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1234, line: 378, size: 256, elements: !2328)
!2328 = !{!2329, !2345, !2346, !2347}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2327, file: !1234, line: 379, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2332, line: 204, baseType: !2333)
!2332 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2332, line: 197, size: 192, elements: !2334)
!2334 = !{!2335, !2337, !2338, !2339, !2341, !2343}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2333, file: !2332, line: 198, baseType: !2336, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2332, line: 21, baseType: !27)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2333, file: !2332, line: 199, baseType: !217, size: 8, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2333, file: !2332, line: 200, baseType: !217, size: 8, offset: 40)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2333, file: !2332, line: 201, baseType: !2340, size: 16, offset: 48)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2332, line: 17, baseType: !65)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2333, file: !2332, line: 202, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2332, line: 16, baseType: !96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2333, file: !2332, line: 203, baseType: !2344, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2332, line: 22, baseType: !96)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2327, file: !1234, line: 380, baseType: !29, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2327, file: !1234, line: 381, baseType: !668, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2327, file: !1234, line: 382, baseType: !668, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1233, file: !1234, line: 477, baseType: !2327, size: 256, offset: 7168)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1233, file: !1234, line: 480, baseType: !2350, size: 64, offset: 7424)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1234, line: 480, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1233, file: !1234, line: 483, baseType: !2353, size: 64, offset: 7488)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1234, line: 483, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1233, file: !1234, line: 488, baseType: !668, size: 64, offset: 7552)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1233, file: !1234, line: 492, baseType: !33, size: 64, offset: 7616)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1233, file: !1234, line: 493, baseType: !29, size: 32, offset: 7680)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1233, file: !1234, line: 495, baseType: !33, size: 64, offset: 7744)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1233, file: !1234, line: 496, baseType: !29, size: 32, offset: 7808)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1233, file: !1234, line: 499, baseType: !29, size: 32, offset: 7840)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1233, file: !1234, line: 500, baseType: !2362, size: 64, offset: 7872)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2364, line: 45, baseType: !2365)
!2364 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1233, file: !1234, line: 503, baseType: !29, size: 32, offset: 7936)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1233, file: !1234, line: 504, baseType: !2368, size: 64, offset: 8000)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2371, line: 96, size: 192, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2372 = !{!2373, !2374, !2427, !2430}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2370, file: !2371, line: 97, baseType: !29, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2370, file: !2371, line: 98, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2371, line: 24, size: 3072, elements: !2377)
!2377 = !{!2378, !2380, !2381, !2382, !2383, !2396, !2397, !2398, !2399, !2411, !2412, !2413, !2424, !2425, !2426}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2376, file: !2371, line: 26, baseType: !2379, size: 128)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 128, elements: !2289)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2376, file: !2371, line: 27, baseType: !2379, size: 128, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2376, file: !2371, line: 28, baseType: !12, size: 32, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2376, file: !2371, line: 31, baseType: !400, size: 32, align: 512, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2376, file: !2371, line: 32, baseType: !2384, size: 960, offset: 576)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2385, line: 206, size: 960, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2386 = !{!2387, !2388, !2391, !2393, !2394, !2395}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2384, file: !2385, line: 207, baseType: !430, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2384, file: !2385, line: 208, baseType: !2389, size: 256, offset: 64)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, size: 256, elements: !507)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2384, file: !2385, line: 209, baseType: !2392, size: 256, offset: 320)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !507)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2384, file: !2385, line: 213, baseType: !920, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2384, file: !2385, line: 215, baseType: !922, size: 256, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !2385, line: 216, baseType: !215, size: 8, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2376, file: !2371, line: 33, baseType: !22, size: 64, offset: 1536)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2376, file: !2371, line: 34, baseType: !22, size: 64, offset: 1600)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2376, file: !2371, line: 35, baseType: !655, size: 8, offset: 1664)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2376, file: !2371, line: 36, baseType: !2400, size: 320, offset: 1728)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2401, line: 11, size: 320, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2402 = !{!2403, !2404, !2405, !2410}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2400, file: !2401, line: 16, baseType: !502, size: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2400, file: !2401, line: 17, baseType: !22, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2400, file: !2401, line: 18, baseType: !2406, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !2401, line: 19, baseType: !25, size: 32, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2376, file: !2371, line: 37, baseType: !790, size: 256, offset: 2048)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2376, file: !2371, line: 38, baseType: !427, size: 128, align: 64, offset: 2304)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2376, file: !2371, line: 39, baseType: !2414, size: 64, offset: 2432)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2371, line: 49, size: 768, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2415, file: !2371, line: 50, baseType: !400, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2415, file: !2371, line: 51, baseType: !2392, size: 256, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2415, file: !2371, line: 53, baseType: !2392, size: 256, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2415, file: !2371, line: 54, baseType: !22, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2415, file: !2371, line: 55, baseType: !2414, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2415, file: !2371, line: 56, baseType: !12, size: 32, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2415, file: !2371, line: 57, baseType: !12, size: 32, offset: 736)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2376, file: !2371, line: 40, baseType: !22, size: 64, offset: 2496)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2376, file: !2371, line: 42, baseType: !12, size: 32, offset: 2560)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2376, file: !2371, line: 43, baseType: !2369, size: 64, offset: 2624)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2370, file: !2371, line: 99, baseType: !2428, offset: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2429, line: 211, elements: !411)
!2429 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2370, file: !2371, line: 100, baseType: !2431, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2371, line: 63, size: 3008, elements: !2433)
!2433 = !{!2434, !2435, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2465}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2432, file: !2371, line: 64, baseType: !2414, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2432, file: !2371, line: 65, baseType: !2436, size: 192, offset: 64)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2414, size: 192, elements: !485)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2432, file: !2371, line: 67, baseType: !12, size: 32, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2432, file: !2371, line: 68, baseType: !447, size: 256, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2432, file: !2371, line: 69, baseType: !400, size: 32, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2432, file: !2371, line: 70, baseType: !447, size: 256, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2432, file: !2371, line: 71, baseType: !22, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2432, file: !2371, line: 72, baseType: !22, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2432, file: !2371, line: 73, baseType: !22, size: 64, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2432, file: !2371, line: 74, baseType: !22, size: 64, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2432, file: !2371, line: 75, baseType: !22, size: 64, offset: 1152)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2432, file: !2371, line: 76, baseType: !22, size: 64, offset: 1216)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2432, file: !2371, line: 77, baseType: !22, size: 64, offset: 1280)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2432, file: !2371, line: 78, baseType: !22, size: 64, offset: 1344)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2432, file: !2371, line: 79, baseType: !655, size: 8, offset: 1408)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2432, file: !2371, line: 80, baseType: !22, size: 64, offset: 1472)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2432, file: !2371, line: 81, baseType: !447, size: 256, offset: 1536)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2432, file: !2371, line: 82, baseType: !861, size: 256, offset: 1792)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2432, file: !2371, line: 84, baseType: !40, size: 32, offset: 2048)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2432, file: !2371, line: 87, baseType: !22, size: 64, offset: 2112)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2432, file: !2371, line: 88, baseType: !22, size: 64, offset: 2176)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2432, file: !2371, line: 89, baseType: !2457, size: 704, offset: 2240)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !791, line: 111, size: 704, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2464}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2457, file: !791, line: 112, baseType: !790, size: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2457, file: !791, line: 113, baseType: !2400, size: 320, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2457, file: !791, line: 116, baseType: !2462, size: 64, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !791, line: 18, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2457, file: !791, line: 117, baseType: !12, size: 32, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2432, file: !2371, line: 90, baseType: !2369, size: 64, offset: 2944)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1233, file: !1234, line: 515, baseType: !2467, size: 64, offset: 8064)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2469, line: 117, size: 128, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2470 = !{!2471, !2472, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2468, file: !2469, line: 118, baseType: !588, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2468, file: !2469, line: 119, baseType: !588, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2468, file: !2469, line: 120, baseType: !920, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1233, file: !1234, line: 516, baseType: !29, size: 32, offset: 8128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1233, file: !1234, line: 519, baseType: !29, size: 32, offset: 8160)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1233, file: !1234, line: 520, baseType: !2477, size: 64, offset: 8192)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1233, file: !1234, line: 523, baseType: !2479, size: 64, offset: 8256)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !1234, line: 523, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1233, file: !1234, line: 524, baseType: !29, size: 32, offset: 8320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1233, file: !1234, line: 525, baseType: !2484, size: 64, offset: 8384)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2487, line: 28, size: 192, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2488 = !{!2489, !2490, !2491}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2486, file: !2487, line: 29, baseType: !658, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2486, file: !2487, line: 30, baseType: !658, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2486, file: !2487, line: 31, baseType: !22, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1233, file: !1234, line: 526, baseType: !29, size: 32, offset: 8448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1233, file: !1234, line: 533, baseType: !33, size: 64, offset: 8512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1233, file: !1234, line: 534, baseType: !29, size: 32, offset: 8576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1233, file: !1234, line: 535, baseType: !2496, size: 64, offset: 8640)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1233, file: !1234, line: 536, baseType: !29, size: 32, offset: 8704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1233, file: !1234, line: 539, baseType: !12, size: 32, offset: 8736)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1233, file: !1234, line: 540, baseType: !2500, size: 64, offset: 8768)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2502, line: 32, size: 64, elements: !2503)
!2502 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2501, file: !2502, line: 33, baseType: !588, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2501, file: !2502, line: 34, baseType: !588, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1233, file: !1234, line: 563, baseType: !100, size: 128, offset: 8832)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1233, file: !1234, line: 565, baseType: !100, size: 128, offset: 8960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1233, file: !1234, line: 568, baseType: !2509, size: 64, offset: 9088)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1233, file: !1234, line: 570, baseType: !40, size: 32, offset: 9152)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1209, file: !420, line: 2382, baseType: !1208, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1209, file: !420, line: 2383, baseType: !498, size: 64, offset: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1209, file: !420, line: 2385, baseType: !2516, offset: 576)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2429, line: 206, elements: !411)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1209, file: !420, line: 2386, baseType: !2516, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1209, file: !420, line: 2387, baseType: !2516, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1209, file: !420, line: 2388, baseType: !2520, offset: 576)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, elements: !485)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1209, file: !420, line: 2390, baseType: !2516, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1209, file: !420, line: 2391, baseType: !2516, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1209, file: !420, line: 2392, baseType: !2516, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1209, file: !420, line: 2393, baseType: !2516, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1200, file: !420, line: 1197, baseType: !2526, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !420, line: 2057, size: 1664, elements: !2529)
!2529 = !{!2530, !2534, !2538, !2539, !2543, !2547, !2551, !2552, !2553, !2557, !2565, !2569, !2570, !2571, !2577, !2581, !2582, !2586, !2587, !2588, !2589, !2593, !2597, !2650, !2665, !2666}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2528, file: !420, line: 2058, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!991, !1199}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2528, file: !420, line: 2059, baseType: !2535, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !991}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2528, file: !420, line: 2060, baseType: !2535, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2528, file: !420, line: 2062, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !991, !12}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2528, file: !420, line: 2063, baseType: !2544, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!12, !991, !1686}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2528, file: !420, line: 2064, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!12, !991}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2528, file: !420, line: 2065, baseType: !2535, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2528, file: !420, line: 2066, baseType: !1228, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2528, file: !420, line: 2067, baseType: !2554, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!12, !1199, !12}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2528, file: !420, line: 2068, baseType: !2558, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!12, !1199, !2561}
!2561 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !420, line: 2052, baseType: !29, size: 32, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2564 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2528, file: !420, line: 2069, baseType: !2566, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!12, !1199}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2528, file: !420, line: 2070, baseType: !2558, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2528, file: !420, line: 2071, baseType: !2566, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2528, file: !420, line: 2072, baseType: !2572, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!12, !956, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !420, line: 62, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2528, file: !420, line: 2073, baseType: !2578, size: 64, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!12, !1199, !2299, !668}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2528, file: !420, line: 2074, baseType: !1228, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2528, file: !420, line: 2076, baseType: !2583, size: 64, offset: 1024)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!12, !2059, !956}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2528, file: !420, line: 2077, baseType: !2583, size: 64, offset: 1088)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2528, file: !420, line: 2078, baseType: !2583, size: 64, offset: 1152)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2528, file: !420, line: 2079, baseType: !2583, size: 64, offset: 1216)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2528, file: !420, line: 2081, baseType: !2590, size: 64, offset: 1280)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!1143, !1199, !12, !668, !842, !459}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2528, file: !420, line: 2082, baseType: !2594, size: 64, offset: 1344)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!1143, !1199, !12, !658, !842, !459}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2528, file: !420, line: 2083, baseType: !2598, size: 64, offset: 1408)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!2601, !991}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2604, line: 296, size: 1664, elements: !2605)
!2604 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2635, !2636, !2637}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2603, file: !2604, line: 297, baseType: !502, size: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2603, file: !2604, line: 298, baseType: !100, size: 128, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2603, file: !2604, line: 299, baseType: !100, size: 128, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2603, file: !2604, line: 300, baseType: !100, size: 128, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2603, file: !2604, line: 301, baseType: !447, size: 256, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2603, file: !2604, line: 302, baseType: !400, size: 32, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2603, file: !2604, line: 303, baseType: !40, size: 32, offset: 800)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2603, file: !2604, line: 304, baseType: !1199, size: 64, offset: 832)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2603, file: !2604, line: 305, baseType: !2615, size: 64, offset: 896)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2604, line: 68, size: 64, elements: !2616)
!2616 = !{!2617, !2629}
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2615, file: !2604, line: 69, baseType: !2618, size: 32)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2615, file: !2604, line: 69, size: 32, elements: !2619)
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2618, file: !2604, line: 70, baseType: !537, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2618, file: !2604, line: 71, baseType: !555, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2618, file: !2604, line: 72, baseType: !2623, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2624, line: 24, baseType: !2625)
!2624 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 22, size: 32, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2625, file: !2624, line: 23, baseType: !2628, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2624, line: 20, baseType: !543)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2615, file: !2604, line: 74, baseType: !2630, size: 32, offset: 32)
!2630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2604, line: 54, baseType: !29, size: 32, elements: !2631)
!2631 = !{!2632, !2633, !2634}
!2632 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2633 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2634 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2603, file: !2604, line: 306, baseType: !459, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2603, file: !2604, line: 307, baseType: !22, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2603, file: !2604, line: 308, baseType: !2638, size: 576, offset: 1088)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2604, line: 205, size: 576, elements: !2639)
!2639 = !{!2640, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2638, file: !2604, line: 206, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2604, line: 66, baseType: !113)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2638, file: !2604, line: 207, baseType: !2641, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2638, file: !2604, line: 208, baseType: !2641, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2638, file: !2604, line: 209, baseType: !2641, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2638, file: !2604, line: 210, baseType: !2641, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2638, file: !2604, line: 211, baseType: !2641, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2638, file: !2604, line: 212, baseType: !2641, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2638, file: !2604, line: 213, baseType: !612, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2638, file: !2604, line: 214, baseType: !612, size: 64, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2528, file: !420, line: 2085, baseType: !2651, size: 64, offset: 1472)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!920, !1199, !2654}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2656, line: 15, size: 256, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2657 = !{!2658, !2659, !2660, !2661, !2662}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2655, file: !2656, line: 16, baseType: !1195, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2655, file: !2656, line: 19, baseType: !12, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2655, file: !2656, line: 26, baseType: !22, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2655, file: !2656, line: 33, baseType: !22, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2655, file: !2656, line: 36, baseType: !2663, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !383, line: 33, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2528, file: !420, line: 2087, baseType: !2651, size: 64, offset: 1536)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2528, file: !420, line: 2089, baseType: !1228, size: 64, offset: 1600)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1200, file: !420, line: 1198, baseType: !2668, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2604, line: 324, size: 704, elements: !2671)
!2671 = !{!2672, !2676, !2680, !2684, !2685, !2686, !2687, !2688, !2693, !2698, !2702}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2670, file: !2604, line: 325, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!12, !2602}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2670, file: !2604, line: 326, baseType: !2677, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!2602, !1199, !12}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2670, file: !2604, line: 327, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2602}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2670, file: !2604, line: 328, baseType: !2673, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2670, file: !2604, line: 329, baseType: !2673, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2670, file: !2604, line: 330, baseType: !2673, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2670, file: !2604, line: 331, baseType: !2554, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2670, file: !2604, line: 334, baseType: !2689, size: 64, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2692, !991}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2670, file: !2604, line: 335, baseType: !2694, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!12, !991, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2670, file: !2604, line: 337, baseType: !2699, size: 64, offset: 576)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!12, !991, !2692}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2670, file: !2604, line: 339, baseType: !2703, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!12, !1199, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1200, file: !420, line: 1199, baseType: !2708, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2604, line: 430, size: 704, elements: !2711)
!2711 = !{!2712, !2716, !2717, !2721, !2722, !2723, !2738, !2761, !2765, !2766, !2789}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2710, file: !2604, line: 431, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!12, !1199, !12, !12, !1112}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2710, file: !2604, line: 432, baseType: !2554, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2710, file: !2604, line: 433, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!12, !1199, !29}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2710, file: !2604, line: 434, baseType: !2718, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2710, file: !2604, line: 435, baseType: !2554, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2710, file: !2604, line: 436, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!12, !1199, !12, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2604, line: 417, size: 256, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2728, file: !2604, line: 418, baseType: !12, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2728, file: !2604, line: 419, baseType: !29, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2728, file: !2604, line: 420, baseType: !29, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2728, file: !2604, line: 422, baseType: !29, size: 32, offset: 96)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2728, file: !2604, line: 423, baseType: !29, size: 32, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2728, file: !2604, line: 424, baseType: !29, size: 32, offset: 160)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2728, file: !2604, line: 425, baseType: !29, size: 32, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2728, file: !2604, line: 426, baseType: !29, size: 32, offset: 224)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2710, file: !2604, line: 437, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!12, !1199, !2615, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2604, line: 345, size: 960, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2743, file: !2604, line: 346, baseType: !12, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2743, file: !2604, line: 347, baseType: !95, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2743, file: !2604, line: 348, baseType: !95, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2743, file: !2604, line: 349, baseType: !95, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2743, file: !2604, line: 350, baseType: !95, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2743, file: !2604, line: 351, baseType: !95, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2743, file: !2604, line: 352, baseType: !95, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2743, file: !2604, line: 353, baseType: !111, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2743, file: !2604, line: 355, baseType: !111, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2743, file: !2604, line: 356, baseType: !12, size: 32, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2743, file: !2604, line: 357, baseType: !12, size: 32, offset: 608)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2743, file: !2604, line: 358, baseType: !95, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2743, file: !2604, line: 359, baseType: !95, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2743, file: !2604, line: 360, baseType: !95, size: 64, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2743, file: !2604, line: 361, baseType: !111, size: 64, offset: 832)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2743, file: !2604, line: 362, baseType: !12, size: 32, offset: 896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2710, file: !2604, line: 438, baseType: !2762, size: 64, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!12, !1199, !2706, !2742}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2710, file: !2604, line: 440, baseType: !2739, size: 64, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2710, file: !2604, line: 441, baseType: !2767, size: 64, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!12, !1199, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2604, line: 411, size: 1408, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2771, file: !2604, line: 412, baseType: !29, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2771, file: !2604, line: 413, baseType: !2775, size: 1344, offset: 64)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2776, size: 1344, elements: !485)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2604, line: 397, size: 448, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2788}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2776, file: !2604, line: 398, baseType: !29, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2776, file: !2604, line: 399, baseType: !29, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2776, file: !2604, line: 401, baseType: !29, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2776, file: !2604, line: 402, baseType: !29, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2776, file: !2604, line: 403, baseType: !29, size: 32, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2776, file: !2604, line: 404, baseType: !29, size: 32, offset: 160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2776, file: !2604, line: 405, baseType: !29, size: 32, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2776, file: !2604, line: 406, baseType: !97, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2776, file: !2604, line: 407, baseType: !2787, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !95)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2776, file: !2604, line: 408, baseType: !2787, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2710, file: !2604, line: 442, baseType: !2718, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1200, file: !420, line: 1200, baseType: !2791, size: 64, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !420, line: 54, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1200, file: !420, line: 1201, baseType: !22, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1200, file: !420, line: 1202, baseType: !22, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1200, file: !420, line: 1203, baseType: !22, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1200, file: !420, line: 1204, baseType: !956, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1200, file: !420, line: 1205, baseType: !596, size: 320, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1200, file: !420, line: 1206, baseType: !12, size: 32, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1200, file: !420, line: 1207, baseType: !40, size: 32, offset: 1248)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1200, file: !420, line: 1209, baseType: !33, size: 64, offset: 1280)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1200, file: !420, line: 1211, baseType: !2803, size: 64, offset: 1344)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !420, line: 1211, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1200, file: !420, line: 1223, baseType: !2808, size: 64, offset: 1408)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !968, line: 34, size: 64, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2808, file: !968, line: 35, baseType: !971, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1200, file: !420, line: 1224, baseType: !100, size: 128, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1200, file: !420, line: 1225, baseType: !2813, size: 64, offset: 1600)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2815, line: 40, size: 7424, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2816 = !{!2817, !2818, !2819, !3664, !3665, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3708, !3709}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2814, file: !2815, line: 41, baseType: !1809, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2814, file: !2815, line: 42, baseType: !1809, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2814, file: !2815, line: 43, baseType: !2820, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2822, line: 128, size: 4544, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!2823 = !{!2824, !2825, !2826, !2827, !2831, !2832, !2833, !2834, !2835, !3030, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3630, !3631, !3632, !3633, !3636, !3637, !3640, !3643, !3644, !3647, !3648, !3649, !3650}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2821, file: !2822, line: 133, baseType: !12, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2821, file: !2822, line: 134, baseType: !12, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2821, file: !2822, line: 135, baseType: !12, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2821, file: !2822, line: 137, baseType: !2828, size: 256, offset: 96)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2821, file: !2822, line: 139, baseType: !66, size: 16, offset: 352)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2821, file: !2822, line: 140, baseType: !66, size: 16, offset: 368)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2821, file: !2822, line: 142, baseType: !1190, size: 128, offset: 384)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2821, file: !2822, line: 143, baseType: !2813, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2821, file: !2822, line: 145, baseType: !2836, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !2822, line: 1388, size: 1152, elements: !2839)
!2839 = !{!2840, !2931, !2946, !2951, !2955, !2959, !2960, !2964, !2965, !2971, !2975, !2976, !2980, !3006, !3011, !3021, !3022, !3026}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2838, file: !2822, line: 1389, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2815, line: 265, size: 960, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2851, !2852, !2853, !2855, !2856, !2863, !2865, !2868, !2869, !2872, !2876, !2877, !2879, !2880, !2881, !2882, !2884, !2929}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2845, file: !2815, line: 266, baseType: !2844, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2845, file: !2815, line: 267, baseType: !2813, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2845, file: !2815, line: 268, baseType: !2850, size: 32, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2815, line: 256, baseType: !27)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2845, file: !2815, line: 271, baseType: !66, size: 16, offset: 160)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2845, file: !2815, line: 272, baseType: !66, size: 16, offset: 176)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2845, file: !2815, line: 273, baseType: !2854, size: 8, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2815, line: 97, baseType: !215)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2845, file: !2815, line: 274, baseType: !40, size: 32, offset: 224)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2845, file: !2815, line: 276, baseType: !2857, size: 160, align: 32, offset: 256)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1891, line: 77, size: 160, align: 32, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2857, file: !1891, line: 78, baseType: !1809, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2857, file: !1891, line: 80, baseType: !29, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2857, file: !1891, line: 82, baseType: !29, size: 32, offset: 96)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2857, file: !1891, line: 84, baseType: !29, size: 32, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2845, file: !2815, line: 278, baseType: !2864, size: 32, offset: 416)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2815, line: 258, baseType: !29)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2845, file: !2815, line: 279, baseType: !2866, size: 64, offset: 448)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2815, line: 20, baseType: !2842)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2845, file: !2815, line: 280, baseType: !33, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2845, file: !2815, line: 288, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2815, line: 288, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2845, file: !2815, line: 289, baseType: !2873, size: 64, offset: 640)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2815, line: 228, size: 64, elements: !2874)
!2874 = !{!2875}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2873, file: !2815, line: 229, baseType: !95, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2845, file: !2815, line: 291, baseType: !95, size: 64, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !2845, file: !2815, line: 299, baseType: !2878, offset: 768)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2845, file: !2815, line: 299, elements: !411)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2845, file: !2815, line: 305, baseType: !66, size: 16, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2845, file: !2815, line: 311, baseType: !66, size: 16, offset: 784)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2845, file: !2815, line: 313, baseType: !40, size: 32, offset: 800)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2845, file: !2815, line: 315, baseType: !2883, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2845, file: !2815, line: 317, baseType: !2885, size: 64, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2887, line: 678, size: 1984, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2888 = !{!2889, !2893, !2894, !2897, !2918, !2919, !2920, !2921, !2926, !2927, !2928}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2886, file: !2887, line: 679, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2892, line: 11, flags: DIFlagFwdDecl)
!2892 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2886, file: !2887, line: 680, baseType: !29, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2886, file: !2887, line: 685, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2887, line: 685, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2886, file: !2887, line: 687, baseType: !2898, size: 576, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2899, line: 26, baseType: !2900)
!2899 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2899, line: 16, size: 576, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2912, !2917}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !2899, line: 17, baseType: !400, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2900, file: !2899, line: 18, baseType: !12, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2900, file: !2899, line: 19, baseType: !12, size: 32, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2900, file: !2899, line: 20, baseType: !1800, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2900, file: !2899, line: 22, baseType: !33, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2900, file: !2899, line: 23, baseType: !2908, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2899, line: 13, baseType: !2910)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!33, !1195, !33}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2900, file: !2899, line: 24, baseType: !2913, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2899, line: 14, baseType: !2915)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !33, !33}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2900, file: !2899, line: 25, baseType: !511, size: 192, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2886, file: !2887, line: 688, baseType: !2898, size: 576, offset: 768)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2886, file: !2887, line: 694, baseType: !29, size: 32, offset: 1344)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2886, file: !2887, line: 699, baseType: !400, size: 32, offset: 1376)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2886, file: !2887, line: 700, baseType: !2922, size: 128, offset: 1408)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2887, line: 550, size: 128, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2922, file: !2887, line: 551, baseType: !2844, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2922, file: !2887, line: 552, baseType: !2844, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2886, file: !2887, line: 701, baseType: !790, size: 256, offset: 1536)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2886, file: !2887, line: 702, baseType: !2462, size: 64, offset: 1792)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2886, file: !2887, line: 707, baseType: !502, size: 128, offset: 1856)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2845, file: !2815, line: 324, baseType: !2930, offset: 960)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, elements: !526)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2838, file: !2822, line: 1390, baseType: !2932, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!12, !2844, !2935, !29}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !2822, line: 1559, size: 192, elements: !2937)
!2937 = !{!2938, !2941, !2942}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2936, file: !2822, line: 1560, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !2822, line: 32, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2936, file: !2822, line: 1561, baseType: !655, size: 8, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2936, file: !2822, line: 1562, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2935}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2838, file: !2822, line: 1392, baseType: !2947, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!12, !2820, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !2822, line: 115, baseType: !29)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2838, file: !2822, line: 1393, baseType: !2952, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2820}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2838, file: !2822, line: 1394, baseType: !2956, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!12, !2813, !2950, !29, !22}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2838, file: !2822, line: 1396, baseType: !2956, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2838, file: !2822, line: 1398, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!29, !2820, !29}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2838, file: !2822, line: 1400, baseType: !2952, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2838, file: !2822, line: 1401, baseType: !2966, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!12, !2813, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !420, line: 56, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2838, file: !2822, line: 1402, baseType: !2972, size: 64, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!12, !2813, !655}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2838, file: !2822, line: 1403, baseType: !2952, size: 64, offset: 640)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2838, file: !2822, line: 1405, baseType: !2977, size: 64, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2813, !22}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2838, file: !2822, line: 1406, baseType: !2981, size: 64, offset: 768)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!12, !2820, !1809, !29, !2984, !33}
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !2822, line: 342, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!12, !2988, !29, !33}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2990, line: 106, size: 512, elements: !2991)
!2990 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3001, !3002}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2989, file: !2990, line: 107, baseType: !96, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2989, file: !2990, line: 108, baseType: !96, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2989, file: !2990, line: 109, baseType: !96, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2989, file: !2990, line: 110, baseType: !216, size: 8, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2989, file: !2990, line: 111, baseType: !216, size: 8, offset: 200)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2989, file: !2990, line: 112, baseType: !216, size: 8, offset: 208)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2989, file: !2990, line: 113, baseType: !216, size: 8, offset: 216)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2989, file: !2990, line: 114, baseType: !3000, size: 32, offset: 224)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 32, elements: !507)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2989, file: !2990, line: 115, baseType: !96, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2989, file: !2990, line: 116, baseType: !3003, size: 192, offset: 320)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 192, elements: !3004)
!3004 = !{!3005}
!3005 = !DISubrange(count: 24)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2838, file: !2822, line: 1408, baseType: !3007, size: 64, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!668, !2820, !3010}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2838, file: !2822, line: 1410, baseType: !3012, size: 64, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!12, !2820, !3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !2822, line: 1381, baseType: !29, size: 32, elements: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!3019 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!3020 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2838, file: !2822, line: 1412, baseType: !1232, size: 64, offset: 960)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2838, file: !2822, line: 1413, baseType: !3023, size: 64, offset: 1024)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3025)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !2822, line: 37, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2838, file: !2822, line: 1420, baseType: !3027, size: 64, offset: 1088)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!12, !2820, !1939}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2821, file: !2822, line: 146, baseType: !3031, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2822, line: 391, size: 7296, elements: !3033)
!3033 = !{!3034, !3035, !3038, !3039, !3042, !3045, !3046, !3050, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3476, !3477, !3478, !3479, !3480, !3481, !3523, !3524, !3525, !3528, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3547, !3548, !3549, !3550, !3551, !3552}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !3032, file: !2822, line: 392, baseType: !2939, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !3032, file: !2822, line: 393, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !2822, line: 30, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !3032, file: !2822, line: 395, baseType: !1441, size: 128, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3032, file: !2822, line: 397, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !2822, line: 39, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !3032, file: !2822, line: 398, baseType: !3043, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !2822, line: 38, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !3032, file: !2822, line: 399, baseType: !447, size: 256, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !3032, file: !2822, line: 401, baseType: !3047, size: 64, offset: 640)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3049)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !2822, line: 401, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !3032, file: !2822, line: 404, baseType: !3051, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !2822, line: 404, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3032, file: !2822, line: 406, baseType: !29, size: 32, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !3032, file: !2822, line: 409, baseType: !1190, size: 128, offset: 832)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3032, file: !2822, line: 410, baseType: !29, size: 32, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !3032, file: !2822, line: 416, baseType: !33, size: 64, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !3032, file: !2822, line: 421, baseType: !22, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !3032, file: !2822, line: 426, baseType: !40, size: 32, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3032, file: !2822, line: 432, baseType: !12, size: 32, offset: 1184)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3032, file: !2822, line: 434, baseType: !400, size: 32, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !3032, file: !2822, line: 436, baseType: !2820, size: 64, offset: 1280)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !3032, file: !2822, line: 438, baseType: !35, size: 32, offset: 1344)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !3032, file: !2822, line: 443, baseType: !1258, size: 64, offset: 1408)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3032, file: !2822, line: 450, baseType: !3065, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !3067, line: 705, size: 5824, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!3068 = !{!3069, !3070, !3071, !3074, !3075, !3128, !3204, !3205, !3206, !3207, !3208, !3221, !3327, !3340, !3350, !3354, !3356, !3357, !3358, !3362, !3369, !3370, !3373, !3376, !3380, !3383, !3384, !3385, !3386, !3387, !3388, !3418, !3419, !3420, !3423, !3426, !3454, !3461, !3462, !3463, !3464, !3465}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3066, file: !3067, line: 706, baseType: !1252, size: 512)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3066, file: !3067, line: 707, baseType: !3065, size: 64, offset: 512)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3066, file: !3067, line: 709, baseType: !3072, size: 64, offset: 576)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !3067, line: 37, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3066, file: !3067, line: 711, baseType: !658, size: 64, offset: 640)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3066, file: !3067, line: 712, baseType: !3076, size: 64, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3078)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !3067, line: 89, size: 384, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3088, !3092, !3096}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3078, file: !3067, line: 90, baseType: !658, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3078, file: !3067, line: 91, baseType: !1332, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3078, file: !3067, line: 92, baseType: !3083, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!12, !3086, !1288}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3078, file: !3067, line: 93, baseType: !3089, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!668, !3086, !3010, !886, !887}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3078, file: !3067, line: 95, baseType: !3093, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3065}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3078, file: !3067, line: 97, baseType: !3097, size: 64, offset: 320)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3100, line: 286, size: 1472, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!3101 = !{!3102, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3099, file: !3100, line: 287, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!12, !3065}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3099, file: !3100, line: 288, baseType: !3093, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3099, file: !3100, line: 289, baseType: !3103, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3099, file: !3100, line: 290, baseType: !3103, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3099, file: !3100, line: 291, baseType: !3103, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3099, file: !3100, line: 292, baseType: !3103, size: 64, offset: 320)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3099, file: !3100, line: 293, baseType: !3103, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3099, file: !3100, line: 294, baseType: !3103, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3099, file: !3100, line: 295, baseType: !3103, size: 64, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3099, file: !3100, line: 296, baseType: !3103, size: 64, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3099, file: !3100, line: 297, baseType: !3103, size: 64, offset: 640)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3099, file: !3100, line: 298, baseType: !3103, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3099, file: !3100, line: 299, baseType: !3103, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3099, file: !3100, line: 300, baseType: !3103, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3099, file: !3100, line: 301, baseType: !3103, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3099, file: !3100, line: 302, baseType: !3103, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3099, file: !3100, line: 303, baseType: !3103, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3099, file: !3100, line: 304, baseType: !3103, size: 64, offset: 1088)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3099, file: !3100, line: 305, baseType: !3103, size: 64, offset: 1152)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3099, file: !3100, line: 306, baseType: !3103, size: 64, offset: 1216)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3099, file: !3100, line: 307, baseType: !3103, size: 64, offset: 1280)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3099, file: !3100, line: 308, baseType: !3103, size: 64, offset: 1344)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3099, file: !3100, line: 309, baseType: !3103, size: 64, offset: 1408)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3066, file: !3067, line: 714, baseType: !3129, size: 64, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3132, line: 80, size: 1344, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3203}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3131, file: !3132, line: 81, baseType: !658, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3131, file: !3132, line: 82, baseType: !658, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3131, file: !3132, line: 83, baseType: !1332, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3131, file: !3132, line: 84, baseType: !1332, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3131, file: !3132, line: 85, baseType: !1332, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3131, file: !3132, line: 87, baseType: !3140, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!12, !3065, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3145, line: 96, size: 1152, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3158, !3162, !3166, !3167, !3168, !3169, !3170, !3178, !3179, !3180, !3181, !3182, !3183}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3144, file: !3145, line: 97, baseType: !658, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3144, file: !3145, line: 98, baseType: !3129, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3144, file: !3145, line: 100, baseType: !1232, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3144, file: !3145, line: 101, baseType: !658, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3144, file: !3145, line: 103, baseType: !655, size: 8, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3144, file: !3145, line: 104, baseType: !3153, size: 32, offset: 288)
!3153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3145, line: 45, baseType: !29, size: 32, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!3156 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!3157 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3144, file: !3145, line: 106, baseType: !3159, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3145, line: 106, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3144, file: !3145, line: 107, baseType: !3163, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3165)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3145, line: 107, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3144, file: !3145, line: 109, baseType: !3103, size: 64, offset: 448)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3144, file: !3145, line: 110, baseType: !3093, size: 64, offset: 512)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3144, file: !3145, line: 111, baseType: !3103, size: 64, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3144, file: !3145, line: 112, baseType: !3093, size: 64, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3144, file: !3145, line: 113, baseType: !3171, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!12, !3065, !3174}
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3100, line: 60, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3100, line: 58, size: 32, elements: !3176)
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3175, file: !3100, line: 59, baseType: !12, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3144, file: !3145, line: 114, baseType: !3103, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3144, file: !3145, line: 115, baseType: !1332, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3144, file: !3145, line: 116, baseType: !1332, size: 64, offset: 896)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3144, file: !3145, line: 118, baseType: !3097, size: 64, offset: 960)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3144, file: !3145, line: 119, baseType: !3093, size: 64, offset: 1024)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3144, file: !3145, line: 121, baseType: !3184, size: 64, offset: 1088)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3145, line: 121, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3131, file: !3132, line: 88, baseType: !3083, size: 64, offset: 384)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3131, file: !3132, line: 89, baseType: !3103, size: 64, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3131, file: !3132, line: 90, baseType: !3093, size: 64, offset: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3131, file: !3132, line: 91, baseType: !3093, size: 64, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3131, file: !3132, line: 92, baseType: !3093, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3131, file: !3132, line: 94, baseType: !3103, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3131, file: !3132, line: 95, baseType: !3103, size: 64, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3131, file: !3132, line: 97, baseType: !3171, size: 64, offset: 832)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3131, file: !3132, line: 98, baseType: !3103, size: 64, offset: 896)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3131, file: !3132, line: 100, baseType: !3103, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3131, file: !3132, line: 102, baseType: !3103, size: 64, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3131, file: !3132, line: 103, baseType: !3093, size: 64, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3131, file: !3132, line: 105, baseType: !3097, size: 64, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3131, file: !3132, line: 107, baseType: !3200, size: 64, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3132, line: 107, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3131, file: !3132, line: 109, baseType: !655, size: 8, offset: 1280)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3066, file: !3067, line: 715, baseType: !3143, size: 64, offset: 832)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3066, file: !3067, line: 717, baseType: !33, size: 64, offset: 896)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3066, file: !3067, line: 719, baseType: !33, size: 64, offset: 960)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3066, file: !3067, line: 721, baseType: !447, size: 256, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3066, file: !3067, line: 725, baseType: !3209, size: 448, offset: 1280)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !3067, line: 517, size: 448, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3209, file: !3067, line: 518, baseType: !100, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3209, file: !3067, line: 519, baseType: !100, size: 128, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3209, file: !3067, line: 520, baseType: !100, size: 128, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3209, file: !3067, line: 521, baseType: !3215, size: 32, offset: 384)
!3215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !3067, line: 487, baseType: !29, size: 32, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!3218 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!3219 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!3220 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3066, file: !3067, line: 726, baseType: !3222, size: 2496, offset: 1728)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3100, line: 663, size: 2496, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3299, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3320, !3324}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3222, file: !3100, line: 664, baseType: !3174, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3222, file: !3100, line: 665, baseType: !29, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3222, file: !3100, line: 666, baseType: !29, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3222, file: !3100, line: 667, baseType: !655, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3222, file: !3100, line: 668, baseType: !655, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3222, file: !3100, line: 669, baseType: !655, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3222, file: !3100, line: 670, baseType: !655, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3222, file: !3100, line: 671, baseType: !655, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3222, file: !3100, line: 672, baseType: !655, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3222, file: !3100, line: 673, baseType: !655, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3222, file: !3100, line: 674, baseType: !655, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3222, file: !3100, line: 675, baseType: !25, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3222, file: !3100, line: 676, baseType: !400, size: 32, offset: 96)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3222, file: !3100, line: 678, baseType: !100, size: 128, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3222, file: !3100, line: 679, baseType: !861, size: 256, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3222, file: !3100, line: 680, baseType: !3240, size: 64, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3242, line: 43, size: 1536, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3241, file: !3242, line: 44, baseType: !658, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3241, file: !3242, line: 45, baseType: !12, size: 32, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3241, file: !3242, line: 46, baseType: !100, size: 128, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3241, file: !3242, line: 47, baseType: !400, size: 32, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3241, file: !3242, line: 48, baseType: !3249, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3100, line: 629, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3241, file: !3242, line: 49, baseType: !2400, size: 320, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3241, file: !3242, line: 50, baseType: !22, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3241, file: !3242, line: 51, baseType: !177, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3241, file: !3242, line: 52, baseType: !177, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3241, file: !3242, line: 53, baseType: !177, size: 64, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3241, file: !3242, line: 54, baseType: !177, size: 64, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3241, file: !3242, line: 55, baseType: !177, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3241, file: !3242, line: 56, baseType: !22, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3241, file: !3242, line: 57, baseType: !22, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3241, file: !3242, line: 58, baseType: !22, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3241, file: !3242, line: 59, baseType: !22, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3241, file: !3242, line: 60, baseType: !22, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3241, file: !3242, line: 61, baseType: !3065, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3241, file: !3242, line: 62, baseType: !655, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3241, file: !3242, line: 63, baseType: !655, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3222, file: !3100, line: 681, baseType: !655, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3222, file: !3100, line: 682, baseType: !655, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3222, file: !3100, line: 683, baseType: !655, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3222, file: !3100, line: 684, baseType: !29, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3222, file: !3100, line: 685, baseType: !29, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3222, file: !3100, line: 690, baseType: !168, size: 512, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3222, file: !3100, line: 691, baseType: !95, size: 64, offset: 1152)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3222, file: !3100, line: 692, baseType: !790, size: 256, offset: 1216)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3222, file: !3100, line: 693, baseType: !511, size: 192, offset: 1472)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3222, file: !3100, line: 694, baseType: !3249, size: 64, offset: 1664)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3222, file: !3100, line: 695, baseType: !40, size: 32, offset: 1728)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3222, file: !3100, line: 696, baseType: !40, size: 32, offset: 1760)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3222, file: !3100, line: 697, baseType: !29, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3222, file: !3100, line: 698, baseType: !29, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3222, file: !3100, line: 699, baseType: !29, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3222, file: !3100, line: 700, baseType: !29, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3222, file: !3100, line: 701, baseType: !29, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3222, file: !3100, line: 702, baseType: !29, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3222, file: !3100, line: 703, baseType: !655, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3222, file: !3100, line: 704, baseType: !29, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3222, file: !3100, line: 705, baseType: !29, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3222, file: !3100, line: 706, baseType: !29, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3222, file: !3100, line: 707, baseType: !29, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3222, file: !3100, line: 708, baseType: !29, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3222, file: !3100, line: 709, baseType: !29, size: 32, offset: 1824)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3222, file: !3100, line: 710, baseType: !3292, size: 32, offset: 1856)
!3292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3100, line: 620, baseType: !29, size: 32, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298}
!3294 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!3295 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!3296 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!3297 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!3298 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3222, file: !3100, line: 711, baseType: !3300, size: 32, offset: 1888)
!3300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3100, line: 597, baseType: !12, size: 32, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306}
!3302 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!3303 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!3304 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!3305 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!3306 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3222, file: !3100, line: 712, baseType: !3300, size: 32, offset: 1920)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3222, file: !3100, line: 713, baseType: !12, size: 32, offset: 1952)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3222, file: !3100, line: 714, baseType: !12, size: 32, offset: 1984)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3222, file: !3100, line: 715, baseType: !95, size: 64, offset: 2048)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3222, file: !3100, line: 716, baseType: !95, size: 64, offset: 2112)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3222, file: !3100, line: 717, baseType: !95, size: 64, offset: 2176)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3222, file: !3100, line: 718, baseType: !95, size: 64, offset: 2240)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3222, file: !3100, line: 720, baseType: !3315, size: 64, offset: 2304)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3100, line: 632, size: 64, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !3100, line: 633, baseType: !400, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3316, file: !3100, line: 634, baseType: !29, size: 32, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3222, file: !3100, line: 721, baseType: !3321, size: 64, offset: 2368)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !3065, !588}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3222, file: !3100, line: 722, baseType: !3325, size: 64, offset: 2432)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3100, line: 722, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3066, file: !3067, line: 727, baseType: !3328, size: 64, offset: 4224)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3100, line: 742, size: 1792, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3337, !3338, !3339}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3329, file: !3100, line: 743, baseType: !3099, size: 1472)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3329, file: !3100, line: 744, baseType: !3103, size: 64, offset: 1472)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3329, file: !3100, line: 745, baseType: !3334, size: 64, offset: 1536)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3065, !655}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3329, file: !3100, line: 746, baseType: !3103, size: 64, offset: 1600)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3329, file: !3100, line: 747, baseType: !3093, size: 64, offset: 1664)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3329, file: !3100, line: 748, baseType: !3093, size: 64, offset: 1728)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3066, file: !3067, line: 736, baseType: !3341, size: 128, offset: 4288)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !3067, line: 529, size: 128, elements: !3342)
!3342 = !{!3343, !3347}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3341, file: !3067, line: 531, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3346, line: 13, flags: DIFlagFwdDecl)
!3346 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3341, file: !3067, line: 532, baseType: !3348, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !3067, line: 49, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3066, file: !3067, line: 738, baseType: !3351, size: 64, offset: 4416)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3353)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3067, line: 738, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3066, file: !3067, line: 740, baseType: !3355, size: 64, offset: 4480)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3066, file: !3067, line: 741, baseType: !95, size: 64, offset: 4544)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3066, file: !3067, line: 746, baseType: !95, size: 64, offset: 4608)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3066, file: !3067, line: 747, baseType: !3359, size: 64, offset: 4672)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3361)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3067, line: 747, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3066, file: !3067, line: 749, baseType: !3363, size: 64, offset: 4736)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !3067, line: 428, size: 128, elements: !3365)
!3365 = !{!3366, !3367, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3364, file: !3067, line: 433, baseType: !29, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3364, file: !3067, line: 434, baseType: !29, size: 32, offset: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3364, file: !3067, line: 435, baseType: !22, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3066, file: !3067, line: 751, baseType: !100, size: 128, offset: 4800)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3066, file: !3067, line: 762, baseType: !3371, size: 64, offset: 4928)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !3067, line: 762, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3066, file: !3067, line: 770, baseType: !3374, offset: 4992)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3375, line: 5, elements: !411)
!3375 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3066, file: !3067, line: 772, baseType: !3377, size: 64, offset: 4992)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3379, line: 18, flags: DIFlagFwdDecl)
!3379 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3066, file: !3067, line: 773, baseType: !3381, size: 64, offset: 5056)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3132, line: 22, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3066, file: !3067, line: 776, baseType: !12, size: 32, offset: 5120)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3066, file: !3067, line: 778, baseType: !1065, size: 32, offset: 5152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3066, file: !3067, line: 779, baseType: !25, size: 32, offset: 5184)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3066, file: !3067, line: 781, baseType: !400, size: 32, offset: 5216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3066, file: !3067, line: 782, baseType: !100, size: 128, offset: 5248)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3066, file: !3067, line: 784, baseType: !3389, size: 64, offset: 5376)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3392, line: 52, size: 768, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3402, !3406, !3407, !3408, !3409, !3413, !3417}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3391, file: !3392, line: 53, baseType: !658, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3391, file: !3392, line: 55, baseType: !1332, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3391, file: !3392, line: 56, baseType: !1332, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3391, file: !3392, line: 58, baseType: !3083, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3391, file: !3392, line: 59, baseType: !3399, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!668, !3086, !3010}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3391, file: !3392, line: 61, baseType: !3403, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3389}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3391, file: !3392, line: 62, baseType: !3093, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3391, file: !3392, line: 64, baseType: !3103, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3391, file: !3392, line: 66, baseType: !1973, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3391, file: !3392, line: 67, baseType: !3410, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!1996, !3086}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3391, file: !3392, line: 69, baseType: !3414, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3086, !886, !887}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3391, file: !3392, line: 71, baseType: !3097, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3066, file: !3067, line: 785, baseType: !1332, size: 64, offset: 5440)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3066, file: !3067, line: 787, baseType: !3093, size: 64, offset: 5504)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3066, file: !3067, line: 788, baseType: !3421, size: 64, offset: 5568)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !3067, line: 46, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3066, file: !3067, line: 789, baseType: !3424, size: 64, offset: 5632)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !3067, line: 48, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3066, file: !3067, line: 791, baseType: !3427, size: 64, offset: 5696)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !3067, line: 597, size: 128, elements: !3429)
!3429 = !{!3430, !3440, !3446, !3452, !3453}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3428, file: !3067, line: 598, baseType: !3431, size: 32)
!3431 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !3067, line: 547, baseType: !29, size: 32, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3433 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3434 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3435 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3436 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3437 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3438 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3439 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3428, file: !3067, line: 599, baseType: !3441, size: 32, offset: 32)
!3441 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !3067, line: 564, baseType: !29, size: 32, elements: !3442)
!3442 = !{!3443, !3444, !3445}
!3443 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3444 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3445 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3428, file: !3067, line: 600, baseType: !3447, size: 32, offset: 64)
!3447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !3067, line: 577, baseType: !29, size: 32, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3450 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3451 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3428, file: !3067, line: 601, baseType: !655, size: 8, offset: 96)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3428, file: !3067, line: 602, baseType: !655, size: 8, offset: 104)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3066, file: !3067, line: 793, baseType: !3455, size: 32, offset: 5760)
!3455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !3067, line: 503, baseType: !29, size: 32, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3458 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3459 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3460 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3066, file: !3067, line: 795, baseType: !655, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3066, file: !3067, line: 796, baseType: !655, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3066, file: !3067, line: 797, baseType: !655, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3066, file: !3067, line: 798, baseType: !655, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3066, file: !3067, line: 799, baseType: !655, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !3032, file: !2822, line: 451, baseType: !3300, size: 32, offset: 1536)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !3032, file: !2822, line: 457, baseType: !22, size: 64, offset: 1600)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !3032, file: !2822, line: 459, baseType: !29, size: 32, offset: 1664)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !3032, file: !2822, line: 466, baseType: !29, size: 32, offset: 1696)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3032, file: !2822, line: 468, baseType: !2400, size: 320, offset: 1728)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !3032, file: !2822, line: 469, baseType: !790, size: 256, offset: 2048)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !3032, file: !2822, line: 471, baseType: !40, size: 32, offset: 2304)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !3032, file: !2822, line: 473, baseType: !3474, size: 64, offset: 2368)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !2822, line: 473, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3032, file: !2822, line: 475, baseType: !100, size: 128, offset: 2432)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !3032, file: !2822, line: 477, baseType: !332, size: 64, offset: 2560)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !3032, file: !2822, line: 478, baseType: !2870, size: 64, offset: 2624)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !3032, file: !2822, line: 479, baseType: !100, size: 128, offset: 2688)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !3032, file: !2822, line: 480, baseType: !447, size: 256, offset: 2816)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !3032, file: !2822, line: 483, baseType: !3482, size: 960, offset: 3072)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !2822, line: 300, size: 960, elements: !3483)
!3483 = !{!3484, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3522}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3482, file: !2822, line: 301, baseType: !3485, size: 32)
!3485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !2822, line: 295, baseType: !29, size: 32, elements: !3486)
!3486 = !{!3487, !3488}
!3487 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!3488 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3482, file: !2822, line: 302, baseType: !22, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3482, file: !2822, line: 303, baseType: !22, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3482, file: !2822, line: 305, baseType: !29, size: 32, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3482, file: !2822, line: 306, baseType: !29, size: 32, offset: 224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3482, file: !2822, line: 307, baseType: !29, size: 32, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3482, file: !2822, line: 308, baseType: !29, size: 32, offset: 288)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3482, file: !2822, line: 309, baseType: !29, size: 32, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3482, file: !2822, line: 310, baseType: !29, size: 32, offset: 352)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3482, file: !2822, line: 311, baseType: !29, size: 32, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3482, file: !2822, line: 312, baseType: !29, size: 32, offset: 416)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3482, file: !2822, line: 313, baseType: !29, size: 32, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3482, file: !2822, line: 314, baseType: !29, size: 32, offset: 480)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3482, file: !2822, line: 315, baseType: !29, size: 32, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3482, file: !2822, line: 316, baseType: !29, size: 32, offset: 544)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3482, file: !2822, line: 317, baseType: !29, size: 32, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3482, file: !2822, line: 318, baseType: !29, size: 32, offset: 608)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3482, file: !2822, line: 319, baseType: !29, size: 32, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3482, file: !2822, line: 320, baseType: !29, size: 32, offset: 672)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3482, file: !2822, line: 321, baseType: !29, size: 32, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3482, file: !2822, line: 322, baseType: !29, size: 32, offset: 736)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3482, file: !2822, line: 323, baseType: !29, size: 32, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3482, file: !2822, line: 325, baseType: !66, size: 16, offset: 800)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3482, file: !2822, line: 326, baseType: !66, size: 16, offset: 816)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3482, file: !2822, line: 327, baseType: !66, size: 16, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3482, file: !2822, line: 329, baseType: !217, size: 8, offset: 848)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3482, file: !2822, line: 330, baseType: !217, size: 8, offset: 856)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3482, file: !2822, line: 331, baseType: !217, size: 8, offset: 864)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3482, file: !2822, line: 332, baseType: !3517, size: 32, offset: 896)
!3517 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !2822, line: 285, baseType: !29, size: 32, elements: !3518)
!3518 = !{!3519, !3520, !3521}
!3519 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!3520 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!3521 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3482, file: !2822, line: 339, baseType: !29, size: 32, offset: 928)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !3032, file: !2822, line: 485, baseType: !29, size: 32, offset: 4032)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3032, file: !2822, line: 487, baseType: !12, size: 32, offset: 4064)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !3032, file: !2822, line: 489, baseType: !3526, size: 64, offset: 4096)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !2822, line: 31, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !3032, file: !2822, line: 494, baseType: !3529, size: 64, offset: 4160)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !2822, line: 35, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !3032, file: !2822, line: 495, baseType: !100, size: 128, offset: 4224)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !3032, file: !2822, line: 497, baseType: !100, size: 128, offset: 4352)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !3032, file: !2822, line: 498, baseType: !400, size: 32, offset: 4480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !3032, file: !2822, line: 499, baseType: !2457, size: 704, offset: 4544)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !3032, file: !2822, line: 501, baseType: !447, size: 256, offset: 5248)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !3032, file: !2822, line: 502, baseType: !447, size: 256, offset: 5504)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !3032, file: !2822, line: 508, baseType: !100, size: 128, offset: 5760)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !3032, file: !2822, line: 509, baseType: !400, size: 32, offset: 5888)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !3032, file: !2822, line: 511, baseType: !12, size: 32, offset: 5920)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3032, file: !2822, line: 517, baseType: !427, size: 128, align: 64, offset: 5952)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !3032, file: !2822, line: 518, baseType: !511, size: 192, offset: 6080)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !3032, file: !2822, line: 523, baseType: !447, size: 256, offset: 6272)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !3032, file: !2822, line: 525, baseType: !12, size: 32, offset: 6528)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !3032, file: !2822, line: 527, baseType: !3545, size: 64, offset: 6592)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !2822, line: 527, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !3032, file: !2822, line: 528, baseType: !100, size: 128, offset: 6656)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !3032, file: !2822, line: 530, baseType: !956, size: 64, offset: 6784)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !3032, file: !2822, line: 531, baseType: !956, size: 64, offset: 6848)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !3032, file: !2822, line: 532, baseType: !956, size: 64, offset: 6912)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !3032, file: !2822, line: 536, baseType: !447, size: 256, offset: 6976)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !3032, file: !2822, line: 538, baseType: !655, size: 8, offset: 7232)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2821, file: !2822, line: 147, baseType: !33, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2821, file: !2822, line: 149, baseType: !2886, size: 1984, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2821, file: !2822, line: 151, baseType: !12, size: 32, offset: 2752)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2821, file: !2822, line: 152, baseType: !22, size: 64, offset: 2816)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2821, file: !2822, line: 161, baseType: !447, size: 256, offset: 2880)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2821, file: !2822, line: 162, baseType: !29, size: 32, offset: 3136)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2821, file: !2822, line: 164, baseType: !3560, size: 64, offset: 3200)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !3562, line: 163, size: 6848, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3622, !3623, !3624, !3625, !3627, !3628, !3629}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3561, file: !3562, line: 164, baseType: !95, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3561, file: !3562, line: 165, baseType: !87, size: 192, align: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3561, file: !3562, line: 166, baseType: !100, size: 128, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3561, file: !3562, line: 167, baseType: !22, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3561, file: !3562, line: 168, baseType: !22, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3561, file: !3562, line: 170, baseType: !2148, size: 32, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3561, file: !3562, line: 171, baseType: !29, size: 32, offset: 544)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3561, file: !3562, line: 172, baseType: !29, size: 32, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3561, file: !3562, line: 173, baseType: !29, size: 32, offset: 608)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3561, file: !3562, line: 173, baseType: !29, size: 32, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3561, file: !3562, line: 179, baseType: !440, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3561, file: !3562, line: 184, baseType: !22, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3561, file: !3562, line: 186, baseType: !3577, size: 4672, offset: 832)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !3562, line: 105, size: 4672, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3604, !3605, !3617, !3618, !3619, !3620, !3621}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3577, file: !3562, line: 106, baseType: !3560, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3577, file: !3562, line: 108, baseType: !22, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3577, file: !3562, line: 109, baseType: !22, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3577, file: !3562, line: 111, baseType: !100, size: 128, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3577, file: !3562, line: 112, baseType: !100, size: 128, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3577, file: !3562, line: 113, baseType: !100, size: 128, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3577, file: !3562, line: 114, baseType: !100, size: 128, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3577, file: !3562, line: 115, baseType: !400, size: 32, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3577, file: !3562, line: 117, baseType: !40, size: 32, offset: 736)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3577, file: !3562, line: 118, baseType: !3589, size: 1280, offset: 768)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 1280, elements: !507)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3577, file: !3562, line: 120, baseType: !22, size: 64, offset: 2048)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3577, file: !3562, line: 121, baseType: !22, size: 64, offset: 2112)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3577, file: !3562, line: 122, baseType: !22, size: 64, offset: 2176)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3577, file: !3562, line: 123, baseType: !22, size: 64, offset: 2240)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3577, file: !3562, line: 124, baseType: !22, size: 64, offset: 2304)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3577, file: !3562, line: 132, baseType: !22, size: 64, offset: 2368)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3577, file: !3562, line: 133, baseType: !22, size: 64, offset: 2432)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3577, file: !3562, line: 135, baseType: !3598, size: 384, offset: 2496)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3599, line: 76, size: 384, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3600 = !{!3601, !3602, !3603}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3598, file: !3599, line: 78, baseType: !716, size: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3598, file: !3599, line: 80, baseType: !29, size: 32, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !3599, line: 81, baseType: !198, size: 32, offset: 352)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3577, file: !3562, line: 136, baseType: !12, size: 32, offset: 2880)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3577, file: !3562, line: 137, baseType: !3606, size: 32, offset: 2912)
!3606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !3562, line: 44, baseType: !29, size: 32, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3608 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!3609 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!3610 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!3611 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!3612 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!3613 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!3614 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!3615 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!3616 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3577, file: !3562, line: 139, baseType: !400, size: 32, offset: 2944)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3577, file: !3562, line: 140, baseType: !100, size: 128, offset: 3008)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3577, file: !3562, line: 141, baseType: !2457, size: 704, offset: 3136)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3577, file: !3562, line: 142, baseType: !2457, size: 704, offset: 3840)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3577, file: !3562, line: 144, baseType: !100, size: 128, offset: 4544)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3561, file: !3562, line: 187, baseType: !100, size: 128, offset: 5504)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3561, file: !3562, line: 193, baseType: !511, size: 192, offset: 5632)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3561, file: !3562, line: 195, baseType: !3065, size: 64, offset: 5824)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3561, file: !3562, line: 196, baseType: !3626, size: 512, offset: 5888)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1295)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3561, file: !3562, line: 197, baseType: !3065, size: 64, offset: 6400)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3561, file: !3562, line: 199, baseType: !2400, size: 320, offset: 6464)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3561, file: !3562, line: 202, baseType: !956, size: 64, offset: 6784)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2821, file: !2822, line: 165, baseType: !1252, size: 512, offset: 3264)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2821, file: !2822, line: 166, baseType: !1258, size: 64, offset: 3776)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2821, file: !2822, line: 168, baseType: !100, size: 128, offset: 3840)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2821, file: !2822, line: 170, baseType: !3634, size: 64, offset: 3968)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !2822, line: 170, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2821, file: !2822, line: 171, baseType: !40, size: 32, offset: 4032)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2821, file: !2822, line: 172, baseType: !3638, size: 64, offset: 4096)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !2822, line: 104, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2821, file: !2822, line: 197, baseType: !3641, size: 64, offset: 4160)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !2822, line: 197, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2821, file: !2822, line: 199, baseType: !12, size: 32, offset: 4224)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2821, file: !2822, line: 200, baseType: !3645, size: 64, offset: 4288)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !2822, line: 105, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2821, file: !2822, line: 201, baseType: !2428, offset: 4352)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2821, file: !2822, line: 202, baseType: !95, size: 64, offset: 4352)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2821, file: !2822, line: 203, baseType: !2950, size: 32, offset: 4416)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2821, file: !2822, line: 209, baseType: !3651, size: 64, offset: 4480)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !2822, line: 384, size: 576, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3652, file: !2822, line: 385, baseType: !1252, size: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3652, file: !2822, line: 386, baseType: !655, size: 8, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3652, file: !2822, line: 387, baseType: !29, size: 32, offset: 544)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3652, file: !2822, line: 388, baseType: !3658, offset: 576)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3659, elements: !526)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !2822, line: 378, size: 640, elements: !3660)
!3660 = !{!3661, !3662, !3663}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3659, file: !2822, line: 379, baseType: !1252, size: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3659, file: !2822, line: 380, baseType: !1809, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3659, file: !2822, line: 381, baseType: !1809, size: 64, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2814, file: !2815, line: 44, baseType: !3031, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2814, file: !2815, line: 45, baseType: !3666, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2815, line: 45, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2814, file: !2815, line: 46, baseType: !22, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2814, file: !2815, line: 47, baseType: !655, size: 8, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2814, file: !2815, line: 48, baseType: !215, size: 8, offset: 392)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2814, file: !2815, line: 49, baseType: !655, size: 8, offset: 400)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2814, file: !2815, line: 50, baseType: !655, size: 8, offset: 408)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2814, file: !2815, line: 51, baseType: !1065, size: 32, offset: 416)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2814, file: !2815, line: 52, baseType: !40, size: 32, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2814, file: !2815, line: 53, baseType: !400, size: 32, offset: 480)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2814, file: !2815, line: 54, baseType: !991, size: 64, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2814, file: !2815, line: 55, baseType: !33, size: 64, offset: 576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2814, file: !2815, line: 56, baseType: !33, size: 64, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2814, file: !2815, line: 57, baseType: !3680, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2822, line: 1477, size: 128, elements: !3683)
!3683 = !{!3684, !3688}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3682, file: !2822, line: 1478, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !2813, !655}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3682, file: !2822, line: 1483, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !2813}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2814, file: !2815, line: 58, baseType: !447, size: 256, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2814, file: !2815, line: 60, baseType: !12, size: 32, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2814, file: !2815, line: 61, baseType: !12, size: 32, offset: 1056)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2814, file: !2815, line: 62, baseType: !1258, size: 64, offset: 1088)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2814, file: !2815, line: 65, baseType: !447, size: 256, offset: 1152)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2814, file: !2815, line: 66, baseType: !1199, size: 64, offset: 1408)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2814, file: !2815, line: 68, baseType: !3699, size: 64, offset: 1472)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2822, line: 63, size: 808, elements: !3701)
!3701 = !{!3702, !3706}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3700, file: !2822, line: 64, baseType: !3703, size: 296)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3704)
!3704 = !{!3705}
!3705 = !DISubrange(count: 37)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3700, file: !2822, line: 65, baseType: !3707, size: 512, offset: 296)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 512, elements: !1295)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2814, file: !2815, line: 72, baseType: !655, size: 8, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2814, file: !2815, line: 77, baseType: !3066, size: 5824, offset: 1600)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1200, file: !420, line: 1226, baseType: !3711, size: 64, offset: 1664)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !2822, line: 1495, size: 128, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3712, file: !2822, line: 1496, baseType: !2813, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3712, file: !2822, line: 1497, baseType: !33, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1200, file: !420, line: 1227, baseType: !3560, size: 64, offset: 1728)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1200, file: !420, line: 1228, baseType: !3718, size: 64, offset: 1792)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !420, line: 1228, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1200, file: !420, line: 1229, baseType: !502, size: 128, offset: 1856)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1200, file: !420, line: 1230, baseType: !29, size: 32, offset: 1984)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1200, file: !420, line: 1231, baseType: !3723, size: 2496, offset: 2048)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2604, line: 521, size: 2496, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3729, !3761}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3723, file: !2604, line: 522, baseType: !29, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3723, file: !2604, line: 523, baseType: !596, size: 320, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3723, file: !2604, line: 524, baseType: !3728, size: 192, offset: 384)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 192, elements: !485)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3723, file: !2604, line: 525, baseType: !3730, size: 1728, offset: 576)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3731, size: 1728, elements: !485)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2604, line: 222, size: 576, elements: !3732)
!3732 = !{!3733, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3731, file: !2604, line: 223, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2604, line: 445, size: 256, elements: !3736)
!3736 = !{!3737, !3738, !3751, !3752}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3735, file: !2604, line: 446, baseType: !12, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3735, file: !2604, line: 447, baseType: !3739, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3741)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2604, line: 312, size: 512, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3741, file: !2604, line: 313, baseType: !2554, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3741, file: !2604, line: 314, baseType: !2554, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3741, file: !2604, line: 315, baseType: !2554, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3741, file: !2604, line: 316, baseType: !2554, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3741, file: !2604, line: 317, baseType: !2673, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3741, file: !2604, line: 318, baseType: !2673, size: 64, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3741, file: !2604, line: 319, baseType: !2673, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3741, file: !2604, line: 320, baseType: !2703, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3735, file: !2604, line: 448, baseType: !1232, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3735, file: !2604, line: 449, baseType: !3734, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3731, file: !2604, line: 224, baseType: !12, size: 32, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3731, file: !2604, line: 226, baseType: !100, size: 128, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3731, file: !2604, line: 227, baseType: !22, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3731, file: !2604, line: 228, baseType: !29, size: 32, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3731, file: !2604, line: 229, baseType: !29, size: 32, offset: 352)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3731, file: !2604, line: 230, baseType: !2641, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3731, file: !2604, line: 231, baseType: !2641, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3731, file: !2604, line: 232, baseType: !33, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3723, file: !2604, line: 526, baseType: !3762, size: 192, offset: 2304)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3739, size: 192, elements: !485)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1200, file: !420, line: 1233, baseType: !3764, size: 2368, offset: 4544)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !420, line: 1184, size: 2368, elements: !3765)
!3765 = !{!3766, !3767, !3768}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3764, file: !420, line: 1185, baseType: !66, size: 16)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3764, file: !420, line: 1186, baseType: !66, size: 16, offset: 16)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3764, file: !420, line: 1187, baseType: !3769, size: 2304, offset: 64)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3770, size: 2304, elements: !485)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3771, line: 12, size: 768, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3772 = !{!3773, !3781, !3782, !3787, !3788}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3770, file: !3771, line: 13, baseType: !3774, size: 384)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3775, line: 17, size: 384, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3774, file: !3775, line: 18, baseType: !12, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3774, file: !3775, line: 19, baseType: !12, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3774, file: !3775, line: 20, baseType: !511, size: 192, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3774, file: !3775, line: 22, baseType: !427, size: 128, align: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3770, file: !3771, line: 14, baseType: !2251, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3770, file: !3771, line: 15, baseType: !3783, size: 64, offset: 448)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3784, line: 16, size: 64, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3785 = !{!3786}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3783, file: !3784, line: 17, baseType: !13, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3770, file: !3771, line: 16, baseType: !511, size: 192, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3770, file: !3771, line: 17, baseType: !40, size: 32, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1200, file: !420, line: 1240, baseType: !33, size: 64, offset: 6912)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1200, file: !420, line: 1243, baseType: !25, size: 32, offset: 6976)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1200, file: !420, line: 1245, baseType: !612, size: 64, offset: 7040)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1200, file: !420, line: 1246, baseType: !612, size: 64, offset: 7104)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1200, file: !420, line: 1248, baseType: !27, size: 32, offset: 7168)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1200, file: !420, line: 1249, baseType: !3795, size: 64, offset: 7232)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !420, line: 634, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1200, file: !420, line: 1252, baseType: !2828, size: 256, offset: 7296)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1200, file: !420, line: 1253, baseType: !3799, size: 128, offset: 7552)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3800, line: 21, baseType: !3801)
!3800 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3800, line: 19, size: 128, elements: !3802)
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3801, file: !3800, line: 20, baseType: !3804, size: 128)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !5)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1200, file: !420, line: 1255, baseType: !29, size: 32, offset: 7680)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1200, file: !420, line: 1261, baseType: !447, size: 256, offset: 7744)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1200, file: !420, line: 1267, baseType: !658, size: 64, offset: 8000)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1200, file: !420, line: 1269, baseType: !3809, size: 64, offset: 8064)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !958, line: 128, size: 1024, align: 512, elements: !3812)
!3812 = !{!3813, !3817, !3818, !3825, !3831, !3835, !3839, !3843, !3844, !3848, !3852, !3857, !3861}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3811, file: !958, line: 129, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!12, !956, !29}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3811, file: !958, line: 130, baseType: !3814, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3811, file: !958, line: 131, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!12, !3822, !3824}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3811, file: !958, line: 132, baseType: !3826, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!12, !3822, !29, !658, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3811, file: !958, line: 134, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!12, !3822}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3811, file: !958, line: 135, baseType: !3836, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!12, !956}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3811, file: !958, line: 136, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !956}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3811, file: !958, line: 137, baseType: !3840, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3811, file: !958, line: 138, baseType: !3845, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !956, !991}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3811, file: !958, line: 139, baseType: !3849, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!668, !956, !668, !12}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3811, file: !958, line: 140, baseType: !3853, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!951, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3811, file: !958, line: 141, baseType: !3858, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!12, !1112, !655}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3811, file: !958, line: 142, baseType: !3862, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!956, !956, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1200, file: !420, line: 1271, baseType: !3868, size: 448, offset: 8128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2656, line: 63, size: 448, elements: !3869)
!3869 = !{!3870, !3875, !3876, !3877, !3878, !3879, !3880}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3868, file: !2656, line: 64, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!22, !3874, !2654}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3868, file: !2656, line: 66, baseType: !3871, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3868, file: !2656, line: 69, baseType: !920, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3868, file: !2656, line: 70, baseType: !12, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3868, file: !2656, line: 71, baseType: !29, size: 32, offset: 224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3868, file: !2656, line: 74, baseType: !100, size: 128, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3868, file: !2656, line: 85, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1200, file: !420, line: 1274, baseType: !440, size: 64, offset: 8576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1200, file: !420, line: 1280, baseType: !440, size: 64, offset: 8640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1200, file: !420, line: 1283, baseType: !12, size: 32, offset: 8704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1200, file: !420, line: 1286, baseType: !1951, size: 32, offset: 8736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1200, file: !420, line: 1289, baseType: !2462, size: 64, offset: 8768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1200, file: !420, line: 1290, baseType: !498, size: 64, offset: 8832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1200, file: !420, line: 1297, baseType: !741, size: 64, offset: 8896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1200, file: !420, line: 1304, baseType: !3890, size: 64, offset: 8960)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3891, line: 49, size: 64, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3890, file: !3891, line: 50, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3891, line: 41, size: 512, align: 512, elements: !3896)
!3896 = !{!3897, !3898, !3903}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !3891, line: 43, baseType: !400, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3895, file: !3891, line: 45, baseType: !3899, size: 192, offset: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3891, line: 29, size: 192, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3899, file: !3891, line: 30, baseType: !100, size: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3899, file: !3891, line: 32, baseType: !920, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3895, file: !3891, line: 46, baseType: !920, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1200, file: !420, line: 1305, baseType: !3890, size: 64, offset: 9024)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1200, file: !420, line: 1306, baseType: !427, size: 128, align: 64, offset: 9088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1200, file: !420, line: 1307, baseType: !790, size: 256, offset: 9216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1200, file: !420, line: 1309, baseType: !447, size: 256, offset: 9472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1200, file: !420, line: 1314, baseType: !12, size: 32, offset: 9728)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1200, file: !420, line: 1317, baseType: !400, size: 32, align: 512, offset: 10240)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1200, file: !420, line: 1318, baseType: !100, size: 128, offset: 10304)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1200, file: !420, line: 1320, baseType: !400, size: 32, offset: 10432)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1200, file: !420, line: 1321, baseType: !100, size: 128, offset: 10496)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !992, file: !420, line: 656, baseType: !1356, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !992, file: !420, line: 659, baseType: !33, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !992, file: !420, line: 663, baseType: !22, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !420, line: 671, baseType: !3917, size: 32, offset: 704)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !420, line: 671, size: 32, elements: !3918)
!3918 = !{!3919, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3917, file: !420, line: 672, baseType: !3920, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3917, file: !420, line: 673, baseType: !29, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !992, file: !420, line: 675, baseType: !1065, size: 32, offset: 736)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !992, file: !420, line: 676, baseType: !459, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !992, file: !420, line: 677, baseType: !1101, size: 128, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !992, file: !420, line: 678, baseType: !1101, size: 128, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !992, file: !420, line: 679, baseType: !1101, size: 128, offset: 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !992, file: !420, line: 680, baseType: !400, size: 32, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !992, file: !420, line: 681, baseType: !66, size: 16, offset: 1248)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !992, file: !420, line: 682, baseType: !215, size: 8, offset: 1264)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !992, file: !420, line: 683, baseType: !215, size: 8, offset: 1272)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !992, file: !420, line: 684, baseType: !2787, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !992, file: !420, line: 691, baseType: !22, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !992, file: !420, line: 692, baseType: !596, size: 320, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !992, file: !420, line: 694, baseType: !22, size: 64, offset: 1728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !992, file: !420, line: 695, baseType: !22, size: 64, offset: 1792)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !992, file: !420, line: 697, baseType: !502, size: 128, offset: 1856)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !992, file: !420, line: 698, baseType: !100, size: 128, offset: 1984)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !992, file: !420, line: 707, baseType: !100, size: 128, offset: 2112)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !992, file: !420, line: 708, baseType: !100, size: 128, offset: 2240)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !420, line: 709, baseType: !3941, size: 128, offset: 2368)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !420, line: 709, size: 128, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3941, file: !420, line: 710, baseType: !498, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3941, file: !420, line: 711, baseType: !427, size: 128, align: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !992, file: !420, line: 713, baseType: !442, size: 64, offset: 2496)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !992, file: !420, line: 714, baseType: !442, size: 64, offset: 2560)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !992, file: !420, line: 715, baseType: !40, size: 32, offset: 2624)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !992, file: !420, line: 716, baseType: !40, size: 32, offset: 2656)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !992, file: !420, line: 717, baseType: !40, size: 32, offset: 2688)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !992, file: !420, line: 719, baseType: !40, size: 32, offset: 2720)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !420, line: 721, baseType: !3952, size: 64, offset: 2752)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !420, line: 721, size: 64, elements: !3953)
!3953 = !{!3954, !4174}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3952, file: !420, line: 722, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !420, line: 1914, size: 2112, elements: !3958)
!3958 = !{!3959, !3960, !3964, !3968, !3972, !3973, !3974, !3978, !3991, !3995, !3999, !4000, !4004, !4005, !4009, !4014, !4015, !4019, !4023, !4029, !4030, !4034, !4035, !4041, !4045, !4046, !4051, !4055, !4059, !4063, !4067, !4068, !4170}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3957, file: !420, line: 1915, baseType: !1232, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3957, file: !420, line: 1916, baseType: !3961, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!459, !418, !459, !12}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3957, file: !420, line: 1917, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!1143, !418, !668, !842, !845}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3957, file: !420, line: 1918, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!1143, !418, !658, !842, !845}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3957, file: !420, line: 1919, baseType: !1823, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3957, file: !420, line: 1920, baseType: !1823, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3957, file: !420, line: 1921, baseType: !3975, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!12, !1826, !2935, !29}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3957, file: !420, line: 1923, baseType: !3979, size: 64, offset: 448)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!12, !418, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !420, line: 1858, size: 128, elements: !3984)
!3984 = !{!3985, !3990}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3983, file: !420, line: 1859, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !420, line: 1855, baseType: !3987)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!655, !3982, !658, !12, !459, !95, !29}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3983, file: !420, line: 1860, baseType: !459, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3957, file: !420, line: 1924, baseType: !3992, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!2126, !418, !2128}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3957, file: !420, line: 1925, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!920, !418, !29, !22}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3957, file: !420, line: 1926, baseType: !3996, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3957, file: !420, line: 1927, baseType: !4001, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!12, !418, !1494}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3957, file: !420, line: 1928, baseType: !22, size: 64, offset: 768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3957, file: !420, line: 1929, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!12, !991, !418}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3957, file: !420, line: 1930, baseType: !4010, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!12, !418, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !420, line: 1061, baseType: !33)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3957, file: !420, line: 1931, baseType: !4006, size: 64, offset: 960)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3957, file: !420, line: 1932, baseType: !4016, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!12, !418, !459, !459, !12}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3957, file: !420, line: 1933, baseType: !4020, size: 64, offset: 1088)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!12, !12, !418, !12}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3957, file: !420, line: 1934, baseType: !4024, size: 64, offset: 1152)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!12, !418, !12, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !420, line: 1063, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3957, file: !420, line: 1935, baseType: !415, size: 64, offset: 1216)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3957, file: !420, line: 1936, baseType: !4031, size: 64, offset: 1280)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!12, !12}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3957, file: !420, line: 1937, baseType: !4024, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3957, file: !420, line: 1938, baseType: !4036, size: 64, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!1143, !4039, !418, !845, !842, !29}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !15, line: 59, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3957, file: !420, line: 1939, baseType: !4042, size: 64, offset: 1472)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!1143, !418, !845, !4039, !842, !29}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3957, file: !420, line: 1940, baseType: !1941, size: 64, offset: 1536)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3957, file: !420, line: 1941, baseType: !4047, size: 64, offset: 1600)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!12, !418, !12, !4050, !1800}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3957, file: !420, line: 1942, baseType: !4052, size: 64, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!920, !418, !12, !459, !459}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3957, file: !420, line: 1944, baseType: !4056, size: 64, offset: 1728)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !2059, !418}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3957, file: !420, line: 1948, baseType: !4060, size: 64, offset: 1792)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!1143, !418, !459, !418, !459, !842, !29}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3957, file: !420, line: 1950, baseType: !4064, size: 64, offset: 1856)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!459, !418, !459, !418, !459, !459, !29}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3957, file: !420, line: 1953, baseType: !4016, size: 64, offset: 1920)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3957, file: !420, line: 1954, baseType: !4069, size: 64, offset: 1984)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!12, !4072, !29}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !4074, line: 25, size: 512, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e93e7b072305b4b1ab0f621d0cec38df")
!4075 = !{!4076, !4077, !4158, !4166, !4167, !4168}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4073, file: !4074, line: 26, baseType: !418, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "sqe", scope: !4073, file: !4074, line: 27, baseType: !4078, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4080)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_sqe", file: !4081, line: 30, size: 512, elements: !4082)
!4081 = !DIFile(filename: "./include/uapi/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "536227ab7b095d934ae04a0fe4ddf870")
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4097, !4102, !4103, !4127, !4128, !4133, !4134, !4145}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4080, file: !4081, line: 31, baseType: !216, size: 8)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4080, file: !4081, line: 32, baseType: !216, size: 8, offset: 8)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4080, file: !4081, line: 33, baseType: !65, size: 16, offset: 16)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4080, file: !4081, line: 34, baseType: !589, size: 32, offset: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 35, baseType: !4088, size: 64, offset: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 35, size: 64, elements: !4089)
!4089 = !{!4090, !4091, !4092}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !4088, file: !4081, line: 36, baseType: !96, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !4088, file: !4081, line: 37, baseType: !96, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4088, file: !4081, line: 38, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4088, file: !4081, line: 38, size: 64, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !4093, file: !4081, line: 39, baseType: !27, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4093, file: !4081, line: 40, baseType: !27, size: 32, offset: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 43, baseType: !4098, size: 64, offset: 128)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 43, size: 64, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4098, file: !4081, line: 44, baseType: !96, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "splice_off_in", scope: !4098, file: !4081, line: 45, baseType: !96, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4080, file: !4081, line: 47, baseType: !27, size: 32, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 48, baseType: !4104, size: 32, offset: 224)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 48, size: 32, elements: !4105)
!4105 = !{!4106, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rw_flags", scope: !4104, file: !4081, line: 49, baseType: !4107, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_rwf_t", file: !4108, line: 287, baseType: !12)
!4108 = !DIFile(filename: "./include/uapi/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05057ca18a14d66575ba14cfa16a2889")
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fsync_flags", scope: !4104, file: !4081, line: 50, baseType: !27, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "poll_events", scope: !4104, file: !4081, line: 51, baseType: !65, size: 16)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "poll32_events", scope: !4104, file: !4081, line: 52, baseType: !27, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_range_flags", scope: !4104, file: !4081, line: 53, baseType: !27, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !4104, file: !4081, line: 54, baseType: !27, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_flags", scope: !4104, file: !4081, line: 55, baseType: !27, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "accept_flags", scope: !4104, file: !4081, line: 56, baseType: !27, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_flags", scope: !4104, file: !4081, line: 57, baseType: !27, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !4104, file: !4081, line: 58, baseType: !27, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "statx_flags", scope: !4104, file: !4081, line: 59, baseType: !27, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise_advice", scope: !4104, file: !4081, line: 60, baseType: !27, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "splice_flags", scope: !4104, file: !4081, line: 61, baseType: !27, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rename_flags", scope: !4104, file: !4081, line: 62, baseType: !27, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_flags", scope: !4104, file: !4081, line: 63, baseType: !27, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "hardlink_flags", scope: !4104, file: !4081, line: 64, baseType: !27, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_flags", scope: !4104, file: !4081, line: 65, baseType: !27, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ring_flags", scope: !4104, file: !4081, line: 66, baseType: !27, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_flags", scope: !4104, file: !4081, line: 67, baseType: !27, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4080, file: !4081, line: 69, baseType: !96, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 71, baseType: !4129, size: 16, offset: 320)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 71, size: 16, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4129, file: !4081, line: 73, baseType: !65, size: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "buf_group", scope: !4129, file: !4081, line: 75, baseType: !65, size: 16)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !4080, file: !4081, line: 78, baseType: !65, size: 16, offset: 336)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 79, baseType: !4135, size: 32, offset: 352)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 79, size: 32, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "splice_fd_in", scope: !4135, file: !4081, line: 80, baseType: !589, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "file_index", scope: !4135, file: !4081, line: 81, baseType: !27, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, scope: !4135, file: !4081, line: 82, baseType: !4140, size: 32)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4135, file: !4081, line: 82, size: 32, elements: !4141)
!4141 = !{!4142, !4143}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "addr_len", scope: !4140, file: !4081, line: 83, baseType: !65, size: 16)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4140, file: !4081, line: 84, baseType: !4144, size: 16, offset: 16)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 16, elements: !333)
!4145 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4081, line: 87, baseType: !4146, size: 128, offset: 384)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4081, line: 87, size: 128, elements: !4147)
!4147 = !{!4148, !4154}
!4148 = !DIDerivedType(tag: DW_TAG_member, scope: !4146, file: !4081, line: 88, baseType: !4149, size: 128)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4146, file: !4081, line: 88, size: 128, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !4149, file: !4081, line: 89, baseType: !96, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4149, file: !4081, line: 90, baseType: !4153, size: 64, offset: 64)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !333)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4146, file: !4081, line: 96, baseType: !4155)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, elements: !4156)
!4156 = !{!4157}
!4157 = !DISubrange(count: 0)
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 28, baseType: !4159, size: 64, offset: 128)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 28, size: 64, elements: !4160)
!4160 = !{!4161, !4165}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "task_work_cb", scope: !4159, file: !4074, line: 30, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4072, !29}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4159, file: !4074, line: 32, baseType: !33, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !4073, file: !4074, line: 34, baseType: !25, size: 32, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4074, line: 35, baseType: !25, size: 32, offset: 224)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pdu", scope: !4073, file: !4074, line: 36, baseType: !4169, size: 256, offset: 256)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !2829)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3957, file: !420, line: 1955, baseType: !4171, size: 64, offset: 2048)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!12, !4072, !2935, !29}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3952, file: !420, line: 723, baseType: !2535, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !992, file: !420, line: 725, baseType: !4176, size: 64, offset: 2816)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !420, line: 725, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !992, file: !420, line: 726, baseType: !1357, size: 1536, align: 64, offset: 2880)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !992, file: !420, line: 727, baseType: !100, size: 128, offset: 4416)
!4180 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !420, line: 728, baseType: !4181, size: 64, offset: 4544)
!4181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !420, line: 728, size: 64, elements: !4182)
!4182 = !{!4183, !4184, !4187, !4188}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4181, file: !420, line: 729, baseType: !4039, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4181, file: !420, line: 730, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !420, line: 730, flags: DIFlagFwdDecl)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4181, file: !420, line: 731, baseType: !668, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4181, file: !420, line: 732, baseType: !29, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !992, file: !420, line: 735, baseType: !27, size: 32, offset: 4608)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !992, file: !420, line: 738, baseType: !27, size: 32, offset: 4640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !992, file: !420, line: 739, baseType: !3795, size: 64, offset: 4672)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !992, file: !420, line: 750, baseType: !33, size: 64, offset: 4736)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !957, file: !958, line: 91, baseType: !4194, size: 256, offset: 448)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !2829)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !957, file: !958, line: 94, baseType: !4196, size: 64, offset: 704)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4197, line: 25, size: 64, elements: !4198)
!4197 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4198 = !{!4199}
!4199 = !DIDerivedType(tag: DW_TAG_member, scope: !4196, file: !4197, line: 26, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4196, file: !4197, line: 26, size: 64, elements: !4201)
!4201 = !{!4202, !4203}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4200, file: !4197, line: 28, baseType: !96, size: 64, align: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4200, file: !4197, line: 30, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4200, file: !4197, line: 30, size: 64, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4204, file: !4197, line: 31, baseType: !400, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4204, file: !4197, line: 32, baseType: !12, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !957, file: !958, line: 95, baseType: !3809, size: 64, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !957, file: !958, line: 96, baseType: !1199, size: 64, offset: 832)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !957, file: !958, line: 97, baseType: !22, size: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !957, file: !958, line: 98, baseType: !33, size: 64, offset: 960)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !958, line: 100, baseType: !4213, size: 128, offset: 1024)
!4213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !958, line: 100, size: 128, elements: !4214)
!4214 = !{!4215, !4216}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4213, file: !958, line: 101, baseType: !100, size: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4213, file: !958, line: 102, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !957, file: !958, line: 104, baseType: !100, size: 128, offset: 1152)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !957, file: !958, line: 105, baseType: !100, size: 128, offset: 1280)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !957, file: !958, line: 113, baseType: !4221, size: 128, offset: 1408)
!4221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !958, line: 109, size: 128, elements: !4222)
!4222 = !{!4223, !4224, !4225}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4221, file: !958, line: 110, baseType: !502, size: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4221, file: !958, line: 111, baseType: !967, size: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4221, file: !958, line: 112, baseType: !427, size: 128, align: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !952, file: !953, line: 72, baseType: !1199, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !952, file: !953, line: 73, baseType: !12, size: 32, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !952, file: !953, line: 74, baseType: !1030, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !947, file: !948, line: 10, baseType: !956, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !419, file: !420, line: 1015, baseType: !991, size: 64, offset: 1344)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !419, file: !420, line: 1016, baseType: !3955, size: 64, offset: 1408)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !419, file: !420, line: 1018, baseType: !95, size: 64, offset: 1472)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !419, file: !420, line: 1020, baseType: !33, size: 64, offset: 1536)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !419, file: !420, line: 1023, baseType: !33, size: 64, offset: 1600)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !419, file: !420, line: 1027, baseType: !4236, size: 64, offset: 1664)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !419, file: !420, line: 1029, baseType: !1356, size: 64, offset: 1728)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !419, file: !420, line: 1030, baseType: !1951, size: 32, offset: 1792)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !419, file: !420, line: 1031, baseType: !1951, size: 32, offset: 1824)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !386, file: !383, line: 756, baseType: !22, size: 64, offset: 704)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !386, file: !383, line: 757, baseType: !22, size: 64, offset: 768)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !386, file: !383, line: 760, baseType: !22, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !386, file: !383, line: 761, baseType: !22, size: 64, offset: 896)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !386, file: !383, line: 763, baseType: !22, size: 64, offset: 960)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !386, file: !383, line: 764, baseType: !4246, size: 64, offset: 1024)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1509, line: 299, baseType: !4248)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 299, size: 64, elements: !4249)
!4249 = !{!4250}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4248, file: !1509, line: 299, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1514, line: 18, baseType: !22)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !386, file: !383, line: 773, baseType: !40, size: 32, offset: 1088)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !386, file: !383, line: 785, baseType: !40, size: 32, offset: 1120)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !386, file: !383, line: 795, baseType: !4255, size: 64, offset: 1152)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !383, line: 726, size: 128, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4256, file: !383, line: 727, baseType: !95, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4256, file: !383, line: 728, baseType: !12, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !386, file: !383, line: 801, baseType: !22, size: 64, offset: 1216)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !386, file: !383, line: 804, baseType: !440, size: 64, offset: 1280)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !386, file: !383, line: 806, baseType: !12, size: 32, offset: 1344)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !386, file: !383, line: 808, baseType: !400, size: 32, offset: 1376)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !386, file: !383, line: 823, baseType: !596, size: 320, offset: 1408)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !386, file: !383, line: 825, baseType: !100, size: 128, offset: 1728)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !386, file: !383, line: 845, baseType: !12, size: 32, offset: 1856)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !386, file: !383, line: 849, baseType: !22, size: 64, offset: 1920)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !386, file: !383, line: 850, baseType: !22, size: 64, offset: 1984)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !386, file: !383, line: 852, baseType: !22, size: 64, offset: 2048)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !386, file: !383, line: 853, baseType: !22, size: 64, offset: 2112)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !386, file: !383, line: 854, baseType: !442, size: 64, offset: 2176)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !386, file: !383, line: 855, baseType: !22, size: 64, offset: 2240)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !386, file: !383, line: 856, baseType: !22, size: 64, offset: 2304)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !386, file: !383, line: 857, baseType: !22, size: 64, offset: 2368)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !386, file: !383, line: 858, baseType: !22, size: 64, offset: 2432)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !386, file: !383, line: 865, baseType: !255, size: 32, offset: 2496)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !386, file: !383, line: 867, baseType: !400, size: 32, offset: 2528)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !386, file: !383, line: 869, baseType: !22, size: 64, offset: 2560)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !386, file: !383, line: 869, baseType: !22, size: 64, offset: 2624)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !386, file: !383, line: 869, baseType: !22, size: 64, offset: 2688)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !386, file: !383, line: 869, baseType: !22, size: 64, offset: 2752)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !386, file: !383, line: 870, baseType: !22, size: 64, offset: 2816)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !386, file: !383, line: 870, baseType: !22, size: 64, offset: 2880)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !386, file: !383, line: 870, baseType: !22, size: 64, offset: 2944)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !386, file: !383, line: 871, baseType: !22, size: 64, offset: 3008)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !386, file: !383, line: 871, baseType: !22, size: 64, offset: 3072)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !386, file: !383, line: 871, baseType: !22, size: 64, offset: 3136)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !386, file: !383, line: 871, baseType: !22, size: 64, offset: 3200)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !386, file: !383, line: 873, baseType: !4290, size: 3328, offset: 3264)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 3328, elements: !4291)
!4291 = !{!4292}
!4292 = !DISubrange(count: 52)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !386, file: !383, line: 875, baseType: !3589, size: 1280, offset: 6592)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !386, file: !383, line: 877, baseType: !4295, size: 64, offset: 7872)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !383, line: 877, flags: DIFlagFwdDecl)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !383, line: 880, baseType: !4298, size: 1088, offset: 7936)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4299, line: 72, baseType: !4300)
!4299 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4299, line: 23, size: 1088, elements: !4301)
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4309, !4310, !4311, !4312, !4337, !4338, !4339}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4300, file: !4299, line: 28, baseType: !95, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4300, file: !4299, line: 38, baseType: !442, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4300, file: !4299, line: 40, baseType: !22, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4300, file: !4299, line: 43, baseType: !596, size: 320, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4300, file: !4299, line: 44, baseType: !4307, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4299, line: 44, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4300, file: !4299, line: 48, baseType: !22, size: 64, offset: 576)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4300, file: !4299, line: 59, baseType: !447, size: 256, offset: 640)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4300, file: !4299, line: 60, baseType: !33, size: 64, offset: 896)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4300, file: !4299, line: 61, baseType: !4313, size: 64, offset: 960)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4316, line: 13, size: 1216, elements: !4317)
!4316 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4315, file: !4316, line: 14, baseType: !33, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4315, file: !4316, line: 15, baseType: !22, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4315, file: !4316, line: 17, baseType: !22, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4315, file: !4316, line: 17, baseType: !22, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4315, file: !4316, line: 18, baseType: !22, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4315, file: !4316, line: 18, baseType: !22, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4315, file: !4316, line: 19, baseType: !1996, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4315, file: !4316, line: 21, baseType: !920, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4315, file: !4316, line: 23, baseType: !920, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4315, file: !4316, line: 24, baseType: !920, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4315, file: !4316, line: 25, baseType: !920, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4315, file: !4316, line: 26, baseType: !920, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4315, file: !4316, line: 27, baseType: !920, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4315, file: !4316, line: 28, baseType: !920, size: 64, offset: 832)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4315, file: !4316, line: 29, baseType: !920, size: 64, offset: 896)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4315, file: !4316, line: 30, baseType: !920, size: 64, offset: 960)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4315, file: !4316, line: 31, baseType: !920, size: 64, offset: 1024)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4315, file: !4316, line: 32, baseType: !920, size: 64, offset: 1088)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4315, file: !4316, line: 33, baseType: !920, size: 64, offset: 1152)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4300, file: !4299, line: 63, baseType: !40, size: 32, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4300, file: !4299, line: 69, baseType: !64, size: 16, offset: 1056)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4300, file: !4299, line: 70, baseType: !2306, size: 16, offset: 1072)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !383, line: 882, baseType: !22, size: 64, offset: 9024)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !386, file: !383, line: 885, baseType: !400, size: 32, offset: 9088)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !386, file: !383, line: 886, baseType: !4343, size: 64, offset: 9152)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !383, line: 732, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !386, file: !383, line: 901, baseType: !741, size: 64, offset: 9216)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !386, file: !383, line: 904, baseType: !418, size: 64, offset: 9280)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !386, file: !383, line: 906, baseType: !4348, size: 64, offset: 9344)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !383, line: 906, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !386, file: !383, line: 930, baseType: !40, size: 32, offset: 9408)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !386, file: !383, line: 933, baseType: !40, size: 32, offset: 9440)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !386, file: !383, line: 935, baseType: !4353, size: 64, offset: 9472)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4354, line: 103, size: 64, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!4355 = !{!4356}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4353, file: !4354, line: 104, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !4354, line: 101, flags: DIFlagFwdDecl)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !386, file: !383, line: 940, baseType: !440, size: 64, offset: 9536)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !386, file: !383, line: 942, baseType: !790, size: 256, offset: 9600)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !382, file: !383, line: 986, baseType: !4362, offset: 10240)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !526)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !14, file: !15, line: 882, baseType: !381, size: 64, offset: 9792)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !14, file: !15, line: 884, baseType: !12, size: 32, offset: 9856)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !14, file: !15, line: 885, baseType: !12, size: 32, offset: 9888)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !14, file: !15, line: 886, baseType: !12, size: 32, offset: 9920)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !14, file: !15, line: 888, baseType: !12, size: 32, offset: 9952)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !14, file: !15, line: 890, baseType: !22, size: 64, offset: 9984)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !14, file: !15, line: 893, baseType: !29, size: 32, offset: 10048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !14, file: !15, line: 896, baseType: !29, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !14, file: !15, line: 897, baseType: !29, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !14, file: !15, line: 898, baseType: !29, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !14, file: !15, line: 899, baseType: !29, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !14, file: !15, line: 919, baseType: !29, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !14, file: !15, line: 922, baseType: !29, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !14, file: !15, line: 923, baseType: !29, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !14, file: !15, line: 925, baseType: !29, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !14, file: !15, line: 939, baseType: !29, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !14, file: !15, line: 941, baseType: !29, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !14, file: !15, line: 944, baseType: !29, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !14, file: !15, line: 956, baseType: !29, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !14, file: !15, line: 962, baseType: !29, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !14, file: !15, line: 966, baseType: !29, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !14, file: !15, line: 969, baseType: !22, size: 64, offset: 10176)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !14, file: !15, line: 971, baseType: !4386, size: 448, offset: 10240)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !4387, line: 25, size: 448, elements: !4388)
!4387 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!4388 = !{!4389, !4390, !4395}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4386, file: !4387, line: 26, baseType: !22, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4386, file: !4387, line: 27, baseType: !4391, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!920, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !4387, line: 28, baseType: !4396, size: 320, offset: 128)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4386, file: !4387, line: 28, size: 320, elements: !4397)
!4397 = !{!4398, !4408, !4438}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4396, file: !4387, line: 37, baseType: !4399, size: 320)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4387, line: 30, size: 320, elements: !4400)
!4400 = !{!4401, !4403, !4404, !4405, !4406, !4407}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4399, file: !4387, line: 31, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4399, file: !4387, line: 32, baseType: !25, size: 32, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4399, file: !4387, line: 33, baseType: !25, size: 32, offset: 96)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4399, file: !4387, line: 34, baseType: !25, size: 32, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4399, file: !4387, line: 35, baseType: !95, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4399, file: !4387, line: 36, baseType: !4402, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4396, file: !4387, line: 47, baseType: !4409, size: 192)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4387, line: 39, size: 192, elements: !4410)
!4410 = !{!4411, !4412, !4418, !4437}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4409, file: !4387, line: 40, baseType: !246, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4409, file: !4387, line: 41, baseType: !4413, size: 32, offset: 32)
!4413 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !4387, line: 16, baseType: !29, size: 32, elements: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DIEnumerator(name: "TT_NONE", value: 0)
!4416 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!4417 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!4418 = !DIDerivedType(tag: DW_TAG_member, scope: !4409, file: !4387, line: 42, baseType: !4419, size: 64, offset: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4409, file: !4387, line: 42, size: 64, elements: !4420)
!4420 = !{!4421, !4429}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4419, file: !4387, line: 43, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4424, line: 7, size: 128, elements: !4425)
!4424 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4425 = !{!4426, !4428}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4423, file: !4424, line: 8, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !248, line: 93, baseType: !113)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4423, file: !4424, line: 9, baseType: !113, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4419, file: !4387, line: 44, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4432, line: 7, size: 64, elements: !4433)
!4432 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4433 = !{!4434, !4436}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4431, file: !4432, line: 8, baseType: !4435, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4432, line: 5, baseType: !588)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4431, file: !4432, line: 9, baseType: !588, size: 32, offset: 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4409, file: !4387, line: 46, baseType: !95, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4396, file: !4387, line: 55, baseType: !4439, size: 256)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4387, line: 49, size: 256, elements: !4440)
!4440 = !{!4441, !4444, !4445, !4446, !4447}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4439, file: !4387, line: 50, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4387, line: 14, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4439, file: !4387, line: 51, baseType: !12, size: 32, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4439, file: !4387, line: 52, baseType: !12, size: 32, offset: 96)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4439, file: !4387, line: 53, baseType: !22, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4439, file: !4387, line: 54, baseType: !22, size: 64, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !14, file: !15, line: 973, baseType: !4449, size: 32, offset: 10688)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !4450)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !248, line: 28, baseType: !12)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !14, file: !15, line: 974, baseType: !4449, size: 32, offset: 10720)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !14, file: !15, line: 978, baseType: !22, size: 64, offset: 10752)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !14, file: !15, line: 987, baseType: !13, size: 64, offset: 10816)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !15, line: 990, baseType: !13, size: 64, offset: 10880)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !14, file: !15, line: 995, baseType: !100, size: 128, offset: 10944)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !14, file: !15, line: 996, baseType: !100, size: 128, offset: 11072)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !14, file: !15, line: 997, baseType: !13, size: 64, offset: 11200)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !14, file: !15, line: 1005, baseType: !100, size: 128, offset: 11264)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !14, file: !15, line: 1006, baseType: !100, size: 128, offset: 11392)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !14, file: !15, line: 1009, baseType: !489, size: 64, offset: 11520)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !14, file: !15, line: 1010, baseType: !4462, size: 512, offset: 11584)
!4462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 512, elements: !507)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !14, file: !15, line: 1011, baseType: !100, size: 128, offset: 12096)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !14, file: !15, line: 1012, baseType: !100, size: 128, offset: 12224)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !14, file: !15, line: 1014, baseType: !860, size: 64, offset: 12352)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !14, file: !15, line: 1017, baseType: !2299, size: 64, offset: 12416)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !14, file: !15, line: 1020, baseType: !2299, size: 64, offset: 12480)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !14, file: !15, line: 1023, baseType: !33, size: 64, offset: 12544)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !14, file: !15, line: 1025, baseType: !95, size: 64, offset: 12608)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !14, file: !15, line: 1026, baseType: !95, size: 64, offset: 12672)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !14, file: !15, line: 1031, baseType: !95, size: 64, offset: 12736)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !14, file: !15, line: 1032, baseType: !4473, size: 192, offset: 12800)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !15, line: 324, size: 192, elements: !4474)
!4474 = !{!4475, !4476, !4477}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4473, file: !15, line: 326, baseType: !95, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4473, file: !15, line: 327, baseType: !95, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4473, file: !15, line: 328, baseType: !198, size: 32, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !14, file: !15, line: 1041, baseType: !22, size: 64, offset: 12992)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !14, file: !15, line: 1042, baseType: !22, size: 64, offset: 13056)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !14, file: !15, line: 1045, baseType: !95, size: 64, offset: 13120)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !14, file: !15, line: 1048, baseType: !95, size: 64, offset: 13184)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !14, file: !15, line: 1051, baseType: !22, size: 64, offset: 13248)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !14, file: !15, line: 1052, baseType: !22, size: 64, offset: 13312)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !14, file: !15, line: 1055, baseType: !4485, size: 640, offset: 13376)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4486, line: 132, size: 640, elements: !4487)
!4486 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4487 = !{!4488, !4494, !4495}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4485, file: !4486, line: 133, baseType: !4489, size: 576)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4490, size: 576, elements: !485)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4486, line: 117, size: 192, elements: !4491)
!4491 = !{!4492, !4493}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4490, file: !4486, line: 118, baseType: !95, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4490, file: !4486, line: 119, baseType: !261, size: 128, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4485, file: !4486, line: 134, baseType: !29, size: 32, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4485, file: !4486, line: 135, baseType: !29, size: 32, offset: 608)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !14, file: !15, line: 1058, baseType: !4497, size: 448, offset: 14016)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4486, line: 144, size: 448, elements: !4498)
!4498 = !{!4499, !4500, !4501}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4497, file: !4486, line: 145, baseType: !427, size: 128, align: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4497, file: !4486, line: 146, baseType: !447, size: 256, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4497, file: !4486, line: 147, baseType: !29, size: 32, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !14, file: !15, line: 1064, baseType: !547, size: 64, offset: 14464)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !14, file: !15, line: 1067, baseType: !547, size: 64, offset: 14528)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !14, file: !15, line: 1070, baseType: !547, size: 64, offset: 14592)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !14, file: !15, line: 1074, baseType: !580, size: 64, offset: 14656)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !14, file: !15, line: 1084, baseType: !3, size: 128, offset: 14720)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !14, file: !15, line: 1086, baseType: !4508, size: 64, offset: 14848)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !15, line: 55, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !14, file: !15, line: 1089, baseType: !4511, size: 64, offset: 14912)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4512, line: 12, size: 64, elements: !4513)
!4512 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4513 = !{!4514}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4511, file: !4512, line: 13, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4512, line: 8, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !14, file: !15, line: 1090, baseType: !4518, size: 128, offset: 14976)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4519, line: 13, size: 128, elements: !4520)
!4519 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4518, file: !4519, line: 14, baseType: !100, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !14, file: !15, line: 1097, baseType: !4523, size: 64, offset: 15104)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !15, line: 50, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !14, file: !15, line: 1100, baseType: !4526, size: 64, offset: 15168)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !15, line: 1100, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !14, file: !15, line: 1103, baseType: !4529, size: 64, offset: 15232)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !4531, line: 52, size: 2560, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/io_uring_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84243b3d9541de3e1162017e4d1448e5")
!4532 = !{!4533, !4534, !4860, !4863, !4865, !4866, !4867, !4868, !4869, !4870}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "cached_refs", scope: !4530, file: !4531, line: 54, baseType: !12, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4530, file: !4531, line: 55, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4537)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ring_ctx", file: !4531, line: 196, size: 11776, elements: !4538)
!4538 = !{!4539, !4594, !4756, !4777, !4788, !4795, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4824, !4825, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4531, line: 198, baseType: !4540, size: 512, align: 512)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4537, file: !4531, line: 198, size: 512, align: 512, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4582, !4583}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4540, file: !4531, line: 199, baseType: !29, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "drain_next", scope: !4540, file: !4531, line: 200, baseType: !29, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "restricted", scope: !4540, file: !4531, line: 201, baseType: !29, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "off_timeout_used", scope: !4540, file: !4531, line: 202, baseType: !29, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "drain_active", scope: !4540, file: !4531, line: 203, baseType: !29, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "has_evfd", scope: !4540, file: !4531, line: 204, baseType: !29, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "task_complete", scope: !4540, file: !4531, line: 206, baseType: !29, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "lockless_cq", scope: !4540, file: !4531, line: 207, baseType: !29, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_iopoll", scope: !4540, file: !4531, line: 208, baseType: !29, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "poll_activated", scope: !4540, file: !4531, line: 209, baseType: !29, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "drain_disabled", scope: !4540, file: !4531, line: 210, baseType: !29, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "compat", scope: !4540, file: !4531, line: 211, baseType: !29, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "submitter_task", scope: !4540, file: !4531, line: 213, baseType: !13, size: 64, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "rings", scope: !4540, file: !4531, line: 214, baseType: !4556, size: 64, offset: 128)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_rings", file: !4531, line: 83, size: 512, elements: !4558)
!4558 = !{!4559, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "sq", scope: !4557, file: !4531, line: 92, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring", file: !4531, line: 71, size: 64, elements: !4561)
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4560, file: !4531, line: 72, baseType: !25, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4560, file: !4531, line: 73, baseType: !25, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "cq", scope: !4557, file: !4531, line: 92, baseType: !4560, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_mask", scope: !4557, file: !4531, line: 97, baseType: !25, size: 32, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_mask", scope: !4557, file: !4531, line: 97, baseType: !25, size: 32, offset: 160)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_entries", scope: !4557, file: !4531, line: 99, baseType: !25, size: 32, offset: 192)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_entries", scope: !4557, file: !4531, line: 99, baseType: !25, size: 32, offset: 224)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "sq_dropped", scope: !4557, file: !4531, line: 112, baseType: !25, size: 32, offset: 256)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "sq_flags", scope: !4557, file: !4531, line: 122, baseType: !40, size: 32, offset: 288)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "cq_flags", scope: !4557, file: !4531, line: 129, baseType: !25, size: 32, offset: 320)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow", scope: !4557, file: !4531, line: 143, baseType: !25, size: 32, offset: 352)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "cqes", scope: !4557, file: !4531, line: 151, baseType: !4574, align: 512, offset: 512)
!4574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4575, elements: !526)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cqe", file: !4081, line: 380, size: 128, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4575, file: !4081, line: 381, baseType: !96, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4575, file: !4081, line: 382, baseType: !589, size: 32, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4575, file: !4081, line: 383, baseType: !27, size: 32, offset: 96)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4575, file: !4081, line: 389, baseType: !4581, offset: 128)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !526)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4540, file: !4531, line: 215, baseType: !1441, size: 128, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_method", scope: !4540, file: !4531, line: 217, baseType: !4584, size: 32, offset: 320)
!4584 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "task_work_notify_mode", file: !4585, line: 16, baseType: !29, size: 32, elements: !4586)
!4585 = !DIFile(filename: "./include/linux/task_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebc04ad3d34f218a70d101adf88369f")
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4587 = !DIEnumerator(name: "TWA_NONE", value: 0)
!4588 = !DIEnumerator(name: "TWA_RESUME", value: 1)
!4589 = !DIEnumerator(name: "TWA_SIGNAL", value: 2)
!4590 = !DIEnumerator(name: "TWA_SIGNAL_NO_IPI", value: 3)
!4591 = !DIEnumerator(name: "TWA_NMI_CURRENT", value: 4)
!4592 = !DIEnumerator(name: "TWA_FLAGS", value: 65280)
!4593 = !DIEnumerator(name: "TWAF_NO_ALLOC", value: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4531, line: 221, baseType: !4595, size: 2560, align: 512, offset: 512)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4537, file: !4531, line: 221, size: 2560, align: 512, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4601, !4602, !4603, !4606, !4607, !4617, !4618, !4619, !4623, !4735, !4736, !4746, !4753, !4754, !4755}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "uring_lock", scope: !4595, file: !4531, line: 222, baseType: !447, size: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "sq_array", scope: !4595, file: !4531, line: 235, baseType: !4402, size: 64, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "sq_sqes", scope: !4595, file: !4531, line: 236, baseType: !4600, size: 64, offset: 320)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "cached_sq_head", scope: !4595, file: !4531, line: 237, baseType: !29, size: 32, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "sq_entries", scope: !4595, file: !4531, line: 238, baseType: !29, size: 32, offset: 416)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4595, file: !4531, line: 244, baseType: !4604, size: 64, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_node", file: !4531, line: 244, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4595, file: !4531, line: 245, baseType: !40, size: 32, offset: 512)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "file_table", scope: !4595, file: !4531, line: 246, baseType: !4608, size: 192, offset: 576)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_file_table", file: !4531, line: 31, size: 192, elements: !4609)
!4609 = !{!4610, !4615, !4616}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4608, file: !4531, line: 32, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_fixed_file", file: !4531, line: 26, size: 64, elements: !4613)
!4613 = !{!4614}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "file_ptr", scope: !4612, file: !4531, line: 28, baseType: !22, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4608, file: !4531, line: 33, baseType: !2496, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !4608, file: !4531, line: 34, baseType: !29, size: 32, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_files", scope: !4595, file: !4531, line: 247, baseType: !29, size: 32, offset: 768)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_bufs", scope: !4595, file: !4531, line: 248, baseType: !29, size: 32, offset: 800)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "user_bufs", scope: !4595, file: !4531, line: 249, baseType: !4620, size: 64, offset: 832)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_mapped_ubuf", file: !4531, line: 249, flags: DIFlagFwdDecl)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "submit_state", scope: !4595, file: !4531, line: 251, baseType: !4624, size: 704, offset: 896)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_state", file: !4531, line: 167, size: 704, elements: !4625)
!4625 = !{!4626, !4631, !4636, !4721, !4722, !4723, !4724, !4725}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4624, file: !4531, line: 169, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_node", file: !4531, line: 10, size: 64, elements: !4628)
!4628 = !{!4629}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4627, file: !4531, line: 11, baseType: !4630, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "compl_reqs", scope: !4624, file: !4531, line: 171, baseType: !4632, size: 128, offset: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_list", file: !4531, line: 14, size: 128, elements: !4633)
!4633 = !{!4634, !4635}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4632, file: !4531, line: 15, baseType: !4630, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4632, file: !4531, line: 16, baseType: !4630, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4624, file: !4531, line: 172, baseType: !4637, size: 128, offset: 192)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_link", file: !4531, line: 162, size: 128, elements: !4638)
!4638 = !{!4639, !4720}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4637, file: !4531, line: 163, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_kiocb", file: !4531, line: 528, size: 1920, elements: !4642)
!4642 = !{!4643, !4653, !4654, !4655, !4656, !4657, !4667, !4669, !4670, !4671, !4681, !4686, !4687, !4688, !4701, !4702, !4703, !4706, !4707, !4708, !4709, !4715}
!4643 = !DIDerivedType(tag: DW_TAG_member, scope: !4641, file: !4531, line: 529, baseType: !4644, size: 512)
!4644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4641, file: !4531, line: 529, size: 512, elements: !4645)
!4645 = !{!4646, !4647}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4644, file: !4531, line: 536, baseType: !418, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4644, file: !4531, line: 537, baseType: !4648, size: 512)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cmd_data", file: !4531, line: 512, size: 512, elements: !4649)
!4649 = !{!4650, !4651}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4648, file: !4531, line: 513, baseType: !418, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4648, file: !4531, line: 515, baseType: !4652, size: 448, offset: 64)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 448, elements: !1246)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4641, file: !4531, line: 540, baseType: !215, size: 8, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_completed", scope: !4641, file: !4531, line: 542, baseType: !215, size: 8, offset: 520)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4641, file: !4531, line: 548, baseType: !64, size: 16, offset: 528)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4641, file: !4531, line: 549, baseType: !29, size: 32, offset: 544)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "cqe", scope: !4641, file: !4531, line: 551, baseType: !4658, size: 128, offset: 576)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cqe", file: !4531, line: 498, size: 128, elements: !4659)
!4659 = !{!4660, !4661, !4662}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4658, file: !4531, line: 499, baseType: !96, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4658, file: !4531, line: 500, baseType: !589, size: 32, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, scope: !4658, file: !4531, line: 502, baseType: !4663, size: 32, offset: 96)
!4663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4658, file: !4531, line: 502, size: 32, elements: !4664)
!4664 = !{!4665, !4666}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4663, file: !4531, line: 503, baseType: !27, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4663, file: !4531, line: 504, baseType: !12, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4641, file: !4531, line: 553, baseType: !4668, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4641, file: !4531, line: 554, baseType: !13, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4641, file: !4531, line: 556, baseType: !4604, size: 64, offset: 832)
!4671 = !DIDerivedType(tag: DW_TAG_member, scope: !4641, file: !4531, line: 558, baseType: !4672, size: 64, offset: 896)
!4672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4641, file: !4531, line: 558, size: 64, elements: !4673)
!4673 = !{!4674, !4675, !4678}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "imu", scope: !4672, file: !4531, line: 560, baseType: !4621, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !4672, file: !4531, line: 563, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer", file: !4531, line: 563, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "buf_list", scope: !4672, file: !4531, line: 569, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer_list", file: !4531, line: 569, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, scope: !4641, file: !4531, line: 572, baseType: !4682, size: 64, offset: 960)
!4682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4641, file: !4531, line: 572, size: 64, elements: !4683)
!4683 = !{!4684, !4685}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "comp_list", scope: !4682, file: !4531, line: 574, baseType: !4627, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_events", scope: !4682, file: !4531, line: 576, baseType: !2126, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4641, file: !4531, line: 578, baseType: !40, size: 32, offset: 1024)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "poll_refs", scope: !4641, file: !4531, line: 579, baseType: !40, size: 32, offset: 1056)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "io_task_work", scope: !4641, file: !4531, line: 580, baseType: !4689, size: 128, offset: 1088)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_task_work", file: !4531, line: 493, size: 128, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4689, file: !4531, line: 494, baseType: !53, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4689, file: !4531, line: 495, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_req_tw_func_t", file: !4531, line: 491, baseType: !4694)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4640, !4697}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_tw_state", file: !4531, line: 383, size: 8, elements: !4699)
!4699 = !{!4700}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4698, file: !4531, line: 385, baseType: !655, size: 8)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tw", scope: !4641, file: !4531, line: 581, baseType: !29, size: 32, offset: 1216)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "hash_node", scope: !4641, file: !4531, line: 583, baseType: !502, size: 128, offset: 1280)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "apoll", scope: !4641, file: !4531, line: 585, baseType: !4704, size: 64, offset: 1408)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "async_poll", file: !4531, line: 585, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "async_data", scope: !4641, file: !4531, line: 587, baseType: !33, size: 64, offset: 1472)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4641, file: !4531, line: 589, baseType: !4640, size: 64, offset: 1536)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "creds", scope: !4641, file: !4531, line: 591, baseType: !547, size: 64, offset: 1600)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4641, file: !4531, line: 592, baseType: !4710, size: 128, offset: 1664)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work", file: !4531, line: 19, size: 128, elements: !4711)
!4711 = !{!4712, !4713, !4714}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4710, file: !4531, line: 20, baseType: !4627, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4710, file: !4531, line: 21, baseType: !29, size: 32, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4710, file: !4531, line: 23, baseType: !12, size: 32, offset: 96)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4641, file: !4531, line: 597, baseType: !4716, size: 128, offset: 1792)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4641, file: !4531, line: 594, size: 128, elements: !4717)
!4717 = !{!4718, !4719}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !4716, file: !4531, line: 595, baseType: !95, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !4716, file: !4531, line: 596, baseType: !95, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4637, file: !4531, line: 164, baseType: !4640, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "plug_started", scope: !4624, file: !4531, line: 174, baseType: !655, size: 8, offset: 320)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "need_plug", scope: !4624, file: !4531, line: 175, baseType: !655, size: 8, offset: 328)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "submit_nr", scope: !4624, file: !4531, line: 176, baseType: !66, size: 16, offset: 336)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "cqes_count", scope: !4624, file: !4531, line: 177, baseType: !29, size: 32, offset: 352)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !4624, file: !4531, line: 178, baseType: !4726, size: 320, offset: 384)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2822, line: 976, size: 320, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4731, !4732, !4733, !4734}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4726, file: !2822, line: 977, baseType: !2939, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4726, file: !2822, line: 980, baseType: !2939, size: 64, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4726, file: !2822, line: 981, baseType: !66, size: 16, offset: 128)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4726, file: !2822, line: 983, baseType: !66, size: 16, offset: 144)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4726, file: !2822, line: 985, baseType: !655, size: 8, offset: 160)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4726, file: !2822, line: 986, baseType: !655, size: 8, offset: 168)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4726, file: !2822, line: 988, baseType: !100, size: 128, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "io_bl_xa", scope: !4595, file: !4531, line: 253, baseType: !1190, size: 128, offset: 1600)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table_locked", scope: !4595, file: !4531, line: 255, baseType: !4737, size: 128, offset: 1728)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_table", file: !4531, line: 42, size: 128, elements: !4738)
!4738 = !{!4739, !4745}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "hbs", scope: !4737, file: !4531, line: 43, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_bucket", file: !4531, line: 37, size: 512, align: 512, elements: !4742)
!4742 = !{!4743, !4744}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4741, file: !4531, line: 38, baseType: !400, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4741, file: !4531, line: 39, baseType: !498, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !4737, file: !4531, line: 44, baseType: !29, size: 32, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_cache", scope: !4595, file: !4531, line: 256, baseType: !4747, size: 192, offset: 1856)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_alloc_cache", file: !4531, line: 189, size: 192, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4747, file: !4531, line: 190, baseType: !4627, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached", scope: !4747, file: !4531, line: 191, baseType: !29, size: 32, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "max_cached", scope: !4747, file: !4531, line: 192, baseType: !29, size: 32, offset: 96)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4747, file: !4531, line: 193, baseType: !842, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "netmsg_cache", scope: !4595, file: !4531, line: 257, baseType: !4747, size: 192, offset: 2048)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_list", scope: !4595, file: !4531, line: 265, baseType: !4632, size: 128, offset: 2240)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "poll_multi_queue", scope: !4595, file: !4531, line: 266, baseType: !655, size: 8, offset: 2368)
!4756 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4531, line: 269, baseType: !4757, size: 512, align: 512, offset: 3072)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4537, file: !4531, line: 269, size: 512, align: 512, elements: !4758)
!4758 = !{!4759, !4761, !4762, !4763, !4764, !4776}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_cached", scope: !4757, file: !4531, line: 274, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_sentinel", scope: !4757, file: !4531, line: 275, baseType: !4760, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "cached_cq_tail", scope: !4757, file: !4531, line: 277, baseType: !29, size: 32, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "cq_entries", scope: !4757, file: !4531, line: 278, baseType: !29, size: 32, offset: 160)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "io_ev_fd", scope: !4757, file: !4531, line: 279, baseType: !4765, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ev_fd", file: !4531, line: 181, size: 320, elements: !4767)
!4767 = !{!4768, !4772, !4773, !4774, !4775}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ev_fd", scope: !4766, file: !4531, line: 182, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfd_ctx", file: !4771, line: 29, flags: DIFlagFwdDecl)
!4771 = !DIFile(filename: "./include/linux/eventfd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06e91fc4ebd2cc8e97773c04a86a634b")
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "eventfd_async", scope: !4766, file: !4531, line: 183, baseType: !29, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4766, file: !4531, line: 184, baseType: !427, size: 128, align: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4766, file: !4531, line: 185, baseType: !40, size: 32, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4766, file: !4531, line: 186, baseType: !40, size: 32, offset: 288)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "cq_extra", scope: !4757, file: !4531, line: 280, baseType: !29, size: 32, offset: 256)
!4777 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4531, line: 287, baseType: !4778, size: 512, align: 512, offset: 3584)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4537, file: !4531, line: 287, size: 512, align: 512, elements: !4779)
!4779 = !{!4780, !4784, !4785, !4786, !4787}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "work_llist", scope: !4778, file: !4531, line: 288, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !54, line: 56, size: 64, elements: !4782)
!4782 = !{!4783}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4781, file: !54, line: 57, baseType: !57, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "check_cq", scope: !4778, file: !4531, line: 289, baseType: !22, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait_nr", scope: !4778, file: !4531, line: 290, baseType: !40, size: 32, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "cq_timeouts", scope: !4778, file: !4531, line: 291, baseType: !40, size: 32, offset: 160)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait", scope: !4778, file: !4531, line: 292, baseType: !513, size: 192, offset: 192)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !4531, line: 296, baseType: !4789, size: 512, align: 512, offset: 4096)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4537, file: !4531, line: 296, size: 512, align: 512, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4794}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_lock", scope: !4789, file: !4531, line: 297, baseType: !400, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_list", scope: !4789, file: !4531, line: 298, baseType: !100, size: 128, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ltimeout_list", scope: !4789, file: !4531, line: 299, baseType: !100, size: 128, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cq_last_tm_flush", scope: !4789, file: !4531, line: 300, baseType: !29, size: 32, offset: 320)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cqes", scope: !4537, file: !4531, line: 303, baseType: !4796, size: 2048, offset: 4608)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4575, size: 2048, elements: !5)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "completion_lock", scope: !4537, file: !4531, line: 305, baseType: !400, size: 32, offset: 6656)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_list", scope: !4537, file: !4531, line: 308, baseType: !4632, size: 128, offset: 6720)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_nr", scope: !4537, file: !4531, line: 309, baseType: !29, size: 32, offset: 6848)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_comp", scope: !4537, file: !4531, line: 311, baseType: !100, size: 128, offset: 6912)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow_list", scope: !4537, file: !4531, line: 312, baseType: !100, size: 128, offset: 7040)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table", scope: !4537, file: !4531, line: 313, baseType: !4737, size: 128, offset: 7168)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "sq_creds", scope: !4537, file: !4531, line: 315, baseType: !547, size: 64, offset: 7296)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sq_data", scope: !4537, file: !4531, line: 316, baseType: !4805, size: 64, offset: 7360)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_sq_data", file: !4531, line: 316, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "sqo_sq_wait", scope: !4537, file: !4531, line: 318, baseType: !513, size: 192, offset: 7424)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "sqd_list", scope: !4537, file: !4531, line: 319, baseType: !100, size: 128, offset: 7616)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_start", scope: !4537, file: !4531, line: 321, baseType: !29, size: 32, offset: 7744)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_end", scope: !4537, file: !4531, line: 322, baseType: !29, size: 32, offset: 7776)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "personalities", scope: !4537, file: !4531, line: 324, baseType: !1190, size: 128, offset: 7808)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "pers_next", scope: !4537, file: !4531, line: 325, baseType: !25, size: 32, offset: 7936)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_cache", scope: !4537, file: !4531, line: 327, baseType: !100, size: 128, offset: 8000)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "io_buf_list", scope: !4537, file: !4531, line: 330, baseType: !498, size: 64, offset: 8128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq", scope: !4537, file: !4531, line: 333, baseType: !513, size: 192, offset: 8192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "restrictions", scope: !4537, file: !4531, line: 334, baseType: !4817, size: 192, offset: 8384)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_restriction", file: !4531, line: 154, size: 192, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4823}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "register_op", scope: !4817, file: !4531, line: 155, baseType: !332, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_op", scope: !4817, file: !4531, line: 156, baseType: !332, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_allowed", scope: !4817, file: !4531, line: 157, baseType: !215, size: 8, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_required", scope: !4817, file: !4531, line: 158, baseType: !215, size: 8, offset: 136)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4817, file: !4531, line: 159, baseType: !655, size: 8, offset: 144)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_ubuf", scope: !4537, file: !4531, line: 337, baseType: !4621, size: 64, offset: 8576)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "file_data", scope: !4537, file: !4531, line: 338, baseType: !4826, size: 64, offset: 8640)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_data", file: !4531, line: 338, flags: DIFlagFwdDecl)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "buf_data", scope: !4537, file: !4531, line: 339, baseType: !4826, size: 64, offset: 8704)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_ref_list", scope: !4537, file: !4531, line: 342, baseType: !100, size: 128, offset: 8768)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node_cache", scope: !4537, file: !4531, line: 343, baseType: !4747, size: 192, offset: 8896)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce_wq", scope: !4537, file: !4531, line: 344, baseType: !513, size: 192, offset: 9088)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce", scope: !4537, file: !4531, line: 345, baseType: !29, size: 32, offset: 9280)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_pages", scope: !4537, file: !4531, line: 347, baseType: !100, size: 128, offset: 9344)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "hash_map", scope: !4537, file: !4531, line: 350, baseType: !4835, size: 64, offset: 9472)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_hash", file: !4837, line: 27, size: 320, elements: !4838)
!4837 = !DIFile(filename: "io_uring/io-wq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ae69a0ce48125548eeefce29da87ee")
!4838 = !{!4839, !4840, !4841}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4836, file: !4837, line: 28, baseType: !35, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4836, file: !4837, line: 29, baseType: !22, size: 64, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4836, file: !4837, line: 30, baseType: !513, size: 192, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4537, file: !4531, line: 353, baseType: !710, size: 64, offset: 9536)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mm_account", scope: !4537, file: !4531, line: 354, baseType: !381, size: 64, offset: 9600)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_llist", scope: !4537, file: !4531, line: 357, baseType: !4781, size: 64, offset: 9664)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_work", scope: !4537, file: !4531, line: 358, baseType: !2457, size: 704, offset: 9728)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "exit_work", scope: !4537, file: !4531, line: 359, baseType: !790, size: 256, offset: 10432)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_list", scope: !4537, file: !4531, line: 360, baseType: !100, size: 128, offset: 10688)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ref_comp", scope: !4537, file: !4531, line: 361, baseType: !861, size: 256, offset: 10816)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits", scope: !4537, file: !4531, line: 364, baseType: !4850, size: 64, offset: 11072)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !2289)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits_set", scope: !4537, file: !4531, line: 365, baseType: !655, size: 8, offset: 11136)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq_task_work", scope: !4537, file: !4531, line: 367, baseType: !427, size: 128, align: 64, offset: 11200)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "defer_list", scope: !4537, file: !4531, line: 368, baseType: !100, size: 128, offset: 11328)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "sq_thread_idle", scope: !4537, file: !4531, line: 369, baseType: !29, size: 32, offset: 11456)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "evfd_last_cq_tail", scope: !4537, file: !4531, line: 371, baseType: !29, size: 32, offset: 11488)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "n_ring_pages", scope: !4537, file: !4531, line: 377, baseType: !66, size: 16, offset: 11520)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "n_sqe_pages", scope: !4537, file: !4531, line: 378, baseType: !66, size: 16, offset: 11536)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ring_pages", scope: !4537, file: !4531, line: 379, baseType: !1799, size: 64, offset: 11584)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_pages", scope: !4537, file: !4531, line: 380, baseType: !1799, size: 64, offset: 11648)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "io_wq", scope: !4530, file: !4531, line: 56, baseType: !4861, size: 64, offset: 128)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq", file: !4531, line: 56, flags: DIFlagFwdDecl)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "registered_rings", scope: !4530, file: !4531, line: 57, baseType: !4864, size: 1024, offset: 192)
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !5)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4530, file: !4531, line: 59, baseType: !1190, size: 128, offset: 1216)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4530, file: !4531, line: 60, baseType: !513, size: 192, offset: 1344)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "in_cancel", scope: !4530, file: !4531, line: 61, baseType: !40, size: 32, offset: 1536)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_tracked", scope: !4530, file: !4531, line: 62, baseType: !40, size: 32, offset: 1568)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !4530, file: !4531, line: 63, baseType: !716, size: 320, offset: 1600)
!4870 = !DIDerivedType(tag: DW_TAG_member, scope: !4530, file: !4531, line: 65, baseType: !4871, size: 512, align: 512, offset: 2048)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4530, file: !4531, line: 65, size: 512, align: 512, elements: !4872)
!4872 = !{!4873, !4874}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !4871, file: !4531, line: 66, baseType: !4781, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !4871, file: !4531, line: 67, baseType: !427, size: 128, align: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !14, file: !15, line: 1107, baseType: !4876, size: 64, offset: 15296)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4878, line: 31, size: 576, elements: !4879)
!4878 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4879 = !{!4880, !4881, !4884, !4887, !4890, !4891, !4894, !4897, !4898}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4877, file: !4878, line: 32, baseType: !35, size: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4877, file: !4878, line: 33, baseType: !4882, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4878, line: 9, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4877, file: !4878, line: 34, baseType: !4885, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4878, line: 10, flags: DIFlagFwdDecl)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4877, file: !4878, line: 35, baseType: !4888, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4878, line: 8, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4877, file: !4878, line: 36, baseType: !524, size: 64, offset: 256)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4877, file: !4878, line: 37, baseType: !4892, size: 64, offset: 320)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !582, line: 34, flags: DIFlagFwdDecl)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4877, file: !4878, line: 38, baseType: !4895, size: 64, offset: 384)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4878, line: 38, flags: DIFlagFwdDecl)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4877, file: !4878, line: 39, baseType: !4895, size: 64, offset: 448)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4877, file: !4878, line: 40, baseType: !4899, size: 64, offset: 512)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4901, line: 771, size: 384, elements: !4902)
!4901 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4902 = !{!4903, !4904, !4905, !4906}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4900, file: !4901, line: 772, baseType: !774, size: 192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4900, file: !4901, line: 773, baseType: !741, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4900, file: !4901, line: 774, baseType: !905, size: 64, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4900, file: !4901, line: 775, baseType: !4907, size: 64, offset: 320)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4909, line: 209, size: 4736, elements: !4910)
!4909 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4910 = !{!4911, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4908, file: !4909, line: 215, baseType: !4912, size: 896)
!4912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4913, size: 896, elements: !4968)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4909, line: 152, size: 1600, elements: !4915)
!4915 = !{!4916, !5019, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5143}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4914, file: !4909, line: 154, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4909, line: 389, size: 7872, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4939, !4940, !4942, !4943, !4944, !4945, !4946, !4947, !4965, !4966, !4970, !4971, !4972, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5006, !5009, !5010, !5017}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4918, file: !4909, line: 391, baseType: !4914, size: 1600)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4918, file: !4909, line: 393, baseType: !22, size: 64, offset: 1600)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4918, file: !4909, line: 401, baseType: !12, size: 32, offset: 1664)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4918, file: !4909, line: 404, baseType: !12, size: 32, offset: 1696)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4918, file: !4909, line: 417, baseType: !12, size: 32, offset: 1728)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4918, file: !4909, line: 418, baseType: !12, size: 32, offset: 1760)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4918, file: !4909, line: 419, baseType: !12, size: 32, offset: 1792)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4918, file: !4909, line: 432, baseType: !12, size: 32, offset: 1824)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4918, file: !4909, line: 433, baseType: !12, size: 32, offset: 1856)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4918, file: !4909, line: 434, baseType: !12, size: 32, offset: 1888)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4918, file: !4909, line: 436, baseType: !12, size: 32, offset: 1920)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4918, file: !4909, line: 439, baseType: !29, size: 32, offset: 1952)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4918, file: !4909, line: 441, baseType: !2014, size: 64, offset: 1984)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4918, file: !4909, line: 442, baseType: !4934, size: 448, offset: 2048)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4909, line: 138, size: 448, elements: !4935)
!4935 = !{!4936, !4937, !4938}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4934, file: !4909, line: 140, baseType: !2014, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4934, file: !4909, line: 141, baseType: !22, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4934, file: !4909, line: 142, baseType: !2400, size: 320, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4918, file: !4909, line: 443, baseType: !4934, size: 448, offset: 2496)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4918, file: !4909, line: 446, baseType: !4941, offset: 2944)
!4941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4934, elements: !4156)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4918, file: !4909, line: 455, baseType: !64, size: 16, offset: 2944)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4918, file: !4909, line: 456, baseType: !64, size: 16, offset: 2960)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4918, file: !4909, line: 457, baseType: !64, size: 16, offset: 2976)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4918, file: !4909, line: 458, baseType: !64, size: 16, offset: 2992)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4918, file: !4909, line: 461, baseType: !4912, size: 896, offset: 3008)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4918, file: !4909, line: 463, baseType: !4948, size: 64, offset: 3904)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4909, line: 537, size: 41664, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4964}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4949, file: !4909, line: 538, baseType: !2034, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4949, file: !4909, line: 541, baseType: !29, size: 32, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4949, file: !4909, line: 544, baseType: !12, size: 32, offset: 96)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4949, file: !4909, line: 547, baseType: !100, size: 128, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4949, file: !4909, line: 548, baseType: !427, size: 128, align: 64, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4949, file: !4909, line: 555, baseType: !4918, size: 7872, offset: 384)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4949, file: !4909, line: 558, baseType: !4917, size: 64, offset: 8256)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4949, file: !4909, line: 561, baseType: !40, size: 32, offset: 8320)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4949, file: !4909, line: 564, baseType: !29, size: 32, offset: 8352)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4949, file: !4909, line: 567, baseType: !4961, size: 32768, offset: 8384)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4962)
!4962 = !{!4963}
!4963 = !DISubrange(count: 4096)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4949, file: !4909, line: 570, baseType: !3626, size: 512, offset: 41152)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4918, file: !4909, line: 469, baseType: !100, size: 128, offset: 3968)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4918, file: !4909, line: 478, baseType: !4967, size: 1792, offset: 4096)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1792, elements: !4968)
!4968 = !{!4969}
!4969 = !DISubrange(count: 14)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4918, file: !4909, line: 487, baseType: !4917, size: 64, offset: 5888)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4918, file: !4909, line: 488, baseType: !4917, size: 64, offset: 5952)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4918, file: !4909, line: 491, baseType: !4973, size: 64, offset: 6016)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4909, line: 327, size: 896, elements: !4975)
!4975 = !{!4976, !4979, !4989, !4990, !4991, !4992, !4993}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4974, file: !4909, line: 332, baseType: !4977)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4978, line: 64, elements: !411)
!4978 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4974, file: !4909, line: 333, baseType: !4980, size: 192)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4909, line: 299, size: 192, elements: !4981)
!4981 = !{!4982}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4980, file: !4909, line: 300, baseType: !4983, size: 192)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4984, line: 17, size: 192, elements: !4985)
!4984 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4985 = !{!4986, !4987, !4988}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4983, file: !4984, line: 18, baseType: !95, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4983, file: !4984, line: 19, baseType: !95, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4983, file: !4984, line: 20, baseType: !97, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4974, file: !4909, line: 339, baseType: !4980, size: 192, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4974, file: !4909, line: 347, baseType: !4980, size: 192, offset: 384)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4974, file: !4909, line: 353, baseType: !4980, size: 192, offset: 576)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4974, file: !4909, line: 366, baseType: !4917, size: 64, offset: 768)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4974, file: !4909, line: 367, baseType: !4917, size: 64, offset: 832)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4918, file: !4909, line: 492, baseType: !100, size: 128, offset: 6080)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4918, file: !4909, line: 495, baseType: !4980, size: 192, offset: 6208)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4918, file: !4909, line: 496, baseType: !4980, size: 192, offset: 6400)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4918, file: !4909, line: 497, baseType: !4473, size: 192, offset: 6592)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4918, file: !4909, line: 503, baseType: !100, size: 128, offset: 6784)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4918, file: !4909, line: 504, baseType: !447, size: 256, offset: 6912)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4918, file: !4909, line: 507, baseType: !511, size: 192, offset: 7168)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4918, file: !4909, line: 510, baseType: !790, size: 256, offset: 7360)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4918, file: !4909, line: 513, baseType: !5003, size: 64, offset: 7616)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !5005, line: 214, elements: !411)
!5005 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4918, file: !4909, line: 516, baseType: !5007, offset: 7680)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !5008, line: 76, elements: !411)
!5008 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4918, file: !4909, line: 519, baseType: !40, size: 32, offset: 7680)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4918, file: !4909, line: 522, baseType: !5011, size: 128, offset: 7712)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4909, line: 370, size: 128, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5011, file: !4909, line: 372, baseType: !655, size: 8)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !5011, file: !4909, line: 375, baseType: !12, size: 32, offset: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !5011, file: !4909, line: 380, baseType: !12, size: 32, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !5011, file: !4909, line: 386, baseType: !12, size: 32, offset: 96)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4918, file: !4909, line: 529, baseType: !5018, offset: 7872)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4917, elements: !526)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4914, file: !4909, line: 157, baseType: !5020, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4909, line: 669, size: 1984, elements: !5022)
!5022 = !{!5023, !5027, !5031, !5035, !5036, !5037, !5038, !5042, !5046, !5047, !5053, !5057, !5058, !5059, !5063, !5067, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5088, !5089, !5126, !5127}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !5021, file: !4909, line: 670, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!4913, !4913}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !5021, file: !4909, line: 671, baseType: !5028, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!12, !4913}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !5021, file: !4909, line: 672, baseType: !5032, size: 64, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !4913}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !5021, file: !4909, line: 673, baseType: !5032, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !5021, file: !4909, line: 674, baseType: !5032, size: 64, offset: 256)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !5021, file: !4909, line: 675, baseType: !5032, size: 64, offset: 320)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !5021, file: !4909, line: 676, baseType: !5039, size: 64, offset: 384)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !4913, !12}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !5021, file: !4909, line: 677, baseType: !5043, size: 64, offset: 448)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!12, !2059, !4913}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !5021, file: !4909, line: 679, baseType: !5043, size: 64, offset: 512)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !5021, file: !4909, line: 682, baseType: !5048, size: 64, offset: 576)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!12, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4909, line: 30, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !5021, file: !4909, line: 683, baseType: !5054, size: 64, offset: 640)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !5051}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5021, file: !4909, line: 684, baseType: !5054, size: 64, offset: 704)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !5021, file: !4909, line: 685, baseType: !2509, size: 64, offset: 768)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !5021, file: !4909, line: 686, baseType: !5060, size: 64, offset: 832)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!12, !13, !4907}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !5021, file: !4909, line: 688, baseType: !5064, size: 64, offset: 896)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !13, !4907}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !5021, file: !4909, line: 689, baseType: !5068, size: 64, offset: 960)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{null, !13}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5021, file: !4909, line: 690, baseType: !5068, size: 64, offset: 1024)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5021, file: !4909, line: 691, baseType: !5068, size: 64, offset: 1088)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5021, file: !4909, line: 692, baseType: !5032, size: 64, offset: 1152)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5021, file: !4909, line: 694, baseType: !655, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !5021, file: !4909, line: 707, baseType: !655, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !5021, file: !4909, line: 719, baseType: !655, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5021, file: !4909, line: 722, baseType: !12, size: 32, offset: 1248)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5021, file: !4909, line: 723, baseType: !658, size: 64, offset: 1280)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !5021, file: !4909, line: 726, baseType: !658, size: 64, offset: 1344)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5021, file: !4909, line: 729, baseType: !4948, size: 64, offset: 1408)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !5021, file: !4909, line: 732, baseType: !5082, size: 192, offset: 1472)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !5083, line: 19, size: 192, elements: !5084)
!5083 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5084 = !{!5085, !5086, !5087}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !5082, file: !5083, line: 20, baseType: !1190, size: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !5082, file: !5083, line: 21, baseType: !29, size: 32, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !5082, file: !5083, line: 22, baseType: !29, size: 32, offset: 160)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !5021, file: !4909, line: 738, baseType: !100, size: 128, offset: 1664)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !5021, file: !4909, line: 744, baseType: !5090, size: 64, offset: 1792)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4909, line: 580, size: 1728, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5102, !5103, !5104, !5108, !5112, !5113, !5114, !5115, !5116, !5120, !5124, !5125}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5091, file: !4909, line: 586, baseType: !3626, size: 512)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5091, file: !4909, line: 587, baseType: !22, size: 64, offset: 512)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5091, file: !4909, line: 593, baseType: !842, size: 64, offset: 576)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5091, file: !4909, line: 596, baseType: !29, size: 32, offset: 640)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5091, file: !4909, line: 604, baseType: !29, size: 32, offset: 672)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5091, file: !4909, line: 610, baseType: !5020, size: 64, offset: 704)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5091, file: !4909, line: 611, baseType: !100, size: 128, offset: 768)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5091, file: !4909, line: 612, baseType: !5101, size: 64, offset: 896)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5091, file: !4909, line: 614, baseType: !2050, size: 64, offset: 960)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5091, file: !4909, line: 615, baseType: !2108, size: 64, offset: 1024)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5091, file: !4909, line: 621, baseType: !5105, size: 64, offset: 1088)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!95, !4913, !5090}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5091, file: !4909, line: 625, baseType: !5109, size: 64, offset: 1152)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!111, !4913, !5090}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5091, file: !4909, line: 628, baseType: !2089, size: 64, offset: 1216)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5091, file: !4909, line: 631, baseType: !2077, size: 64, offset: 1280)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5091, file: !4909, line: 632, baseType: !2085, size: 64, offset: 1344)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5091, file: !4909, line: 633, baseType: !2081, size: 64, offset: 1408)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5091, file: !4909, line: 640, baseType: !5117, size: 64, offset: 1472)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!12, !4913, !5090, !95}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5091, file: !4909, line: 645, baseType: !5121, size: 64, offset: 1536)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!12, !4913, !5090, !111}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5091, file: !4909, line: 654, baseType: !2116, size: 64, offset: 1600)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5091, file: !4909, line: 657, baseType: !2123, size: 64, offset: 1664)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !5021, file: !4909, line: 745, baseType: !5090, size: 64, offset: 1856)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !5021, file: !4909, line: 754, baseType: !29, size: 32, offset: 1920)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4914, file: !4909, line: 160, baseType: !1441, size: 128, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4914, file: !4909, line: 163, baseType: !100, size: 128, offset: 256)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4914, file: !4909, line: 164, baseType: !100, size: 128, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4914, file: !4909, line: 167, baseType: !100, size: 128, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4914, file: !4909, line: 173, baseType: !12, size: 32, offset: 640)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4914, file: !4909, line: 175, baseType: !29, size: 32, offset: 672)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4914, file: !4909, line: 183, baseType: !95, size: 64, offset: 704)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4914, file: !4909, line: 189, baseType: !40, size: 32, offset: 768)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4914, file: !4909, line: 192, baseType: !790, size: 256, offset: 832)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4914, file: !4909, line: 193, baseType: !5138, size: 448, offset: 1088)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !791, line: 120, size: 448, elements: !5139)
!5139 = !{!5140, !5141, !5142}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5138, file: !791, line: 121, baseType: !790, size: 256)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5138, file: !791, line: 122, baseType: !427, size: 128, align: 64, offset: 256)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5138, file: !791, line: 125, baseType: !2462, size: 64, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4914, file: !4909, line: 199, baseType: !4913, size: 64, offset: 1536)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4908, file: !4909, line: 218, baseType: !35, size: 32, offset: 896)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4908, file: !4909, line: 226, baseType: !4907, size: 64, offset: 960)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4908, file: !4909, line: 229, baseType: !4917, size: 64, offset: 1024)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4908, file: !4909, line: 232, baseType: !12, size: 32, offset: 1088)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4908, file: !4909, line: 241, baseType: !100, size: 128, offset: 1152)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4908, file: !4909, line: 242, baseType: !100, size: 128, offset: 1280)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4908, file: !4909, line: 243, baseType: !100, size: 128, offset: 1408)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4908, file: !4909, line: 246, baseType: !100, size: 128, offset: 1536)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4908, file: !4909, line: 255, baseType: !4967, size: 1792, offset: 1664)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4908, file: !4909, line: 258, baseType: !100, size: 128, offset: 3456)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4908, file: !4909, line: 259, baseType: !100, size: 128, offset: 3584)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4908, file: !4909, line: 265, baseType: !502, size: 128, offset: 3712)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4908, file: !4909, line: 271, baseType: !100, size: 128, offset: 3840)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4908, file: !4909, line: 277, baseType: !100, size: 128, offset: 3968)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4908, file: !4909, line: 278, baseType: !100, size: 128, offset: 4096)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4908, file: !4909, line: 279, baseType: !100, size: 128, offset: 4224)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4908, file: !4909, line: 288, baseType: !4917, size: 64, offset: 4352)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4908, file: !4909, line: 289, baseType: !4917, size: 64, offset: 4416)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4908, file: !4909, line: 290, baseType: !4907, size: 64, offset: 4480)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4908, file: !4909, line: 293, baseType: !655, size: 8, offset: 4544)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4908, file: !4909, line: 296, baseType: !427, size: 128, align: 64, offset: 4608)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !14, file: !15, line: 1110, baseType: !5166, size: 64, offset: 15360)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5168, line: 93, size: 8768, elements: !5169)
!5168 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5169 = !{!5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5218, !5227, !5228, !5230, !5231, !5232, !5235, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5273, !5274, !5281, !5291, !5353, !5354, !5357, !5358, !5359, !5360, !5361, !5362}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5167, file: !5168, line: 94, baseType: !35, size: 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5167, file: !5168, line: 95, baseType: !40, size: 32, offset: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5167, file: !5168, line: 96, baseType: !12, size: 32, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5167, file: !5168, line: 97, baseType: !12, size: 32, offset: 96)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5167, file: !5168, line: 98, baseType: !100, size: 128, offset: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5167, file: !5168, line: 100, baseType: !511, size: 192, offset: 256)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5167, file: !5168, line: 103, baseType: !13, size: 64, offset: 448)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5167, file: !5168, line: 106, baseType: !5178, size: 192, offset: 512)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5179, line: 32, size: 192, elements: !5180)
!5179 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5180 = !{!5181, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5178, file: !5179, line: 33, baseType: !100, size: 128)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5178, file: !5179, line: 34, baseType: !5183, size: 64, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5184, line: 25, baseType: !5185)
!5184 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5184, line: 23, size: 64, elements: !5186)
!5186 = !{!5187}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5185, file: !5184, line: 24, baseType: !332, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5167, file: !5168, line: 109, baseType: !498, size: 64, offset: 704)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5167, file: !5168, line: 112, baseType: !12, size: 32, offset: 768)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5167, file: !5168, line: 114, baseType: !12, size: 32, offset: 800)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5167, file: !5168, line: 115, baseType: !13, size: 64, offset: 832)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5167, file: !5168, line: 118, baseType: !12, size: 32, offset: 896)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5167, file: !5168, line: 119, baseType: !29, size: 32, offset: 928)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5167, file: !5168, line: 121, baseType: !5195, size: 64, offset: 960)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5168, line: 80, size: 448, elements: !5197)
!5197 = !{!5198, !5199, !5205}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5196, file: !5168, line: 81, baseType: !40, size: 32)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5196, file: !5168, line: 82, baseType: !5200, size: 128, offset: 64)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5168, line: 75, size: 128, elements: !5201)
!5201 = !{!5202, !5203}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5200, file: !5168, line: 76, baseType: !13, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5200, file: !5168, line: 77, baseType: !5204, size: 64, offset: 64)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5196, file: !5168, line: 83, baseType: !861, size: 256, offset: 192)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5167, file: !5168, line: 132, baseType: !29, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5167, file: !5168, line: 133, baseType: !29, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5167, file: !5168, line: 138, baseType: !29, size: 32, offset: 1056)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5167, file: !5168, line: 139, baseType: !100, size: 128, offset: 1088)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5167, file: !5168, line: 142, baseType: !168, size: 512, offset: 1216)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5167, file: !5168, line: 143, baseType: !177, size: 64, offset: 1728)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5167, file: !5168, line: 150, baseType: !5213, size: 256, offset: 1792)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5214, size: 256, elements: !2289)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5168, line: 38, size: 128, elements: !5215)
!5215 = !{!5216, !5217}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5214, file: !5168, line: 39, baseType: !95, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5214, file: !5168, line: 40, baseType: !95, size: 64, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5167, file: !5168, line: 156, baseType: !5219, size: 192, offset: 2048)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5168, line: 66, size: 192, elements: !5220)
!5220 = !{!5221}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5219, file: !5168, line: 67, baseType: !5222, size: 192)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5168, line: 47, size: 192, elements: !5223)
!5223 = !{!5224, !5225, !5226}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5222, file: !5168, line: 48, baseType: !442, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5222, file: !5168, line: 49, baseType: !442, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5222, file: !5168, line: 50, baseType: !442, size: 64, offset: 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5167, file: !5168, line: 160, baseType: !4485, size: 640, offset: 2240)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5167, file: !5168, line: 163, baseType: !5229, size: 256, offset: 2880)
!5229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 256, elements: !507)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5167, file: !5168, line: 169, baseType: !489, size: 64, offset: 3136)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5167, file: !5168, line: 172, baseType: !12, size: 32, offset: 3200)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5167, file: !5168, line: 174, baseType: !5233, size: 64, offset: 3264)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5168, line: 174, flags: DIFlagFwdDecl)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5167, file: !5168, line: 185, baseType: !5236, size: 64, offset: 3328)
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !251, line: 860, baseType: !5237)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 853, size: 64, elements: !5238)
!5238 = !{!5239, !5240}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5237, file: !251, line: 858, baseType: !962, size: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5237, file: !251, line: 859, baseType: !400, size: 32, offset: 32)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5167, file: !5168, line: 186, baseType: !95, size: 64, offset: 3392)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5167, file: !5168, line: 186, baseType: !95, size: 64, offset: 3456)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5167, file: !5168, line: 186, baseType: !95, size: 64, offset: 3520)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5167, file: !5168, line: 186, baseType: !95, size: 64, offset: 3584)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5167, file: !5168, line: 187, baseType: !95, size: 64, offset: 3648)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5167, file: !5168, line: 188, baseType: !95, size: 64, offset: 3712)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5167, file: !5168, line: 189, baseType: !4473, size: 192, offset: 3776)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5167, file: !5168, line: 190, baseType: !22, size: 64, offset: 3968)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5167, file: !5168, line: 190, baseType: !22, size: 64, offset: 4032)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5167, file: !5168, line: 190, baseType: !22, size: 64, offset: 4096)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5167, file: !5168, line: 190, baseType: !22, size: 64, offset: 4160)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5167, file: !5168, line: 191, baseType: !22, size: 64, offset: 4224)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5167, file: !5168, line: 191, baseType: !22, size: 64, offset: 4288)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5167, file: !5168, line: 191, baseType: !22, size: 64, offset: 4352)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5167, file: !5168, line: 191, baseType: !22, size: 64, offset: 4416)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5167, file: !5168, line: 192, baseType: !22, size: 64, offset: 4480)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5167, file: !5168, line: 192, baseType: !22, size: 64, offset: 4544)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5167, file: !5168, line: 192, baseType: !22, size: 64, offset: 4608)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5167, file: !5168, line: 192, baseType: !22, size: 64, offset: 4672)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5167, file: !5168, line: 193, baseType: !22, size: 64, offset: 4736)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5167, file: !5168, line: 193, baseType: !22, size: 64, offset: 4800)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5167, file: !5168, line: 194, baseType: !5263, size: 448, offset: 4864)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5264, line: 12, size: 448, elements: !5265)
!5264 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5265 = !{!5266, !5267, !5268, !5269, !5270, !5271, !5272}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5263, file: !5264, line: 15, baseType: !95, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5263, file: !5264, line: 17, baseType: !95, size: 64, offset: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5263, file: !5264, line: 19, baseType: !95, size: 64, offset: 128)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5263, file: !5264, line: 21, baseType: !95, size: 64, offset: 192)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5263, file: !5264, line: 29, baseType: !95, size: 64, offset: 256)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5263, file: !5264, line: 35, baseType: !95, size: 64, offset: 320)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5263, file: !5264, line: 44, baseType: !95, size: 64, offset: 384)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5167, file: !5168, line: 202, baseType: !97, size: 64, offset: 5312)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5167, file: !5168, line: 213, baseType: !5275, size: 2048, offset: 5376)
!5275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5276, size: 2048, elements: !5)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5277, line: 43, size: 128, elements: !5278)
!5277 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5278 = !{!5279, !5280}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5276, file: !5277, line: 44, baseType: !844, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5276, file: !5277, line: 45, baseType: !844, size: 64, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5167, file: !5168, line: 216, baseType: !5282, size: 448, offset: 7424)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5168, line: 30, size: 448, elements: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5282, file: !5168, line: 31, baseType: !12, size: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5282, file: !5168, line: 32, baseType: !920, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5282, file: !5168, line: 33, baseType: !22, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5282, file: !5168, line: 34, baseType: !95, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5282, file: !5168, line: 34, baseType: !95, size: 64, offset: 256)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5282, file: !5168, line: 35, baseType: !22, size: 64, offset: 320)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5282, file: !5168, line: 35, baseType: !22, size: 64, offset: 384)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5167, file: !5168, line: 219, baseType: !5292, size: 64, offset: 7872)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5294, line: 41, size: 3456, elements: !5295)
!5294 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5295 = !{!5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5293, file: !5294, line: 47, baseType: !65, size: 16)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5293, file: !5294, line: 48, baseType: !27, size: 32, offset: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5293, file: !5294, line: 54, baseType: !216, size: 8, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5293, file: !5294, line: 55, baseType: !216, size: 8, offset: 72)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5293, file: !5294, line: 73, baseType: !96, size: 64, align: 64, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5293, file: !5294, line: 74, baseType: !96, size: 64, offset: 192)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5293, file: !5294, line: 81, baseType: !96, size: 64, offset: 256)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5293, file: !5294, line: 82, baseType: !96, size: 64, offset: 320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5293, file: !5294, line: 85, baseType: !96, size: 64, offset: 384)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5293, file: !5294, line: 86, baseType: !96, size: 64, offset: 448)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5293, file: !5294, line: 94, baseType: !96, size: 64, offset: 512)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5293, file: !5294, line: 102, baseType: !96, size: 64, offset: 576)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5293, file: !5294, line: 107, baseType: !2828, size: 256, offset: 640)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5293, file: !5294, line: 108, baseType: !216, size: 8, align: 64, offset: 896)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5293, file: !5294, line: 110, baseType: !5311, size: 24, offset: 904)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 24, elements: !485)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5293, file: !5294, line: 111, baseType: !27, size: 32, align: 64, offset: 960)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5293, file: !5294, line: 113, baseType: !27, size: 32, offset: 992)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5293, file: !5294, line: 114, baseType: !27, size: 32, offset: 1024)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5293, file: !5294, line: 115, baseType: !27, size: 32, offset: 1056)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5293, file: !5294, line: 117, baseType: !27, size: 32, offset: 1088)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5293, file: !5294, line: 118, baseType: !96, size: 64, align: 64, offset: 1152)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5293, file: !5294, line: 120, baseType: !96, size: 64, offset: 1216)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5293, file: !5294, line: 121, baseType: !96, size: 64, offset: 1280)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5293, file: !5294, line: 122, baseType: !96, size: 64, offset: 1344)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5293, file: !5294, line: 123, baseType: !96, size: 64, offset: 1408)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5293, file: !5294, line: 133, baseType: !96, size: 64, offset: 1472)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5293, file: !5294, line: 137, baseType: !96, size: 64, offset: 1536)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5293, file: !5294, line: 142, baseType: !96, size: 64, offset: 1600)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5293, file: !5294, line: 143, baseType: !96, size: 64, offset: 1664)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5293, file: !5294, line: 146, baseType: !96, size: 64, offset: 1728)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5293, file: !5294, line: 147, baseType: !96, size: 64, offset: 1792)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5293, file: !5294, line: 148, baseType: !96, size: 64, offset: 1856)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5293, file: !5294, line: 149, baseType: !96, size: 64, offset: 1920)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5293, file: !5294, line: 154, baseType: !96, size: 64, offset: 1984)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5293, file: !5294, line: 155, baseType: !96, size: 64, offset: 2048)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5293, file: !5294, line: 156, baseType: !96, size: 64, offset: 2112)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5293, file: !5294, line: 158, baseType: !96, size: 64, offset: 2176)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5293, file: !5294, line: 159, baseType: !96, size: 64, offset: 2240)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5293, file: !5294, line: 162, baseType: !96, size: 64, offset: 2304)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5293, file: !5294, line: 163, baseType: !96, size: 64, offset: 2368)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5293, file: !5294, line: 164, baseType: !96, size: 64, offset: 2432)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5293, file: !5294, line: 167, baseType: !96, size: 64, offset: 2496)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5293, file: !5294, line: 168, baseType: !96, size: 64, offset: 2560)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5293, file: !5294, line: 171, baseType: !96, size: 64, offset: 2624)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5293, file: !5294, line: 172, baseType: !96, size: 64, offset: 2688)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5293, file: !5294, line: 175, baseType: !96, size: 64, offset: 2752)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5293, file: !5294, line: 178, baseType: !96, size: 64, offset: 2816)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5293, file: !5294, line: 179, baseType: !96, size: 64, offset: 2880)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5293, file: !5294, line: 182, baseType: !27, size: 32, offset: 2944)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5293, file: !5294, line: 186, baseType: !96, size: 64, align: 64, offset: 3008)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5293, file: !5294, line: 194, baseType: !96, size: 64, offset: 3072)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5293, file: !5294, line: 195, baseType: !96, size: 64, offset: 3136)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5293, file: !5294, line: 199, baseType: !96, size: 64, offset: 3200)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5293, file: !5294, line: 200, baseType: !96, size: 64, offset: 3264)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5293, file: !5294, line: 203, baseType: !96, size: 64, offset: 3328)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5293, file: !5294, line: 204, baseType: !96, size: 64, offset: 3392)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5167, file: !5168, line: 222, baseType: !29, size: 32, offset: 7936)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5167, file: !5168, line: 223, baseType: !5355, size: 64, offset: 8000)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5168, line: 223, flags: DIFlagFwdDecl)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5167, file: !5168, line: 230, baseType: !655, size: 8, offset: 8064)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5167, file: !5168, line: 231, baseType: !624, size: 16, offset: 8080)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5167, file: !5168, line: 232, baseType: !624, size: 16, offset: 8096)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5167, file: !5168, line: 234, baseType: !381, size: 64, offset: 8128)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5167, file: !5168, line: 237, baseType: !447, size: 256, offset: 8192)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5167, file: !5168, line: 243, baseType: !596, size: 320, offset: 8448)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !14, file: !15, line: 1111, baseType: !5364, size: 64, offset: 15424)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5168, line: 20, size: 16640, elements: !5366)
!5366 = !{!5367, !5368, !5369, !5370}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5365, file: !5168, line: 21, baseType: !400, size: 32)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5365, file: !5168, line: 22, baseType: !35, size: 32, offset: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5365, file: !5168, line: 23, baseType: !511, size: 192, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5365, file: !5168, line: 24, baseType: !5371, size: 16384, offset: 256)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5372, size: 16384, elements: !1295)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5179, line: 51, size: 256, elements: !5373)
!5373 = !{!5374}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5372, file: !5179, line: 52, baseType: !5375, size: 256)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5179, line: 37, size: 256, elements: !5376)
!5376 = !{!5377, !5384, !5385, !5389}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5375, file: !5179, line: 39, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5379, line: 83, baseType: !5380)
!5379 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5379, line: 82, baseType: !5382)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{null, !12}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5375, file: !5179, line: 40, baseType: !22, size: 64, offset: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5375, file: !5179, line: 46, baseType: !5386, size: 64, offset: 128)
!5386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5379, line: 86, baseType: !5387)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5379, line: 85, baseType: !2510)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5375, file: !5179, line: 48, baseType: !5183, size: 64, offset: 192)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !14, file: !15, line: 1112, baseType: !5183, size: 64, offset: 15488)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !14, file: !15, line: 1113, baseType: !5183, size: 64, offset: 15552)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !14, file: !15, line: 1115, baseType: !5183, size: 64, offset: 15616)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !14, file: !15, line: 1116, baseType: !5178, size: 192, offset: 15680)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !14, file: !15, line: 1117, baseType: !22, size: 64, offset: 15872)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !14, file: !15, line: 1118, baseType: !842, size: 64, offset: 15936)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !14, file: !15, line: 1119, baseType: !29, size: 32, offset: 16000)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !14, file: !15, line: 1121, baseType: !430, size: 64, offset: 16064)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !14, file: !15, line: 1125, baseType: !5399, size: 64, offset: 16128)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !15, line: 43, flags: DIFlagFwdDecl)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !14, file: !15, line: 1127, baseType: !537, size: 32, offset: 16192)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !14, file: !15, line: 1128, baseType: !29, size: 32, offset: 16224)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !14, file: !15, line: 1130, baseType: !5404, size: 128, offset: 16256)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5405, line: 37, size: 128, elements: !5406)
!5405 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5406 = !{!5407, !5408, !5409}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5404, file: !5405, line: 38, baseType: !12, size: 32)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5404, file: !5405, line: 39, baseType: !40, size: 32, offset: 32)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5404, file: !5405, line: 40, baseType: !5410, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5405, line: 24, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !14, file: !15, line: 1131, baseType: !5413, size: 256, offset: 16384)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5414, line: 12, size: 256, elements: !5415)
!5414 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5415 = !{!5416, !5417, !5418, !5419}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5413, file: !5414, line: 13, baseType: !668, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5413, file: !5414, line: 14, baseType: !22, size: 64, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5413, file: !5414, line: 15, baseType: !22, size: 64, offset: 128)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5413, file: !5414, line: 16, baseType: !655, size: 8, offset: 192)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !14, file: !15, line: 1134, baseType: !95, size: 64, offset: 16640)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !14, file: !15, line: 1135, baseType: !95, size: 64, offset: 16704)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !14, file: !15, line: 1138, baseType: !400, size: 32, offset: 16768)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !14, file: !15, line: 1141, baseType: !198, size: 32, offset: 16800)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !14, file: !15, line: 1143, baseType: !5425, size: 64, offset: 16832)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !15, line: 735, size: 64, elements: !5426)
!5426 = !{!5427}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5425, file: !15, line: 736, baseType: !5428, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !14, file: !15, line: 1147, baseType: !264, size: 128, offset: 16896)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !14, file: !15, line: 1149, baseType: !13, size: 64, offset: 17024)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !14, file: !15, line: 1151, baseType: !5432, size: 64, offset: 17088)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !15, line: 1151, flags: DIFlagFwdDecl)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !14, file: !15, line: 1188, baseType: !33, size: 64, offset: 17152)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !14, file: !15, line: 1191, baseType: !5436, size: 64, offset: 17216)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !14, file: !15, line: 1194, baseType: !5438, size: 64, offset: 17280)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !14, file: !15, line: 1197, baseType: !5440, size: 64, offset: 17344)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !15, line: 61, flags: DIFlagFwdDecl)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !14, file: !15, line: 1199, baseType: !5443, size: 64, offset: 17408)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5445, line: 99, size: 128, elements: !5446)
!5445 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5446 = !{!5447, !5448, !5449}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5444, file: !5445, line: 100, baseType: !440, size: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5444, file: !5445, line: 101, baseType: !40, size: 32, offset: 64)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5444, file: !5445, line: 103, baseType: !66, size: 16, offset: 96)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !14, file: !15, line: 1202, baseType: !5451, size: 64, offset: 17472)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !15, line: 48, flags: DIFlagFwdDecl)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !14, file: !15, line: 1205, baseType: !22, size: 64, offset: 17536)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !14, file: !15, line: 1206, baseType: !5455, size: 64, offset: 17600)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5179, line: 14, baseType: !5457)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5179, line: 12, size: 384, elements: !5458)
!5458 = !{!5459}
!5459 = !DIDerivedType(tag: DW_TAG_member, scope: !5457, file: !5179, line: 13, baseType: !5460, size: 384)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5457, file: !5179, line: 13, size: 384, elements: !5461)
!5461 = !{!5462, !5463, !5464, !5465}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5460, file: !5179, line: 13, baseType: !12, size: 32)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5460, file: !5179, line: 13, baseType: !12, size: 32, offset: 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5460, file: !5179, line: 13, baseType: !12, size: 32, offset: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5460, file: !5179, line: 13, baseType: !5466, size: 256, offset: 128)
!5466 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5467, line: 37, size: 256, elements: !5468)
!5467 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5468 = !{!5469, !5474, !5487, !5493, !5502, !5529, !5534}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5466, file: !5467, line: 42, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 39, size: 64, elements: !5471)
!5471 = !{!5472, !5473}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5470, file: !5467, line: 40, baseType: !4450, size: 32)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5470, file: !5467, line: 41, baseType: !543, size: 32, offset: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5466, file: !5467, line: 50, baseType: !5475, size: 192)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 45, size: 192, elements: !5476)
!5476 = !{!5477, !5479, !5480, !5486}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5475, file: !5467, line: 46, baseType: !5478, size: 32)
!5478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !248, line: 95, baseType: !12)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5475, file: !5467, line: 47, baseType: !12, size: 32, offset: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5475, file: !5467, line: 48, baseType: !5481, size: 64, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5467, line: 11, baseType: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5467, line: 8, size: 64, elements: !5483)
!5483 = !{!5484, !5485}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5482, file: !5467, line: 9, baseType: !12, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5482, file: !5467, line: 10, baseType: !33, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5475, file: !5467, line: 49, baseType: !12, size: 32, offset: 128)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5466, file: !5467, line: 57, baseType: !5488, size: 128)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 53, size: 128, elements: !5489)
!5489 = !{!5490, !5491, !5492}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5488, file: !5467, line: 54, baseType: !4450, size: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5488, file: !5467, line: 55, baseType: !543, size: 32, offset: 32)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5488, file: !5467, line: 56, baseType: !5481, size: 64, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5466, file: !5467, line: 66, baseType: !5494, size: 256)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 60, size: 256, elements: !5495)
!5495 = !{!5496, !5497, !5498, !5499, !5501}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5494, file: !5467, line: 61, baseType: !4450, size: 32)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5494, file: !5467, line: 62, baseType: !543, size: 32, offset: 32)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5494, file: !5467, line: 63, baseType: !12, size: 32, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5494, file: !5467, line: 64, baseType: !5500, size: 64, offset: 128)
!5500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !248, line: 94, baseType: !1145)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5494, file: !5467, line: 65, baseType: !5500, size: 64, offset: 192)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5466, file: !5467, line: 105, baseType: !5503, size: 256)
!5503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 69, size: 256, elements: !5504)
!5504 = !{!5505, !5506}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5503, file: !5467, line: 70, baseType: !33, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, scope: !5503, file: !5467, line: 79, baseType: !5507, size: 192, offset: 64)
!5507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5503, file: !5467, line: 79, size: 192, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5518, !5523}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5507, file: !5467, line: 81, baseType: !12, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5507, file: !5467, line: 86, baseType: !624, size: 16)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5507, file: !5467, line: 92, baseType: !5512, size: 192)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5507, file: !5467, line: 88, size: 192, elements: !5513)
!5513 = !{!5514, !5516, !5517}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5512, file: !5467, line: 89, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !242)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5512, file: !5467, line: 90, baseType: !33, size: 64, offset: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5512, file: !5467, line: 91, baseType: !33, size: 64, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5507, file: !5467, line: 97, baseType: !5519, size: 96)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5507, file: !5467, line: 94, size: 96, elements: !5520)
!5520 = !{!5521, !5522}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5519, file: !5467, line: 95, baseType: !5515, size: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5519, file: !5467, line: 96, baseType: !27, size: 32, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5507, file: !5467, line: 103, baseType: !5524, size: 128)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5507, file: !5467, line: 99, size: 128, elements: !5525)
!5525 = !{!5526, !5527, !5528}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5524, file: !5467, line: 100, baseType: !22, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5524, file: !5467, line: 101, baseType: !27, size: 32, offset: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5524, file: !5467, line: 102, baseType: !27, size: 32, offset: 96)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5466, file: !5467, line: 111, baseType: !5530, size: 128)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 108, size: 128, elements: !5531)
!5531 = !{!5532, !5533}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5530, file: !5467, line: 109, baseType: !920, size: 64)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5530, file: !5467, line: 110, baseType: !12, size: 32, offset: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5466, file: !5467, line: 118, baseType: !5535, size: 128)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5466, file: !5467, line: 114, size: 128, elements: !5536)
!5536 = !{!5537, !5538, !5539}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5535, file: !5467, line: 115, baseType: !33, size: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5535, file: !5467, line: 116, baseType: !12, size: 32, offset: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5535, file: !5467, line: 117, baseType: !29, size: 32, offset: 96)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !14, file: !15, line: 1208, baseType: !5263, size: 448, offset: 17664)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !14, file: !15, line: 1215, baseType: !95, size: 64, offset: 18112)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !14, file: !15, line: 1217, baseType: !95, size: 64, offset: 18176)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !14, file: !15, line: 1219, baseType: !95, size: 64, offset: 18240)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !14, file: !15, line: 1223, baseType: !5545, size: 64, offset: 18304)
!5545 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5546, line: 99, baseType: !5547)
!5546 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5546, line: 99, size: 64, elements: !5548)
!5548 = !{!5549}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5547, file: !5546, line: 99, baseType: !332, size: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !14, file: !15, line: 1225, baseType: !962, size: 32, offset: 18368)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !14, file: !15, line: 1226, baseType: !12, size: 32, offset: 18400)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !14, file: !15, line: 1227, baseType: !12, size: 32, offset: 18432)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !14, file: !15, line: 1231, baseType: !4907, size: 64, offset: 18496)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !14, file: !15, line: 1233, baseType: !100, size: 128, offset: 18560)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !14, file: !15, line: 1240, baseType: !5556, size: 64, offset: 18688)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !15, line: 62, flags: DIFlagFwdDecl)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !14, file: !15, line: 1242, baseType: !5559, size: 64, offset: 18752)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !15, line: 1242, flags: DIFlagFwdDecl)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !14, file: !15, line: 1244, baseType: !100, size: 128, offset: 18816)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !14, file: !15, line: 1245, baseType: !5563, size: 64, offset: 18944)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !15, line: 51, flags: DIFlagFwdDecl)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !14, file: !15, line: 1246, baseType: !447, size: 256, offset: 19008)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !14, file: !15, line: 1247, baseType: !29, size: 32, offset: 19264)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !14, file: !15, line: 1250, baseType: !5568, size: 64, offset: 19328)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !15, line: 57, flags: DIFlagFwdDecl)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !14, file: !15, line: 1251, baseType: !447, size: 256, offset: 19392)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !14, file: !15, line: 1252, baseType: !100, size: 128, offset: 19648)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !14, file: !15, line: 1259, baseType: !1587, size: 64, offset: 19776)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !14, file: !15, line: 1260, baseType: !624, size: 16, offset: 19840)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !14, file: !15, line: 1261, baseType: !624, size: 16, offset: 19856)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !14, file: !15, line: 1314, baseType: !5576, size: 64, offset: 19904)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5578, line: 62, size: 256, align: 256, elements: !5579)
!5578 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5579 = !{!5580, !5581, !5582, !5583, !5584, !5585, !5586}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5577, file: !5578, line: 75, baseType: !27, size: 32)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5577, file: !5578, line: 90, baseType: !27, size: 32, offset: 32)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5577, file: !5578, line: 112, baseType: !96, size: 64, offset: 64)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5577, file: !5578, line: 132, baseType: !27, size: 32, offset: 128)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5577, file: !5578, line: 140, baseType: !27, size: 32, offset: 160)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5577, file: !5578, line: 149, baseType: !27, size: 32, offset: 192)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5577, file: !5578, line: 154, baseType: !5587, offset: 224)
!5587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !526)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !14, file: !15, line: 1315, baseType: !25, size: 32, offset: 19968)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !14, file: !15, line: 1316, baseType: !25, size: 32, offset: 20000)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !14, file: !15, line: 1321, baseType: !22, size: 64, offset: 20032)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !14, file: !15, line: 1325, baseType: !12, size: 32, offset: 20096)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !14, file: !15, line: 1326, baseType: !12, size: 32, offset: 20128)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !14, file: !15, line: 1327, baseType: !12, size: 32, offset: 20160)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !14, file: !15, line: 1328, baseType: !12, size: 32, offset: 20192)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !14, file: !15, line: 1329, baseType: !427, size: 128, align: 64, offset: 20224)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !14, file: !15, line: 1332, baseType: !5597, size: 128, offset: 20352)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5598, line: 51, size: 128, elements: !5599)
!5598 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5599 = !{!5600, !5605, !5606}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5597, file: !5598, line: 60, baseType: !5601, size: 64)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5602, line: 7, size: 64, elements: !5603)
!5602 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5603 = !{!5604}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5601, file: !5602, line: 12, baseType: !329, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5597, file: !5598, line: 63, baseType: !655, size: 8, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5597, file: !5598, line: 70, baseType: !655, size: 8, offset: 72)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !14, file: !15, line: 1335, baseType: !4039, size: 64, offset: 20480)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !14, file: !15, line: 1337, baseType: !5609, size: 128, offset: 20544)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5598, line: 39, size: 128, elements: !5610)
!5610 = !{!5611, !5612, !5613}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5609, file: !5598, line: 40, baseType: !1376, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5609, file: !5598, line: 42, baseType: !27, size: 32, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5609, file: !5598, line: 43, baseType: !27, size: 32, offset: 96)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !14, file: !15, line: 1340, baseType: !5615, size: 64, offset: 20672)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !15, line: 69, flags: DIFlagFwdDecl)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !14, file: !15, line: 1351, baseType: !12, size: 32, offset: 20736)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !14, file: !15, line: 1352, baseType: !12, size: 32, offset: 20768)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !14, file: !15, line: 1354, baseType: !22, size: 64, offset: 20800)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !14, file: !15, line: 1364, baseType: !95, size: 64, offset: 20864)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !14, file: !15, line: 1365, baseType: !95, size: 64, offset: 20928)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !14, file: !15, line: 1412, baseType: !22, size: 64, offset: 20992)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !14, file: !15, line: 1453, baseType: !2820, size: 64, offset: 21056)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !14, file: !15, line: 1457, baseType: !5625, size: 64, offset: 21120)
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !4354, line: 61, size: 576, elements: !5627)
!5627 = !{!5628, !5635, !5654, !5657, !5658, !5691, !5701}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5626, file: !4354, line: 62, baseType: !5629, size: 32)
!5629 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !4354, line: 51, baseType: !29, size: 32, elements: !5630)
!5630 = !{!5631, !5632, !5633, !5634}
!5631 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!5632 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!5633 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!5634 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!5635 = !DIDerivedType(tag: DW_TAG_member, scope: !5626, file: !4354, line: 64, baseType: !5636, size: 192, offset: 64)
!5636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5626, file: !4354, line: 64, size: 192, elements: !5637)
!5637 = !{!5638, !5649}
!5638 = !DIDerivedType(tag: DW_TAG_member, scope: !5636, file: !4354, line: 65, baseType: !5639, size: 192)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5636, file: !4354, line: 65, size: 192, elements: !5640)
!5640 = !{!5641, !5648}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5639, file: !4354, line: 66, baseType: !5642, size: 128)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5643, line: 50, size: 128, elements: !5644)
!5643 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5644 = !{!5645, !5646, !5647}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5642, file: !5643, line: 52, baseType: !22, size: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5642, file: !5643, line: 54, baseType: !29, size: 32, offset: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5642, file: !5643, line: 55, baseType: !29, size: 32, offset: 96)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5639, file: !4354, line: 67, baseType: !22, size: 64, offset: 128)
!5649 = !DIDerivedType(tag: DW_TAG_member, scope: !5636, file: !4354, line: 70, baseType: !5650, size: 192)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5636, file: !4354, line: 70, size: 192, elements: !5651)
!5651 = !{!5652, !5653}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5650, file: !4354, line: 71, baseType: !427, size: 128, align: 64)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5650, file: !4354, line: 72, baseType: !22, size: 64, offset: 128)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5626, file: !4354, line: 76, baseType: !5655, size: 64, offset: 256)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !4354, line: 76, flags: DIFlagFwdDecl)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5626, file: !4354, line: 77, baseType: !22, size: 64, offset: 320)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5626, file: !4354, line: 79, baseType: !5659, size: 64, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5643, line: 25, size: 256, elements: !5661)
!5661 = !{!5662, !5668, !5672}
!5662 = !DIDerivedType(tag: DW_TAG_member, scope: !5660, file: !5643, line: 26, baseType: !5663, size: 128)
!5663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5660, file: !5643, line: 26, size: 128, elements: !5664)
!5664 = !{!5665, !5667}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5663, file: !5643, line: 27, baseType: !5666, size: 128)
!5666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !5)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5663, file: !5643, line: 28, baseType: !5666, size: 128)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5660, file: !5643, line: 31, baseType: !5669, size: 64, offset: 128)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5671)
!5671 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5643, line: 23, flags: DIFlagFwdDecl)
!5672 = !DIDerivedType(tag: DW_TAG_member, scope: !5660, file: !5643, line: 33, baseType: !5673, size: 64, offset: 192)
!5673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5660, file: !5643, line: 33, size: 64, elements: !5674)
!5674 = !{!5675, !5681, !5686}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5673, file: !5643, line: 38, baseType: !5676, size: 64)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5673, file: !5643, line: 34, size: 64, elements: !5677)
!5677 = !{!5678, !5679, !5680}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5676, file: !5643, line: 35, baseType: !588, size: 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5676, file: !5643, line: 36, baseType: !215, size: 8, offset: 32)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5676, file: !5643, line: 37, baseType: !215, size: 8, offset: 40)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5673, file: !5643, line: 42, baseType: !5682, size: 16)
!5682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5673, file: !5643, line: 39, size: 16, elements: !5683)
!5683 = !{!5684, !5685}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5682, file: !5643, line: 40, baseType: !215, size: 8)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5682, file: !5643, line: 41, baseType: !215, size: 8, offset: 8)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5673, file: !5643, line: 46, baseType: !5687, size: 16)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5673, file: !5643, line: 43, size: 16, elements: !5688)
!5688 = !{!5689, !5690}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5687, file: !5643, line: 44, baseType: !215, size: 8)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5687, file: !5643, line: 45, baseType: !215, size: 8, offset: 8)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5626, file: !4354, line: 81, baseType: !5692, size: 64, offset: 448)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !4354, line: 85, size: 384, elements: !5694)
!5694 = !{!5695, !5696, !5697, !5698, !5699, !5700}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5693, file: !4354, line: 86, baseType: !5655, size: 64)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5693, file: !4354, line: 87, baseType: !22, size: 64, offset: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5693, file: !4354, line: 88, baseType: !22, size: 64, offset: 128)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5693, file: !4354, line: 89, baseType: !22, size: 64, offset: 192)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5693, file: !4354, line: 90, baseType: !655, size: 8, offset: 256)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5693, file: !4354, line: 92, baseType: !5692, size: 64, offset: 320)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5626, file: !4354, line: 82, baseType: !29, size: 32, offset: 512)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !14, file: !15, line: 1463, baseType: !5703, offset: 21184)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !15, line: 739, elements: !411)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !14, file: !15, line: 1470, baseType: !427, size: 128, align: 64, offset: 21184)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !14, file: !15, line: 1471, baseType: !35, size: 32, offset: 21312)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !14, file: !15, line: 1472, baseType: !12, size: 32, offset: 21344)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !14, file: !15, line: 1474, baseType: !13, size: 64, offset: 21376)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !14, file: !15, line: 1475, baseType: !2400, size: 320, offset: 21440)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !14, file: !15, line: 1478, baseType: !5710, size: 64, offset: 21760)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !15, line: 1478, flags: DIFlagFwdDecl)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !14, file: !15, line: 1482, baseType: !35, size: 32, offset: 21824)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !14, file: !15, line: 1489, baseType: !33, size: 64, offset: 21888)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !14, file: !15, line: 1504, baseType: !33, size: 64, offset: 21952)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !14, file: !15, line: 1505, baseType: !96, size: 64, offset: 22016)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !14, file: !15, line: 1506, baseType: !95, size: 64, offset: 22080)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !14, file: !15, line: 1507, baseType: !96, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !14, file: !15, line: 1508, baseType: !96, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !14, file: !15, line: 1509, baseType: !96, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !14, file: !15, line: 1510, baseType: !427, size: 128, align: 64, offset: 22208)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !14, file: !15, line: 1511, baseType: !12, size: 32, offset: 22336)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !14, file: !15, line: 1515, baseType: !4781, size: 64, offset: 22400)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !14, file: !15, line: 1518, baseType: !4781, size: 64, offset: 22464)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !14, file: !15, line: 1528, baseType: !427, size: 128, align: 64, offset: 22528)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !14, file: !15, line: 1552, baseType: !5726, size: 35328, offset: 23040)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5727, line: 430, size: 35328, elements: !5728)
!5727 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5728 = !{!5729, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5758, !5759, !5760, !5761, !5762, !5763, !5766, !5767, !5768, !5769}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5726, file: !5727, line: 432, baseType: !5730, size: 192)
!5730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5731, size: 192, elements: !485)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5732, line: 16, size: 64, elements: !5733)
!5732 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5731, file: !5732, line: 17, baseType: !64, size: 16)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5731, file: !5732, line: 18, baseType: !64, size: 16, offset: 16)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5731, file: !5732, line: 19, baseType: !64, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5731, file: !5732, line: 19, baseType: !64, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5731, file: !5732, line: 19, baseType: !64, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5731, file: !5732, line: 19, baseType: !64, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5731, file: !5732, line: 19, baseType: !64, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5731, file: !5732, line: 20, baseType: !64, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5731, file: !5732, line: 20, baseType: !64, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5731, file: !5732, line: 20, baseType: !64, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5731, file: !5732, line: 20, baseType: !64, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5731, file: !5732, line: 20, baseType: !64, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5731, file: !5732, line: 20, baseType: !64, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5726, file: !5727, line: 436, baseType: !22, size: 64, offset: 192)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5726, file: !5727, line: 440, baseType: !66, size: 16, offset: 256)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5726, file: !5727, line: 441, baseType: !66, size: 16, offset: 272)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5726, file: !5727, line: 442, baseType: !66, size: 16, offset: 288)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5726, file: !5727, line: 443, baseType: !66, size: 16, offset: 304)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5726, file: !5727, line: 447, baseType: !22, size: 64, offset: 320)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5726, file: !5727, line: 448, baseType: !22, size: 64, offset: 384)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5726, file: !5727, line: 459, baseType: !5755, size: 256, offset: 448)
!5755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5756, size: 256, elements: !507)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5727, line: 428, flags: DIFlagFwdDecl)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5726, file: !5727, line: 461, baseType: !22, size: 64, offset: 704)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5726, file: !5727, line: 463, baseType: !22, size: 64, offset: 768)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5726, file: !5727, line: 465, baseType: !22, size: 64, offset: 832)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5726, file: !5727, line: 466, baseType: !22, size: 64, offset: 896)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5726, file: !5727, line: 467, baseType: !22, size: 64, offset: 960)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5726, file: !5727, line: 473, baseType: !5764, size: 64, offset: 1024)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5765, size: 64)
!5765 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5727, line: 10, flags: DIFlagFwdDecl)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5726, file: !5727, line: 480, baseType: !22, size: 64, offset: 1088)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5726, file: !5727, line: 482, baseType: !29, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5726, file: !5727, line: 491, baseType: !25, size: 32, offset: 1184)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5726, file: !5727, line: 501, baseType: !5770, size: 33792, offset: 1536)
!5770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5771, line: 448, size: 33792, elements: !5772)
!5771 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5772 = !{!5773, !5774, !5775, !5935, !5936, !5942, !5943}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5770, file: !5771, line: 461, baseType: !29, size: 32)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5770, file: !5771, line: 468, baseType: !22, size: 64, offset: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5770, file: !5771, line: 476, baseType: !5776, size: 64, offset: 128)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5771, line: 356, size: 33280, align: 512, elements: !5778)
!5778 = !{!5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5777, file: !5771, line: 358, baseType: !29, size: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5777, file: !5771, line: 361, baseType: !29, size: 32, offset: 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5777, file: !5771, line: 364, baseType: !95, size: 64, offset: 64)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5777, file: !5771, line: 367, baseType: !95, size: 64, offset: 128)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5777, file: !5771, line: 370, baseType: !95, size: 64, offset: 192)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5777, file: !5771, line: 373, baseType: !29, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5777, file: !5771, line: 376, baseType: !29, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5777, file: !5771, line: 391, baseType: !29, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5777, file: !5771, line: 394, baseType: !29, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5777, file: !5771, line: 397, baseType: !5789, size: 32768, offset: 512)
!5789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5771, line: 348, size: 32768, elements: !5790)
!5790 = !{!5791, !5806, !5843, !5920, !5933}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5789, file: !5771, line: 349, baseType: !5792, size: 896)
!5792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5771, line: 12, size: 896, elements: !5793)
!5793 = !{!5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5805}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5792, file: !5771, line: 13, baseType: !25, size: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5792, file: !5771, line: 14, baseType: !25, size: 32, offset: 32)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5792, file: !5771, line: 15, baseType: !25, size: 32, offset: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5792, file: !5771, line: 16, baseType: !25, size: 32, offset: 96)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5792, file: !5771, line: 17, baseType: !25, size: 32, offset: 128)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5792, file: !5771, line: 18, baseType: !25, size: 32, offset: 160)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5792, file: !5771, line: 19, baseType: !25, size: 32, offset: 192)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5792, file: !5771, line: 22, baseType: !5802, size: 640, offset: 224)
!5802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !5803)
!5803 = !{!5804}
!5804 = !DISubrange(count: 20)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5792, file: !5771, line: 25, baseType: !25, size: 32, offset: 864)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5789, file: !5771, line: 350, baseType: !5807, size: 4096, align: 128)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5771, line: 34, size: 4096, align: 128, elements: !5808)
!5808 = !{!5809, !5810, !5811, !5812, !5813, !5828, !5829, !5830, !5832, !5834, !5838}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5807, file: !5771, line: 35, baseType: !64, size: 16)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5807, file: !5771, line: 36, baseType: !64, size: 16, offset: 16)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5807, file: !5771, line: 37, baseType: !64, size: 16, offset: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5807, file: !5771, line: 38, baseType: !64, size: 16, offset: 48)
!5813 = !DIDerivedType(tag: DW_TAG_member, scope: !5807, file: !5771, line: 39, baseType: !5814, size: 128, offset: 64)
!5814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5807, file: !5771, line: 39, size: 128, elements: !5815)
!5815 = !{!5816, !5821}
!5816 = !DIDerivedType(tag: DW_TAG_member, scope: !5814, file: !5771, line: 40, baseType: !5817, size: 128)
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5814, file: !5771, line: 40, size: 128, elements: !5818)
!5818 = !{!5819, !5820}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5817, file: !5771, line: 41, baseType: !95, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5817, file: !5771, line: 42, baseType: !95, size: 64, offset: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, scope: !5814, file: !5771, line: 44, baseType: !5822, size: 128)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5814, file: !5771, line: 44, size: 128, elements: !5823)
!5823 = !{!5824, !5825, !5826, !5827}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5822, file: !5771, line: 45, baseType: !25, size: 32)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5822, file: !5771, line: 46, baseType: !25, size: 32, offset: 32)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5822, file: !5771, line: 47, baseType: !25, size: 32, offset: 64)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5822, file: !5771, line: 48, baseType: !25, size: 32, offset: 96)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5807, file: !5771, line: 51, baseType: !25, size: 32, offset: 192)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5807, file: !5771, line: 52, baseType: !25, size: 32, offset: 224)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5807, file: !5771, line: 55, baseType: !5831, size: 1024, offset: 256)
!5831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, elements: !2829)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5807, file: !5771, line: 58, baseType: !5833, size: 2048, offset: 1280)
!5833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !1295)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5807, file: !5771, line: 60, baseType: !5835, size: 384, offset: 3328)
!5835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !5836)
!5836 = !{!5837}
!5837 = !DISubrange(count: 12)
!5838 = !DIDerivedType(tag: DW_TAG_member, scope: !5807, file: !5771, line: 62, baseType: !5839, size: 384, offset: 3712)
!5839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5807, file: !5771, line: 62, size: 384, elements: !5840)
!5840 = !{!5841, !5842}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5839, file: !5771, line: 63, baseType: !5835, size: 384)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5839, file: !5771, line: 64, baseType: !5835, size: 384)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5789, file: !5771, line: 351, baseType: !5844, size: 1088)
!5844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5771, line: 79, size: 1088, elements: !5845)
!5845 = !{!5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5919}
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5844, file: !5771, line: 80, baseType: !25, size: 32)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5844, file: !5771, line: 81, baseType: !25, size: 32, offset: 32)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5844, file: !5771, line: 82, baseType: !25, size: 32, offset: 64)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5844, file: !5771, line: 83, baseType: !25, size: 32, offset: 96)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5844, file: !5771, line: 84, baseType: !25, size: 32, offset: 128)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5844, file: !5771, line: 85, baseType: !25, size: 32, offset: 160)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5844, file: !5771, line: 86, baseType: !25, size: 32, offset: 192)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5844, file: !5771, line: 88, baseType: !5802, size: 640, offset: 224)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5844, file: !5771, line: 89, baseType: !215, size: 8, offset: 864)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5844, file: !5771, line: 90, baseType: !215, size: 8, offset: 872)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5844, file: !5771, line: 91, baseType: !215, size: 8, offset: 880)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5844, file: !5771, line: 92, baseType: !215, size: 8, offset: 888)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5844, file: !5771, line: 93, baseType: !215, size: 8, offset: 896)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5844, file: !5771, line: 94, baseType: !215, size: 8, offset: 904)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5844, file: !5771, line: 95, baseType: !5861, size: 64, offset: 960)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5863, line: 11, size: 128, elements: !5864)
!5863 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5864 = !{!5865, !5866}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5862, file: !5863, line: 12, baseType: !920, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5862, file: !5863, line: 13, baseType: !5867, size: 64, offset: 64)
!5867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5868, size: 64)
!5868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5869, line: 103, size: 1344, elements: !5870)
!5869 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5870 = !{!5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5899, !5900, !5901}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5868, file: !5869, line: 109, baseType: !22, size: 64)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5868, file: !5869, line: 110, baseType: !22, size: 64, offset: 64)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5868, file: !5869, line: 111, baseType: !22, size: 64, offset: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5868, file: !5869, line: 112, baseType: !22, size: 64, offset: 192)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5868, file: !5869, line: 113, baseType: !22, size: 64, offset: 256)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5868, file: !5869, line: 114, baseType: !22, size: 64, offset: 320)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5868, file: !5869, line: 117, baseType: !22, size: 64, offset: 384)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5868, file: !5869, line: 118, baseType: !22, size: 64, offset: 448)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5868, file: !5869, line: 119, baseType: !22, size: 64, offset: 512)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5868, file: !5869, line: 120, baseType: !22, size: 64, offset: 576)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5868, file: !5869, line: 121, baseType: !22, size: 64, offset: 640)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5868, file: !5869, line: 122, baseType: !22, size: 64, offset: 704)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5868, file: !5869, line: 123, baseType: !22, size: 64, offset: 768)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5868, file: !5869, line: 124, baseType: !22, size: 64, offset: 832)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5868, file: !5869, line: 125, baseType: !22, size: 64, offset: 896)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5868, file: !5869, line: 139, baseType: !22, size: 64, offset: 960)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5868, file: !5869, line: 142, baseType: !22, size: 64, offset: 1024)
!5888 = !DIDerivedType(tag: DW_TAG_member, scope: !5868, file: !5869, line: 144, baseType: !5889, size: 64, offset: 1088)
!5889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5868, file: !5869, line: 144, size: 64, elements: !5890)
!5890 = !{!5891, !5892, !5893}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5889, file: !5869, line: 146, baseType: !64, size: 16)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5889, file: !5869, line: 148, baseType: !95, size: 64)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5889, file: !5869, line: 150, baseType: !5894, size: 64)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5869, line: 59, size: 64, elements: !5895)
!5895 = !{!5896, !5897, !5898}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5894, file: !5869, line: 61, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5894, file: !5869, line: 63, baseType: !95, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5894, file: !5869, line: 65, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5868, file: !5869, line: 153, baseType: !22, size: 64, offset: 1152)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5868, file: !5869, line: 154, baseType: !22, size: 64, offset: 1216)
!5901 = !DIDerivedType(tag: DW_TAG_member, scope: !5868, file: !5869, line: 156, baseType: !5902, size: 64, offset: 1280)
!5902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5868, file: !5869, line: 156, size: 64, elements: !5903)
!5903 = !{!5904, !5905, !5906}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5902, file: !5869, line: 158, baseType: !64, size: 16)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5902, file: !5869, line: 160, baseType: !95, size: 64)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5902, file: !5869, line: 162, baseType: !5907, size: 64)
!5907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5869, line: 69, size: 64, elements: !5908)
!5908 = !{!5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916, !5917, !5918}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5907, file: !5869, line: 71, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5907, file: !5869, line: 73, baseType: !95, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5907, file: !5869, line: 75, baseType: !95, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5907, file: !5869, line: 77, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5907, file: !5869, line: 80, baseType: !95, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5907, file: !5869, line: 83, baseType: !95, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5907, file: !5869, line: 86, baseType: !95, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5907, file: !5869, line: 88, baseType: !95, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5907, file: !5869, line: 93, baseType: !95, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5907, file: !5869, line: 100, baseType: !95, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5844, file: !5771, line: 96, baseType: !25, size: 32, offset: 1024)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5789, file: !5771, line: 352, baseType: !5921, size: 4608, align: 512)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5771, line: 333, size: 4608, align: 512, elements: !5922)
!5922 = !{!5923, !5924, !5931}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5921, file: !5771, line: 334, baseType: !5807, size: 4096, align: 128)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5921, file: !5771, line: 335, baseType: !5925, size: 512, offset: 4096)
!5925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5771, line: 312, size: 512, elements: !5926)
!5926 = !{!5927, !5928, !5929}
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5925, file: !5771, line: 313, baseType: !95, size: 64)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5925, file: !5771, line: 314, baseType: !95, size: 64, offset: 64)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5925, file: !5771, line: 315, baseType: !5930, size: 384, offset: 128)
!5930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 384, elements: !642)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5921, file: !5771, line: 336, baseType: !5932, offset: 4608)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !526)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5789, file: !5771, line: 353, baseType: !5934, size: 32768)
!5934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !4962)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5770, file: !5771, line: 484, baseType: !5776, size: 64, offset: 192)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5770, file: !5771, line: 491, baseType: !5937, size: 128, offset: 256)
!5937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5771, line: 404, size: 128, elements: !5938)
!5938 = !{!5939, !5940, !5941}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5937, file: !5771, line: 424, baseType: !95, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5937, file: !5771, line: 432, baseType: !29, size: 32, offset: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5937, file: !5771, line: 440, baseType: !29, size: 32, offset: 96)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5770, file: !5771, line: 498, baseType: !5937, size: 128, offset: 384)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5770, file: !5771, line: 508, baseType: !5777, size: 33280, align: 512, offset: 512)
!5944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF io_uring/.tctx.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22io_uring/tctx\22 -D KBUILD_BASENAME=\22tctx\22 -D KBUILD_MODNAME=\22tctx\22 -D __KBUILD_MODNAME=kmod_tctx -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o io_uring/tctx.ll io_uring/tctx.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5945, retainedTypes: !5961, globals: !5972, splitDebugInlining: false, nameTableKind: None)
!5945 = !{!184, !529, !832, !1237, !1463, !1609, !1695, !1909, !1979, !2561, !2630, !3016, !3153, !3215, !3292, !3300, !3431, !3441, !3447, !3455, !3485, !3517, !3606, !4413, !4584, !5629, !5946, !5951}
!5946 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5947, line: 10, baseType: !29, size: 32, elements: !5948)
!5947 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5948 = !{!5949, !5950}
!5949 = !DIEnumerator(name: "false", value: 0)
!5950 = !DIEnumerator(name: "true", value: 1)
!5951 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5952, line: 364, baseType: !29, size: 32, elements: !5953)
!5952 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5953 = !{!5954, !5955, !5956, !5957, !5958, !5959, !5960}
!5954 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5955 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5956 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5957 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5958 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5959 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5960 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5961 = !{!5962, !1195, !22, !12, !27, !33, !5963, !920, !5966, !5967, !13, !5968, !5970}
!5962 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !1191, line: 250, baseType: !29)
!5963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5964, size: 64)
!5964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5965)
!5965 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!5966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5971, size: 64)
!5971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5969)
!5972 = !{!0, !7, !5973, !5975, !5978, !6007, !6009, !6014, !6017}
!5973 = !DIGlobalVariableExpression(var: !5974, expr: !DIExpression())
!5974 = distinct !DIGlobalVariable(name: "__key", scope: !9, file: !2, line: 96, type: !2516, isLocal: true, isDefinition: true)
!5975 = !DIGlobalVariableExpression(var: !5976, expr: !DIExpression())
!5976 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !5977, isLocal: true, isDefinition: true)
!5977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5836)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(name: "__key", scope: !5980, file: !2, line: 31, type: !2516, isLocal: true, isDefinition: true)
!5980 = distinct !DISubprogram(name: "io_init_wq_offload", scope: !2, file: !2, line: 15, type: !5981, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !5983)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!4861, !4668, !13}
!5983 = !{!5984, !5985, !5986, !5987, !6003, !6004, !6006}
!5984 = !DILocalVariable(name: "ctx", arg: 1, scope: !5980, file: !2, line: 15, type: !4668)
!5985 = !DILocalVariable(name: "task", arg: 2, scope: !5980, file: !2, line: 16, type: !13)
!5986 = !DILocalVariable(name: "hash", scope: !5980, file: !2, line: 18, type: !4835)
!5987 = !DILocalVariable(name: "data", scope: !5980, file: !2, line: 19, type: !5988)
!5988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_data", file: !4837, line: 39, size: 256, elements: !5989)
!5989 = !{!5990, !5991, !5992, !5998}
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5988, file: !4837, line: 40, baseType: !4835, size: 64)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5988, file: !4837, line: 41, baseType: !13, size: 64, offset: 64)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "do_work", scope: !5988, file: !4837, line: 42, baseType: !5993, size: 64, offset: 128)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_wq_work_fn", file: !4837, line: 25, baseType: !5995)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{null, !5997}
!5997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !5988, file: !4837, line: 43, baseType: !5999, size: 64, offset: 192)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_work_fn", file: !4837, line: 24, baseType: !6001)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{!5997, !5997}
!6003 = !DILocalVariable(name: "concurrency", scope: !5980, file: !2, line: 20, type: !29)
!6004 = !DILocalVariable(name: "__UNIQUE_ID___x499", scope: !6005, file: !2, line: 42, type: !29)
!6005 = distinct !DILexicalBlock(scope: !5980, file: !2, line: 42, column: 16)
!6006 = !DILocalVariable(name: "__UNIQUE_ID___y500", scope: !6005, file: !2, line: 42, type: !29)
!6007 = !DIGlobalVariableExpression(var: !6008, expr: !DIExpression())
!6008 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !5977, isLocal: true, isDefinition: true)
!6009 = !DIGlobalVariableExpression(var: !6010, expr: !DIExpression())
!6010 = distinct !DIGlobalVariable(scope: null, file: !5952, line: 480, type: !6011, isLocal: true, isDefinition: true)
!6011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !6012)
!6012 = !{!6013}
!6013 = !DISubrange(count: 21)
!6014 = !DIGlobalVariableExpression(var: !6015, expr: !DIExpression())
!6015 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched175", scope: !6016, file: !15, line: 2104, type: !33, isLocal: true, isDefinition: true)
!6016 = distinct !DISubprogram(name: "_cond_resched", scope: !15, file: !15, line: 2102, type: !2271, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944)
!6017 = !DIGlobalVariableExpression(var: !6018, expr: !DIExpression())
!6018 = distinct !DIGlobalVariable(scope: null, file: !6019, line: 249, type: !6020, isLocal: true, isDefinition: true)
!6019 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !6021)
!6021 = !{!6022}
!6022 = !DISubrange(count: 28)
!6023 = !{!6024, !6025, !6026, !6027}
!6024 = !DILocalVariable(name: "task", arg: 1, scope: !9, file: !2, line: 71, type: !13)
!6025 = !DILocalVariable(name: "ctx", arg: 2, scope: !9, file: !2, line: 72, type: !4668)
!6026 = !DILocalVariable(name: "tctx", scope: !9, file: !2, line: 74, type: !4529)
!6027 = !DILocalVariable(name: "ret", scope: !9, file: !2, line: 75, type: !12)
!6028 = !{i32 7, !"Dwarf Version", i32 5}
!6029 = !{i32 2, !"Debug Info Version", i32 3}
!6030 = !{i32 1, !"wchar_size", i32 2}
!6031 = !{i32 8, !"cf-protection-branch", i32 1}
!6032 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6033 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6034 = !{i32 1, !"Code Model", i32 2}
!6035 = !{i32 1, !"override-stack-alignment", i32 8}
!6036 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6037 = distinct !DISubprogram(name: "__io_uring_free", scope: !2, file: !2, line: 47, type: !5069, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6038)
!6038 = !{!6039, !6040, !6041, !6049, !6050, !6055, !6058, !6060, !6063, !6065}
!6039 = !DILocalVariable(name: "tsk", arg: 1, scope: !6037, file: !2, line: 47, type: !13)
!6040 = !DILocalVariable(name: "tctx", scope: !6037, file: !2, line: 49, type: !4529)
!6041 = !DILocalVariable(name: "node", scope: !6037, file: !2, line: 50, type: !6042)
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_tctx_node", file: !6044, line: 3, size: 256, elements: !6045)
!6044 = !DIFile(filename: "io_uring/tctx.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2be17f765ed34c22a4f913a2411f943")
!6045 = !{!6046, !6047, !6048}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_node", scope: !6043, file: !6044, line: 4, baseType: !100, size: 128)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !6043, file: !6044, line: 5, baseType: !13, size: 64, offset: 128)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !6043, file: !6044, line: 6, baseType: !4668, size: 64, offset: 192)
!6049 = !DILocalVariable(name: "index", scope: !6037, file: !2, line: 51, type: !22)
!6050 = !DILocalVariable(name: "__ret_warn_on", scope: !6051, file: !2, line: 60, type: !12)
!6051 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 60, column: 3)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !2, line: 59, column: 38)
!6053 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 59, column: 2)
!6054 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 59, column: 2)
!6055 = !DILocalVariable(name: "__flags", scope: !6056, file: !2, line: 60, type: !12)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 60, column: 3)
!6057 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 60, column: 3)
!6058 = !DILocalVariable(name: "__ret_warn_on", scope: !6059, file: !2, line: 63, type: !12)
!6059 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 63, column: 2)
!6060 = !DILocalVariable(name: "__flags", scope: !6061, file: !2, line: 63, type: !12)
!6061 = distinct !DILexicalBlock(scope: !6062, file: !2, line: 63, column: 2)
!6062 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 63, column: 2)
!6063 = !DILocalVariable(name: "__ret_warn_on", scope: !6064, file: !2, line: 64, type: !12)
!6064 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 64, column: 2)
!6065 = !DILocalVariable(name: "__flags", scope: !6066, file: !2, line: 64, type: !12)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !2, line: 64, column: 2)
!6067 = distinct !DILexicalBlock(scope: !6064, file: !2, line: 64, column: 2)
!6068 = !DILocation(line: 47, column: 42, scope: !6037)
!6069 = !DILocation(line: 49, column: 2, scope: !6037)
!6070 = !DILocation(line: 49, column: 24, scope: !6037)
!6071 = !DILocation(line: 49, column: 31, scope: !6037)
!6072 = !DILocation(line: 49, column: 36, scope: !6037)
!6073 = !DILocation(line: 50, column: 2, scope: !6037)
!6074 = !DILocation(line: 50, column: 23, scope: !6037)
!6075 = !DILocation(line: 51, column: 2, scope: !6037)
!6076 = !DILocation(line: 51, column: 16, scope: !6037)
!6077 = !DILocation(line: 59, column: 2, scope: !6054)
!6078 = !DILocation(line: 59, column: 2, scope: !6053)
!6079 = !DILocation(line: 60, column: 3, scope: !6051)
!6080 = !DILocation(line: 60, column: 3, scope: !6057)
!6081 = !DILocation(line: 60, column: 3, scope: !6056)
!6082 = !DILocation(line: 60, column: 3, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6056, file: !2, line: 60, column: 3)
!6084 = !DILocation(line: 60, column: 3, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6056, file: !2, line: 60, column: 3)
!6086 = !{i64 2156707007, i64 2156707036, i64 2156707082, i64 2156707140, i64 2156707194, i64 2156707248, i64 2156707303, i64 2156707334, i64 2156707642, i64 2156707648, i64 2156707695, i64 2156707718, i64 2156707744}
!6087 = !DILocation(line: 60, column: 3, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6056, file: !2, line: 60, column: 3)
!6089 = !DILocation(line: 60, column: 3, scope: !6052)
!6090 = !DILocation(line: 61, column: 3, scope: !6052)
!6091 = distinct !{!6091, !6077, !6092, !6093, !6094}
!6092 = !DILocation(line: 62, column: 2, scope: !6054)
!6093 = !{!"llvm.loop.mustprogress"}
!6094 = !{!"llvm.loop.unroll.disable"}
!6095 = !DILocation(line: 63, column: 2, scope: !6059)
!6096 = !DILocation(line: 63, column: 2, scope: !6062)
!6097 = !DILocation(line: 63, column: 2, scope: !6061)
!6098 = !DILocation(line: 63, column: 2, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 63, column: 2)
!6100 = !DILocation(line: 63, column: 2, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 63, column: 2)
!6102 = !{i64 2156708524, i64 2156708553, i64 2156708599, i64 2156708657, i64 2156708711, i64 2156708765, i64 2156708820, i64 2156708851, i64 2156709159, i64 2156709165, i64 2156709212, i64 2156709235, i64 2156709261}
!6103 = !DILocation(line: 63, column: 2, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 63, column: 2)
!6105 = !DILocation(line: 63, column: 2, scope: !6037)
!6106 = !DILocation(line: 64, column: 2, scope: !6064)
!6107 = !DILocation(line: 64, column: 2, scope: !6067)
!6108 = !DILocation(line: 64, column: 2, scope: !6066)
!6109 = !DILocation(line: 64, column: 2, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 64, column: 2)
!6111 = !DILocation(line: 64, column: 2, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 64, column: 2)
!6113 = !{i64 2156710047, i64 2156710076, i64 2156710122, i64 2156710180, i64 2156710234, i64 2156710288, i64 2156710343, i64 2156710374, i64 2156710682, i64 2156710688, i64 2156710735, i64 2156710758, i64 2156710784}
!6114 = !DILocation(line: 64, column: 2, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 64, column: 2)
!6116 = !DILocation(line: 64, column: 2, scope: !6037)
!6117 = !DILocation(line: 66, column: 26, scope: !6037)
!6118 = !DILocation(line: 66, column: 32, scope: !6037)
!6119 = !DILocation(line: 66, column: 2, scope: !6037)
!6120 = !DILocation(line: 67, column: 8, scope: !6037)
!6121 = !DILocation(line: 67, column: 2, scope: !6037)
!6122 = !DILocation(line: 68, column: 2, scope: !6037)
!6123 = !DILocation(line: 68, column: 7, scope: !6037)
!6124 = !DILocation(line: 68, column: 16, scope: !6037)
!6125 = !DILocation(line: 69, column: 1, scope: !6037)
!6126 = !DISubprogram(name: "xa_find", scope: !1191, file: !1191, line: 359, type: !6127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!33, !1897, !2496, !22, !5962}
!6129 = !DISubprogram(name: "xa_find_after", scope: !1191, file: !1191, line: 361, type: !6127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6130 = distinct !DISubprogram(name: "percpu_counter_destroy", scope: !717, file: !717, line: 50, type: !6131, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6134)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{null, !6133}
!6133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!6134 = !{!6135}
!6135 = !DILocalVariable(name: "fbc", arg: 1, scope: !6130, file: !717, line: 50, type: !6133)
!6136 = !DILocation(line: 50, column: 66, scope: !6130)
!6137 = !DILocation(line: 52, column: 30, scope: !6130)
!6138 = !DILocation(line: 52, column: 2, scope: !6130)
!6139 = !DILocation(line: 53, column: 1, scope: !6130)
!6140 = !DISubprogram(name: "kfree", scope: !5952, file: !5952, line: 227, type: !6141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{null, !1996}
!6143 = !DILocation(line: 71, column: 60, scope: !9)
!6144 = !DILocation(line: 72, column: 32, scope: !9)
!6145 = !DILocation(line: 74, column: 2, scope: !9)
!6146 = !DILocation(line: 74, column: 24, scope: !9)
!6147 = !DILocation(line: 75, column: 2, scope: !9)
!6148 = !DILocation(line: 75, column: 6, scope: !9)
!6149 = !DILocation(line: 77, column: 9, scope: !9)
!6150 = !DILocation(line: 77, column: 7, scope: !9)
!6151 = !DILocation(line: 78, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !9, file: !2, line: 78, column: 6)
!6153 = !DILocation(line: 78, column: 6, scope: !9)
!6154 = !DILocation(line: 79, column: 3, scope: !6152)
!6155 = !DILocation(line: 81, column: 8, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !9, file: !2, line: 81, column: 8)
!6157 = !DILocation(line: 81, column: 6, scope: !9)
!6158 = !DILocation(line: 82, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !9, file: !2, line: 82, column: 6)
!6160 = !DILocation(line: 82, column: 6, scope: !9)
!6161 = !DILocation(line: 83, column: 9, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6159, file: !2, line: 82, column: 21)
!6163 = !DILocation(line: 83, column: 3, scope: !6162)
!6164 = !DILocation(line: 84, column: 10, scope: !6162)
!6165 = !DILocation(line: 84, column: 3, scope: !6162)
!6166 = !DILocation(line: 87, column: 35, scope: !9)
!6167 = !DILocation(line: 87, column: 40, scope: !9)
!6168 = !DILocation(line: 87, column: 16, scope: !9)
!6169 = !DILocation(line: 87, column: 2, scope: !9)
!6170 = !DILocation(line: 87, column: 8, scope: !9)
!6171 = !DILocation(line: 87, column: 14, scope: !9)
!6172 = !DILocation(line: 88, column: 13, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !9, file: !2, line: 88, column: 6)
!6174 = !DILocation(line: 88, column: 19, scope: !6173)
!6175 = !DILocation(line: 88, column: 6, scope: !6173)
!6176 = !DILocation(line: 88, column: 6, scope: !9)
!6177 = !DILocation(line: 89, column: 17, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 88, column: 27)
!6179 = !DILocation(line: 89, column: 23, scope: !6178)
!6180 = !DILocation(line: 89, column: 9, scope: !6178)
!6181 = !DILocation(line: 89, column: 7, scope: !6178)
!6182 = !DILocation(line: 90, column: 27, scope: !6178)
!6183 = !DILocation(line: 90, column: 33, scope: !6178)
!6184 = !DILocation(line: 90, column: 3, scope: !6178)
!6185 = !DILocation(line: 91, column: 9, scope: !6178)
!6186 = !DILocation(line: 91, column: 3, scope: !6178)
!6187 = !DILocation(line: 92, column: 10, scope: !6178)
!6188 = !DILocation(line: 92, column: 3, scope: !6178)
!6189 = !DILocation(line: 95, column: 11, scope: !9)
!6190 = !DILocation(line: 95, column: 17, scope: !9)
!6191 = !DILocation(line: 95, column: 2, scope: !9)
!6192 = !DILocation(line: 96, column: 2, scope: !9)
!6193 = !DILocation(line: 96, column: 2, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !9, file: !2, line: 96, column: 2)
!6195 = !DILocation(line: 97, column: 14, scope: !9)
!6196 = !DILocation(line: 97, column: 20, scope: !9)
!6197 = !DILocation(line: 97, column: 2, scope: !9)
!6198 = !DILocation(line: 98, column: 14, scope: !9)
!6199 = !DILocation(line: 98, column: 20, scope: !9)
!6200 = !DILocation(line: 98, column: 2, scope: !9)
!6201 = !DILocation(line: 99, column: 19, scope: !9)
!6202 = !DILocation(line: 99, column: 2, scope: !9)
!6203 = !DILocation(line: 99, column: 8, scope: !9)
!6204 = !DILocation(line: 99, column: 17, scope: !9)
!6205 = !DILocation(line: 100, column: 19, scope: !9)
!6206 = !DILocation(line: 100, column: 25, scope: !9)
!6207 = !DILocation(line: 100, column: 2, scope: !9)
!6208 = !DILocation(line: 101, column: 18, scope: !9)
!6209 = !DILocation(line: 101, column: 24, scope: !9)
!6210 = !DILocation(line: 101, column: 2, scope: !9)
!6211 = !DILocation(line: 102, column: 2, scope: !9)
!6212 = !DILocation(line: 103, column: 1, scope: !9)
!6213 = distinct !DISubprogram(name: "kzalloc", scope: !5952, file: !5952, line: 719, type: !6214, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6216)
!6214 = !DISubroutineType(types: !6215)
!6215 = !{!33, !842, !1195}
!6216 = !{!6217, !6218}
!6217 = !DILocalVariable(name: "size", arg: 1, scope: !6213, file: !5952, line: 719, type: !842)
!6218 = !DILocalVariable(name: "flags", arg: 2, scope: !6213, file: !5952, line: 719, type: !1195)
!6219 = !DILocation(line: 719, column: 52, scope: !6213)
!6220 = !DILocation(line: 719, column: 64, scope: !6213)
!6221 = !DILocation(line: 721, column: 17, scope: !6213)
!6222 = !DILocation(line: 721, column: 23, scope: !6213)
!6223 = !DILocation(line: 721, column: 29, scope: !6213)
!6224 = !DILocation(line: 721, column: 9, scope: !6213)
!6225 = !DILocation(line: 721, column: 2, scope: !6213)
!6226 = !DISubprogram(name: "__percpu_counter_init_many", scope: !717, file: !717, line: 33, type: !6227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{!12, !6133, !111, !1195, !25, !6229}
!6229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!6230 = !DILocation(line: 15, column: 61, scope: !5980)
!6231 = !DILocation(line: 16, column: 26, scope: !5980)
!6232 = !DILocation(line: 18, column: 2, scope: !5980)
!6233 = !DILocation(line: 18, column: 21, scope: !5980)
!6234 = !DILocation(line: 19, column: 2, scope: !5980)
!6235 = !DILocation(line: 19, column: 20, scope: !5980)
!6236 = !DILocation(line: 20, column: 2, scope: !5980)
!6237 = !DILocation(line: 20, column: 15, scope: !5980)
!6238 = !DILocation(line: 22, column: 14, scope: !5980)
!6239 = !DILocation(line: 22, column: 19, scope: !5980)
!6240 = !DILocation(line: 22, column: 2, scope: !5980)
!6241 = !DILocation(line: 23, column: 9, scope: !5980)
!6242 = !DILocation(line: 23, column: 14, scope: !5980)
!6243 = !DILocation(line: 23, column: 7, scope: !5980)
!6244 = !DILocation(line: 24, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !5980, file: !2, line: 24, column: 6)
!6246 = !DILocation(line: 24, column: 6, scope: !5980)
!6247 = !DILocation(line: 25, column: 10, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6245, file: !2, line: 24, column: 13)
!6249 = !DILocation(line: 25, column: 8, scope: !6248)
!6250 = !DILocation(line: 26, column: 8, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6248, file: !2, line: 26, column: 7)
!6252 = !DILocation(line: 26, column: 7, scope: !6248)
!6253 = !DILocation(line: 27, column: 18, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 26, column: 14)
!6255 = !DILocation(line: 27, column: 23, scope: !6254)
!6256 = !DILocation(line: 27, column: 4, scope: !6254)
!6257 = !DILocation(line: 28, column: 11, scope: !6254)
!6258 = !DILocation(line: 28, column: 4, scope: !6254)
!6259 = !DILocation(line: 30, column: 17, scope: !6248)
!6260 = !DILocation(line: 30, column: 23, scope: !6248)
!6261 = !DILocation(line: 30, column: 3, scope: !6248)
!6262 = !DILocation(line: 31, column: 3, scope: !6248)
!6263 = !DILocation(line: 31, column: 3, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6248, file: !2, line: 31, column: 3)
!6265 = !DILocation(line: 32, column: 19, scope: !6248)
!6266 = !DILocation(line: 32, column: 3, scope: !6248)
!6267 = !DILocation(line: 32, column: 8, scope: !6248)
!6268 = !DILocation(line: 32, column: 17, scope: !6248)
!6269 = !DILocation(line: 33, column: 2, scope: !6248)
!6270 = !DILocation(line: 34, column: 16, scope: !5980)
!6271 = !DILocation(line: 34, column: 21, scope: !5980)
!6272 = !DILocation(line: 34, column: 2, scope: !5980)
!6273 = !DILocation(line: 36, column: 14, scope: !5980)
!6274 = !DILocation(line: 36, column: 7, scope: !5980)
!6275 = !DILocation(line: 36, column: 12, scope: !5980)
!6276 = !DILocation(line: 37, column: 14, scope: !5980)
!6277 = !DILocation(line: 37, column: 7, scope: !5980)
!6278 = !DILocation(line: 37, column: 12, scope: !5980)
!6279 = !DILocation(line: 38, column: 7, scope: !5980)
!6280 = !DILocation(line: 38, column: 17, scope: !5980)
!6281 = !DILocation(line: 39, column: 7, scope: !5980)
!6282 = !DILocation(line: 39, column: 15, scope: !5980)
!6283 = !DILocation(line: 42, column: 16, scope: !6005)
!6284 = !DILocation(line: 42, column: 16, scope: !5980)
!6285 = !DILocation(line: 42, column: 14, scope: !5980)
!6286 = !DILocation(line: 44, column: 22, scope: !5980)
!6287 = !DILocation(line: 44, column: 9, scope: !5980)
!6288 = !DILocation(line: 44, column: 2, scope: !5980)
!6289 = !DILocation(line: 45, column: 1, scope: !5980)
!6290 = distinct !DISubprogram(name: "IS_ERR", scope: !6291, file: !6291, line: 59, type: !6292, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6294)
!6291 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!655, !1996}
!6294 = !{!6295}
!6295 = !DILocalVariable(name: "ptr", arg: 1, scope: !6290, file: !6291, line: 59, type: !1996)
!6296 = !DILocation(line: 59, column: 60, scope: !6290)
!6297 = !DILocation(line: 61, column: 9, scope: !6290)
!6298 = !DILocation(line: 61, column: 2, scope: !6290)
!6299 = distinct !DISubprogram(name: "PTR_ERR", scope: !6291, file: !6291, line: 49, type: !6300, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!920, !1996}
!6302 = !{!6303}
!6303 = !DILocalVariable(name: "ptr", arg: 1, scope: !6299, file: !6291, line: 49, type: !1996)
!6304 = !DILocation(line: 49, column: 61, scope: !6299)
!6305 = !DILocation(line: 51, column: 16, scope: !6299)
!6306 = !DILocation(line: 51, column: 9, scope: !6299)
!6307 = !DILocation(line: 51, column: 2, scope: !6299)
!6308 = distinct !DISubprogram(name: "xa_init", scope: !1191, file: !1191, line: 393, type: !6309, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6311)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{null, !1897}
!6311 = !{!6312}
!6312 = !DILocalVariable(name: "xa", arg: 1, scope: !6308, file: !1191, line: 393, type: !1897)
!6313 = !DILocation(line: 393, column: 43, scope: !6308)
!6314 = !DILocation(line: 395, column: 16, scope: !6308)
!6315 = !DILocation(line: 395, column: 2, scope: !6308)
!6316 = !DILocation(line: 396, column: 1, scope: !6308)
!6317 = !DISubprogram(name: "__init_waitqueue_head", scope: !512, file: !512, line: 64, type: !6318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !6320, !658, !6229}
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!6321 = distinct !DISubprogram(name: "atomic_set", scope: !6322, file: !6322, line: 65, type: !6323, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6326)
!6322 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6323 = !DISubroutineType(types: !6324)
!6324 = !{null, !6325, !12}
!6325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!6326 = !{!6327, !6328}
!6327 = !DILocalVariable(name: "v", arg: 1, scope: !6321, file: !6322, line: 65, type: !6325)
!6328 = !DILocalVariable(name: "i", arg: 2, scope: !6321, file: !6322, line: 65, type: !12)
!6329 = !DILocation(line: 65, column: 22, scope: !6321)
!6330 = !DILocation(line: 65, column: 29, scope: !6321)
!6331 = !DILocation(line: 67, column: 26, scope: !6321)
!6332 = !DILocation(line: 67, column: 2, scope: !6321)
!6333 = !DILocation(line: 68, column: 17, scope: !6321)
!6334 = !DILocation(line: 68, column: 20, scope: !6321)
!6335 = !DILocation(line: 68, column: 2, scope: !6321)
!6336 = !DILocation(line: 69, column: 1, scope: !6321)
!6337 = distinct !DISubprogram(name: "init_llist_head", scope: !54, file: !54, line: 71, type: !6338, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6341)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !6340}
!6340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!6341 = !{!6342}
!6342 = !DILocalVariable(name: "list", arg: 1, scope: !6337, file: !54, line: 71, type: !6340)
!6343 = !DILocation(line: 71, column: 55, scope: !6337)
!6344 = !DILocation(line: 73, column: 2, scope: !6337)
!6345 = !DILocation(line: 73, column: 8, scope: !6337)
!6346 = !DILocation(line: 73, column: 14, scope: !6337)
!6347 = !DILocation(line: 74, column: 1, scope: !6337)
!6348 = distinct !DISubprogram(name: "init_task_work", scope: !4585, file: !4585, line: 11, type: !6349, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6352)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{null, !430, !6351}
!6351 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_work_func_t", file: !4585, line: 8, baseType: !432)
!6352 = !{!6353, !6354}
!6353 = !DILocalVariable(name: "twork", arg: 1, scope: !6348, file: !4585, line: 11, type: !430)
!6354 = !DILocalVariable(name: "func", arg: 2, scope: !6348, file: !4585, line: 11, type: !6351)
!6355 = !DILocation(line: 11, column: 38, scope: !6348)
!6356 = !DILocation(line: 11, column: 62, scope: !6348)
!6357 = !DILocation(line: 13, column: 16, scope: !6348)
!6358 = !DILocation(line: 13, column: 2, scope: !6348)
!6359 = !DILocation(line: 13, column: 9, scope: !6348)
!6360 = !DILocation(line: 13, column: 14, scope: !6348)
!6361 = !DILocation(line: 14, column: 1, scope: !6348)
!6362 = distinct !DISubprogram(name: "__io_uring_add_tctx_node", scope: !2, file: !2, line: 105, type: !6363, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6365)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!12, !4668}
!6365 = !{!6366, !6367, !6368, !6369, !6370}
!6366 = !DILocalVariable(name: "ctx", arg: 1, scope: !6362, file: !2, line: 105, type: !4668)
!6367 = !DILocalVariable(name: "tctx", scope: !6362, file: !2, line: 107, type: !4529)
!6368 = !DILocalVariable(name: "node", scope: !6362, file: !2, line: 108, type: !6042)
!6369 = !DILocalVariable(name: "ret", scope: !6362, file: !2, line: 109, type: !12)
!6370 = !DILocalVariable(name: "limits", scope: !6371, file: !2, line: 118, type: !6375)
!6371 = distinct !DILexicalBlock(scope: !6372, file: !2, line: 117, column: 29)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 117, column: 7)
!6373 = distinct !DILexicalBlock(scope: !6374, file: !2, line: 111, column: 23)
!6374 = distinct !DILexicalBlock(scope: !6362, file: !2, line: 111, column: 6)
!6375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !2289)
!6376 = !DILocation(line: 105, column: 50, scope: !6362)
!6377 = !DILocation(line: 107, column: 2, scope: !6362)
!6378 = !DILocation(line: 107, column: 24, scope: !6362)
!6379 = !DILocation(line: 107, column: 31, scope: !6362)
!6380 = !DILocation(line: 107, column: 40, scope: !6362)
!6381 = !DILocation(line: 108, column: 2, scope: !6362)
!6382 = !DILocation(line: 108, column: 23, scope: !6362)
!6383 = !DILocation(line: 109, column: 2, scope: !6362)
!6384 = !DILocation(line: 109, column: 6, scope: !6362)
!6385 = !DILocation(line: 111, column: 6, scope: !6374)
!6386 = !DILocation(line: 111, column: 6, scope: !6362)
!6387 = !DILocation(line: 112, column: 37, scope: !6373)
!6388 = !DILocation(line: 112, column: 46, scope: !6373)
!6389 = !DILocation(line: 112, column: 9, scope: !6373)
!6390 = !DILocation(line: 112, column: 7, scope: !6373)
!6391 = !DILocation(line: 113, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 113, column: 7)
!6393 = !DILocation(line: 113, column: 7, scope: !6373)
!6394 = !DILocation(line: 114, column: 11, scope: !6392)
!6395 = !DILocation(line: 114, column: 4, scope: !6392)
!6396 = !DILocation(line: 116, column: 10, scope: !6373)
!6397 = !DILocation(line: 116, column: 19, scope: !6373)
!6398 = !DILocation(line: 116, column: 8, scope: !6373)
!6399 = !DILocation(line: 117, column: 7, scope: !6372)
!6400 = !DILocation(line: 117, column: 12, scope: !6372)
!6401 = !{i8 0, i8 2}
!6402 = !DILocation(line: 117, column: 7, scope: !6373)
!6403 = !DILocation(line: 118, column: 4, scope: !6371)
!6404 = !DILocation(line: 118, column: 17, scope: !6371)
!6405 = !DILocation(line: 118, column: 29, scope: !6371)
!6406 = !DILocation(line: 118, column: 31, scope: !6371)
!6407 = !DILocation(line: 118, column: 36, scope: !6371)
!6408 = !DILocation(line: 119, column: 10, scope: !6371)
!6409 = !DILocation(line: 119, column: 15, scope: !6371)
!6410 = !DILocation(line: 121, column: 28, scope: !6371)
!6411 = !DILocation(line: 121, column: 34, scope: !6371)
!6412 = !DILocation(line: 121, column: 41, scope: !6371)
!6413 = !DILocation(line: 121, column: 10, scope: !6371)
!6414 = !DILocation(line: 121, column: 8, scope: !6371)
!6415 = !DILocation(line: 122, column: 8, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 122, column: 8)
!6417 = !DILocation(line: 122, column: 8, scope: !6371)
!6418 = !DILocation(line: 123, column: 12, scope: !6416)
!6419 = !DILocation(line: 123, column: 5, scope: !6416)
!6420 = !DILocation(line: 124, column: 3, scope: !6372)
!6421 = !DILocation(line: 124, column: 3, scope: !6371)
!6422 = !DILocation(line: 125, column: 2, scope: !6373)
!6423 = !DILocation(line: 126, column: 16, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6362, file: !2, line: 126, column: 6)
!6425 = !DILocation(line: 126, column: 22, scope: !6424)
!6426 = !DILocation(line: 126, column: 41, scope: !6424)
!6427 = !DILocation(line: 126, column: 26, scope: !6424)
!6428 = !DILocation(line: 126, column: 7, scope: !6424)
!6429 = !DILocation(line: 126, column: 6, scope: !6362)
!6430 = !DILocation(line: 127, column: 10, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6424, file: !2, line: 126, column: 47)
!6432 = !DILocation(line: 127, column: 8, scope: !6431)
!6433 = !DILocation(line: 128, column: 8, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6431, file: !2, line: 128, column: 7)
!6435 = !DILocation(line: 128, column: 7, scope: !6431)
!6436 = !DILocation(line: 129, column: 4, scope: !6434)
!6437 = !DILocation(line: 130, column: 15, scope: !6431)
!6438 = !DILocation(line: 130, column: 3, scope: !6431)
!6439 = !DILocation(line: 130, column: 9, scope: !6431)
!6440 = !DILocation(line: 130, column: 13, scope: !6431)
!6441 = !DILocation(line: 131, column: 16, scope: !6431)
!6442 = !DILocation(line: 131, column: 3, scope: !6431)
!6443 = !DILocation(line: 131, column: 9, scope: !6431)
!6444 = !DILocation(line: 131, column: 14, scope: !6431)
!6445 = !DILocation(line: 133, column: 26, scope: !6431)
!6446 = !DILocation(line: 133, column: 32, scope: !6431)
!6447 = !DILocation(line: 133, column: 51, scope: !6431)
!6448 = !DILocation(line: 133, column: 36, scope: !6431)
!6449 = !DILocation(line: 134, column: 6, scope: !6431)
!6450 = !DILocation(line: 133, column: 16, scope: !6431)
!6451 = !DILocation(line: 133, column: 9, scope: !6431)
!6452 = !DILocation(line: 133, column: 7, scope: !6431)
!6453 = !DILocation(line: 135, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6431, file: !2, line: 135, column: 7)
!6455 = !DILocation(line: 135, column: 7, scope: !6431)
!6456 = !DILocation(line: 136, column: 10, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6454, file: !2, line: 135, column: 12)
!6458 = !DILocation(line: 136, column: 4, scope: !6457)
!6459 = !DILocation(line: 137, column: 11, scope: !6457)
!6460 = !DILocation(line: 137, column: 4, scope: !6457)
!6461 = !DILocation(line: 140, column: 15, scope: !6431)
!6462 = !DILocation(line: 140, column: 20, scope: !6431)
!6463 = !DILocation(line: 140, column: 3, scope: !6431)
!6464 = !DILocation(line: 141, column: 13, scope: !6431)
!6465 = !DILocation(line: 141, column: 19, scope: !6431)
!6466 = !DILocation(line: 141, column: 30, scope: !6431)
!6467 = !DILocation(line: 141, column: 35, scope: !6431)
!6468 = !DILocation(line: 141, column: 3, scope: !6431)
!6469 = !DILocation(line: 142, column: 17, scope: !6431)
!6470 = !DILocation(line: 142, column: 22, scope: !6431)
!6471 = !DILocation(line: 142, column: 3, scope: !6431)
!6472 = !DILocation(line: 143, column: 2, scope: !6431)
!6473 = !DILocation(line: 144, column: 2, scope: !6362)
!6474 = !DILocation(line: 145, column: 1, scope: !6362)
!6475 = distinct !DISubprogram(name: "get_current", scope: !6476, file: !6476, line: 39, type: !6477, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6479)
!6476 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!13}
!6479 = !{!6480, !6482, !6484}
!6480 = !DILocalVariable(name: "pscr_ret__", scope: !6481, file: !6476, line: 41, type: !13)
!6481 = distinct !DILexicalBlock(scope: !6475, file: !6476, line: 41, column: 9)
!6482 = !DILocalVariable(name: "__vpp_verify", scope: !6483, file: !6476, line: 41, type: !1996)
!6483 = distinct !DILexicalBlock(scope: !6481, file: !6476, line: 41, column: 9)
!6484 = !DILocalVariable(name: "pfo_val__", scope: !6485, file: !6476, line: 41, type: !95)
!6485 = distinct !DILexicalBlock(scope: !6481, file: !6476, line: 41, column: 9)
!6486 = !DILocation(line: 41, column: 9, scope: !6481)
!6487 = !DILocation(line: 41, column: 9, scope: !6483)
!6488 = !DILocation(line: 41, column: 9, scope: !6485)
!6489 = !{i64 2148525924}
!6490 = !DILocation(line: 41, column: 9, scope: !6475)
!6491 = !DILocation(line: 41, column: 2, scope: !6475)
!6492 = !DISubprogram(name: "io_wq_max_workers", scope: !4837, file: !4837, line: 54, type: !6493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{!12, !4861, !2299}
!6495 = !DISubprogram(name: "xa_load", scope: !1191, file: !1191, line: 351, type: !6496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6496 = !DISubroutineType(types: !6497)
!6497 = !{!33, !1897, !22}
!6498 = distinct !DISubprogram(name: "kmalloc", scope: !5952, file: !5952, line: 591, type: !6214, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6499)
!6499 = !{!6500, !6501, !6502}
!6500 = !DILocalVariable(name: "size", arg: 1, scope: !6498, file: !5952, line: 591, type: !842)
!6501 = !DILocalVariable(name: "flags", arg: 2, scope: !6498, file: !5952, line: 591, type: !1195)
!6502 = !DILocalVariable(name: "index", scope: !6503, file: !5952, line: 594, type: !29)
!6503 = distinct !DILexicalBlock(scope: !6504, file: !5952, line: 593, column: 42)
!6504 = distinct !DILexicalBlock(scope: !6498, file: !5952, line: 593, column: 6)
!6505 = !DILocation(line: 591, column: 61, scope: !6498)
!6506 = !DILocation(line: 591, column: 73, scope: !6498)
!6507 = !DILocation(line: 593, column: 27, scope: !6504)
!6508 = !DILocation(line: 593, column: 6, scope: !6504)
!6509 = !DILocation(line: 593, column: 33, scope: !6504)
!6510 = !DILocation(line: 593, column: 36, scope: !6504)
!6511 = !DILocation(line: 593, column: 6, scope: !6498)
!6512 = !DILocation(line: 594, column: 3, scope: !6503)
!6513 = !DILocation(line: 594, column: 16, scope: !6503)
!6514 = !DILocation(line: 596, column: 7, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6503, file: !5952, line: 596, column: 7)
!6516 = !DILocation(line: 596, column: 12, scope: !6515)
!6517 = !DILocation(line: 596, column: 7, scope: !6503)
!6518 = !DILocation(line: 597, column: 25, scope: !6515)
!6519 = !DILocation(line: 597, column: 31, scope: !6515)
!6520 = !DILocation(line: 597, column: 11, scope: !6515)
!6521 = !DILocation(line: 597, column: 4, scope: !6515)
!6522 = !DILocation(line: 599, column: 11, scope: !6503)
!6523 = !DILocation(line: 599, column: 9, scope: !6503)
!6524 = !DILocation(line: 601, column: 33, scope: !6503)
!6525 = !DILocation(line: 601, column: 40, scope: !6503)
!6526 = !DILocation(line: 601, column: 20, scope: !6503)
!6527 = !DILocation(line: 601, column: 5, scope: !6503)
!6528 = !DILocation(line: 601, column: 51, scope: !6503)
!6529 = !DILocation(line: 602, column: 5, scope: !6503)
!6530 = !DILocation(line: 602, column: 12, scope: !6503)
!6531 = !DILocation(line: 600, column: 10, scope: !6503)
!6532 = !DILocation(line: 600, column: 3, scope: !6503)
!6533 = !DILocation(line: 603, column: 2, scope: !6504)
!6534 = !DILocation(line: 604, column: 19, scope: !6498)
!6535 = !DILocation(line: 604, column: 25, scope: !6498)
!6536 = !DILocation(line: 604, column: 9, scope: !6498)
!6537 = !DILocation(line: 604, column: 2, scope: !6498)
!6538 = !DILocation(line: 605, column: 1, scope: !6498)
!6539 = distinct !DISubprogram(name: "xa_err", scope: !1191, file: !1191, line: 219, type: !6540, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6542)
!6540 = !DISubroutineType(types: !6541)
!6541 = !{!12, !33}
!6542 = !{!6543}
!6543 = !DILocalVariable(name: "entry", arg: 1, scope: !6539, file: !1191, line: 219, type: !33)
!6544 = !DILocation(line: 219, column: 32, scope: !6539)
!6545 = !DILocation(line: 222, column: 16, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6539, file: !1191, line: 222, column: 6)
!6547 = !DILocation(line: 222, column: 6, scope: !6546)
!6548 = !DILocation(line: 222, column: 6, scope: !6539)
!6549 = !DILocation(line: 223, column: 16, scope: !6546)
!6550 = !DILocation(line: 223, column: 10, scope: !6546)
!6551 = !DILocation(line: 223, column: 22, scope: !6546)
!6552 = !DILocation(line: 223, column: 3, scope: !6546)
!6553 = !DILocation(line: 224, column: 2, scope: !6539)
!6554 = !DILocation(line: 225, column: 1, scope: !6539)
!6555 = !DISubprogram(name: "xa_store", scope: !1191, file: !1191, line: 352, type: !6556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!33, !1897, !22, !33, !1195}
!6558 = !DISubprogram(name: "mutex_lock", scope: !448, file: !448, line: 227, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{null, !6561}
!6561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!6562 = distinct !DISubprogram(name: "list_add", scope: !6563, file: !6563, line: 167, type: !6564, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6566)
!6563 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6564 = !DISubroutineType(types: !6565)
!6565 = !{null, !103, !103}
!6566 = !{!6567, !6568}
!6567 = !DILocalVariable(name: "new", arg: 1, scope: !6562, file: !6563, line: 167, type: !103)
!6568 = !DILocalVariable(name: "head", arg: 2, scope: !6562, file: !6563, line: 167, type: !103)
!6569 = !DILocation(line: 167, column: 47, scope: !6562)
!6570 = !DILocation(line: 167, column: 70, scope: !6562)
!6571 = !DILocation(line: 169, column: 13, scope: !6562)
!6572 = !DILocation(line: 169, column: 18, scope: !6562)
!6573 = !DILocation(line: 169, column: 24, scope: !6562)
!6574 = !DILocation(line: 169, column: 30, scope: !6562)
!6575 = !DILocation(line: 169, column: 2, scope: !6562)
!6576 = !DILocation(line: 170, column: 1, scope: !6562)
!6577 = !DISubprogram(name: "mutex_unlock", scope: !448, file: !448, line: 246, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6578 = distinct !DISubprogram(name: "__io_uring_add_tctx_node_from_submit", scope: !2, file: !2, line: 147, type: !6363, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6579)
!6579 = !{!6580, !6581}
!6580 = !DILocalVariable(name: "ctx", arg: 1, scope: !6578, file: !2, line: 147, type: !4668)
!6581 = !DILocalVariable(name: "ret", scope: !6578, file: !2, line: 149, type: !12)
!6582 = !DILocation(line: 147, column: 62, scope: !6578)
!6583 = !DILocation(line: 149, column: 2, scope: !6578)
!6584 = !DILocation(line: 149, column: 6, scope: !6578)
!6585 = !DILocation(line: 151, column: 6, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6578, file: !2, line: 151, column: 6)
!6587 = !DILocation(line: 151, column: 11, scope: !6586)
!6588 = !DILocation(line: 151, column: 17, scope: !6586)
!6589 = !DILocation(line: 152, column: 6, scope: !6586)
!6590 = !DILocation(line: 152, column: 9, scope: !6586)
!6591 = !DILocation(line: 152, column: 14, scope: !6586)
!6592 = !DILocation(line: 152, column: 32, scope: !6586)
!6593 = !DILocation(line: 152, column: 29, scope: !6586)
!6594 = !DILocation(line: 151, column: 6, scope: !6578)
!6595 = !DILocation(line: 153, column: 3, scope: !6586)
!6596 = !DILocation(line: 155, column: 33, scope: !6578)
!6597 = !DILocation(line: 155, column: 8, scope: !6578)
!6598 = !DILocation(line: 155, column: 6, scope: !6578)
!6599 = !DILocation(line: 156, column: 6, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6578, file: !2, line: 156, column: 6)
!6601 = !DILocation(line: 156, column: 6, scope: !6578)
!6602 = !DILocation(line: 157, column: 10, scope: !6600)
!6603 = !DILocation(line: 157, column: 3, scope: !6600)
!6604 = !DILocation(line: 159, column: 28, scope: !6578)
!6605 = !DILocation(line: 159, column: 2, scope: !6578)
!6606 = !DILocation(line: 159, column: 11, scope: !6578)
!6607 = !DILocation(line: 159, column: 21, scope: !6578)
!6608 = !DILocation(line: 159, column: 26, scope: !6578)
!6609 = !DILocation(line: 160, column: 2, scope: !6578)
!6610 = !DILocation(line: 161, column: 1, scope: !6578)
!6611 = distinct !DISubprogram(name: "io_uring_del_tctx_node", scope: !2, file: !2, line: 166, type: !6612, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6614)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{null, !22}
!6614 = !{!6615, !6616, !6617, !6618, !6620, !6623, !6625}
!6615 = !DILocalVariable(name: "index", arg: 1, scope: !6611, file: !2, line: 166, type: !22)
!6616 = !DILocalVariable(name: "tctx", scope: !6611, file: !2, line: 168, type: !4529)
!6617 = !DILocalVariable(name: "node", scope: !6611, file: !2, line: 169, type: !6042)
!6618 = !DILocalVariable(name: "__ret_warn_on", scope: !6619, file: !2, line: 177, type: !12)
!6619 = distinct !DILexicalBlock(scope: !6611, file: !2, line: 177, column: 2)
!6620 = !DILocalVariable(name: "__flags", scope: !6621, file: !2, line: 177, type: !12)
!6621 = distinct !DILexicalBlock(scope: !6622, file: !2, line: 177, column: 2)
!6622 = distinct !DILexicalBlock(scope: !6619, file: !2, line: 177, column: 2)
!6623 = !DILocalVariable(name: "__ret_warn_on", scope: !6624, file: !2, line: 178, type: !12)
!6624 = distinct !DILexicalBlock(scope: !6611, file: !2, line: 178, column: 2)
!6625 = !DILocalVariable(name: "__flags", scope: !6626, file: !2, line: 178, type: !12)
!6626 = distinct !DILexicalBlock(scope: !6627, file: !2, line: 178, column: 2)
!6627 = distinct !DILexicalBlock(scope: !6624, file: !2, line: 178, column: 2)
!6628 = !DILocation(line: 166, column: 50, scope: !6611)
!6629 = !DILocation(line: 168, column: 2, scope: !6611)
!6630 = !DILocation(line: 168, column: 24, scope: !6611)
!6631 = !DILocation(line: 168, column: 31, scope: !6611)
!6632 = !DILocation(line: 168, column: 40, scope: !6611)
!6633 = !DILocation(line: 169, column: 2, scope: !6611)
!6634 = !DILocation(line: 169, column: 23, scope: !6611)
!6635 = !DILocation(line: 171, column: 7, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6611, file: !2, line: 171, column: 6)
!6637 = !DILocation(line: 171, column: 6, scope: !6611)
!6638 = !DILocation(line: 172, column: 3, scope: !6636)
!6639 = !DILocation(line: 173, column: 19, scope: !6611)
!6640 = !DILocation(line: 173, column: 25, scope: !6611)
!6641 = !DILocation(line: 173, column: 29, scope: !6611)
!6642 = !DILocation(line: 173, column: 9, scope: !6611)
!6643 = !DILocation(line: 173, column: 7, scope: !6611)
!6644 = !DILocation(line: 174, column: 7, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6611, file: !2, line: 174, column: 6)
!6646 = !DILocation(line: 174, column: 6, scope: !6611)
!6647 = !DILocation(line: 175, column: 3, scope: !6645)
!6648 = !DILocation(line: 177, column: 2, scope: !6619)
!6649 = !DILocation(line: 177, column: 2, scope: !6622)
!6650 = !DILocation(line: 177, column: 2, scope: !6621)
!6651 = !DILocation(line: 177, column: 2, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6621, file: !2, line: 177, column: 2)
!6653 = !DILocation(line: 177, column: 2, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6621, file: !2, line: 177, column: 2)
!6655 = !{i64 2156713217, i64 2156713246, i64 2156713292, i64 2156713350, i64 2156713404, i64 2156713458, i64 2156713513, i64 2156713544, i64 2156713852, i64 2156713858, i64 2156713905, i64 2156713928, i64 2156713954}
!6656 = !DILocation(line: 177, column: 2, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6621, file: !2, line: 177, column: 2)
!6658 = !DILocation(line: 177, column: 2, scope: !6611)
!6659 = !DILocation(line: 178, column: 2, scope: !6624)
!6660 = !DILocation(line: 178, column: 2, scope: !6627)
!6661 = !DILocation(line: 178, column: 2, scope: !6626)
!6662 = !DILocation(line: 178, column: 2, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 178, column: 2)
!6664 = !DILocation(line: 178, column: 2, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 178, column: 2)
!6666 = !{i64 2156714751, i64 2156714780, i64 2156714826, i64 2156714884, i64 2156714938, i64 2156714992, i64 2156715047, i64 2156715078, i64 2156715386, i64 2156715392, i64 2156715439, i64 2156715462, i64 2156715488}
!6667 = !DILocation(line: 178, column: 2, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 178, column: 2)
!6669 = !DILocation(line: 178, column: 2, scope: !6611)
!6670 = !DILocation(line: 180, column: 14, scope: !6611)
!6671 = !DILocation(line: 180, column: 20, scope: !6611)
!6672 = !DILocation(line: 180, column: 25, scope: !6611)
!6673 = !DILocation(line: 180, column: 2, scope: !6611)
!6674 = !DILocation(line: 181, column: 12, scope: !6611)
!6675 = !DILocation(line: 181, column: 18, scope: !6611)
!6676 = !DILocation(line: 181, column: 2, scope: !6611)
!6677 = !DILocation(line: 182, column: 16, scope: !6611)
!6678 = !DILocation(line: 182, column: 22, scope: !6611)
!6679 = !DILocation(line: 182, column: 27, scope: !6611)
!6680 = !DILocation(line: 182, column: 2, scope: !6611)
!6681 = !DILocation(line: 184, column: 6, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6611, file: !2, line: 184, column: 6)
!6683 = !DILocation(line: 184, column: 12, scope: !6682)
!6684 = !DILocation(line: 184, column: 20, scope: !6682)
!6685 = !DILocation(line: 184, column: 26, scope: !6682)
!6686 = !DILocation(line: 184, column: 17, scope: !6682)
!6687 = !DILocation(line: 184, column: 6, scope: !6611)
!6688 = !DILocation(line: 185, column: 3, scope: !6682)
!6689 = !DILocation(line: 185, column: 9, scope: !6682)
!6690 = !DILocation(line: 185, column: 14, scope: !6682)
!6691 = !DILocation(line: 186, column: 8, scope: !6611)
!6692 = !DILocation(line: 186, column: 2, scope: !6611)
!6693 = !DILocation(line: 187, column: 1, scope: !6611)
!6694 = !DISubprogram(name: "xa_erase", scope: !1191, file: !1191, line: 353, type: !6496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6695 = distinct !DISubprogram(name: "list_empty", scope: !6563, file: !6563, line: 371, type: !6696, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6700)
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!12, !6698}
!6698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6699, size: 64)
!6699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!6700 = !{!6701}
!6701 = !DILocalVariable(name: "head", arg: 1, scope: !6695, file: !6563, line: 371, type: !6698)
!6702 = !DILocation(line: 371, column: 54, scope: !6695)
!6703 = !DILocation(line: 373, column: 9, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6695, file: !6563, line: 373, column: 9)
!6705 = !DILocation(line: 373, column: 9, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6704, file: !6563, line: 373, column: 9)
!6707 = !DILocation(line: 373, column: 34, scope: !6695)
!6708 = !DILocation(line: 373, column: 31, scope: !6695)
!6709 = !DILocation(line: 373, column: 2, scope: !6695)
!6710 = distinct !DISubprogram(name: "list_del", scope: !6563, file: !6563, line: 227, type: !6711, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6713)
!6711 = !DISubroutineType(types: !6712)
!6712 = !{null, !103}
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "entry", arg: 1, scope: !6710, file: !6563, line: 227, type: !103)
!6715 = !DILocation(line: 227, column: 47, scope: !6710)
!6716 = !DILocation(line: 229, column: 19, scope: !6710)
!6717 = !DILocation(line: 229, column: 2, scope: !6710)
!6718 = !DILocation(line: 230, column: 2, scope: !6710)
!6719 = !DILocation(line: 230, column: 9, scope: !6710)
!6720 = !DILocation(line: 230, column: 14, scope: !6710)
!6721 = !DILocation(line: 231, column: 2, scope: !6710)
!6722 = !DILocation(line: 231, column: 9, scope: !6710)
!6723 = !DILocation(line: 231, column: 14, scope: !6710)
!6724 = !DILocation(line: 232, column: 1, scope: !6710)
!6725 = distinct !DISubprogram(name: "io_uring_clean_tctx", scope: !2, file: !2, line: 189, type: !6726, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6728)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{null, !4529}
!6728 = !{!6729, !6730, !6731, !6732}
!6729 = !DILocalVariable(name: "tctx", arg: 1, scope: !6725, file: !2, line: 189, type: !4529)
!6730 = !DILocalVariable(name: "wq", scope: !6725, file: !2, line: 191, type: !4861)
!6731 = !DILocalVariable(name: "node", scope: !6725, file: !2, line: 192, type: !6042)
!6732 = !DILocalVariable(name: "index", scope: !6725, file: !2, line: 193, type: !22)
!6733 = !DILocation(line: 189, column: 55, scope: !6725)
!6734 = !DILocation(line: 191, column: 2, scope: !6725)
!6735 = !DILocation(line: 191, column: 16, scope: !6725)
!6736 = !DILocation(line: 191, column: 21, scope: !6725)
!6737 = !DILocation(line: 191, column: 27, scope: !6725)
!6738 = !DILocation(line: 192, column: 2, scope: !6725)
!6739 = !DILocation(line: 192, column: 23, scope: !6725)
!6740 = !DILocation(line: 193, column: 2, scope: !6725)
!6741 = !DILocation(line: 193, column: 16, scope: !6725)
!6742 = !DILocation(line: 195, column: 2, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6725, file: !2, line: 195, column: 2)
!6744 = !DILocation(line: 195, column: 2, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6743, file: !2, line: 195, column: 2)
!6746 = !DILocation(line: 196, column: 26, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 195, column: 38)
!6748 = !DILocation(line: 196, column: 3, scope: !6747)
!6749 = !DILocation(line: 197, column: 3, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 197, column: 3)
!6751 = !DILocation(line: 198, column: 2, scope: !6747)
!6752 = distinct !{!6752, !6742, !6753, !6093, !6094}
!6753 = !DILocation(line: 198, column: 2, scope: !6743)
!6754 = !DILocation(line: 199, column: 6, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6725, file: !2, line: 199, column: 6)
!6756 = !DILocation(line: 199, column: 6, scope: !6725)
!6757 = !DILocation(line: 204, column: 22, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !2, line: 199, column: 10)
!6759 = !DILocation(line: 204, column: 3, scope: !6758)
!6760 = !DILocation(line: 205, column: 3, scope: !6758)
!6761 = !DILocation(line: 205, column: 9, scope: !6758)
!6762 = !DILocation(line: 205, column: 15, scope: !6758)
!6763 = !DILocation(line: 206, column: 2, scope: !6758)
!6764 = !DILocation(line: 207, column: 1, scope: !6725)
!6765 = distinct !DISubprogram(name: "__might_resched", scope: !6766, file: !6766, line: 184, type: !6767, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6769)
!6766 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6767 = !DISubroutineType(types: !6768)
!6768 = !{null, !658, !12, !29}
!6769 = !{!6770, !6771, !6772}
!6770 = !DILocalVariable(name: "file", arg: 1, scope: !6765, file: !6766, line: 184, type: !658)
!6771 = !DILocalVariable(name: "line", arg: 2, scope: !6765, file: !6766, line: 184, type: !12)
!6772 = !DILocalVariable(name: "offsets", arg: 3, scope: !6765, file: !6766, line: 185, type: !29)
!6773 = !DILocation(line: 184, column: 50, scope: !6765)
!6774 = !DILocation(line: 184, column: 60, scope: !6765)
!6775 = !DILocation(line: 185, column: 23, scope: !6765)
!6776 = !DILocation(line: 185, column: 34, scope: !6765)
!6777 = !DILocation(line: 2104, column: 9, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6016, file: !15, line: 2104, column: 9)
!6779 = !DILocation(line: 2104, column: 9, scope: !6016)
!6780 = !DILocation(line: 2104, column: 2, scope: !6016)
!6781 = !DISubprogram(name: "io_wq_put_and_exit", scope: !4837, file: !4837, line: 48, type: !6782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6782 = !DISubroutineType(types: !6783)
!6783 = !{null, !4861}
!6784 = distinct !DISubprogram(name: "io_uring_unreg_ringfd", scope: !2, file: !2, line: 209, type: !2510, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6785)
!6785 = !{!6786, !6787}
!6786 = !DILocalVariable(name: "tctx", scope: !6784, file: !2, line: 211, type: !4529)
!6787 = !DILocalVariable(name: "i", scope: !6784, file: !2, line: 212, type: !12)
!6788 = !DILocation(line: 211, column: 2, scope: !6784)
!6789 = !DILocation(line: 211, column: 24, scope: !6784)
!6790 = !DILocation(line: 211, column: 31, scope: !6784)
!6791 = !DILocation(line: 211, column: 40, scope: !6784)
!6792 = !DILocation(line: 212, column: 2, scope: !6784)
!6793 = !DILocation(line: 212, column: 6, scope: !6784)
!6794 = !DILocation(line: 214, column: 9, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 214, column: 2)
!6796 = !DILocation(line: 214, column: 7, scope: !6795)
!6797 = !DILocation(line: 214, column: 14, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6795, file: !2, line: 214, column: 2)
!6799 = !DILocation(line: 214, column: 16, scope: !6798)
!6800 = !DILocation(line: 214, column: 2, scope: !6795)
!6801 = !DILocation(line: 215, column: 7, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6803, file: !2, line: 215, column: 7)
!6803 = distinct !DILexicalBlock(scope: !6798, file: !2, line: 214, column: 42)
!6804 = !DILocation(line: 215, column: 13, scope: !6802)
!6805 = !DILocation(line: 215, column: 30, scope: !6802)
!6806 = !DILocation(line: 215, column: 7, scope: !6803)
!6807 = !DILocation(line: 216, column: 9, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6802, file: !2, line: 215, column: 34)
!6809 = !DILocation(line: 216, column: 15, scope: !6808)
!6810 = !DILocation(line: 216, column: 32, scope: !6808)
!6811 = !DILocation(line: 216, column: 4, scope: !6808)
!6812 = !DILocation(line: 217, column: 4, scope: !6808)
!6813 = !DILocation(line: 217, column: 10, scope: !6808)
!6814 = !DILocation(line: 217, column: 27, scope: !6808)
!6815 = !DILocation(line: 217, column: 30, scope: !6808)
!6816 = !DILocation(line: 218, column: 3, scope: !6808)
!6817 = !DILocation(line: 219, column: 2, scope: !6803)
!6818 = !DILocation(line: 214, column: 38, scope: !6798)
!6819 = !DILocation(line: 214, column: 2, scope: !6798)
!6820 = distinct !{!6820, !6800, !6821, !6093, !6094}
!6821 = !DILocation(line: 219, column: 2, scope: !6795)
!6822 = !DILocation(line: 220, column: 1, scope: !6784)
!6823 = !DISubprogram(name: "fput", scope: !6824, file: !6824, line: 17, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6824 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6825 = distinct !DISubprogram(name: "io_ring_add_registered_file", scope: !2, file: !2, line: 222, type: !6826, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6828)
!6826 = !DISubroutineType(types: !6827)
!6827 = !{!12, !4529, !418, !12, !12}
!6828 = !{!6829, !6830, !6831, !6832, !6833, !6834, !6839, !6840}
!6829 = !DILocalVariable(name: "tctx", arg: 1, scope: !6825, file: !2, line: 222, type: !4529)
!6830 = !DILocalVariable(name: "file", arg: 2, scope: !6825, file: !2, line: 222, type: !418)
!6831 = !DILocalVariable(name: "start", arg: 3, scope: !6825, file: !2, line: 223, type: !12)
!6832 = !DILocalVariable(name: "end", arg: 4, scope: !6825, file: !2, line: 223, type: !12)
!6833 = !DILocalVariable(name: "offset", scope: !6825, file: !2, line: 225, type: !12)
!6834 = !DILocalVariable(name: "_i", scope: !6835, file: !2, line: 227, type: !12)
!6835 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 227, column: 12)
!6836 = distinct !DILexicalBlock(scope: !6837, file: !2, line: 226, column: 47)
!6837 = distinct !DILexicalBlock(scope: !6838, file: !2, line: 226, column: 2)
!6838 = distinct !DILexicalBlock(scope: !6825, file: !2, line: 226, column: 2)
!6839 = !DILocalVariable(name: "_s", scope: !6835, file: !2, line: 227, type: !12)
!6840 = !DILocalVariable(name: "_mask", scope: !6835, file: !2, line: 227, type: !22)
!6841 = !DILocation(line: 222, column: 55, scope: !6825)
!6842 = !DILocation(line: 222, column: 74, scope: !6825)
!6843 = !DILocation(line: 223, column: 14, scope: !6825)
!6844 = !DILocation(line: 223, column: 25, scope: !6825)
!6845 = !DILocation(line: 225, column: 2, scope: !6825)
!6846 = !DILocation(line: 225, column: 6, scope: !6825)
!6847 = !DILocation(line: 226, column: 16, scope: !6838)
!6848 = !DILocation(line: 226, column: 14, scope: !6838)
!6849 = !DILocation(line: 226, column: 7, scope: !6838)
!6850 = !DILocation(line: 226, column: 23, scope: !6837)
!6851 = !DILocation(line: 226, column: 32, scope: !6837)
!6852 = !DILocation(line: 226, column: 30, scope: !6837)
!6853 = !DILocation(line: 226, column: 2, scope: !6838)
!6854 = !DILocation(line: 227, column: 12, scope: !6835)
!6855 = !DILocation(line: 227, column: 12, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6835, file: !2, line: 227, column: 12)
!6857 = !DILocation(line: 227, column: 12, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6835, file: !2, line: 227, column: 12)
!6859 = !DILocation(line: 227, column: 12, scope: !6836)
!6860 = !DILocation(line: 227, column: 10, scope: !6836)
!6861 = !DILocation(line: 228, column: 7, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 228, column: 7)
!6863 = !DILocation(line: 228, column: 13, scope: !6862)
!6864 = !DILocation(line: 228, column: 30, scope: !6862)
!6865 = !DILocation(line: 228, column: 7, scope: !6836)
!6866 = !DILocation(line: 229, column: 4, scope: !6862)
!6867 = !DILocation(line: 231, column: 36, scope: !6836)
!6868 = !DILocation(line: 231, column: 3, scope: !6836)
!6869 = !DILocation(line: 231, column: 9, scope: !6836)
!6870 = !DILocation(line: 231, column: 26, scope: !6836)
!6871 = !DILocation(line: 231, column: 34, scope: !6836)
!6872 = !DILocation(line: 232, column: 10, scope: !6836)
!6873 = !DILocation(line: 232, column: 3, scope: !6836)
!6874 = !DILocation(line: 226, column: 43, scope: !6837)
!6875 = !DILocation(line: 226, column: 2, scope: !6837)
!6876 = distinct !{!6876, !6853, !6877, !6093, !6094}
!6877 = !DILocation(line: 233, column: 2, scope: !6838)
!6878 = !DILocation(line: 234, column: 2, scope: !6825)
!6879 = !DILocation(line: 235, column: 1, scope: !6825)
!6880 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !6881, file: !6881, line: 36, type: !6882, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6884)
!6881 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!22, !22, !22}
!6884 = !{!6885, !6886, !6887}
!6885 = !DILocalVariable(name: "index", arg: 1, scope: !6880, file: !6881, line: 36, type: !22)
!6886 = !DILocalVariable(name: "size", arg: 2, scope: !6880, file: !6881, line: 37, type: !22)
!6887 = !DILocalVariable(name: "mask", scope: !6880, file: !6881, line: 39, type: !22)
!6888 = !DILocation(line: 36, column: 67, scope: !6880)
!6889 = !DILocation(line: 37, column: 17, scope: !6880)
!6890 = !DILocation(line: 39, column: 2, scope: !6880)
!6891 = !DILocation(line: 39, column: 16, scope: !6880)
!6892 = !DILocation(line: 43, column: 9, scope: !6880)
!6893 = !DILocation(line: 43, column: 20, scope: !6880)
!6894 = !DILocation(line: 41, column: 2, scope: !6880)
!6895 = !{i64 251930}
!6896 = !DILocation(line: 45, column: 9, scope: !6880)
!6897 = !DILocation(line: 46, column: 1, scope: !6880)
!6898 = !DILocation(line: 45, column: 2, scope: !6880)
!6899 = distinct !DISubprogram(name: "io_ringfd_register", scope: !2, file: !2, line: 264, type: !6900, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !6902)
!6900 = !DISubroutineType(types: !6901)
!6901 = !{!12, !4668, !33, !29}
!6902 = !{!6903, !6904, !6905, !6906, !6913, !6914, !6915, !6916, !6917, !6921}
!6903 = !DILocalVariable(name: "ctx", arg: 1, scope: !6899, file: !2, line: 264, type: !4668)
!6904 = !DILocalVariable(name: "__arg", arg: 2, scope: !6899, file: !2, line: 264, type: !33)
!6905 = !DILocalVariable(name: "nr_args", arg: 3, scope: !6899, file: !2, line: 265, type: !29)
!6906 = !DILocalVariable(name: "arg", scope: !6899, file: !2, line: 267, type: !6907)
!6907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6908, size: 64)
!6908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_rsrc_update", file: !4081, line: 583, size: 128, elements: !6909)
!6909 = !{!6910, !6911, !6912}
!6910 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6908, file: !4081, line: 584, baseType: !27, size: 32)
!6911 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !6908, file: !4081, line: 585, baseType: !27, size: 32, offset: 32)
!6912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6908, file: !4081, line: 586, baseType: !96, size: 64, align: 64, offset: 64)
!6913 = !DILocalVariable(name: "reg", scope: !6899, file: !2, line: 268, type: !6908)
!6914 = !DILocalVariable(name: "tctx", scope: !6899, file: !2, line: 269, type: !4529)
!6915 = !DILocalVariable(name: "ret", scope: !6899, file: !2, line: 270, type: !12)
!6916 = !DILocalVariable(name: "i", scope: !6899, file: !2, line: 270, type: !12)
!6917 = !DILocalVariable(name: "start", scope: !6918, file: !2, line: 283, type: !12)
!6918 = distinct !DILexicalBlock(scope: !6919, file: !2, line: 282, column: 32)
!6919 = distinct !DILexicalBlock(scope: !6920, file: !2, line: 282, column: 2)
!6920 = distinct !DILexicalBlock(scope: !6899, file: !2, line: 282, column: 2)
!6921 = !DILocalVariable(name: "end", scope: !6918, file: !2, line: 283, type: !12)
!6922 = !DILocation(line: 264, column: 44, scope: !6899)
!6923 = !DILocation(line: 264, column: 62, scope: !6899)
!6924 = !DILocation(line: 265, column: 19, scope: !6899)
!6925 = !DILocation(line: 267, column: 2, scope: !6899)
!6926 = !DILocation(line: 267, column: 38, scope: !6899)
!6927 = !DILocation(line: 267, column: 44, scope: !6899)
!6928 = !DILocation(line: 268, column: 2, scope: !6899)
!6929 = !DILocation(line: 268, column: 30, scope: !6899)
!6930 = !DILocation(line: 269, column: 2, scope: !6899)
!6931 = !DILocation(line: 269, column: 24, scope: !6899)
!6932 = !DILocation(line: 270, column: 2, scope: !6899)
!6933 = !DILocation(line: 270, column: 6, scope: !6899)
!6934 = !DILocation(line: 270, column: 11, scope: !6899)
!6935 = !DILocation(line: 272, column: 7, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6899, file: !2, line: 272, column: 6)
!6937 = !DILocation(line: 272, column: 15, scope: !6936)
!6938 = !DILocation(line: 272, column: 18, scope: !6936)
!6939 = !DILocation(line: 272, column: 26, scope: !6936)
!6940 = !DILocation(line: 272, column: 6, scope: !6899)
!6941 = !DILocation(line: 273, column: 3, scope: !6936)
!6942 = !DILocation(line: 275, column: 16, scope: !6899)
!6943 = !DILocation(line: 275, column: 21, scope: !6899)
!6944 = !DILocation(line: 275, column: 2, scope: !6899)
!6945 = !DILocation(line: 276, column: 33, scope: !6899)
!6946 = !DILocation(line: 276, column: 8, scope: !6899)
!6947 = !DILocation(line: 276, column: 6, scope: !6899)
!6948 = !DILocation(line: 277, column: 14, scope: !6899)
!6949 = !DILocation(line: 277, column: 19, scope: !6899)
!6950 = !DILocation(line: 277, column: 2, scope: !6899)
!6951 = !DILocation(line: 278, column: 6, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6899, file: !2, line: 278, column: 6)
!6953 = !DILocation(line: 278, column: 6, scope: !6899)
!6954 = !DILocation(line: 279, column: 10, scope: !6952)
!6955 = !DILocation(line: 279, column: 3, scope: !6952)
!6956 = !DILocation(line: 281, column: 9, scope: !6899)
!6957 = !DILocation(line: 281, column: 18, scope: !6899)
!6958 = !DILocation(line: 281, column: 7, scope: !6899)
!6959 = !DILocation(line: 282, column: 9, scope: !6920)
!6960 = !DILocation(line: 282, column: 7, scope: !6920)
!6961 = !DILocation(line: 282, column: 14, scope: !6919)
!6962 = !DILocation(line: 282, column: 18, scope: !6919)
!6963 = !DILocation(line: 282, column: 16, scope: !6919)
!6964 = !DILocation(line: 282, column: 2, scope: !6920)
!6965 = !DILocation(line: 283, column: 3, scope: !6918)
!6966 = !DILocation(line: 283, column: 7, scope: !6918)
!6967 = !DILocation(line: 283, column: 14, scope: !6918)
!6968 = !DILocation(line: 285, column: 29, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 285, column: 7)
!6970 = !DILocation(line: 285, column: 33, scope: !6969)
!6971 = !DILocation(line: 285, column: 7, scope: !6969)
!6972 = !DILocation(line: 285, column: 7, scope: !6918)
!6973 = !DILocation(line: 286, column: 8, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6969, file: !2, line: 285, column: 51)
!6975 = !DILocation(line: 287, column: 4, scope: !6974)
!6976 = !DILocation(line: 290, column: 11, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 290, column: 7)
!6978 = !DILocation(line: 290, column: 7, scope: !6977)
!6979 = !DILocation(line: 290, column: 7, scope: !6918)
!6980 = !DILocation(line: 291, column: 8, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6977, file: !2, line: 290, column: 17)
!6982 = !DILocation(line: 292, column: 4, scope: !6981)
!6983 = !DILocation(line: 295, column: 11, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 295, column: 7)
!6985 = !DILocation(line: 295, column: 18, scope: !6984)
!6986 = !DILocation(line: 295, column: 7, scope: !6918)
!6987 = !DILocation(line: 296, column: 10, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6984, file: !2, line: 295, column: 26)
!6989 = !DILocation(line: 297, column: 8, scope: !6988)
!6990 = !DILocation(line: 298, column: 3, scope: !6988)
!6991 = !DILocation(line: 299, column: 12, scope: !6992)
!6992 = distinct !DILexicalBlock(scope: !6993, file: !2, line: 299, column: 8)
!6993 = distinct !DILexicalBlock(scope: !6984, file: !2, line: 298, column: 10)
!6994 = !DILocation(line: 299, column: 19, scope: !6992)
!6995 = !DILocation(line: 299, column: 8, scope: !6993)
!6996 = !DILocation(line: 300, column: 9, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6992, file: !2, line: 299, column: 41)
!6998 = !DILocation(line: 301, column: 5, scope: !6997)
!6999 = !DILocation(line: 303, column: 16, scope: !6993)
!7000 = !DILocation(line: 303, column: 10, scope: !6993)
!7001 = !DILocation(line: 304, column: 10, scope: !6993)
!7002 = !DILocation(line: 304, column: 16, scope: !6993)
!7003 = !DILocation(line: 304, column: 8, scope: !6993)
!7004 = !DILocation(line: 307, column: 35, scope: !6918)
!7005 = !DILocation(line: 307, column: 45, scope: !6918)
!7006 = !DILocation(line: 307, column: 41, scope: !6918)
!7007 = !DILocation(line: 307, column: 51, scope: !6918)
!7008 = !DILocation(line: 307, column: 58, scope: !6918)
!7009 = !DILocation(line: 307, column: 9, scope: !6918)
!7010 = !DILocation(line: 307, column: 7, scope: !6918)
!7011 = !DILocation(line: 308, column: 7, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 308, column: 7)
!7013 = !DILocation(line: 308, column: 11, scope: !7012)
!7014 = !DILocation(line: 308, column: 7, scope: !6918)
!7015 = !DILocation(line: 309, column: 4, scope: !7012)
!7016 = !DILocation(line: 311, column: 16, scope: !6918)
!7017 = !DILocation(line: 311, column: 7, scope: !6918)
!7018 = !DILocation(line: 311, column: 14, scope: !6918)
!7019 = !DILocation(line: 312, column: 21, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 312, column: 7)
!7021 = !DILocation(line: 312, column: 25, scope: !7020)
!7022 = !DILocation(line: 312, column: 7, scope: !7020)
!7023 = !DILocation(line: 312, column: 7, scope: !6918)
!7024 = !DILocation(line: 313, column: 9, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !7020, file: !2, line: 312, column: 49)
!7026 = !DILocation(line: 313, column: 15, scope: !7025)
!7027 = !DILocation(line: 313, column: 36, scope: !7025)
!7028 = !DILocation(line: 313, column: 4, scope: !7025)
!7029 = !DILocation(line: 314, column: 4, scope: !7025)
!7030 = !DILocation(line: 314, column: 10, scope: !7025)
!7031 = !DILocation(line: 314, column: 31, scope: !7025)
!7032 = !DILocation(line: 314, column: 39, scope: !7025)
!7033 = !DILocation(line: 315, column: 8, scope: !7025)
!7034 = !DILocation(line: 316, column: 4, scope: !7025)
!7035 = !DILocation(line: 318, column: 2, scope: !6919)
!7036 = !DILocation(line: 318, column: 2, scope: !6918)
!7037 = !DILocation(line: 282, column: 28, scope: !6919)
!7038 = !DILocation(line: 282, column: 2, scope: !6919)
!7039 = distinct !{!7039, !6964, !7040, !6093, !6094}
!7040 = !DILocation(line: 318, column: 2, scope: !6920)
!7041 = !DILocation(line: 320, column: 9, scope: !6899)
!7042 = !DILocation(line: 320, column: 13, scope: !6899)
!7043 = !DILocation(line: 320, column: 17, scope: !6899)
!7044 = !DILocation(line: 320, column: 2, scope: !6899)
!7045 = !DILocation(line: 321, column: 1, scope: !6899)
!7046 = distinct !DISubprogram(name: "copy_from_user", scope: !7047, file: !7047, line: 180, type: !7048, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7050)
!7047 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!7048 = !DISubroutineType(types: !7049)
!7049 = !{!22, !33, !1996, !22}
!7050 = !{!7051, !7052, !7053}
!7051 = !DILocalVariable(name: "to", arg: 1, scope: !7046, file: !7047, line: 180, type: !33)
!7052 = !DILocalVariable(name: "from", arg: 2, scope: !7046, file: !7047, line: 180, type: !1996)
!7053 = !DILocalVariable(name: "n", arg: 3, scope: !7046, file: !7047, line: 180, type: !22)
!7054 = !DILocation(line: 180, column: 22, scope: !7046)
!7055 = !DILocation(line: 180, column: 45, scope: !7046)
!7056 = !DILocation(line: 180, column: 65, scope: !7046)
!7057 = !DILocation(line: 182, column: 22, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7046, file: !7047, line: 182, column: 6)
!7059 = !DILocation(line: 182, column: 26, scope: !7058)
!7060 = !DILocation(line: 182, column: 6, scope: !7058)
!7061 = !DILocation(line: 182, column: 6, scope: !7046)
!7062 = !DILocation(line: 183, column: 23, scope: !7058)
!7063 = !DILocation(line: 183, column: 27, scope: !7058)
!7064 = !DILocation(line: 183, column: 33, scope: !7058)
!7065 = !DILocation(line: 183, column: 7, scope: !7058)
!7066 = !DILocation(line: 183, column: 5, scope: !7058)
!7067 = !DILocation(line: 183, column: 3, scope: !7058)
!7068 = !DILocation(line: 184, column: 9, scope: !7046)
!7069 = !DILocation(line: 184, column: 2, scope: !7046)
!7070 = distinct !DISubprogram(name: "io_ring_add_registered_fd", scope: !2, file: !2, line: 237, type: !7071, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7073)
!7071 = !DISubroutineType(types: !7072)
!7072 = !{!12, !4529, !12, !12, !12}
!7073 = !{!7074, !7075, !7076, !7077, !7078, !7079}
!7074 = !DILocalVariable(name: "tctx", arg: 1, scope: !7070, file: !2, line: 237, type: !4529)
!7075 = !DILocalVariable(name: "fd", arg: 2, scope: !7070, file: !2, line: 237, type: !12)
!7076 = !DILocalVariable(name: "start", arg: 3, scope: !7070, file: !2, line: 238, type: !12)
!7077 = !DILocalVariable(name: "end", arg: 4, scope: !7070, file: !2, line: 238, type: !12)
!7078 = !DILocalVariable(name: "file", scope: !7070, file: !2, line: 240, type: !418)
!7079 = !DILocalVariable(name: "offset", scope: !7070, file: !2, line: 241, type: !12)
!7080 = !DILocation(line: 237, column: 60, scope: !7070)
!7081 = !DILocation(line: 237, column: 70, scope: !7070)
!7082 = !DILocation(line: 238, column: 14, scope: !7070)
!7083 = !DILocation(line: 238, column: 25, scope: !7070)
!7084 = !DILocation(line: 240, column: 2, scope: !7070)
!7085 = !DILocation(line: 240, column: 15, scope: !7070)
!7086 = !DILocation(line: 241, column: 2, scope: !7070)
!7087 = !DILocation(line: 241, column: 6, scope: !7070)
!7088 = !DILocation(line: 243, column: 14, scope: !7070)
!7089 = !DILocation(line: 243, column: 9, scope: !7070)
!7090 = !DILocation(line: 243, column: 7, scope: !7070)
!7091 = !DILocation(line: 244, column: 7, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !7070, file: !2, line: 244, column: 6)
!7093 = !DILocation(line: 244, column: 6, scope: !7070)
!7094 = !DILocation(line: 245, column: 3, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7092, file: !2, line: 244, column: 13)
!7096 = !DILocation(line: 246, column: 31, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7092, file: !2, line: 246, column: 13)
!7098 = !DILocation(line: 246, column: 14, scope: !7097)
!7099 = !DILocation(line: 246, column: 13, scope: !7092)
!7100 = !DILocation(line: 247, column: 8, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7097, file: !2, line: 246, column: 38)
!7102 = !DILocation(line: 247, column: 3, scope: !7101)
!7103 = !DILocation(line: 248, column: 3, scope: !7101)
!7104 = !DILocation(line: 250, column: 39, scope: !7070)
!7105 = !DILocation(line: 250, column: 45, scope: !7070)
!7106 = !DILocation(line: 250, column: 51, scope: !7070)
!7107 = !DILocation(line: 250, column: 58, scope: !7070)
!7108 = !DILocation(line: 250, column: 11, scope: !7070)
!7109 = !DILocation(line: 250, column: 9, scope: !7070)
!7110 = !DILocation(line: 251, column: 6, scope: !7111)
!7111 = distinct !DILexicalBlock(scope: !7070, file: !2, line: 251, column: 6)
!7112 = !DILocation(line: 251, column: 13, scope: !7111)
!7113 = !DILocation(line: 251, column: 6, scope: !7070)
!7114 = !DILocation(line: 252, column: 8, scope: !7111)
!7115 = !DILocation(line: 252, column: 3, scope: !7111)
!7116 = !DILocation(line: 253, column: 9, scope: !7070)
!7117 = !DILocation(line: 253, column: 2, scope: !7070)
!7118 = !DILocation(line: 254, column: 1, scope: !7070)
!7119 = distinct !DISubprogram(name: "copy_to_user", scope: !7047, file: !7047, line: 188, type: !7048, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7120)
!7120 = !{!7121, !7122, !7123}
!7121 = !DILocalVariable(name: "to", arg: 1, scope: !7119, file: !7047, line: 188, type: !33)
!7122 = !DILocalVariable(name: "from", arg: 2, scope: !7119, file: !7047, line: 188, type: !1996)
!7123 = !DILocalVariable(name: "n", arg: 3, scope: !7119, file: !7047, line: 188, type: !22)
!7124 = !DILocation(line: 188, column: 27, scope: !7119)
!7125 = !DILocation(line: 188, column: 43, scope: !7119)
!7126 = !DILocation(line: 188, column: 63, scope: !7119)
!7127 = !DILocation(line: 190, column: 22, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7119, file: !7047, line: 190, column: 6)
!7129 = !DILocation(line: 190, column: 28, scope: !7128)
!7130 = !DILocation(line: 190, column: 6, scope: !7128)
!7131 = !DILocation(line: 190, column: 6, scope: !7119)
!7132 = !DILocation(line: 191, column: 21, scope: !7128)
!7133 = !DILocation(line: 191, column: 25, scope: !7128)
!7134 = !DILocation(line: 191, column: 31, scope: !7128)
!7135 = !DILocation(line: 191, column: 7, scope: !7128)
!7136 = !DILocation(line: 191, column: 5, scope: !7128)
!7137 = !DILocation(line: 191, column: 3, scope: !7128)
!7138 = !DILocation(line: 192, column: 9, scope: !7119)
!7139 = !DILocation(line: 192, column: 2, scope: !7119)
!7140 = distinct !DISubprogram(name: "io_ringfd_unregister", scope: !2, file: !2, line: 323, type: !6900, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7141)
!7141 = !{!7142, !7143, !7144, !7145, !7146, !7147, !7148, !7149, !7150, !7155, !7156}
!7142 = !DILocalVariable(name: "ctx", arg: 1, scope: !7140, file: !2, line: 323, type: !4668)
!7143 = !DILocalVariable(name: "__arg", arg: 2, scope: !7140, file: !2, line: 323, type: !33)
!7144 = !DILocalVariable(name: "nr_args", arg: 3, scope: !7140, file: !2, line: 324, type: !29)
!7145 = !DILocalVariable(name: "arg", scope: !7140, file: !2, line: 326, type: !6907)
!7146 = !DILocalVariable(name: "tctx", scope: !7140, file: !2, line: 327, type: !4529)
!7147 = !DILocalVariable(name: "reg", scope: !7140, file: !2, line: 328, type: !6908)
!7148 = !DILocalVariable(name: "ret", scope: !7140, file: !2, line: 329, type: !12)
!7149 = !DILocalVariable(name: "i", scope: !7140, file: !2, line: 329, type: !12)
!7150 = !DILocalVariable(name: "_i", scope: !7151, file: !2, line: 346, type: !27)
!7151 = distinct !DILexicalBlock(scope: !7152, file: !2, line: 346, column: 16)
!7152 = distinct !DILexicalBlock(scope: !7153, file: !2, line: 336, column: 32)
!7153 = distinct !DILexicalBlock(scope: !7154, file: !2, line: 336, column: 2)
!7154 = distinct !DILexicalBlock(scope: !7140, file: !2, line: 336, column: 2)
!7155 = !DILocalVariable(name: "_s", scope: !7151, file: !2, line: 346, type: !12)
!7156 = !DILocalVariable(name: "_mask", scope: !7151, file: !2, line: 346, type: !22)
!7157 = !DILocation(line: 323, column: 46, scope: !7140)
!7158 = !DILocation(line: 323, column: 64, scope: !7140)
!7159 = !DILocation(line: 324, column: 14, scope: !7140)
!7160 = !DILocation(line: 326, column: 2, scope: !7140)
!7161 = !DILocation(line: 326, column: 38, scope: !7140)
!7162 = !DILocation(line: 326, column: 44, scope: !7140)
!7163 = !DILocation(line: 327, column: 2, scope: !7140)
!7164 = !DILocation(line: 327, column: 24, scope: !7140)
!7165 = !DILocation(line: 327, column: 31, scope: !7140)
!7166 = !DILocation(line: 327, column: 40, scope: !7140)
!7167 = !DILocation(line: 328, column: 2, scope: !7140)
!7168 = !DILocation(line: 328, column: 30, scope: !7140)
!7169 = !DILocation(line: 329, column: 2, scope: !7140)
!7170 = !DILocation(line: 329, column: 6, scope: !7140)
!7171 = !DILocation(line: 329, column: 15, scope: !7140)
!7172 = !DILocation(line: 331, column: 7, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7140, file: !2, line: 331, column: 6)
!7174 = !DILocation(line: 331, column: 15, scope: !7173)
!7175 = !DILocation(line: 331, column: 18, scope: !7173)
!7176 = !DILocation(line: 331, column: 26, scope: !7173)
!7177 = !DILocation(line: 331, column: 6, scope: !7140)
!7178 = !DILocation(line: 332, column: 3, scope: !7173)
!7179 = !DILocation(line: 333, column: 7, scope: !7180)
!7180 = distinct !DILexicalBlock(scope: !7140, file: !2, line: 333, column: 6)
!7181 = !DILocation(line: 333, column: 6, scope: !7140)
!7182 = !DILocation(line: 334, column: 3, scope: !7180)
!7183 = !DILocation(line: 336, column: 9, scope: !7154)
!7184 = !DILocation(line: 336, column: 7, scope: !7154)
!7185 = !DILocation(line: 336, column: 14, scope: !7153)
!7186 = !DILocation(line: 336, column: 18, scope: !7153)
!7187 = !DILocation(line: 336, column: 16, scope: !7153)
!7188 = !DILocation(line: 336, column: 2, scope: !7154)
!7189 = !DILocation(line: 337, column: 29, scope: !7190)
!7190 = distinct !DILexicalBlock(scope: !7152, file: !2, line: 337, column: 7)
!7191 = !DILocation(line: 337, column: 33, scope: !7190)
!7192 = !DILocation(line: 337, column: 7, scope: !7190)
!7193 = !DILocation(line: 337, column: 7, scope: !7152)
!7194 = !DILocation(line: 338, column: 8, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7190, file: !2, line: 337, column: 51)
!7196 = !DILocation(line: 339, column: 4, scope: !7195)
!7197 = !DILocation(line: 341, column: 11, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7152, file: !2, line: 341, column: 7)
!7199 = !DILocation(line: 341, column: 7, scope: !7198)
!7200 = !DILocation(line: 341, column: 16, scope: !7198)
!7201 = !DILocation(line: 341, column: 23, scope: !7198)
!7202 = !DILocation(line: 341, column: 19, scope: !7198)
!7203 = !DILocation(line: 341, column: 28, scope: !7198)
!7204 = !DILocation(line: 341, column: 35, scope: !7198)
!7205 = !DILocation(line: 341, column: 42, scope: !7198)
!7206 = !DILocation(line: 341, column: 7, scope: !7152)
!7207 = !DILocation(line: 342, column: 8, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7198, file: !2, line: 341, column: 64)
!7209 = !DILocation(line: 343, column: 4, scope: !7208)
!7210 = !DILocation(line: 346, column: 16, scope: !7151)
!7211 = !DILocation(line: 346, column: 16, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7151, file: !2, line: 346, column: 16)
!7213 = !DILocation(line: 346, column: 16, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7151, file: !2, line: 346, column: 16)
!7215 = !DILocation(line: 346, column: 16, scope: !7152)
!7216 = !DILocation(line: 346, column: 7, scope: !7152)
!7217 = !DILocation(line: 346, column: 14, scope: !7152)
!7218 = !DILocation(line: 347, column: 7, scope: !7219)
!7219 = distinct !DILexicalBlock(scope: !7152, file: !2, line: 347, column: 7)
!7220 = !DILocation(line: 347, column: 13, scope: !7219)
!7221 = !DILocation(line: 347, column: 34, scope: !7219)
!7222 = !DILocation(line: 347, column: 7, scope: !7152)
!7223 = !DILocation(line: 348, column: 9, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7219, file: !2, line: 347, column: 43)
!7225 = !DILocation(line: 348, column: 15, scope: !7224)
!7226 = !DILocation(line: 348, column: 36, scope: !7224)
!7227 = !DILocation(line: 348, column: 4, scope: !7224)
!7228 = !DILocation(line: 349, column: 4, scope: !7224)
!7229 = !DILocation(line: 349, column: 10, scope: !7224)
!7230 = !DILocation(line: 349, column: 31, scope: !7224)
!7231 = !DILocation(line: 349, column: 39, scope: !7224)
!7232 = !DILocation(line: 350, column: 3, scope: !7224)
!7233 = !DILocation(line: 351, column: 2, scope: !7152)
!7234 = !DILocation(line: 336, column: 28, scope: !7153)
!7235 = !DILocation(line: 336, column: 2, scope: !7153)
!7236 = distinct !{!7236, !7188, !7237, !6093, !6094}
!7237 = !DILocation(line: 351, column: 2, scope: !7154)
!7238 = !DILocation(line: 353, column: 9, scope: !7140)
!7239 = !DILocation(line: 353, column: 13, scope: !7140)
!7240 = !DILocation(line: 353, column: 17, scope: !7140)
!7241 = !DILocation(line: 353, column: 2, scope: !7140)
!7242 = !DILocation(line: 354, column: 1, scope: !7140)
!7243 = !DISubprogram(name: "percpu_counter_destroy_many", scope: !717, file: !717, line: 49, type: !7244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7244 = !DISubroutineType(types: !7245)
!7245 = !{null, !6133, !25}
!7246 = distinct !DISubprogram(name: "ERR_PTR", scope: !6291, file: !6291, line: 39, type: !7247, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7249)
!7247 = !DISubroutineType(types: !7248)
!7248 = !{!33, !920}
!7249 = !{!7250}
!7250 = !DILocalVariable(name: "error", arg: 1, scope: !7246, file: !6291, line: 39, type: !920)
!7251 = !DILocation(line: 39, column: 48, scope: !7246)
!7252 = !DILocation(line: 41, column: 18, scope: !7246)
!7253 = !DILocation(line: 41, column: 9, scope: !7246)
!7254 = !DILocation(line: 41, column: 2, scope: !7246)
!7255 = distinct !DISubprogram(name: "refcount_set", scope: !36, file: !36, line: 134, type: !7256, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7259)
!7256 = !DISubroutineType(types: !7257)
!7257 = !{null, !7258, !12}
!7258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!7259 = !{!7260, !7261}
!7260 = !DILocalVariable(name: "r", arg: 1, scope: !7255, file: !36, line: 134, type: !7258)
!7261 = !DILocalVariable(name: "n", arg: 2, scope: !7255, file: !36, line: 134, type: !12)
!7262 = !DILocation(line: 134, column: 45, scope: !7255)
!7263 = !DILocation(line: 134, column: 52, scope: !7255)
!7264 = !DILocation(line: 136, column: 14, scope: !7255)
!7265 = !DILocation(line: 136, column: 17, scope: !7255)
!7266 = !DILocation(line: 136, column: 23, scope: !7255)
!7267 = !DILocation(line: 136, column: 2, scope: !7255)
!7268 = !DILocation(line: 137, column: 1, scope: !7255)
!7269 = distinct !DISubprogram(name: "num_online_cpus", scope: !328, file: !328, line: 1072, type: !7270, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944)
!7270 = !DISubroutineType(types: !7271)
!7271 = !{!29}
!7272 = !DILocation(line: 1074, column: 9, scope: !7269)
!7273 = !DILocation(line: 1074, column: 2, scope: !7269)
!7274 = !DISubprogram(name: "io_wq_create", scope: !4837, file: !4837, line: 46, type: !7275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7275 = !DISubroutineType(types: !7276)
!7276 = !{!4861, !29, !7277}
!7277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5988, size: 64)
!7278 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7279, file: !7279, line: 442, type: !7280, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7284)
!7279 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7280 = !DISubroutineType(types: !7281)
!7281 = !{!12, !7282}
!7282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7283, size: 64)
!7283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!7284 = !{!7285}
!7285 = !DILocalVariable(name: "v", arg: 1, scope: !7278, file: !7279, line: 442, type: !7282)
!7286 = !DILocation(line: 442, column: 33, scope: !7278)
!7287 = !DILocation(line: 444, column: 26, scope: !7278)
!7288 = !DILocation(line: 444, column: 9, scope: !7278)
!7289 = !DILocation(line: 444, column: 2, scope: !7278)
!7290 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7291, file: !7291, line: 17, type: !7280, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7292)
!7291 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7292 = !{!7293}
!7293 = !DILocalVariable(name: "v", arg: 1, scope: !7290, file: !7291, line: 17, type: !7282)
!7294 = !DILocation(line: 17, column: 61, scope: !7290)
!7295 = !DILocation(line: 23, column: 9, scope: !7290)
!7296 = !DILocation(line: 23, column: 2, scope: !7290)
!7297 = distinct !DISubprogram(name: "xa_init_flags", scope: !1191, file: !1191, line: 378, type: !7298, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7300)
!7298 = !DISubroutineType(types: !7299)
!7299 = !{null, !1897, !1195}
!7300 = !{!7301, !7302}
!7301 = !DILocalVariable(name: "xa", arg: 1, scope: !7297, file: !1191, line: 378, type: !1897)
!7302 = !DILocalVariable(name: "flags", arg: 2, scope: !7297, file: !1191, line: 378, type: !1195)
!7303 = !DILocation(line: 378, column: 49, scope: !7297)
!7304 = !DILocation(line: 378, column: 59, scope: !7297)
!7305 = !DILocation(line: 380, column: 2, scope: !7297)
!7306 = !DILocation(line: 380, column: 2, scope: !7307)
!7307 = distinct !DILexicalBlock(scope: !7297, file: !1191, line: 380, column: 2)
!7308 = !DILocation(line: 381, column: 17, scope: !7297)
!7309 = !DILocation(line: 381, column: 2, scope: !7297)
!7310 = !DILocation(line: 381, column: 6, scope: !7297)
!7311 = !DILocation(line: 381, column: 15, scope: !7297)
!7312 = !DILocation(line: 382, column: 2, scope: !7297)
!7313 = !DILocation(line: 382, column: 6, scope: !7297)
!7314 = !DILocation(line: 382, column: 14, scope: !7297)
!7315 = !DILocation(line: 383, column: 1, scope: !7297)
!7316 = distinct !DISubprogram(name: "spinlock_check", scope: !7317, file: !7317, line: 324, type: !7318, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7321)
!7317 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7318 = !DISubroutineType(types: !7319)
!7319 = !{!7320, !1653}
!7320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!7321 = !{!7322}
!7322 = !DILocalVariable(name: "lock", arg: 1, scope: !7316, file: !7317, line: 324, type: !1653)
!7323 = !DILocation(line: 324, column: 67, scope: !7316)
!7324 = !DILocation(line: 326, column: 10, scope: !7316)
!7325 = !DILocation(line: 326, column: 16, scope: !7316)
!7326 = !DILocation(line: 326, column: 2, scope: !7316)
!7327 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7328, file: !7328, line: 80, type: !7329, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7334)
!7328 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7329 = !DISubroutineType(types: !7330)
!7330 = !{null, !7331, !842}
!7331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7332, size: 64)
!7332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7333)
!7333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7334 = !{!7335, !7336}
!7335 = !DILocalVariable(name: "v", arg: 1, scope: !7327, file: !7328, line: 80, type: !7331)
!7336 = !DILocalVariable(name: "size", arg: 2, scope: !7327, file: !7328, line: 80, type: !842)
!7337 = !DILocation(line: 80, column: 74, scope: !7327)
!7338 = !DILocation(line: 80, column: 84, scope: !7327)
!7339 = !DILocation(line: 82, column: 20, scope: !7327)
!7340 = !DILocation(line: 82, column: 23, scope: !7327)
!7341 = !DILocation(line: 82, column: 2, scope: !7327)
!7342 = !DILocation(line: 83, column: 2, scope: !7327)
!7343 = !DILocation(line: 84, column: 1, scope: !7327)
!7344 = distinct !DISubprogram(name: "raw_atomic_set", scope: !7279, file: !7279, line: 488, type: !6323, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7345)
!7345 = !{!7346, !7347}
!7346 = !DILocalVariable(name: "v", arg: 1, scope: !7344, file: !7279, line: 488, type: !6325)
!7347 = !DILocalVariable(name: "i", arg: 2, scope: !7344, file: !7279, line: 488, type: !12)
!7348 = !DILocation(line: 488, column: 26, scope: !7344)
!7349 = !DILocation(line: 488, column: 33, scope: !7344)
!7350 = !DILocation(line: 490, column: 18, scope: !7344)
!7351 = !DILocation(line: 490, column: 21, scope: !7344)
!7352 = !DILocation(line: 490, column: 2, scope: !7344)
!7353 = !DILocation(line: 491, column: 1, scope: !7344)
!7354 = distinct !DISubprogram(name: "kasan_check_write", scope: !7355, file: !7355, line: 44, type: !7356, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7358)
!7355 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7356 = !DISubroutineType(types: !7357)
!7357 = !{!655, !7331, !29}
!7358 = !{!7359, !7360}
!7359 = !DILocalVariable(name: "p", arg: 1, scope: !7354, file: !7355, line: 44, type: !7331)
!7360 = !DILocalVariable(name: "size", arg: 2, scope: !7354, file: !7355, line: 44, type: !29)
!7361 = !DILocation(line: 44, column: 59, scope: !7354)
!7362 = !DILocation(line: 44, column: 75, scope: !7354)
!7363 = !DILocation(line: 46, column: 2, scope: !7354)
!7364 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7365, file: !7365, line: 229, type: !7366, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7368)
!7365 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7366 = !DISubroutineType(types: !7367)
!7367 = !{null, !7331, !842, !12}
!7368 = !{!7369, !7370, !7371}
!7369 = !DILocalVariable(name: "ptr", arg: 1, scope: !7364, file: !7365, line: 229, type: !7331)
!7370 = !DILocalVariable(name: "size", arg: 2, scope: !7364, file: !7365, line: 229, type: !842)
!7371 = !DILocalVariable(name: "type", arg: 3, scope: !7364, file: !7365, line: 230, type: !12)
!7372 = !DILocation(line: 229, column: 60, scope: !7364)
!7373 = !DILocation(line: 229, column: 72, scope: !7364)
!7374 = !DILocation(line: 230, column: 15, scope: !7364)
!7375 = !DILocation(line: 230, column: 23, scope: !7364)
!7376 = distinct !DISubprogram(name: "arch_atomic_set", scope: !7291, file: !7291, line: 26, type: !6323, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7377)
!7377 = !{!7378, !7379}
!7378 = !DILocalVariable(name: "v", arg: 1, scope: !7376, file: !7291, line: 26, type: !6325)
!7379 = !DILocalVariable(name: "i", arg: 2, scope: !7376, file: !7291, line: 26, type: !12)
!7380 = !DILocation(line: 26, column: 55, scope: !7376)
!7381 = !DILocation(line: 26, column: 62, scope: !7376)
!7382 = !DILocation(line: 28, column: 2, scope: !7376)
!7383 = !DILocation(line: 28, column: 2, scope: !7384)
!7384 = distinct !DILexicalBlock(scope: !7376, file: !7291, line: 28, column: 2)
!7385 = !DILocation(line: 29, column: 1, scope: !7376)
!7386 = !DISubprogram(name: "kmalloc_large", scope: !5952, file: !5952, line: 531, type: !6214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7387 = distinct !DISubprogram(name: "__kmalloc_index", scope: !5952, file: !5952, line: 444, type: !7388, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7390)
!7388 = !DISubroutineType(types: !7389)
!7389 = !{!29, !842, !655}
!7390 = !{!7391, !7392}
!7391 = !DILocalVariable(name: "size", arg: 1, scope: !7387, file: !5952, line: 444, type: !842)
!7392 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7387, file: !5952, line: 445, type: !655)
!7393 = !DILocation(line: 444, column: 60, scope: !7387)
!7394 = !DILocation(line: 445, column: 16, scope: !7387)
!7395 = !DILocation(line: 447, column: 7, scope: !7396)
!7396 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 447, column: 6)
!7397 = !DILocation(line: 447, column: 6, scope: !7387)
!7398 = !DILocation(line: 448, column: 3, scope: !7396)
!7399 = !DILocation(line: 450, column: 6, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 450, column: 6)
!7401 = !DILocation(line: 450, column: 11, scope: !7400)
!7402 = !DILocation(line: 450, column: 6, scope: !7387)
!7403 = !DILocation(line: 451, column: 3, scope: !7400)
!7404 = !DILocation(line: 453, column: 32, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 453, column: 6)
!7406 = !DILocation(line: 453, column: 37, scope: !7405)
!7407 = !DILocation(line: 453, column: 42, scope: !7405)
!7408 = !DILocation(line: 453, column: 45, scope: !7405)
!7409 = !DILocation(line: 453, column: 50, scope: !7405)
!7410 = !DILocation(line: 453, column: 6, scope: !7387)
!7411 = !DILocation(line: 454, column: 3, scope: !7405)
!7412 = !DILocation(line: 455, column: 32, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 455, column: 6)
!7414 = !DILocation(line: 455, column: 37, scope: !7413)
!7415 = !DILocation(line: 455, column: 43, scope: !7413)
!7416 = !DILocation(line: 455, column: 46, scope: !7413)
!7417 = !DILocation(line: 455, column: 51, scope: !7413)
!7418 = !DILocation(line: 455, column: 6, scope: !7387)
!7419 = !DILocation(line: 456, column: 3, scope: !7413)
!7420 = !DILocation(line: 457, column: 6, scope: !7421)
!7421 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 457, column: 6)
!7422 = !DILocation(line: 457, column: 11, scope: !7421)
!7423 = !DILocation(line: 457, column: 6, scope: !7387)
!7424 = !DILocation(line: 457, column: 26, scope: !7421)
!7425 = !DILocation(line: 458, column: 6, scope: !7426)
!7426 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 458, column: 6)
!7427 = !DILocation(line: 458, column: 11, scope: !7426)
!7428 = !DILocation(line: 458, column: 6, scope: !7387)
!7429 = !DILocation(line: 458, column: 26, scope: !7426)
!7430 = !DILocation(line: 459, column: 6, scope: !7431)
!7431 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 459, column: 6)
!7432 = !DILocation(line: 459, column: 11, scope: !7431)
!7433 = !DILocation(line: 459, column: 6, scope: !7387)
!7434 = !DILocation(line: 459, column: 26, scope: !7431)
!7435 = !DILocation(line: 460, column: 6, scope: !7436)
!7436 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 460, column: 6)
!7437 = !DILocation(line: 460, column: 11, scope: !7436)
!7438 = !DILocation(line: 460, column: 6, scope: !7387)
!7439 = !DILocation(line: 460, column: 26, scope: !7436)
!7440 = !DILocation(line: 461, column: 6, scope: !7441)
!7441 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 461, column: 6)
!7442 = !DILocation(line: 461, column: 11, scope: !7441)
!7443 = !DILocation(line: 461, column: 6, scope: !7387)
!7444 = !DILocation(line: 461, column: 26, scope: !7441)
!7445 = !DILocation(line: 462, column: 6, scope: !7446)
!7446 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 462, column: 6)
!7447 = !DILocation(line: 462, column: 11, scope: !7446)
!7448 = !DILocation(line: 462, column: 6, scope: !7387)
!7449 = !DILocation(line: 462, column: 26, scope: !7446)
!7450 = !DILocation(line: 463, column: 6, scope: !7451)
!7451 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 463, column: 6)
!7452 = !DILocation(line: 463, column: 11, scope: !7451)
!7453 = !DILocation(line: 463, column: 6, scope: !7387)
!7454 = !DILocation(line: 463, column: 26, scope: !7451)
!7455 = !DILocation(line: 464, column: 6, scope: !7456)
!7456 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 464, column: 6)
!7457 = !DILocation(line: 464, column: 11, scope: !7456)
!7458 = !DILocation(line: 464, column: 6, scope: !7387)
!7459 = !DILocation(line: 464, column: 26, scope: !7456)
!7460 = !DILocation(line: 465, column: 6, scope: !7461)
!7461 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 465, column: 6)
!7462 = !DILocation(line: 465, column: 11, scope: !7461)
!7463 = !DILocation(line: 465, column: 6, scope: !7387)
!7464 = !DILocation(line: 465, column: 26, scope: !7461)
!7465 = !DILocation(line: 466, column: 6, scope: !7466)
!7466 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 466, column: 6)
!7467 = !DILocation(line: 466, column: 11, scope: !7466)
!7468 = !DILocation(line: 466, column: 6, scope: !7387)
!7469 = !DILocation(line: 466, column: 26, scope: !7466)
!7470 = !DILocation(line: 467, column: 6, scope: !7471)
!7471 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 467, column: 6)
!7472 = !DILocation(line: 467, column: 11, scope: !7471)
!7473 = !DILocation(line: 467, column: 6, scope: !7387)
!7474 = !DILocation(line: 467, column: 26, scope: !7471)
!7475 = !DILocation(line: 468, column: 6, scope: !7476)
!7476 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 468, column: 6)
!7477 = !DILocation(line: 468, column: 11, scope: !7476)
!7478 = !DILocation(line: 468, column: 6, scope: !7387)
!7479 = !DILocation(line: 468, column: 26, scope: !7476)
!7480 = !DILocation(line: 469, column: 6, scope: !7481)
!7481 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 469, column: 6)
!7482 = !DILocation(line: 469, column: 11, scope: !7481)
!7483 = !DILocation(line: 469, column: 6, scope: !7387)
!7484 = !DILocation(line: 469, column: 26, scope: !7481)
!7485 = !DILocation(line: 470, column: 6, scope: !7486)
!7486 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 470, column: 6)
!7487 = !DILocation(line: 470, column: 11, scope: !7486)
!7488 = !DILocation(line: 470, column: 6, scope: !7387)
!7489 = !DILocation(line: 470, column: 26, scope: !7486)
!7490 = !DILocation(line: 471, column: 6, scope: !7491)
!7491 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 471, column: 6)
!7492 = !DILocation(line: 471, column: 11, scope: !7491)
!7493 = !DILocation(line: 471, column: 6, scope: !7387)
!7494 = !DILocation(line: 471, column: 26, scope: !7491)
!7495 = !DILocation(line: 472, column: 6, scope: !7496)
!7496 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 472, column: 6)
!7497 = !DILocation(line: 472, column: 11, scope: !7496)
!7498 = !DILocation(line: 472, column: 6, scope: !7387)
!7499 = !DILocation(line: 472, column: 26, scope: !7496)
!7500 = !DILocation(line: 473, column: 6, scope: !7501)
!7501 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 473, column: 6)
!7502 = !DILocation(line: 473, column: 11, scope: !7501)
!7503 = !DILocation(line: 473, column: 6, scope: !7387)
!7504 = !DILocation(line: 473, column: 26, scope: !7501)
!7505 = !DILocation(line: 474, column: 6, scope: !7506)
!7506 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 474, column: 6)
!7507 = !DILocation(line: 474, column: 11, scope: !7506)
!7508 = !DILocation(line: 474, column: 6, scope: !7387)
!7509 = !DILocation(line: 474, column: 27, scope: !7506)
!7510 = !DILocation(line: 475, column: 6, scope: !7511)
!7511 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 475, column: 6)
!7512 = !DILocation(line: 475, column: 11, scope: !7511)
!7513 = !DILocation(line: 475, column: 6, scope: !7387)
!7514 = !DILocation(line: 475, column: 32, scope: !7511)
!7515 = !DILocation(line: 477, column: 50, scope: !7516)
!7516 = distinct !DILexicalBlock(scope: !7387, file: !5952, line: 477, column: 6)
!7517 = !DILocation(line: 477, column: 6, scope: !7387)
!7518 = !DILocation(line: 478, column: 3, scope: !7516)
!7519 = !DILocation(line: 478, column: 3, scope: !7520)
!7520 = distinct !DILexicalBlock(scope: !7521, file: !5952, line: 478, column: 3)
!7521 = distinct !DILexicalBlock(scope: !7516, file: !5952, line: 478, column: 3)
!7522 = !{i32 -2142318787}
!7523 = !DILocation(line: 478, column: 3, scope: !7521)
!7524 = !DILocation(line: 480, column: 3, scope: !7516)
!7525 = !DILocation(line: 480, column: 3, scope: !7526)
!7526 = distinct !DILexicalBlock(scope: !7516, file: !5952, line: 480, column: 3)
!7527 = !DILocation(line: 480, column: 3, scope: !7528)
!7528 = distinct !DILexicalBlock(scope: !7526, file: !5952, line: 480, column: 3)
!7529 = !DILocation(line: 480, column: 3, scope: !7530)
!7530 = distinct !DILexicalBlock(scope: !7526, file: !5952, line: 480, column: 3)
!7531 = !{i64 2152648712, i64 2152648741, i64 2152648787, i64 2152648845, i64 2152648899, i64 2152648953, i64 2152649008, i64 2152649039}
!7532 = !DILocation(line: 483, column: 2, scope: !7387)
!7533 = !DILocation(line: 484, column: 1, scope: !7387)
!7534 = !DISubprogram(name: "kmalloc_trace", scope: !5952, file: !5952, line: 525, type: !7535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7535 = !DISubroutineType(types: !7536)
!7536 = !{!33, !2890, !1195, !842}
!7537 = distinct !DISubprogram(name: "kmalloc_type", scope: !5952, file: !5952, line: 401, type: !7538, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7540)
!7538 = !DISubroutineType(types: !7539)
!7539 = !{!5951, !1195, !22}
!7540 = !{!7541, !7542}
!7541 = !DILocalVariable(name: "flags", arg: 1, scope: !7537, file: !5952, line: 401, type: !1195)
!7542 = !DILocalVariable(name: "caller", arg: 2, scope: !7537, file: !5952, line: 401, type: !22)
!7543 = !DILocation(line: 401, column: 67, scope: !7537)
!7544 = !DILocation(line: 401, column: 88, scope: !7537)
!7545 = !DILocation(line: 407, column: 6, scope: !7546)
!7546 = distinct !DILexicalBlock(scope: !7537, file: !5952, line: 407, column: 6)
!7547 = !DILocation(line: 407, column: 6, scope: !7537)
!7548 = !DILocation(line: 413, column: 3, scope: !7546)
!7549 = !DILocation(line: 423, column: 38, scope: !7550)
!7550 = distinct !DILexicalBlock(scope: !7537, file: !5952, line: 423, column: 6)
!7551 = !DILocation(line: 423, column: 44, scope: !7550)
!7552 = !DILocation(line: 423, column: 6, scope: !7537)
!7553 = !DILocation(line: 424, column: 3, scope: !7550)
!7554 = !DILocation(line: 426, column: 3, scope: !7555)
!7555 = distinct !DILexicalBlock(scope: !7537, file: !5952, line: 425, column: 6)
!7556 = !DILocation(line: 429, column: 1, scope: !7537)
!7557 = !DISubprogram(name: "__kmalloc", scope: !5952, file: !5952, line: 488, type: !6214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7558 = !DISubprogram(name: "__compiletime_assert_206", scope: !5952, file: !5952, line: 478, type: !2510, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7559 = distinct !DISubprogram(name: "xa_is_err", scope: !1191, file: !1191, line: 201, type: !6292, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7560)
!7560 = !{!7561}
!7561 = !DILocalVariable(name: "entry", arg: 1, scope: !7559, file: !1191, line: 201, type: !1996)
!7562 = !DILocation(line: 201, column: 42, scope: !7559)
!7563 = !DILocation(line: 203, column: 9, scope: !7559)
!7564 = !DILocation(line: 0, scope: !7559)
!7565 = !DILocation(line: 203, column: 2, scope: !7559)
!7566 = distinct !DISubprogram(name: "xa_is_internal", scope: !1191, file: !1191, line: 169, type: !6292, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7567)
!7567 = !{!7568}
!7568 = !DILocalVariable(name: "entry", arg: 1, scope: !7566, file: !1191, line: 169, type: !1996)
!7569 = !DILocation(line: 169, column: 47, scope: !7566)
!7570 = !DILocation(line: 171, column: 25, scope: !7566)
!7571 = !DILocation(line: 171, column: 10, scope: !7566)
!7572 = !DILocation(line: 171, column: 31, scope: !7566)
!7573 = !DILocation(line: 171, column: 36, scope: !7566)
!7574 = !DILocation(line: 171, column: 2, scope: !7566)
!7575 = distinct !DISubprogram(name: "xa_mk_internal", scope: !1191, file: !1191, line: 145, type: !7576, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7578)
!7576 = !DISubroutineType(types: !7577)
!7577 = !{!33, !22}
!7578 = !{!7579}
!7579 = !DILocalVariable(name: "v", arg: 1, scope: !7575, file: !1191, line: 145, type: !22)
!7580 = !DILocation(line: 145, column: 50, scope: !7575)
!7581 = !DILocation(line: 147, column: 19, scope: !7575)
!7582 = !DILocation(line: 147, column: 21, scope: !7575)
!7583 = !DILocation(line: 147, column: 27, scope: !7575)
!7584 = !DILocation(line: 147, column: 9, scope: !7575)
!7585 = !DILocation(line: 147, column: 2, scope: !7575)
!7586 = distinct !DISubprogram(name: "__list_add", scope: !6563, file: !6563, line: 146, type: !7587, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7589)
!7587 = !DISubroutineType(types: !7588)
!7588 = !{null, !103, !103, !103}
!7589 = !{!7590, !7591, !7592}
!7590 = !DILocalVariable(name: "new", arg: 1, scope: !7586, file: !6563, line: 146, type: !103)
!7591 = !DILocalVariable(name: "prev", arg: 2, scope: !7586, file: !6563, line: 147, type: !103)
!7592 = !DILocalVariable(name: "next", arg: 3, scope: !7586, file: !6563, line: 148, type: !103)
!7593 = !DILocation(line: 146, column: 49, scope: !7586)
!7594 = !DILocation(line: 147, column: 28, scope: !7586)
!7595 = !DILocation(line: 148, column: 28, scope: !7586)
!7596 = !DILocation(line: 150, column: 24, scope: !7597)
!7597 = distinct !DILexicalBlock(scope: !7586, file: !6563, line: 150, column: 6)
!7598 = !DILocation(line: 150, column: 29, scope: !7597)
!7599 = !DILocation(line: 150, column: 35, scope: !7597)
!7600 = !DILocation(line: 150, column: 7, scope: !7597)
!7601 = !DILocation(line: 150, column: 6, scope: !7586)
!7602 = !DILocation(line: 151, column: 3, scope: !7597)
!7603 = !DILocation(line: 153, column: 15, scope: !7586)
!7604 = !DILocation(line: 153, column: 2, scope: !7586)
!7605 = !DILocation(line: 153, column: 8, scope: !7586)
!7606 = !DILocation(line: 153, column: 13, scope: !7586)
!7607 = !DILocation(line: 154, column: 14, scope: !7586)
!7608 = !DILocation(line: 154, column: 2, scope: !7586)
!7609 = !DILocation(line: 154, column: 7, scope: !7586)
!7610 = !DILocation(line: 154, column: 12, scope: !7586)
!7611 = !DILocation(line: 155, column: 14, scope: !7586)
!7612 = !DILocation(line: 155, column: 2, scope: !7586)
!7613 = !DILocation(line: 155, column: 7, scope: !7586)
!7614 = !DILocation(line: 155, column: 12, scope: !7586)
!7615 = !DILocation(line: 156, column: 2, scope: !7586)
!7616 = !DILocation(line: 156, column: 2, scope: !7617)
!7617 = distinct !DILexicalBlock(scope: !7586, file: !6563, line: 156, column: 2)
!7618 = !DILocation(line: 156, column: 2, scope: !7619)
!7619 = distinct !DILexicalBlock(scope: !7617, file: !6563, line: 156, column: 2)
!7620 = !DILocation(line: 156, column: 2, scope: !7621)
!7621 = distinct !DILexicalBlock(scope: !7617, file: !6563, line: 156, column: 2)
!7622 = !DILocation(line: 157, column: 1, scope: !7586)
!7623 = distinct !DISubprogram(name: "__list_add_valid", scope: !6563, file: !6563, line: 128, type: !7624, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7626)
!7624 = !DISubroutineType(types: !7625)
!7625 = !{!655, !103, !103, !103}
!7626 = !{!7627, !7628, !7629}
!7627 = !DILocalVariable(name: "new", arg: 1, scope: !7623, file: !6563, line: 128, type: !103)
!7628 = !DILocalVariable(name: "prev", arg: 2, scope: !7623, file: !6563, line: 129, type: !103)
!7629 = !DILocalVariable(name: "next", arg: 3, scope: !7623, file: !6563, line: 130, type: !103)
!7630 = !DILocation(line: 128, column: 55, scope: !7623)
!7631 = !DILocation(line: 129, column: 23, scope: !7623)
!7632 = !DILocation(line: 130, column: 23, scope: !7623)
!7633 = !DILocation(line: 132, column: 2, scope: !7623)
!7634 = distinct !DISubprogram(name: "__list_del_entry", scope: !6563, file: !6563, line: 213, type: !6711, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7635)
!7635 = !{!7636}
!7636 = !DILocalVariable(name: "entry", arg: 1, scope: !7634, file: !6563, line: 213, type: !103)
!7637 = !DILocation(line: 213, column: 55, scope: !7634)
!7638 = !DILocation(line: 215, column: 30, scope: !7639)
!7639 = distinct !DILexicalBlock(scope: !7634, file: !6563, line: 215, column: 6)
!7640 = !DILocation(line: 215, column: 7, scope: !7639)
!7641 = !DILocation(line: 215, column: 6, scope: !7634)
!7642 = !DILocation(line: 216, column: 3, scope: !7639)
!7643 = !DILocation(line: 218, column: 13, scope: !7634)
!7644 = !DILocation(line: 218, column: 20, scope: !7634)
!7645 = !DILocation(line: 218, column: 26, scope: !7634)
!7646 = !DILocation(line: 218, column: 33, scope: !7634)
!7647 = !DILocation(line: 218, column: 2, scope: !7634)
!7648 = !DILocation(line: 219, column: 1, scope: !7634)
!7649 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6563, file: !6563, line: 134, type: !7650, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7652)
!7650 = !DISubroutineType(types: !7651)
!7651 = !{!655, !103}
!7652 = !{!7653}
!7653 = !DILocalVariable(name: "entry", arg: 1, scope: !7649, file: !6563, line: 134, type: !103)
!7654 = !DILocation(line: 134, column: 61, scope: !7649)
!7655 = !DILocation(line: 136, column: 2, scope: !7649)
!7656 = distinct !DISubprogram(name: "__list_del", scope: !6563, file: !6563, line: 193, type: !6564, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7657)
!7657 = !{!7658, !7659}
!7658 = !DILocalVariable(name: "prev", arg: 1, scope: !7656, file: !6563, line: 193, type: !103)
!7659 = !DILocalVariable(name: "next", arg: 2, scope: !7656, file: !6563, line: 193, type: !103)
!7660 = !DILocation(line: 193, column: 50, scope: !7656)
!7661 = !DILocation(line: 193, column: 75, scope: !7656)
!7662 = !DILocation(line: 195, column: 15, scope: !7656)
!7663 = !DILocation(line: 195, column: 2, scope: !7656)
!7664 = !DILocation(line: 195, column: 8, scope: !7656)
!7665 = !DILocation(line: 195, column: 13, scope: !7656)
!7666 = !DILocation(line: 196, column: 2, scope: !7656)
!7667 = !DILocation(line: 196, column: 2, scope: !7668)
!7668 = distinct !DILexicalBlock(scope: !7656, file: !6563, line: 196, column: 2)
!7669 = !DILocation(line: 196, column: 2, scope: !7670)
!7670 = distinct !DILexicalBlock(scope: !7668, file: !6563, line: 196, column: 2)
!7671 = !DILocation(line: 196, column: 2, scope: !7672)
!7672 = distinct !DILexicalBlock(scope: !7668, file: !6563, line: 196, column: 2)
!7673 = !DILocation(line: 197, column: 1, scope: !7656)
!7674 = distinct !DISubprogram(name: "check_copy_size", scope: !6019, file: !6019, line: 237, type: !7675, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7677)
!7675 = !DISubroutineType(types: !7676)
!7676 = !{!655, !1996, !842, !655}
!7677 = !{!7678, !7679, !7680, !7681, !7682, !7685}
!7678 = !DILocalVariable(name: "addr", arg: 1, scope: !7674, file: !6019, line: 237, type: !1996)
!7679 = !DILocalVariable(name: "bytes", arg: 2, scope: !7674, file: !6019, line: 237, type: !842)
!7680 = !DILocalVariable(name: "is_source", arg: 3, scope: !7674, file: !6019, line: 237, type: !655)
!7681 = !DILocalVariable(name: "sz", scope: !7674, file: !6019, line: 239, type: !12)
!7682 = !DILocalVariable(name: "__ret_warn_on", scope: !7683, file: !6019, line: 249, type: !12)
!7683 = distinct !DILexicalBlock(scope: !7684, file: !6019, line: 249, column: 6)
!7684 = distinct !DILexicalBlock(scope: !7674, file: !6019, line: 249, column: 6)
!7685 = !DILocalVariable(name: "__flags", scope: !7686, file: !6019, line: 249, type: !12)
!7686 = distinct !DILexicalBlock(scope: !7687, file: !6019, line: 249, column: 6)
!7687 = distinct !DILexicalBlock(scope: !7683, file: !6019, line: 249, column: 6)
!7688 = !DILocation(line: 237, column: 29, scope: !7674)
!7689 = !DILocation(line: 237, column: 42, scope: !7674)
!7690 = !DILocation(line: 237, column: 54, scope: !7674)
!7691 = !DILocation(line: 239, column: 2, scope: !7674)
!7692 = !DILocation(line: 239, column: 6, scope: !7674)
!7693 = !DILocation(line: 239, column: 33, scope: !7674)
!7694 = !DILocation(line: 239, column: 11, scope: !7674)
!7695 = !DILocation(line: 240, column: 6, scope: !7696)
!7696 = distinct !DILexicalBlock(scope: !7674, file: !6019, line: 240, column: 6)
!7697 = !DILocation(line: 0, scope: !7696)
!7698 = !DILocation(line: 240, column: 6, scope: !7674)
!7699 = !DILocation(line: 241, column: 29, scope: !7700)
!7700 = distinct !DILexicalBlock(scope: !7701, file: !6019, line: 241, column: 7)
!7701 = distinct !DILexicalBlock(scope: !7696, file: !6019, line: 240, column: 39)
!7702 = !DILocation(line: 241, column: 8, scope: !7700)
!7703 = !DILocation(line: 241, column: 7, scope: !7701)
!7704 = !DILocation(line: 242, column: 18, scope: !7700)
!7705 = !DILocation(line: 242, column: 22, scope: !7700)
!7706 = !DILocation(line: 242, column: 4, scope: !7700)
!7707 = !DILocation(line: 243, column: 12, scope: !7708)
!7708 = distinct !DILexicalBlock(scope: !7700, file: !6019, line: 243, column: 12)
!7709 = !DILocation(line: 243, column: 12, scope: !7700)
!7710 = !DILocation(line: 244, column: 4, scope: !7708)
!7711 = !{i32 1049594}
!7712 = !DILocation(line: 246, column: 4, scope: !7708)
!7713 = !{i32 1049623}
!7714 = !DILocation(line: 247, column: 3, scope: !7701)
!7715 = !DILocation(line: 249, column: 6, scope: !7683)
!7716 = !DILocation(line: 249, column: 6, scope: !7687)
!7717 = !DILocation(line: 249, column: 6, scope: !7686)
!7718 = !DILocation(line: 249, column: 6, scope: !7719)
!7719 = distinct !DILexicalBlock(scope: !7686, file: !6019, line: 249, column: 6)
!7720 = !DILocation(line: 249, column: 6, scope: !7721)
!7721 = distinct !DILexicalBlock(scope: !7686, file: !6019, line: 249, column: 6)
!7722 = !{i64 2149661279, i64 2149661308, i64 2149661354, i64 2149661412, i64 2149661466, i64 2149661520, i64 2149661575, i64 2149661606, i64 2149661914, i64 2149661920, i64 2149661967, i64 2149661990, i64 2149662016}
!7723 = !DILocation(line: 249, column: 6, scope: !7724)
!7724 = distinct !DILexicalBlock(scope: !7686, file: !6019, line: 249, column: 6)
!7725 = !DILocation(line: 249, column: 6, scope: !7684)
!7726 = !DILocation(line: 249, column: 6, scope: !7674)
!7727 = !DILocation(line: 250, column: 3, scope: !7684)
!7728 = !DILocation(line: 251, column: 20, scope: !7674)
!7729 = !DILocation(line: 251, column: 26, scope: !7674)
!7730 = !DILocation(line: 251, column: 33, scope: !7674)
!7731 = !DILocation(line: 251, column: 2, scope: !7674)
!7732 = !DILocation(line: 252, column: 2, scope: !7674)
!7733 = !DILocation(line: 253, column: 1, scope: !7674)
!7734 = !DISubprogram(name: "_copy_from_user", scope: !7047, file: !7047, line: 158, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7735 = distinct !DISubprogram(name: "copy_overflow", scope: !6019, file: !6019, line: 230, type: !7736, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7738)
!7736 = !DISubroutineType(types: !7737)
!7737 = !{null, !12, !22}
!7738 = !{!7739, !7740}
!7739 = !DILocalVariable(name: "size", arg: 1, scope: !7735, file: !6019, line: 230, type: !12)
!7740 = !DILocalVariable(name: "count", arg: 2, scope: !7735, file: !6019, line: 230, type: !22)
!7741 = !DILocation(line: 230, column: 38, scope: !7735)
!7742 = !DILocation(line: 230, column: 58, scope: !7735)
!7743 = !DILocation(line: 233, column: 19, scope: !7744)
!7744 = distinct !DILexicalBlock(scope: !7735, file: !6019, line: 232, column: 6)
!7745 = !DILocation(line: 233, column: 25, scope: !7744)
!7746 = !DILocation(line: 233, column: 3, scope: !7744)
!7747 = !DILocation(line: 234, column: 1, scope: !7735)
!7748 = !DISubprogram(name: "__bad_copy_from", scope: !6019, file: !6019, line: 224, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7749 = !DISubprogram(name: "__bad_copy_to", scope: !6019, file: !6019, line: 226, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7750 = distinct !DISubprogram(name: "check_object_size", scope: !6019, file: !6019, line: 218, type: !7751, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5944, retainedNodes: !7753)
!7751 = !DISubroutineType(types: !7752)
!7752 = !{null, !1996, !22, !655}
!7753 = !{!7754, !7755, !7756}
!7754 = !DILocalVariable(name: "ptr", arg: 1, scope: !7750, file: !6019, line: 218, type: !1996)
!7755 = !DILocalVariable(name: "n", arg: 2, scope: !7750, file: !6019, line: 218, type: !22)
!7756 = !DILocalVariable(name: "to_user", arg: 3, scope: !7750, file: !6019, line: 219, type: !655)
!7757 = !DILocation(line: 218, column: 50, scope: !7750)
!7758 = !DILocation(line: 218, column: 69, scope: !7750)
!7759 = !DILocation(line: 219, column: 15, scope: !7750)
!7760 = !DILocation(line: 220, column: 3, scope: !7750)
!7761 = !DISubprogram(name: "__copy_overflow", scope: !6019, file: !6019, line: 228, type: !7736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7762 = !DISubprogram(name: "fget", scope: !6824, file: !6824, line: 49, type: !7763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7763 = !DISubroutineType(types: !7764)
!7764 = !{!418, !29}
!7765 = !DISubprogram(name: "io_is_uring_fops", scope: !4074, file: !4074, line: 82, type: !7766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7766 = !DISubroutineType(types: !7767)
!7767 = !{!655, !418}
!7768 = !DISubprogram(name: "_copy_to_user", scope: !7047, file: !7047, line: 176, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
